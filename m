Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C737C4757
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 03:35:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B157D10E3B8;
	Wed, 11 Oct 2023 01:35:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68FAA10E3B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 01:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696988150; x=1728524150;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Kg2bJN65H/yiL2FLkblk7sy/b6zk3eeb30ONL1wunG0=;
 b=YMc6p6WDftQNeEvCcwb7EkaZ08+zTM+p/t+c4Gk8W5XiAADTcsNWgwUb
 QkD6n0Wx11kd4I8TFk1tZRosIxsdCatJv3Vo5LaVUWD36QKMzi9e0y9id
 rgvilZj4+AK2k0m0Kfj8HDw+j5ndE2NmA6oqTssBZ9yS0d5CTcUxAwiwT
 fINVPVyAhoFKs6p2r9UwYnKZPREhuNwbo26DKnrQL8VbtZ/1sNaFhhNCv
 eiWmVujdUu3J734zEkskNW1QyhejlJ/7trZNvEb0+h+tc5+mUO4+s7TKc
 Uw4t2GhmymasyNqiiy5s+XRLHQMtPl5xYHDsLd7xO7g5w/p2wCSD5xnUP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="384411460"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="384411460"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 18:35:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="753654755"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="753654755"
Received: from lkp-server02.sh.intel.com (HELO f64821696465) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 10 Oct 2023 18:35:47 -0700
Received: from kbuild by f64821696465 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qqO8V-0001W1-10;
 Wed, 11 Oct 2023 01:35:43 +0000
