sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("com.sap.workflow.process.employeehire.workflowuimodule.controller.main", {
            onInit: function () {

            },

            
            handleSelectionChange: function(oEvent) {
                var changedItem = oEvent.getParameter("changedItem");
                var isSelected = oEvent.getParameter("selected");
    
                var state = "Selected";
                if (!isSelected) {
                    state = "Deselected";
                }
    
                MessageToast.show("Event 'selectionChange': " + state + " '" + changedItem.getText() + "'", {
                    width: "auto"
                });
            }    

                






        });
    });
