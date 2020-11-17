# zplbuilder

A new Flutter package project.

## Getting Started

### It's useful when looking for a way to composing a Zpl report/receipt. 
### So you can use your loved Dart code to build your receipt.
### For that, just create an instance like so:
### final zplBuilder = ZplPageBuilder()
    zplBuilder.addFont(fontSize: 30, family: '0');
    zplBuilder.addTitle(text: 'Encomenda 1');
    zplBuilder.addMargin(30);
    zplBuilder.addTitle(text: 'Encomenda 2');
    zplBuilder.addFont(fontSize: 30, family: 'A');
    zplBuilder.addMargin(30);
    zplBuilder.addRow(label: 'Total:', value: '200.0');

 ###  To get the final string use toString() method like below
    String _result =_builder.toString();
