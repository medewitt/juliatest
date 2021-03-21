Pkg.generate("test")
Pkg.activate("test")
cd("test")

Pkg.add(["DataFrames", "DataFramesMeta", "CSV", "Chain", "MLJ", "DecisionTree",
         "MLJDecisionTreeInterface", "Lathe", "Gadfly"])