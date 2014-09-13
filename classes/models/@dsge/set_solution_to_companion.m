function [A,B]=set_solution_to_companion(obj)
if isempty(obj)
    if nargout>1
        error([mfilename,':: number of output arguments cannot exceed 1 when the object is empty'])
    end
    A=struct();
    return
end

if isempty(obj.solution)
    error('model has not been solved')
end

[A,B]=load_solution(obj,'iov');

end