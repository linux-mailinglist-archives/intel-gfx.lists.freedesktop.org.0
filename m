Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C32CC31424
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 14:39:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB74510E266;
	Tue,  4 Nov 2025 13:38:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NQsvdtvs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6004710E266
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Nov 2025 13:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762263524; x=1793799524;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0+Pzoj29QbwJ8/qHPO9N+dBez6XC3nMEvw0t8wipHpM=;
 b=NQsvdtvsHCmZL0YXO2YE411pm0ScWgUDLcvpLN2ECv5FjoUFJZSsBxWa
 MqbdPu5VjUUGQK7cLD/EbP1HsZBrkrxAtfE4MTPFdRwLBfdt2z2LiCbOh
 flNnVPWd48C8MYITLUmVmQY3L1prMsDqebsZ61wBHbwI5YMDQ/p2ZocDO
 +EvHgrse44uiHd6MvJwhol6Yy3cd4kTgHOGvZOTRgnB447u7cQyPMMmiP
 C2cKIFjgZQrZcVjSENlLEnI7sr0blT4+rb3ATXVNNl2eapPzQJPcYHXdR
 Q3qN5KOAzC2QtrumMlIJenEYN2cQTmyRU2MnxhfTkgz23fj2TdiFhaM6g g==;
X-CSE-ConnectionGUID: GdCMF39jSnC/yn0pG57m3g==
X-CSE-MsgGUID: Dtj+RS+rSbGFnDalAjFbJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64053624"
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="64053624"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 05:38:43 -0800
X-CSE-ConnectionGUID: gZhVXDgeQR+bgZYMluz+Uw==
X-CSE-MsgGUID: FrZ3r5NZSBKbNbT3gWYqog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="187110518"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by orviesa007.jf.intel.com with ESMTP; 04 Nov 2025 05:38:40 -0800
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vGHF7-000RRk-31;
 Tue, 04 Nov 2025 13:38:37 +0000
Date: Tue, 4 Nov 2025 21:34:54 +0800
From: kernel test robot <lkp@intel.com>
To: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, balasubramani.vivekanandan@intel.com,
 matthew.d.roper@intel.com, lucas.demarchi@intel.com,
 gustavo.sousa@intel.com, clinton.a.taylor@intel.com,
 matthew.s.atwood@intel.com, dnyaneshwar.bhadane@intel.com,
 shekhar.chauhan@intel.com,
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Subject: Re: [PATCH] drm/i915/pmu: Use raw_spin_lock where ever needed in
 i915 pmu
