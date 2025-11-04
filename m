Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5616BC3169D
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 15:07:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF2EE10E617;
	Tue,  4 Nov 2025 14:07:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G6dFWCrg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1203410E611
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Nov 2025 14:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762265250; x=1793801250;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7yZxlmC/WXRwtYVSmcNoAN6w+89P/RBAUA9dWaJkbrI=;
 b=G6dFWCrgmwmhbknGHD9vSEvjgFColbAQBenoJdYNuKjVtH3Ygo5RAH6/
 /Lk6hkRP5zI7yR+0sITIvndpa68tpNIgjNMYDQcHK5dqtI20wL8qdHoc5
 n04G1lTvfBBxhzZxs1C7GN59p7Asrh26+VbGX8KqrnO1xKHUc9m6dq9l4
 PX8x0MOe6GxKHBUP2i8mwMIZIUVq9Z6Kz+WDuVNmCv/MjuBRXw56cucGB
 SvGfQD1Ta7Xc6Mbalck1kfJyRvMophq/HgRpSOnKdUKFKHQ+hHo6oB1qH
 Lw3U2iowIpzdmV9NOClK0EfD+Z3m1qfqxK41nE+8xF13HukDxbfFM7XPK Q==;
X-CSE-ConnectionGUID: w2nRRojUS5CC/RUy9+KqfQ==
X-CSE-MsgGUID: 5UEJv10uRRC1/wy4igGVcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="74964264"
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="74964264"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 06:07:29 -0800
X-CSE-ConnectionGUID: svicutQfS/6MsrM9QX8QTA==
X-CSE-MsgGUID: 4UQNGMegQE2RpXSLd8MGQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="187896803"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by fmviesa010.fm.intel.com with ESMTP; 04 Nov 2025 06:07:26 -0800
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vGHgZ-000RT6-11;
 Tue, 04 Nov 2025 14:07:05 +0000
Date: Tue, 4 Nov 2025 22:06:01 +0800
From: kernel test robot <lkp@intel.com>
To: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 balasubramani.vivekanandan@intel.com, matthew.d.roper@intel.com,
 lucas.demarchi@intel.com, gustavo.sousa@intel.com,
 clinton.a.taylor@intel.com, matthew.s.atwood@intel.com,
 dnyaneshwar.bhadane@intel.com, shekhar.chauhan@intel.com,
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Subject: Re: [PATCH] drm/i915/pmu: Use raw_spin_lock where ever needed in
 i915 pmu
Message-ID: <202511042145.tYp6IjWG-lkp@intel.com>
References: <20251103185141.854074-1-ravi.kumar.vodapalli@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251103185141.854074-1-ravi.kumar.vodapalli@intel.com>
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

