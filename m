Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FC4AD5889
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 16:23:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E30210E696;
	Wed, 11 Jun 2025 14:22:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bwxm5LM9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDA2210E696
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jun 2025 14:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749651777; x=1781187777;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=54n87psqwi/QsWV0+r7fFxSEc6o7Xgx7p78LXXsVciU=;
 b=Bwxm5LM9BJYtgu4fyjnjCDOv/FFVfuv4DvnqCu23FZTjjhCtbwOTWHZ+
 kI/vwyZLHA233VYH9g1W8Er5IzJvIryj9Zt6uIWkdDwGfOrBB3s7FOmgM
 VISkmJq9mlx3XusqyrWIf9IqdRQbj0pbD+5hq6HuKMjik3BAoKUKZHYF1
 2oSbDc8ba1dJNUFd8CXsnY5UUMNNYK3cbDQnpnd470IdSDepw4UjTxnfY
 Ni3/o+H+iTG6iNktD1syi26TVfsLKw/5IWq4E6uwdPMwifaLJYl8w0oa+
 n1+S0keniKdo3Gq+rInlm5tiKcnzUZSLILma7d4kTJebt2tgdtFvGaulq A==;
X-CSE-ConnectionGUID: hpoPIIoMQX2OAfU9R92o4w==
X-CSE-MsgGUID: MqdE0+hLRG6B/+cnvZ7f7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="62408162"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="62408162"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 07:22:57 -0700
X-CSE-ConnectionGUID: 9oD2sayVSIqf+G86v5qcfA==
X-CSE-MsgGUID: xDsuGgtvRl6af+ztHgeKIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="170389979"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 11 Jun 2025 07:22:55 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uPMLt-000AYm-0S;
 Wed, 11 Jun 2025 14:22:53 +0000
