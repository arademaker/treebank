(tsdb:tsdb :cpu mycpu :file t :count mycpucount)
(tsdb::tsdb :create myprofile :skeleton myskeleton)
(if (null mygold)
	(tsdb::tsdb-do-process myprofile :type myoperation :overwrite t)
	(tsdb::tsdb-do-process myprofile :type myoperation :gold mygold :overwrite t)
	)

(pvm::pvm_quit)
(sleep 1)
(excl:exit)