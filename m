Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC11C7C45DD
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 02:11:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5EE310E404;
	Wed, 11 Oct 2023 00:11:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7CDE10E404
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 00:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696983102; x=1728519102;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ykblwcffZESFwpqQuYqjXE0LapQcfTMdlvZsedJWrMk=;
 b=dEqQuiHF147/U19iiHyMmD8zpu4ASPgX6wvd2CxyCSS67YacgTUmZRLC
 /j7n+LjKx0qGdwnG9bBeeFTzqnJxh8EPpFxOjMBlrCkSwZmjaHtnSGlk+
 x2iXLYAbJE2Vk8iCX/1eVf1kB1yRQ8FYJ9TpNEfIiDLcZissZSar4ft3X
 0LdEYGqOfPCCtPnBls5vnItajbvn8mIg2WooKkF72+BJu5evmW7UH+Sgl
 Spu8685zEbUIzaild7u0Ae6ScLgwjjdZZJZagYk4ohv2RgQulHd7oLk9+
 avTJ5AqXja9NHNvz6A8Nptawqpy+ViIgkUYUXIP+2BVcnGnbQRu1k6TGO Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="470810212"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="470810212"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 17:11:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="897423334"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="897423334"
Received: from lkp-server02.sh.intel.com (HELO f64821696465) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 10 Oct 2023 17:09:56 -0700
Received: from kbuild by f64821696465 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qqMp8-0001QE-0t;
 Wed, 11 Oct 2023 00:11:38 +0000
Date: Wed, 11 Oct 2023 08:10:47 +0800
From: kernel test robot <lkp@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202310110727.6wnxZYAI-lkp@intel.com>
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
config: i386-buildonly-randconfig-002-20231011 (https://download.01.org/0day-ci/archive/20231011/202310110727.6wnxZYAI-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231011/202310110727.6wnxZYAI-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310110727.6wnxZYAI-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/gt/intel_tlb.c: In function 'intel_gt_invalidate_tlb_full':
>> drivers/gpu/drm/i915/gt/intel_tlb.c:141:21: error: implicit declaration of function 'intel_guc_invalidate_tlb_full'; did you mean 'intel_gt_invalidate_tlb_full'? [-Werror=implicit-function-declaration]
     141 |                 if (intel_guc_invalidate_tlb_full(guc, INTEL_GUC_TLB_INVAL_MODE_HEAVY) < 0)
         |                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |                     intel_gt_invalidate_tlb_full
>> drivers/gpu/drm/i915/gt/intel_tlb.c:141:56: error: 'INTEL_GUC_TLB_INVAL_MODE_HEAVY' undeclared (first use in this function)
     141 |                 if (intel_guc_invalidate_tlb_full(guc, INTEL_GUC_TLB_INVAL_MODE_HEAVY) < 0)
         |                                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/intel_tlb.c:141:56: note: each undeclared identifier is reported only once for each function it appears in
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
>> drivers/gpu/drm/i915/gt/intel_tlb.c:190:48: error: 'const struct intel_device_info' has no member named 'ppgtt_size'
     190 |         vm_total = BIT_ULL(INTEL_INFO(gt->i915)->ppgtt_size);
         |                                                ^~
   include/vdso/bits.h:8:45: note: in definition of macro 'BIT_ULL'
       8 | #define BIT_ULL(nr)             (ULL(1) << (nr))
         |                                             ^~
>> drivers/gpu/drm/i915/gt/intel_tlb.c:195:23: error: implicit declaration of function 'intel_guc_invalidate_tlb_page_selective' [-Werror=implicit-function-declaration]
     195 |                 ret = intel_guc_invalidate_tlb_page_selective(guc,
         |                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/intel_tlb.c:196:63: error: 'INTEL_GUC_TLB_INVAL_MODE_HEAVY' undeclared (first use in this function)
     196 |                                                               INTEL_GUC_TLB_INVAL_MODE_HEAVY,
         |                                                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +141 drivers/gpu/drm/i915/gt/intel_tlb.c

   120	
   121	void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno)
   122	{
   123		intel_wakeref_t wakeref;
   124	
   125		if (I915_SELFTEST_ONLY(gt->awake == -ENODEV))
   126			return;
   127	
   128		if (intel_gt_is_wedged(gt))
   129			return;
   130	
   131		if (tlb_seqno_passed(gt, seqno))
   132			return;
   133	
   134		with_intel_gt_pm_if_awake(gt, wakeref) {
   135			struct intel_guc *guc = &gt->uc.guc;
   136	
   137			mutex_lock(&gt->tlb.invalidate_lock);
   138			if (tlb_seqno_passed(gt, seqno))
   139				goto unlock;
   140	
 > 141			if (intel_guc_invalidate_tlb_full(guc, INTEL_GUC_TLB_INVAL_MODE_HEAVY) < 0)
   142				mmio_invalidate_full(gt);
   143	
   144			write_seqcount_invalidate(&gt->tlb.seqno);
   145	unlock:
   146			mutex_unlock(&gt->tlb.invalidate_lock);
   147		}
   148	}
   149	
   150	static u64 tlb_page_selective_size(u64 *addr, u64 length)
   151	{
   152		const u64 end = *addr + length;
   153		u64 start;
   154	
   155		/*
   156		 * Minimum invalidation size for a 2MB page that the hardware expects is
   157		 * 16MB
   158		 */
   159		length = max_t(u64, roundup_pow_of_two(length), SZ_4K);
   160		if (length >= SZ_2M)
   161			length = max_t(u64, SZ_16M, length);
   162	
   163		/*
   164		 * We need to invalidate a higher granularity if start address is not
   165		 * aligned to length. When start is not aligned with length we need to
   166		 * find the length large enough to create an address mask covering the
   167		 * required range.
   168		 */
   169		start = round_down(*addr, length);
   170		while (start + length < end) {
   171			length <<= 1;
   172			start = round_down(*addr, length);
   173		}
   174	
   175		*addr = start;
   176		return length;
   177	}
   178	
   179	bool intel_gt_invalidate_tlb_range(struct intel_gt *gt,
   180					   u64 start, u64 length)
   181	{
   182		struct intel_guc *guc = &gt->uc.guc;
   183		intel_wakeref_t wakeref;
   184		u64 size, vm_total;
   185		bool ret = true;
   186	
   187		if (intel_gt_is_wedged(gt))
   188			return true;
   189	
 > 190		vm_total = BIT_ULL(INTEL_INFO(gt->i915)->ppgtt_size);
   191		/* Align start and length */
   192		size =  min_t(u64, vm_total, tlb_page_selective_size(&start, length));
   193	
   194		with_intel_gt_pm_if_awake(gt, wakeref)
 > 195			ret = intel_guc_invalidate_tlb_page_selective(guc,
   196								      INTEL_GUC_TLB_INVAL_MODE_HEAVY,
   197								      start, size) == 0;
   198	
   199		return ret;
   200	}
   201	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