Date: Wed, 11 Jun 2025 22:22:38 +0800
From: kernel test robot <lkp@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 Matthew Auld <matthew.auld@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
Message-ID: <202506112213.gLkM0b3U-lkp@intel.com>
References: <rkhynu6kvc66vebupjvz6wah4qlxcbbxpnesjx2njqsfhxtk2n@rotnqdv2ori4>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <rkhynu6kvc66vebupjvz6wah4qlxcbbxpnesjx2njqsfhxtk2n@rotnqdv2ori4>
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Krzysztof,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.16-rc1 next-20250611]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Krzysztof-Karas/drm-i915-selftests-Keep-mock-file-open-during-unfaultable-migrate-with-fill/20250610-182359
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/rkhynu6kvc66vebupjvz6wah4qlxcbbxpnesjx2njqsfhxtk2n%40rotnqdv2ori4
patch subject: [PATCH] drm/i915/selftests: Keep mock file open during unfaultable migrate with fill
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20250611/202506112213.gLkM0b3U-lkp@intel.com/config)
compiler: clang version 20.1.2 (https://github.com/llvm/llvm-project 58df0ef89dd64126512e4ee27b4ac3fd8ddf6247)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250611/202506112213.gLkM0b3U-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202506112213.gLkM0b3U-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/gem/i915_gem_mman.c:1155:
>> drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:1195:6: warning: variable 'mock_file' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
    1195 |         if (err)
         |             ^~~
   drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:1303:7: note: uninitialized use occurs here
    1303 |         fput(mock_file);
         |              ^~~~~~~~~
   drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:1195:2: note: remove the 'if' if its condition is always false
    1195 |         if (err)
         |         ^~~~~~~~
    1196 |                 goto out_put;
         |                 ~~~~~~~~~~~~
   drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:1179:24: note: initialize the variable 'mock_file' to silence this warning
    1179 |         struct file *mock_file;
         |                               ^
         |                                = NULL
   1 warning generated.


vim +1195 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c

fb87550d251787 Matthew Auld    2022-02-28  1165  
fb87550d251787 Matthew Auld    2022-02-28  1166  #define IGT_MMAP_MIGRATE_TOPDOWN     (1 << 0)
fb87550d251787 Matthew Auld    2022-02-28  1167  #define IGT_MMAP_MIGRATE_FILL        (1 << 1)
fb87550d251787 Matthew Auld    2022-02-28  1168  #define IGT_MMAP_MIGRATE_EVICTABLE   (1 << 2)
fb87550d251787 Matthew Auld    2022-02-28  1169  #define IGT_MMAP_MIGRATE_UNFAULTABLE (1 << 3)
bfe53be268afd2 Matthew Auld    2022-06-29  1170  #define IGT_MMAP_MIGRATE_FAIL_GPU    (1 << 4)
fb87550d251787 Matthew Auld    2022-02-28  1171  static int __igt_mmap_migrate(struct intel_memory_region **placements,
fb87550d251787 Matthew Auld    2022-02-28  1172  			      int n_placements,
fb87550d251787 Matthew Auld    2022-02-28  1173  			      struct intel_memory_region *expected_mr,
fb87550d251787 Matthew Auld    2022-02-28  1174  			      unsigned int flags)
fb87550d251787 Matthew Auld    2022-02-28  1175  {
fb87550d251787 Matthew Auld    2022-02-28  1176  	struct drm_i915_private *i915 = placements[0]->i915;
fb87550d251787 Matthew Auld    2022-02-28  1177  	struct drm_i915_gem_object *obj;
fb87550d251787 Matthew Auld    2022-02-28  1178  	struct i915_request *rq = NULL;
e63a0050b65f8d Krzysztof Karas 2025-06-10  1179  	struct file *mock_file;
fb87550d251787 Matthew Auld    2022-02-28  1180  	unsigned long addr;
fb87550d251787 Matthew Auld    2022-02-28  1181  	LIST_HEAD(objects);
fb87550d251787 Matthew Auld    2022-02-28  1182  	u64 offset;
fb87550d251787 Matthew Auld    2022-02-28  1183  	int err;
fb87550d251787 Matthew Auld    2022-02-28  1184  
fb87550d251787 Matthew Auld    2022-02-28  1185  	obj = __i915_gem_object_create_user(i915, PAGE_SIZE,
fb87550d251787 Matthew Auld    2022-02-28  1186  					    placements,
fb87550d251787 Matthew Auld    2022-02-28  1187  					    n_placements);
fb87550d251787 Matthew Auld    2022-02-28  1188  	if (IS_ERR(obj))
fb87550d251787 Matthew Auld    2022-02-28  1189  		return PTR_ERR(obj);
fb87550d251787 Matthew Auld    2022-02-28  1190  
fb87550d251787 Matthew Auld    2022-02-28  1191  	if (flags & IGT_MMAP_MIGRATE_TOPDOWN)
fb87550d251787 Matthew Auld    2022-02-28  1192  		obj->flags |= I915_BO_ALLOC_GPU_ONLY;
fb87550d251787 Matthew Auld    2022-02-28  1193  
fb87550d251787 Matthew Auld    2022-02-28  1194  	err = __assign_mmap_offset(obj, I915_MMAP_TYPE_FIXED, &offset, NULL);
fb87550d251787 Matthew Auld    2022-02-28 @1195  	if (err)
fb87550d251787 Matthew Auld    2022-02-28  1196  		goto out_put;
fb87550d251787 Matthew Auld    2022-02-28  1197  
fb87550d251787 Matthew Auld    2022-02-28  1198  	/*
fb87550d251787 Matthew Auld    2022-02-28  1199  	 * This will eventually create a GEM context, due to opening dummy drm
fb87550d251787 Matthew Auld    2022-02-28  1200  	 * file, which needs a tiny amount of mappable device memory for the top
fb87550d251787 Matthew Auld    2022-02-28  1201  	 * level paging structures(and perhaps scratch), so make sure we
fb87550d251787 Matthew Auld    2022-02-28  1202  	 * allocate early, to avoid tears.
fb87550d251787 Matthew Auld    2022-02-28  1203  	 */
e63a0050b65f8d Krzysztof Karas 2025-06-10  1204  	addr = igt_mmap_offset_get_file(i915, offset, obj->base.size,
e63a0050b65f8d Krzysztof Karas 2025-06-10  1205  					PROT_WRITE, MAP_SHARED, &mock_file);
fb87550d251787 Matthew Auld    2022-02-28  1206  	if (IS_ERR_VALUE(addr)) {
fb87550d251787 Matthew Auld    2022-02-28  1207  		err = addr;
fb87550d251787 Matthew Auld    2022-02-28  1208  		goto out_put;
fb87550d251787 Matthew Auld    2022-02-28  1209  	}
fb87550d251787 Matthew Auld    2022-02-28  1210  
fb87550d251787 Matthew Auld    2022-02-28  1211  	if (flags & IGT_MMAP_MIGRATE_FILL) {
fb87550d251787 Matthew Auld    2022-02-28  1212  		err = igt_fill_mappable(placements[0], &objects);
fb87550d251787 Matthew Auld    2022-02-28  1213  		if (err)
fb87550d251787 Matthew Auld    2022-02-28  1214  			goto out_put;
fb87550d251787 Matthew Auld    2022-02-28  1215  	}
fb87550d251787 Matthew Auld    2022-02-28  1216  
fb87550d251787 Matthew Auld    2022-02-28  1217  	err = i915_gem_object_lock(obj, NULL);
fb87550d251787 Matthew Auld    2022-02-28  1218  	if (err)
fb87550d251787 Matthew Auld    2022-02-28  1219  		goto out_put;
fb87550d251787 Matthew Auld    2022-02-28  1220  
fb87550d251787 Matthew Auld    2022-02-28  1221  	err = i915_gem_object_pin_pages(obj);
fb87550d251787 Matthew Auld    2022-02-28  1222  	if (err) {
fb87550d251787 Matthew Auld    2022-02-28  1223  		i915_gem_object_unlock(obj);
fb87550d251787 Matthew Auld    2022-02-28  1224  		goto out_put;
fb87550d251787 Matthew Auld    2022-02-28  1225  	}
fb87550d251787 Matthew Auld    2022-02-28  1226  
fb87550d251787 Matthew Auld    2022-02-28  1227  	err = intel_context_migrate_clear(to_gt(i915)->migrate.context, NULL,
9275277d53248d Fei Yang        2023-05-09  1228  					  obj->mm.pages->sgl, obj->pat_index,
fb87550d251787 Matthew Auld    2022-02-28  1229  					  i915_gem_object_is_lmem(obj),
fb87550d251787 Matthew Auld    2022-02-28  1230  					  expand32(POISON_INUSE), &rq);
fb87550d251787 Matthew Auld    2022-02-28  1231  	i915_gem_object_unpin_pages(obj);
fb87550d251787 Matthew Auld    2022-02-28  1232  	if (rq) {
11f01dcf3b32d0 Matthew Auld    2022-06-29  1233  		err = dma_resv_reserve_fences(obj->base.resv, 1);
11f01dcf3b32d0 Matthew Auld    2022-06-29  1234  		if (!err)
73511edf8b196e Christian König 2021-11-09  1235  			dma_resv_add_fence(obj->base.resv, &rq->fence,
1d7f5e6c5240c3 Christian König 2021-12-22  1236  					   DMA_RESV_USAGE_KERNEL);
fb87550d251787 Matthew Auld    2022-02-28  1237  		i915_request_put(rq);
fb87550d251787 Matthew Auld    2022-02-28  1238  	}
fb87550d251787 Matthew Auld    2022-02-28  1239  	i915_gem_object_unlock(obj);
fb87550d251787 Matthew Auld    2022-02-28  1240  	if (err)
fb87550d251787 Matthew Auld    2022-02-28  1241  		goto out_put;
fb87550d251787 Matthew Auld    2022-02-28  1242  
fb87550d251787 Matthew Auld    2022-02-28  1243  	if (flags & IGT_MMAP_MIGRATE_EVICTABLE)
fb87550d251787 Matthew Auld    2022-02-28  1244  		igt_make_evictable(&objects);
fb87550d251787 Matthew Auld    2022-02-28  1245  
bfe53be268afd2 Matthew Auld    2022-06-29  1246  	if (flags & IGT_MMAP_MIGRATE_FAIL_GPU) {
bfe53be268afd2 Matthew Auld    2022-06-29  1247  		err = i915_gem_object_lock(obj, NULL);
bfe53be268afd2 Matthew Auld    2022-06-29  1248  		if (err)
bfe53be268afd2 Matthew Auld    2022-06-29  1249  			goto out_put;
bfe53be268afd2 Matthew Auld    2022-06-29  1250  
bfe53be268afd2 Matthew Auld    2022-06-29  1251  		/*
bfe53be268afd2 Matthew Auld    2022-06-29  1252  		 * Ensure we only simulate the gpu failuire when faulting the
bfe53be268afd2 Matthew Auld    2022-06-29  1253  		 * pages.
bfe53be268afd2 Matthew Auld    2022-06-29  1254  		 */
bfe53be268afd2 Matthew Auld    2022-06-29  1255  		err = i915_gem_object_wait_moving_fence(obj, true);
bfe53be268afd2 Matthew Auld    2022-06-29  1256  		i915_gem_object_unlock(obj);
bfe53be268afd2 Matthew Auld    2022-06-29  1257  		if (err)
bfe53be268afd2 Matthew Auld    2022-06-29  1258  			goto out_put;
bfe53be268afd2 Matthew Auld    2022-06-29  1259  		i915_ttm_migrate_set_failure_modes(true, false);
bfe53be268afd2 Matthew Auld    2022-06-29  1260  	}
bfe53be268afd2 Matthew Auld    2022-06-29  1261  
fb87550d251787 Matthew Auld    2022-02-28  1262  	err = ___igt_mmap_migrate(i915, obj, addr,
fb87550d251787 Matthew Auld    2022-02-28  1263  				  flags & IGT_MMAP_MIGRATE_UNFAULTABLE);
bfe53be268afd2 Matthew Auld    2022-06-29  1264  
fb87550d251787 Matthew Auld    2022-02-28  1265  	if (!err && obj->mm.region != expected_mr) {
fb87550d251787 Matthew Auld    2022-02-28  1266  		pr_err("%s region mismatch %s\n", __func__, expected_mr->name);
fb87550d251787 Matthew Auld    2022-02-28  1267  		err = -EINVAL;
fb87550d251787 Matthew Auld    2022-02-28  1268  	}
fb87550d251787 Matthew Auld    2022-02-28  1269  
bfe53be268afd2 Matthew Auld    2022-06-29  1270  	if (flags & IGT_MMAP_MIGRATE_FAIL_GPU) {
bfe53be268afd2 Matthew Auld    2022-06-29  1271  		struct intel_gt *gt;
bfe53be268afd2 Matthew Auld    2022-06-29  1272  		unsigned int id;
bfe53be268afd2 Matthew Auld    2022-06-29  1273  
bfe53be268afd2 Matthew Auld    2022-06-29  1274  		i915_ttm_migrate_set_failure_modes(false, false);
bfe53be268afd2 Matthew Auld    2022-06-29  1275  
bfe53be268afd2 Matthew Auld    2022-06-29  1276  		for_each_gt(gt, i915, id) {
bfe53be268afd2 Matthew Auld    2022-06-29  1277  			intel_wakeref_t wakeref;
bfe53be268afd2 Matthew Auld    2022-06-29  1278  			bool wedged;
bfe53be268afd2 Matthew Auld    2022-06-29  1279  
bfe53be268afd2 Matthew Auld    2022-06-29  1280  			mutex_lock(&gt->reset.mutex);
bfe53be268afd2 Matthew Auld    2022-06-29  1281  			wedged = test_bit(I915_WEDGED, &gt->reset.flags);
bfe53be268afd2 Matthew Auld    2022-06-29  1282  			mutex_unlock(&gt->reset.mutex);
bfe53be268afd2 Matthew Auld    2022-06-29  1283  			if (!wedged) {
bfe53be268afd2 Matthew Auld    2022-06-29  1284  				pr_err("gt(%u) not wedged\n", id);
bfe53be268afd2 Matthew Auld    2022-06-29  1285  				err = -EINVAL;
bfe53be268afd2 Matthew Auld    2022-06-29  1286  				continue;
bfe53be268afd2 Matthew Auld    2022-06-29  1287  			}
bfe53be268afd2 Matthew Auld    2022-06-29  1288  
bfe53be268afd2 Matthew Auld    2022-06-29  1289  			wakeref = intel_runtime_pm_get(gt->uncore->rpm);
bfe53be268afd2 Matthew Auld    2022-06-29  1290  			igt_global_reset_lock(gt);
bfe53be268afd2 Matthew Auld    2022-06-29  1291  			intel_gt_reset(gt, ALL_ENGINES, NULL);
bfe53be268afd2 Matthew Auld    2022-06-29  1292  			igt_global_reset_unlock(gt);
bfe53be268afd2 Matthew Auld    2022-06-29  1293  			intel_runtime_pm_put(gt->uncore->rpm, wakeref);
bfe53be268afd2 Matthew Auld    2022-06-29  1294  		}
bfe53be268afd2 Matthew Auld    2022-06-29  1295  
bfe53be268afd2 Matthew Auld    2022-06-29  1296  		if (!i915_gem_object_has_unknown_state(obj)) {
bfe53be268afd2 Matthew Auld    2022-06-29  1297  			pr_err("object missing unknown_state\n");
bfe53be268afd2 Matthew Auld    2022-06-29  1298  			err = -EINVAL;
bfe53be268afd2 Matthew Auld    2022-06-29  1299  		}
bfe53be268afd2 Matthew Auld    2022-06-29  1300  	}
bfe53be268afd2 Matthew Auld    2022-06-29  1301  
fb87550d251787 Matthew Auld    2022-02-28  1302  out_put:
e63a0050b65f8d Krzysztof Karas 2025-06-10  1303  	fput(mock_file);
fb87550d251787 Matthew Auld    2022-02-28  1304  	i915_gem_object_put(obj);
fb87550d251787 Matthew Auld    2022-02-28  1305  	igt_close_objects(i915, &objects);
fb87550d251787 Matthew Auld    2022-02-28  1306  	return err;
fb87550d251787 Matthew Auld    2022-02-28  1307  }
fb87550d251787 Matthew Auld    2022-02-28  1308  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
