component extends="BaseModelTransformer"{
 
    
    function init(){
        arrayAppend( 
            variables.availableIncludes,
            [
                "products",
                "parent",
                "children"
            ],
            true
        );

        return this;
    }

    function includeProducts( activeEntity ){
        return collection(
            activeEntity.getProducts().getCollection(),
            wirebox.getInstance( "ProductTransformer@cbc" ),
            wirebox.getInstance( collectionSerializer )
        );
    }

    function includeParent( activeEntity ){
        return item(
            activeEntity.getParent(),
            wirebox.getInstance( "ProductCategoryTransformer@cbc" )
        );
    }

    function includeChildren( activeEntity ){
        return collection(
            activeEntity.getChildren().getCollection(),
            wirebox.getInstance( "ProductCategoryTransformer@cbc" ),
            wirebox.getInstance( collectionSerializer )
        );
    }
}