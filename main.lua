--- @since 26.1.22
--- @sync entry

local DIRECTIONS = {
	prev = -1,
	previous = -1,
	next = 1,
}

local function find_current_index(files, cwd)
	for i = 1, #files do
		local file = files[i]
		if file and tostring(file.url) == cwd then
			return i
		end
	end
end

local function find_target(files, current_idx, step, wrap)
	for i = current_idx + step, step > 0 and #files or 1, step do
		local file = files[i]
		if file and file.cha.is_dir then
			return file.url
		end
	end

	if not wrap then
		return nil
	end

	local i = step > 0 and 1 or #files
	while i ~= current_idx do
		local file = files[i]
		if file and file.cha.is_dir then
			return file.url
		end
		i = i + step
	end

	return nil
end

local function entry (_, job)
	local step = DIRECTIONS[job.args[1]]
	if not step then
		return
	end

	local parent = cx.active.parent
	if not parent then
		return
	end

	local files = parent.files
	local current_idx = find_current_index(files, tostring(cx.active.current.cwd))
	if not current_idx then
		return
	end

	local target = find_target(files, current_idx, step, job.args.wrap)
	if target then
		ya.emit("cd", { tostring(target) })
	end
end

return { entry = entry }