Date: Wed, 11 Oct 2023 09:35:06 +0800
From: kernel test robot <lkp@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202310110932.RZ34WR7w-lkp@intel.com>
References: <20231010184423.2118908-3-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010184423.2118908-3-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH dii-client 1/2] drm/i915: Add generic
 interface for tlb invalidation
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
Cc: jonathan.cavitt@intel.com, nirmoy.das@intel.com, andi.shyti@intel.com,
 saurabhg.gupta@intel.com, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Jonathan-Cavitt/drm-i915-Use-selective-tlb-invalidations-where-supported/20231011-034501
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20231010184423.2118908-3-jonathan.cavitt%40intel.com
patch subject: [Intel-gfx] [PATCH dii-client 1/2] drm/i915: Add generic interface for tlb invalidation
config: x86_64-randconfig-001-20231011 (https://download.01.org/0day-ci/archive/20231011/202310110932.RZ34WR7w-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231011/202310110932.RZ34WR7w-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310110932.RZ34WR7w-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   drivers/gpu/drm/i915/gt/intel_tlb.c: In function 'intel_gt_invalidate_tlb_full':
   drivers/gpu/drm/i915/gt/intel_tlb.c:141:7: error: implicit declaration of function 'intel_guc_invalidate_tlb_full'; did you mean 'intel_gt_invalidate_tlb_full'? [-Werror=implicit-function-declaration]
     141 |   if (intel_guc_invalidate_tlb_full(guc, INTEL_GUC_TLB_INVAL_MODE_HEAVY) < 0)
         |       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |       intel_gt_invalidate_tlb_full
   drivers/gpu/drm/i915/gt/intel_tlb.c:141:42: error: 'INTEL_GUC_TLB_INVAL_MODE_HEAVY' undeclared (first use in this function)
     141 |   if (intel_guc_invalidate_tlb_full(guc, INTEL_GUC_TLB_INVAL_MODE_HEAVY) < 0)
         |                                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/intel_tlb.c:141:42: note: each undeclared identifier is reported only once for each function it appears in
   In file included from include/linux/bits.h:6,
                    from include/linux/ratelimit_types.h:5,
                    from include/linux/printk.h:9,
                    from include/asm-generic/bug.h:22,
                    from arch/x86/include/asm/bug.h:87,
                    from include/linux/plist.h:80,
                    from include/linux/pm_qos.h:15,
                    from drivers/gpu/drm/i915/i915_drv.h:35,
                    from drivers/gpu/drm/i915/gt/intel_tlb.c:6:
   drivers/gpu/drm/i915/gt/intel_tlb.c: In function 'intel_gt_invalidate_tlb_range':
   drivers/gpu/drm/i915/gt/intel_tlb.c:190:41: error: 'const struct intel_device_info' has no member named 'ppgtt_size'
     190 |  vm_total = BIT_ULL(INTEL_INFO(gt->i915)->ppgtt_size);
         |                                         ^~
   include/vdso/bits.h:8:34: note: in definition of macro 'BIT_ULL'
       8 | #define BIT_ULL(nr)  (ULL(1) << (nr))
         |                                  ^~
   drivers/gpu/drm/i915/gt/intel_tlb.c:195:9: error: implicit declaration of function 'intel_guc_invalidate_tlb_page_selective' [-Werror=implicit-function-declaration]
     195 |   ret = intel_guc_invalidate_tlb_page_selective(guc,
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/intel_tlb.c:196:14: error: 'INTEL_GUC_TLB_INVAL_MODE_HEAVY' undeclared (first use in this function)
     196 |              INTEL_GUC_TLB_INVAL_MODE_HEAVY,
         |              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/gpu/drm/i915/gt/intel_tlb.c:214:
   drivers/gpu/drm/i915/gt/selftest_tlb.c: In function 'pte_tlbinv':
>> drivers/gpu/drm/i915/gt/selftest_tlb.c:161:1: error: version control conflict marker in file
     161 | <<<<<<< HEAD
         | ^~~~~~~
   drivers/gpu/drm/i915/gt/selftest_tlb.c:163:1: error: version control conflict marker in file
     163 | =======
         | ^~~~~~~
   drivers/gpu/drm/i915/gt/selftest_tlb.c:165:1: error: version control conflict marker in file
     165 | >>>>>>> 774058193c61b... INTEL_DII: drm/i915/xehpsdv: Add generic interface for tlb invalidation
         | ^~~~~~~
>> drivers/gpu/drm/i915/gt/selftest_tlb.c:165:9: error: invalid suffix "c61b..." on integer constant
     165 | >>>>>>> 774058193c61b... INTEL_DII: drm/i915/xehpsdv: Add generic interface for tlb invalidation
         |         ^~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/selftest_tlb.c:150:28: warning: unused variable 'vb_res' [-Wunused-variable]
     150 |   struct i915_vma_resource vb_res = {
         |                            ^~~~~~
>> drivers/gpu/drm/i915/gt/selftest_tlb.c:40:21: warning: unused variable 'pat_index' [-Wunused-variable]
      40 |  const unsigned int pat_index =
         |                     ^~~~~~~~~
   cc1: some warnings being treated as errors


vim +161 drivers/gpu/drm/i915/gt/selftest_tlb.c

    30	
    31	static int
    32	pte_tlbinv(struct intel_context *ce,
    33		   struct i915_vma *va,
    34		   struct i915_vma *vb,
    35		   u64 align,
    36		   void (*tlbinv)(struct i915_address_space *vm, u64 addr, u64 length),
    37		   u64 length,
    38		   struct rnd_state *prng)
    39	{
  > 40		const unsigned int pat_index =
    41			i915_gem_get_pat_index(ce->vm->i915, I915_CACHE_NONE);
    42		struct drm_i915_gem_object *batch;
    43		struct drm_mm_node vb_node;
    44		struct i915_request *rq;
    45		struct i915_vma *vma;
    46		u64 addr;
    47		int err;
    48		u32 *cs;
    49	
    50		batch = i915_gem_object_create_internal(ce->vm->i915, 4096);
    51		if (IS_ERR(batch))
    52			return PTR_ERR(batch);
    53	
    54		vma = i915_vma_instance(batch, ce->vm, NULL);
    55		if (IS_ERR(vma)) {
    56			err = PTR_ERR(vma);
    57			goto out;
    58		}
    59	
    60		err = i915_vma_pin(vma, 0, 0, PIN_USER);
    61		if (err)
    62			goto out;
    63	
    64		/* Pin va at random but aligned offset after vma */
    65		addr = round_up(vma->node.start + vma->node.size, align);
    66		/* MI_CONDITIONAL_BATCH_BUFFER_END limits address to 48b */
    67		addr = igt_random_offset(prng, addr, min(ce->vm->total, BIT_ULL(48)),
    68					 va->size, align);
    69		err = i915_vma_pin(va,  0, 0, addr | PIN_OFFSET_FIXED | PIN_USER);
    70		if (err) {
    71			pr_err("Cannot pin at %llx+%llx\n", addr, va->size);
    72			goto out;
    73		}
    74		GEM_BUG_ON(i915_vma_offset(va) != addr);
    75		if (vb != va) {
    76			vb_node = vb->node;
    77			vb->node = va->node; /* overwrites the _same_ PTE  */
    78		}
    79	
    80		/*
    81		 * Now choose random dword at the 1st pinned page.
    82		 *
    83		 * SZ_64K pages on dg1 require that the whole PT be marked
    84		 * containing 64KiB entries. So we make sure that vma
    85		 * covers the whole PT, despite being randomly aligned to 64KiB
    86		 * and restrict our sampling to the 2MiB PT within where
    87		 * we know that we will be using 64KiB pages.
    88		 */
    89		if (align == SZ_64K)
    90			addr = round_up(addr, SZ_2M);
    91		addr = igt_random_offset(prng, addr, addr + align, 8, 8);
    92	
    93		if (va != vb)
    94			pr_info("%s(%s): Sampling %llx, with alignment %llx, using PTE size %x (phys %x, sg %x), invalidate:%llx+%llx\n",
    95				ce->engine->name, va->obj->mm.region->name ?: "smem",
    96				addr, align, va->resource->page_sizes_gtt,
    97				va->page_sizes.phys, va->page_sizes.sg,
    98				addr & -length, length);
    99	
   100		cs = i915_gem_object_pin_map_unlocked(batch, I915_MAP_WC);
   101		*cs++ = MI_NOOP; /* for later termination */
   102		/*
   103		 * Sample the target to see if we spot the updated backing store.
   104		 * Gen8 VCS compares immediate value with bitwise-and of two
   105		 * consecutive DWORDS pointed by addr, other gen/engines compare value
   106		 * with DWORD pointed by addr. Moreover we want to exercise DWORD size
   107		 * invalidations. To fulfill all these requirements below values
   108		 * have been chosen.
   109		 */
   110		*cs++ = MI_CONDITIONAL_BATCH_BUFFER_END | MI_DO_COMPARE | 2;
   111		*cs++ = 0; /* break if *addr == 0 */
   112		*cs++ = lower_32_bits(addr);
   113		*cs++ = upper_32_bits(addr);
   114		vma_set_qw(va, addr, -1);
   115		vma_set_qw(vb, addr, 0);
   116	
   117		/* Keep sampling until we get bored */
   118		*cs++ = MI_BATCH_BUFFER_START | BIT(8) | 1;
   119		*cs++ = lower_32_bits(i915_vma_offset(vma));
   120		*cs++ = upper_32_bits(i915_vma_offset(vma));
   121	
   122		i915_gem_object_flush_map(batch);
   123	
   124		rq = i915_request_create(ce);
   125		if (IS_ERR(rq)) {
   126			err = PTR_ERR(rq);
   127			goto out_va;
   128		}
   129	
   130		err = rq->engine->emit_bb_start(rq, i915_vma_offset(vma), 0, 0);
   131		if (err) {
   132			i915_request_add(rq);
   133			goto out_va;
   134		}
   135	
   136		i915_request_get(rq);
   137		i915_request_add(rq);
   138	
   139		/* Short sleep to sanitycheck the batch is spinning before we begin */
   140		msleep(10);
   141		if (va == vb) {
   142			if (!i915_request_completed(rq)) {
   143				pr_err("%s(%s): Semaphore sanitycheck failed %llx, with alignment %llx, using PTE size %x (phys %x, sg %x)\n",
   144				       ce->engine->name, va->obj->mm.region->name ?: "smem",
   145				       addr, align, va->resource->page_sizes_gtt,
   146				       va->page_sizes.phys, va->page_sizes.sg);
   147				err = -EIO;
   148			}
   149		} else if (!i915_request_completed(rq)) {
 > 150			struct i915_vma_resource vb_res = {
   151				.bi.pages = vb->obj->mm.pages,
   152				.bi.page_sizes = vb->obj->mm.page_sizes,
   153				.start = i915_vma_offset(vb),
   154				.vma_size = i915_vma_size(vb)
   155			};
   156			unsigned int pte_flags = 0;
   157	
   158			/* Flip the PTE between A and B */
   159			if (i915_gem_object_is_lmem(vb->obj))
   160				pte_flags |= PTE_LM;
 > 161	<<<<<<< HEAD
   162			ce->vm->insert_entries(ce->vm, &vb_res, pat_index, pte_flags);
   163	=======
   164			ce->vm->insert_entries(ce->vm, &stash, vb, I915_CACHE_NONE, pte_flags);
 > 165	>>>>>>> 774058193c61b... INTEL_DII: drm/i915/xehpsdv: Add generic interface for tlb invalidation
   166	
   167			/* Flush the PTE update to concurrent HW */
   168			tlbinv(ce->vm, addr & -length, length);
   169	
   170			if (wait_for(i915_request_completed(rq), HZ / 2)) {
   171				pr_err("%s: Request did not complete; the COND_BBE did not read the updated PTE\n",
   172				       ce->engine->name);
   173				err = -EINVAL;
   174			}
   175		} else {
   176			pr_err("Spinner ended unexpectedly\n");
   177			err = -EIO;
   178		}
   179		i915_request_put(rq);
   180	
   181		cs = page_mask_bits(batch->mm.mapping);
   182		*cs = MI_BATCH_BUFFER_END;
   183		wmb();
   184	
   185	out_va:
   186		if (vb != va)
   187			vb->node = vb_node;
   188		i915_vma_unpin(va);
   189		if (i915_vma_unbind_unlocked(va))
   190			err = -EIO;
   191	out:
   192		i915_gem_object_put(batch);
   193		return err;
   194	}
   195	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