Message-ID: <202511042139.zy7LLbmP-lkp@intel.com>
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
config: x86_64-defconfig (https://download.01.org/0day-ci/archive/20251104/202511042139.zy7LLbmP-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251104/202511042139.zy7LLbmP-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202511042139.zy7LLbmP-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from include/linux/sched.h:37,
                    from include/linux/ratelimit.h:6,
                    from include/linux/dev_printk.h:16,
                    from include/linux/device.h:15,
                    from include/linux/pm_runtime.h:11,
                    from drivers/gpu/drm/i915/i915_pmu.c:7:
   drivers/gpu/drm/i915/i915_pmu.c: In function 'get_rc6':
>> drivers/gpu/drm/i915/i915_pmu.c:233:31: error: passing argument 1 of '_raw_spin_lock_irqsave' from incompatible pointer type [-Wincompatible-pointer-types]
     233 |         raw_spin_lock_irqsave(&pmu->lock, flags);
         |                               ^~~~~~~~~~
         |                               |
         |                               spinlock_t * {aka struct spinlock *}
   include/linux/spinlock.h:244:48: note: in definition of macro 'raw_spin_lock_irqsave'
     244 |                 flags = _raw_spin_lock_irqsave(lock);   \
         |                                                ^~~~
   In file included from include/linux/spinlock.h:312:
   include/linux/spinlock_api_smp.h:32:65: note: expected 'raw_spinlock_t *' {aka 'struct raw_spinlock *'} but argument is of type 'spinlock_t *' {aka 'struct spinlock *'}
      32 | unsigned long __lockfunc _raw_spin_lock_irqsave(raw_spinlock_t *lock)
         |                                                 ~~~~~~~~~~~~~~~~^~~~
>> drivers/gpu/drm/i915/i915_pmu.c:254:36: error: passing argument 1 of '_raw_spin_unlock_irqrestore' from incompatible pointer type [-Wincompatible-pointer-types]
     254 |         raw_spin_unlock_irqrestore(&pmu->lock, flags);
         |                                    ^~~~~~~~~~
         |                                    |
         |                                    spinlock_t * {aka struct spinlock *}
   include/linux/spinlock.h:282:45: note: in definition of macro 'raw_spin_unlock_irqrestore'
     282 |                 _raw_spin_unlock_irqrestore(lock, flags);       \
         |                                             ^~~~
   include/linux/spinlock_api_smp.h:43:45: note: expected 'raw_spinlock_t *' {aka 'struct raw_spinlock *'} but argument is of type 'spinlock_t *' {aka 'struct spinlock *'}
      43 | _raw_spin_unlock_irqrestore(raw_spinlock_t *lock, unsigned long flags)
         |                             ~~~~~~~~~~~~~~~~^~~~
   drivers/gpu/drm/i915/i915_pmu.c: In function 'i915_pmu_gt_parked':
>> drivers/gpu/drm/i915/i915_pmu.c:305:27: error: passing argument 1 of '_raw_spin_lock_irq' from incompatible pointer type [-Wincompatible-pointer-types]
     305 |         raw_spin_lock_irq(&pmu->lock);
         |                           ^~~~~~~~~~
         |                           |
         |                           spinlock_t * {aka struct spinlock *}
   include/linux/spinlock.h:274:60: note: in definition of macro 'raw_spin_lock_irq'
     274 | #define raw_spin_lock_irq(lock)         _raw_spin_lock_irq(lock)
         |                                                            ^~~~
   include/linux/spinlock_api_smp.h:29:52: note: expected 'raw_spinlock_t *' {aka 'struct raw_spinlock *'} but argument is of type 'spinlock_t *' {aka 'struct spinlock *'}
      29 | void __lockfunc _raw_spin_lock_irq(raw_spinlock_t *lock)
         |                                    ~~~~~~~~~~~~~~~~^~~~
>> drivers/gpu/drm/i915/i915_pmu.c:317:29: error: passing argument 1 of '_raw_spin_unlock_irq' from incompatible pointer type [-Wincompatible-pointer-types]
     317 |         raw_spin_unlock_irq(&pmu->lock);
         |                             ^~~~~~~~~~
         |                             |
         |                             spinlock_t * {aka struct spinlock *}
   include/linux/spinlock.h:277:62: note: in definition of macro 'raw_spin_unlock_irq'
     277 | #define raw_spin_unlock_irq(lock)       _raw_spin_unlock_irq(lock)
         |                                                              ^~~~
   include/linux/spinlock_api_smp.h:41:54: note: expected 'raw_spinlock_t *' {aka 'struct raw_spinlock *'} but argument is of type 'spinlock_t *' {aka 'struct spinlock *'}
      41 | void __lockfunc _raw_spin_unlock_irq(raw_spinlock_t *lock)      __releases(lock);
         |                                      ~~~~~~~~~~~~~~~~^~~~
   drivers/gpu/drm/i915/i915_pmu.c: In function 'i915_pmu_gt_unparked':
   drivers/gpu/drm/i915/i915_pmu.c:327:27: error: passing argument 1 of '_raw_spin_lock_irq' from incompatible pointer type [-Wincompatible-pointer-types]
     327 |         raw_spin_lock_irq(&pmu->lock);
         |                           ^~~~~~~~~~
         |                           |
         |                           spinlock_t * {aka struct spinlock *}
   include/linux/spinlock.h:274:60: note: in definition of macro 'raw_spin_lock_irq'
     274 | #define raw_spin_lock_irq(lock)         _raw_spin_lock_irq(lock)
         |                                                            ^~~~
   include/linux/spinlock_api_smp.h:29:52: note: expected 'raw_spinlock_t *' {aka 'struct raw_spinlock *'} but argument is of type 'spinlock_t *' {aka 'struct spinlock *'}
      29 | void __lockfunc _raw_spin_lock_irq(raw_spinlock_t *lock)
         |                                    ~~~~~~~~~~~~~~~~^~~~
   drivers/gpu/drm/i915/i915_pmu.c:337:29: error: passing argument 1 of '_raw_spin_unlock_irq' from incompatible pointer type [-Wincompatible-pointer-types]
     337 |         raw_spin_unlock_irq(&pmu->lock);
         |                             ^~~~~~~~~~
         |                             |
         |                             spinlock_t * {aka struct spinlock *}
   include/linux/spinlock.h:277:62: note: in definition of macro 'raw_spin_unlock_irq'
     277 | #define raw_spin_unlock_irq(lock)       _raw_spin_unlock_irq(lock)
         |                                                              ^~~~
   include/linux/spinlock_api_smp.h:41:54: note: expected 'raw_spinlock_t *' {aka 'struct raw_spinlock *'} but argument is of type 'spinlock_t *' {aka 'struct spinlock *'}
      41 | void __lockfunc _raw_spin_unlock_irq(raw_spinlock_t *lock)      __releases(lock);
         |                                      ~~~~~~~~~~~~~~~~^~~~
   drivers/gpu/drm/i915/i915_pmu.c: In function 'i915_pmu_enable':
   drivers/gpu/drm/i915/i915_pmu.c:743:31: error: passing argument 1 of '_raw_spin_lock_irqsave' from incompatible pointer type [-Wincompatible-pointer-types]
     743 |         raw_spin_lock_irqsave(&pmu->lock, flags);
         |                               ^~~~~~~~~~
         |                               |
         |                               spinlock_t * {aka struct spinlock *}
   include/linux/spinlock.h:244:48: note: in definition of macro 'raw_spin_lock_irqsave'
     244 |                 flags = _raw_spin_lock_irqsave(lock);   \
         |                                                ^~~~
   include/linux/spinlock_api_smp.h:32:65: note: expected 'raw_spinlock_t *' {aka 'struct raw_spinlock *'} but argument is of type 'spinlock_t *' {aka 'struct spinlock *'}
      32 | unsigned long __lockfunc _raw_spin_lock_irqsave(raw_spinlock_t *lock)
         |                                                 ~~~~~~~~~~~~~~~~^~~~
   drivers/gpu/drm/i915/i915_pmu.c:785:36: error: passing argument 1 of '_raw_spin_unlock_irqrestore' from incompatible pointer type [-Wincompatible-pointer-types]
     785 |         raw_spin_unlock_irqrestore(&pmu->lock, flags);
         |                                    ^~~~~~~~~~
         |                                    |
         |                                    spinlock_t * {aka struct spinlock *}
   include/linux/spinlock.h:282:45: note: in definition of macro 'raw_spin_unlock_irqrestore'
     282 |                 _raw_spin_unlock_irqrestore(lock, flags);       \
         |                                             ^~~~
   include/linux/spinlock_api_smp.h:43:45: note: expected 'raw_spinlock_t *' {aka 'struct raw_spinlock *'} but argument is of type 'spinlock_t *' {aka 'struct spinlock *'}
      43 | _raw_spin_unlock_irqrestore(raw_spinlock_t *lock, unsigned long flags)
         |                             ~~~~~~~~~~~~~~~~^~~~
   drivers/gpu/drm/i915/i915_pmu.c: In function 'i915_pmu_disable':
   drivers/gpu/drm/i915/i915_pmu.c:806:31: error: passing argument 1 of '_raw_spin_lock_irqsave' from incompatible pointer type [-Wincompatible-pointer-types]
     806 |         raw_spin_lock_irqsave(&pmu->lock, flags);
         |                               ^~~~~~~~~~
         |                               |
         |                               spinlock_t * {aka struct spinlock *}
   include/linux/spinlock.h:244:48: note: in definition of macro 'raw_spin_lock_irqsave'
     244 |                 flags = _raw_spin_lock_irqsave(lock);   \
         |                                                ^~~~
   include/linux/spinlock_api_smp.h:32:65: note: expected 'raw_spinlock_t *' {aka 'struct raw_spinlock *'} but argument is of type 'spinlock_t *' {aka 'struct spinlock *'}
      32 | unsigned long __lockfunc _raw_spin_lock_irqsave(raw_spinlock_t *lock)
         |                                                 ~~~~~~~~~~~~~~~~^~~~
   drivers/gpu/drm/i915/i915_pmu.c:839:36: error: passing argument 1 of '_raw_spin_unlock_irqrestore' from incompatible pointer type [-Wincompatible-pointer-types]
     839 |         raw_spin_unlock_irqrestore(&pmu->lock, flags);
         |                                    ^~~~~~~~~~
         |                                    |
         |                                    spinlock_t * {aka struct spinlock *}
   include/linux/spinlock.h:282:45: note: in definition of macro 'raw_spin_unlock_irqrestore'
     282 |                 _raw_spin_unlock_irqrestore(lock, flags);       \
         |                                             ^~~~
   include/linux/spinlock_api_smp.h:43:45: note: expected 'raw_spinlock_t *' {aka 'struct raw_spinlock *'} but argument is of type 'spinlock_t *' {aka 'struct spinlock *'}
      43 | _raw_spin_unlock_irqrestore(raw_spinlock_t *lock, unsigned long flags)
         |                             ~~~~~~~~~~~~~~~~^~~~
   In file included from include/linux/ratelimit_types.h:7,
                    from include/linux/ratelimit.h:5:
   drivers/gpu/drm/i915/i915_pmu.c: In function 'i915_pmu_register':
>> include/linux/spinlock_types_raw.h:69:9: error: incompatible types when assigning to type 'spinlock_t' {aka 'struct spinlock'} from type 'raw_spinlock_t' {aka 'struct raw_spinlock'}
      69 |         (raw_spinlock_t) __RAW_SPIN_LOCK_INITIALIZER(lockname)
         |         ^
   include/linux/spinlock.h:113:24: note: in expansion of macro '__RAW_SPIN_LOCK_UNLOCKED'
     113 |         do { *(lock) = __RAW_SPIN_LOCK_UNLOCKED(lock); } while (0)
         |                        ^~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_pmu.c:1157:9: note: in expansion of macro 'raw_spin_lock_init'
    1157 |         raw_spin_lock_init(&pmu->lock);
         |         ^~~~~~~~~~~~~~~~~~


vim +/_raw_spin_lock_irqsave +233 drivers/gpu/drm/i915/i915_pmu.c

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
 > 254		raw_spin_unlock_irqrestore(&pmu->lock, flags);
   255	
   256		return val;
   257	}
   258	
   259	static void init_rc6(struct i915_pmu *pmu)
   260	{
   261		struct drm_i915_private *i915 = pmu_to_i915(pmu);
   262		struct intel_gt *gt;
   263		unsigned int i;
   264	
   265		for_each_gt(gt, i915, i) {
   266			intel_wakeref_t wakeref;
   267	
   268			with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
   269				u64 val = __get_rc6(gt);
   270	
   271				store_sample(pmu, i, __I915_SAMPLE_RC6, val);
   272				store_sample(pmu, i, __I915_SAMPLE_RC6_LAST_REPORTED,
   273					     val);
   274				pmu->sleep_last[i] = ktime_get_raw();
   275			}
   276		}
   277	}
   278	
   279	static void park_rc6(struct intel_gt *gt)
   280	{
   281		struct i915_pmu *pmu = &gt->i915->pmu;
   282	
   283		store_sample(pmu, gt->info.id, __I915_SAMPLE_RC6, __get_rc6(gt));
   284		pmu->sleep_last[gt->info.id] = ktime_get_raw();
   285	}
   286	
   287	static void __i915_pmu_maybe_start_timer(struct i915_pmu *pmu)
   288	{
   289		if (!pmu->timer_enabled && pmu_needs_timer(pmu)) {
   290			pmu->timer_enabled = true;
   291			pmu->timer_last = ktime_get();
   292			hrtimer_start_range_ns(&pmu->timer,
   293					       ns_to_ktime(PERIOD), 0,
   294					       HRTIMER_MODE_REL_PINNED);
   295		}
   296	}
   297	
   298	void i915_pmu_gt_parked(struct intel_gt *gt)
   299	{
   300		struct i915_pmu *pmu = &gt->i915->pmu;
   301	
   302		if (!pmu->registered)
   303			return;
   304	
 > 305		raw_spin_lock_irq(&pmu->lock);
   306	
   307		park_rc6(gt);
   308	
   309		/*
   310		 * Signal sampling timer to stop if only engine events are enabled and
   311		 * GPU went idle.
   312		 */
   313		pmu->unparked &= ~BIT(gt->info.id);
   314		if (pmu->unparked == 0)
   315			pmu->timer_enabled = false;
   316	
 > 317		raw_spin_unlock_irq(&pmu->lock);
   318	}
   319	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
