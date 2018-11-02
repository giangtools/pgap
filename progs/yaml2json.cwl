#!/usr/bin/env cwl-runner
cwlVersion: v1.0
label: "yaml2json"
class: CommandLineTool
baseCommand: yaml2json

inputs:
    input:
        type: File
        inputBinding:
            position: 1
    output_name:
        type: string
        default: submol.json
        inputBinding:
            position: 2


outputs:
    output: 
        type: File
        glob: $(inputs.output_name)