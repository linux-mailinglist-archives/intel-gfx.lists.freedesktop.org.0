Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1119D830DE5
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 21:22:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74F2510E811;
	Wed, 17 Jan 2024 20:22:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69D5C10E811
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 20:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705522939; x=1737058939;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8GtrfbtluehTb6h+zzyuY+h/ZkDVx5b3uJL7UdVtNOY=;
 b=gzUpAUDtdJfVvnpz4yDqjGCVXsijzhbk6KYaXwzMEqONCd7CY31WTCAv
 aYXdLIgsGHde5zgJLcqB8gQPc0wnKLuFWsjSv1dc8GLr5YpI3vi7Jmh3Y
 X9k0ZTGD93ltEgD7EAlBm1OWkdph7YdUb2mIC2GnwNJSca8hUNauSn5wk
 f6GHMvrhsJa+gFA2BMXvLWb9RbZzNHk59NZRfdITi1zjwfGmDCtiIoAhw
 a/QcBjXw3OgQbFjFRgdQ/EmBQ5weLzCTyUngffqV4GvsBjfzU0z9blN0m
 ZtYfPvO/iJzI5PRUy4HZDwYccQ1n7FrZXoBjvpucZgi3YhMAsIug8oPp8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="466647475"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="466647475"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 12:22:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="1115767989"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="1115767989"
Received: from lkp-server01.sh.intel.com (HELO 961aaaa5b03c) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 17 Jan 2024 12:22:17 -0800
Received: from kbuild by 961aaaa5b03c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rQCQR-0002Jw-0C;
 Wed, 17 Jan 2024 20:22:15 +0000
Date: Thu, 18 Jan 2024 04:21:24 +0800
From: kernel test robot <lkp@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: move interrupt save/restore into vblank
 section helpers
Message-ID: <202401180456.XKw1s0M1-lkp@intel.com>
References: <20240117094613.1401573-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240117094613.1401573-1-luciano.coelho@intel.com>
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
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Luca,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-tip/drm-tip linus/master next-20240117]
[cannot apply to drm-intel/for-linux-next-fixes v6.7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Luca-Coelho/drm-i915-move-interrupt-save-restore-into-vblank-section-helpers/20240117-174910
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240117094613.1401573-1-luciano.coelho%40intel.com
patch subject: [PATCH] drm/i915: move interrupt save/restore into vblank section helpers
config: i386-randconfig-011-20240117 (https://download.01.org/0day-ci/archive/20240118/202401180456.XKw1s0M1-lkp@intel.com/config)
compiler: ClangBuiltLinux clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240118/202401180456.XKw1s0M1-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202401180456.XKw1s0M1-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_vblank.c:282:17: error: use of undeclared identifier 'irqflags'
     282 |         local_irq_save(irqflags);
         |                        ^
>> drivers/gpu/drm/i915/display/intel_vblank.c:282:17: error: use of undeclared identifier 'irqflags'
>> drivers/gpu/drm/i915/display/intel_vblank.c:282:17: error: use of undeclared identifier 'irqflags'
>> drivers/gpu/drm/i915/display/intel_vblank.c:282:17: error: use of undeclared identifier 'irqflags'
   drivers/gpu/drm/i915/display/intel_vblank.c:294:20: error: use of undeclared identifier 'irqflags'
     294 |         local_irq_restore(irqflags);
         |                           ^
   drivers/gpu/drm/i915/display/intel_vblank.c:294:20: error: use of undeclared identifier 'irqflags'
   drivers/gpu/drm/i915/display/intel_vblank.c:294:20: error: use of undeclared identifier 'irqflags'
   drivers/gpu/drm/i915/display/intel_vblank.c:294:20: error: use of undeclared identifier 'irqflags'
   drivers/gpu/drm/i915/display/intel_vblank.c:309:16: warning: unused variable 'irqflags' [-Wunused-variable]
     309 |         unsigned long irqflags;
         |                       ^~~~~~~~
   drivers/gpu/drm/i915/display/intel_vblank.c:441:16: warning: unused variable 'irqflags' [-Wunused-variable]
     441 |         unsigned long irqflags;
         |                       ^~~~~~~~
   2 warnings and 8 errors generated.


vim +/irqflags +282 drivers/gpu/drm/i915/display/intel_vblank.c

   267	
   268	/*
   269	 * These functions help enter and exit vblank critical sections.  When
   270	 * entering, they disable interrupts and, for i915, acquire the
   271	 * uncore's spinlock.  Conversely, when exiting, they release the
   272	 * spinlock and restore the interrupts state.
   273	 *
   274	 * This lock in i915 is needed because some old platforms (at least
   275	 * IVB and possibly HSW as well), which are not supported in Xe, need
   276	 * all register accesses to the same cacheline to be serialized,
   277	 * otherwise they may hang.
   278	 */
   279	static void intel_vblank_section_enter(struct drm_i915_private *i915)
   280		__acquires(i915->uncore.lock)
   281	{
 > 282		local_irq_save(irqflags);
   283	#ifdef I915
   284		spin_lock(&i915->uncore.lock);
   285	#endif
   286	}
   287	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
