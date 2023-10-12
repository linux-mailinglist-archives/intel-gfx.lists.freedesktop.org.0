Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 483377C61A9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 02:25:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42E6410E023;
	Thu, 12 Oct 2023 00:25:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A099710E023
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 00:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697070300; x=1728606300;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0HUebaRBYhlIpKvGorr/6r29hcHREKHAHTKFVOf5rLI=;
 b=b55evIAZffOTh/82gEeVkdJsufqwY4FV5kj2xK9J/FlaL9gRdsnQgLxP
 7x0sUgF+K7iIkDn6nIyXbA72FsFPAPi/RvlLAX8qHwLMO3hYFbb71ufrA
 yxMoqvl2d+S6nOqmXKoxG4Trvfty7jjiuplT0E7LoXfcH3DjuRx/gcCJ9
 Ee72lD+Y9A896WoqDsfMAx9F3t8kbNrABM+6HjZNcsz4AdKw+x+3ycs57
 8lkfg+MSNj7PGZDL6DADLBj5crEOtADpJwKxJ7cVGlK39g7jNlIxVQ6oX
 QRxuBdocctb8ygjeDv2nRh0rnsYWXJVvoaOq7g0REFcMAkYow56uBscQG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="375153890"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="375153890"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 17:24:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="927767467"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="927767467"
Received: from lkp-server02.sh.intel.com (HELO f64821696465) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 11 Oct 2023 17:24:46 -0700
Received: from kbuild by f64821696465 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qqjVL-0002tR-2C;
 Thu, 12 Oct 2023 00:24:43 +0000
Date: Thu, 12 Oct 2023 08:24:25 +0800
From: kernel test robot <lkp@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202310120817.oZ9qYP5h-lkp@intel.com>
References: <20231010184423.2118908-4-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010184423.2118908-4-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH dii-client 2/2] drm/i915: Use selective tlb
 invalidations where supported
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
Cc: andi.shyti@intel.com, llvm@lists.linux.dev, jonathan.cavitt@intel.com,
 oe-kbuild-all@lists.linux.dev, saurabhg.gupta@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Jonathan-Cavitt/drm-i915-Use-selective-tlb-invalidations-where-supported/20231011-034501
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20231010184423.2118908-4-jonathan.cavitt%40intel.com
patch subject: [Intel-gfx] [PATCH dii-client 2/2] drm/i915: Use selective tlb invalidations where supported
config: x86_64-rhel-8.3-rust (https://download.01.org/0day-ci/archive/20231012/202310120817.oZ9qYP5h-lkp@intel.com/config)
compiler: clang version 16.0.4 (https://github.com/llvm/llvm-project.git ae42196bc493ffe877a7e3dff8be32035dea4d07)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231012/202310120817.oZ9qYP5h-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310120817.oZ9qYP5h-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/i915_vma.c:1343:4: error: expected ')'
                           u64 start, u64 size)
                           ^
   drivers/gpu/drm/i915/i915_vma.c:1342:24: note: to match this '('
   void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb
                          ^
>> drivers/gpu/drm/i915/i915_vma.c:1342:6: error: conflicting types for 'vma_invalidate_tlb'
   void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb
        ^
   drivers/gpu/drm/i915/i915_vma.h:263:6: note: previous declaration is here
   void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb,
        ^
>> drivers/gpu/drm/i915/i915_vma.c:1360:42: error: use of undeclared identifier 'start'; did you mean 'stac'?
                   if (!intel_gt_invalidate_tlb_range(gt, start, size))
                                                          ^~~~~
                                                          stac
   arch/x86/include/asm/smap.h:36:29: note: 'stac' declared here
   static __always_inline void stac(void)
                               ^
>> drivers/gpu/drm/i915/i915_vma.c:1360:49: error: use of undeclared identifier 'size'; did you mean 'ksize'?
                   if (!intel_gt_invalidate_tlb_range(gt, start, size))
                                                                 ^~~~
                                                                 ksize
   include/linux/slab.h:245:8: note: 'ksize' declared here
   size_t ksize(const void *objp);
          ^
   4 errors generated.


vim +1343 drivers/gpu/drm/i915/i915_vma.c

  1341	
> 1342	void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb
> 1343				u64 start, u64 size)
  1344	{
  1345		struct intel_gt *gt;
  1346		int id;
  1347	
  1348		if (!tlb)
  1349			return;
  1350	
  1351		/*
  1352		 * Before we release the pages that were bound by this vma, we
  1353		 * must invalidate all the TLBs that may still have a reference
  1354		 * back to our physical address. It only needs to be done once,
  1355		 * so after updating the PTE to point away from the pages, record
  1356		 * the most recent TLB invalidation seqno, and if we have not yet
  1357		 * flushed the TLBs upon release, perform a full invalidation.
  1358		 */
  1359		for_each_gt(gt, vm->i915, id) {
> 1360			if (!intel_gt_invalidate_tlb_range(gt, start, size))
  1361				WRITE_ONCE(tlb[id],
  1362					   intel_gt_next_invalidate_tlb_full(gt));
  1363		}
  1364	}
  1365	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
