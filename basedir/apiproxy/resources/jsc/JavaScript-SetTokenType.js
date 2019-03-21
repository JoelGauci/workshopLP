// get the input data to be transformed
var input = JSON.parse(context.getVariable('response.content'));
// parse and modify the JSON content
input.token_type = "Bearer";
print(input);
// set the response (no target)
context.setVariable('response.content',JSON.stringify(input));
