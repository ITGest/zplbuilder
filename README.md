# zplbuilder

A new Flutter package project.

## Getting Started

### It's useful when looking for a way to composing a Zpl report/receipt. 
### So you can use your loved Dart code to build your receipt.
### For that, just create an instance like so:
### final _zplString = ZplPageBuilder()
                      .addFont(fontSize: 30, family: '0');
                      .addTitle(text: 'Encomenda 1');
                      .addMargin(30);
                      .addTitle(text: 'Encomenda 2');
                      .addFont(fontSize: 30, family: 'A');
                      .addMargin(30);         
                      .addRow(label: 'Total:', value: '200.0')
                      .build(); ### get the desired string

 ### You get the desired string on .build() method.
    