Hi Ravi,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.18-rc4 next-20251104]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Ravi-Kumar-Vodapalli/drm-i915-pmu-Use-raw_spin_lock-where-ever-needed-in-i915-pmu/20251104-025356
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20251103185141.854074-1-ravi.kumar.vodapalli%40intel.com
patch subject: [PATCH] drm/i915/pmu: Use raw_spin_lock where ever needed in i915 pmu
config: x86_64-randconfig-014-20251104 (https://download.01.org/0day-ci/archive/20251104/202511042145.tYp6IjWG-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251104/202511042145.tYp6IjWG-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202511042145.tYp6IjWG-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/i915_pmu.c:233:24: error: incompatible pointer types passing 'spinlock_t *' (aka 'struct spinlock *') to parameter of type 'raw_spinlock_t *' (aka 'struct raw_spinlock *') [-Werror,-Wincompatible-pointer-types]
     233 |         raw_spin_lock_irqsave(&pmu->lock, flags);
         |                               ^~~~~~~~~~
   include/linux/spinlock.h:244:34: note: expanded from macro 'raw_spin_lock_irqsave'
     244 |                 flags = _raw_spin_lock_irqsave(lock);   \
         |                                                ^~~~
   include/linux/spinlock_api_smp.h:32:65: note: passing argument to parameter 'lock' here
      32 | unsigned long __lockfunc _raw_spin_lock_irqsave(raw_spinlock_t *lock)
         |                                                                 ^
   drivers/gpu/drm/i915/i915_pmu.c:254:29: error: incompatible pointer types passing 'spinlock_t *' (aka 'struct spinlock *') to parameter of type 'raw_spinlock_t *' (aka 'struct raw_spinlock *') [-Werror,-Wincompatible-pointer-types]
     254 |         raw_spin_unlock_irqrestore(&pmu->lock, flags);
         |                                    ^~~~~~~~~~
   include/linux/spinlock.h:282:31: note: expanded from macro 'raw_spin_unlock_irqrestore'
     282 |                 _raw_spin_unlock_irqrestore(lock, flags);       \
         |                                             ^~~~
   include/linux/spinlock_api_smp.h:43:45: note: passing argument to parameter 'lock' here
      43 | _raw_spin_unlock_irqrestore(raw_spinlock_t *lock, unsigned long flags)
         |                                             ^
   drivers/gpu/drm/i915/i915_pmu.c:305:20: error: incompatible pointer types passing 'spinlock_t *' (aka 'struct spinlock *') to parameter of type 'raw_spinlock_t *' (aka 'struct raw_spinlock *') [-Werror,-Wincompatible-pointer-types]
     305 |         raw_spin_lock_irq(&pmu->lock);
         |                           ^~~~~~~~~~
   include/linux/spinlock.h:274:53: note: expanded from macro 'raw_spin_lock_irq'
     274 | #define raw_spin_lock_irq(lock)         _raw_spin_lock_irq(lock)
         |                                                            ^~~~
   include/linux/spinlock_api_smp.h:29:52: note: passing argument to parameter 'lock' here
      29 | void __lockfunc _raw_spin_lock_irq(raw_spinlock_t *lock)
         |                                                    ^
   drivers/gpu/drm/i915/i915_pmu.c:317:22: error: incompatible pointer types passing 'spinlock_t *' (aka 'struct spinlock *') to parameter of type 'raw_spinlock_t *' (aka 'struct raw_spinlock *') [-Werror,-Wincompatible-pointer-types]
     317 |         raw_spin_unlock_irq(&pmu->lock);
         |                             ^~~~~~~~~~
   include/linux/spinlock.h:277:56: note: expanded from macro 'raw_spin_unlock_irq'
     277 | #define raw_spin_unlock_irq(lock)       _raw_spin_unlock_irq(lock)
         |                                                              ^~~~
   include/linux/spinlock_api_smp.h:41:54: note: passing argument to parameter 'lock' here
      41 | void __lockfunc _raw_spin_unlock_irq(raw_spinlock_t *lock)      __releases(lock);
         |                                                      ^
   drivers/gpu/drm/i915/i915_pmu.c:327:20: error: incompatible pointer types passing 'spinlock_t *' (aka 'struct spinlock *') to parameter of type 'raw_spinlock_t *' (aka 'struct raw_spinlock *') [-Werror,-Wincompatible-pointer-types]
     327 |         raw_spin_lock_irq(&pmu->lock);
         |                           ^~~~~~~~~~
   include/linux/spinlock.h:274:53: note: expanded from macro 'raw_spin_lock_irq'
     274 | #define raw_spin_lock_irq(lock)         _raw_spin_lock_irq(lock)
         |                                                            ^~~~
   include/linux/spinlock_api_smp.h:29:52: note: passing argument to parameter 'lock' here
      29 | void __lockfunc _raw_spin_lock_irq(raw_spinlock_t *lock)
         |                                                    ^
   drivers/gpu/drm/i915/i915_pmu.c:337:22: error: incompatible pointer types passing 'spinlock_t *' (aka 'struct spinlock *') to parameter of type 'raw_spinlock_t *' (aka 'struct raw_spinlock *') [-Werror,-Wincompatible-pointer-types]
     337 |         raw_spin_unlock_irq(&pmu->lock);
         |                             ^~~~~~~~~~
   include/linux/spinlock.h:277:56: note: expanded from macro 'raw_spin_unlock_irq'
     277 | #define raw_spin_unlock_irq(lock)       _raw_spin_unlock_irq(lock)
         |                                                              ^~~~
   include/linux/spinlock_api_smp.h:41:54: note: passing argument to parameter 'lock' here
      41 | void __lockfunc _raw_spin_unlock_irq(raw_spinlock_t *lock)      __releases(lock);
         |                                                      ^
   drivers/gpu/drm/i915/i915_pmu.c:743:24: error: incompatible pointer types passing 'spinlock_t *' (aka 'struct spinlock *') to parameter of type 'raw_spinlock_t *' (aka 'struct raw_spinlock *') [-Werror,-Wincompatible-pointer-types]
     743 |         raw_spin_lock_irqsave(&pmu->lock, flags);
         |                               ^~~~~~~~~~
   include/linux/spinlock.h:244:34: note: expanded from macro 'raw_spin_lock_irqsave'
     244 |                 flags = _raw_spin_lock_irqsave(lock);   \
         |                                                ^~~~
   include/linux/spinlock_api_smp.h:32:65: note: passing argument to parameter 'lock' here
      32 | unsigned long __lockfunc _raw_spin_lock_irqsave(raw_spinlock_t *lock)
         |                                                                 ^
   drivers/gpu/drm/i915/i915_pmu.c:785:29: error: incompatible pointer types passing 'spinlock_t *' (aka 'struct spinlock *') to parameter of type 'raw_spinlock_t *' (aka 'struct raw_spinlock *') [-Werror,-Wincompatible-pointer-types]
     785 |         raw_spin_unlock_irqrestore(&pmu->lock, flags);
         |                                    ^~~~~~~~~~
   include/linux/spinlock.h:282:31: note: expanded from macro 'raw_spin_unlock_irqrestore'
     282 |                 _raw_spin_unlock_irqrestore(lock, flags);       \
         |                                             ^~~~
   include/linux/spinlock_api_smp.h:43:45: note: passing argument to parameter 'lock' here
      43 | _raw_spin_unlock_irqrestore(raw_spinlock_t *lock, unsigned long flags)
         |                                             ^
   drivers/gpu/drm/i915/i915_pmu.c:806:24: error: incompatible pointer types passing 'spinlock_t *' (aka 'struct spinlock *') to parameter of type 'raw_spinlock_t *' (aka 'struct raw_spinlock *') [-Werror,-Wincompatible-pointer-types]
     806 |         raw_spin_lock_irqsave(&pmu->lock, flags);
         |                               ^~~~~~~~~~
   include/linux/spinlock.h:244:34: note: expanded from macro 'raw_spin_lock_irqsave'
     244 |                 flags = _raw_spin_lock_irqsave(lock);   \
         |                                                ^~~~
   include/linux/spinlock_api_smp.h:32:65: note: passing argument to parameter 'lock' here
      32 | unsigned long __lockfunc _raw_spin_lock_irqsave(raw_spinlock_t *lock)
         |                                                                 ^
   drivers/gpu/drm/i915/i915_pmu.c:839:29: error: incompatible pointer types passing 'spinlock_t *' (aka 'struct spinlock *') to parameter of type 'raw_spinlock_t *' (aka 'struct raw_spinlock *') [-Werror,-Wincompatible-pointer-types]
     839 |         raw_spin_unlock_irqrestore(&pmu->lock, flags);
         |                                    ^~~~~~~~~~
   include/linux/spinlock.h:282:31: note: expanded from macro 'raw_spin_unlock_irqrestore'
     282 |                 _raw_spin_unlock_irqrestore(lock, flags);       \
         |                                             ^~~~
   include/linux/spinlock_api_smp.h:43:45: note: passing argument to parameter 'lock' here
      43 | _raw_spin_unlock_irqrestore(raw_spinlock_t *lock, unsigned long flags)
         |                                             ^
   drivers/gpu/drm/i915/i915_pmu.c:1157:2: error: incompatible pointer types passing 'spinlock_t *' (aka 'struct spinlock *') to parameter of type 'raw_spinlock_t *' (aka 'struct raw_spinlock *') [-Werror,-Wincompatible-pointer-types]
    1157 |         raw_spin_lock_init(&pmu->lock);
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/spinlock.h:108:23: note: expanded from macro 'raw_spin_lock_init'
     108 |         __raw_spin_lock_init((lock), #lock, &__key, LD_WAIT_SPIN);      \
         |                              ^~~~~~
   include/linux/spinlock.h:101:52: note: passing argument to parameter 'lock' here
     101 |   extern void __raw_spin_lock_init(raw_spinlock_t *lock, const char *name,
         |                                                    ^
   11 errors generated.


vim +233 drivers/gpu/drm/i915/i915_pmu.c

   217	
   218	static u64 get_rc6(struct intel_gt *gt)
   219	{
   220		struct drm_i915_private *i915 = gt->i915;
   221		const unsigned int gt_id = gt->info.id;
   222		struct i915_pmu *pmu = &i915->pmu;
   223		intel_wakeref_t wakeref;
   224		unsigned long flags;
   225		u64 val;
   226	
   227		wakeref = intel_gt_pm_get_if_awake(gt);
   228		if (wakeref) {
   229			val = __get_rc6(gt);
   230			intel_gt_pm_put_async(gt, wakeref);
   231		}
   232	
 > 233		raw_spin_lock_irqsave(&pmu->lock, flags);
   234	
   235		if (wakeref) {
   236			store_sample(pmu, gt_id, __I915_SAMPLE_RC6, val);
   237		} else {
   238			/*
   239			 * We think we are runtime suspended.
   240			 *
   241			 * Report the delta from when the device was suspended to now,
   242			 * on top of the last known real value, as the approximated RC6
   243			 * counter value.
   244			 */
   245			val = ktime_since_raw(pmu->sleep_last[gt_id]);
   246			val += read_sample(pmu, gt_id, __I915_SAMPLE_RC6);
   247		}
   248	
   249		if (val < read_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED))
   250			val = read_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED);
   251		else
   252			store_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED, val);
   253	
   254		raw_spin_unlock_irqrestore(&pmu->lock, flags);
   255	
   256		return val;
   257	}
   258	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
