import subprocess
import re
import json

command = 'Rscript'
path2script = 'scripts/hello.R'
args = ['Data_value', 'business_data.csv', '--args']

cmd = [command, path2script] + args

res = subprocess.check_output(cmd, shell=True, universal_newlines=True)

_pattern_json = re.compile(r'^\[json\]')
_pattern_result = re.compile(r'^\[result\]')
for idx, result in enumerate(str(res).splitlines(), 1):
    print(idx, result)

    # if re.match(_pattern_json, result):
    #     print(re.sub(_pattern_json, "", result))

    if re.match(_pattern_result, result):
        _resultJson = json.loads(re.sub(_pattern_result, "", result))

        print(f"result json \n {_resultJson}")
        print(_resultJson["imageBinary"][0])
        
