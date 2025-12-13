Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEB8CBA7E5
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Dec 2025 10:59:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BBA410E11E;
	Sat, 13 Dec 2025 09:59:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hglVM12Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10D7310E11E;
 Sat, 13 Dec 2025 09:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765619971; x=1797155971;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8GOIjRocUiEIWyd+eL5zJJo2Xo7vkZH3TwnWoiwRtno=;
 b=hglVM12QiHt+o6wJC5eqNmyB6xTWTa/Nfnbcxb2Nv99OtrpESkiLCrob
 8gUq86GBVyK/hncSd1W9uzc6PzFQhriO4JNh83eBi76RFpdZ8UJKZrvVZ
 l56W5s+M60vEM2waDWThnYyujBqJCf8WvGIkZ0iL+xia9j91C9JzIgzJs
 k+8osJRwt9FfFaRTE96P6j/DvRL9eTkT2PBl8FY5CiOLL5sGSh7xGuR+L
 RDtbyJOH7PMrXc5u6PfxxP0SbxZGP9yo5pL/hsE4ko3nMEIvsTPi9wYS8
 mDayBzlW6pbPY9TRXha7Vty5pM9aa71I7W55ChouSVMVGEbcyyjdfIyK2 w==;
X-CSE-ConnectionGUID: MI/LG0D5SzWCyasbqTQzAw==
X-CSE-MsgGUID: acEyFF5JTpCYuehM3K/g9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="71455430"
X-IronPort-AV: E=Sophos;i="6.21,146,1763452800"; d="scan'208";a="71455430"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2025 01:59:30 -0800
X-CSE-ConnectionGUID: OnnAYDYNSViihYV4UYhH6A==
X-CSE-MsgGUID: PnQDvqAAQPecxV+uk+al8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,146,1763452800"; d="scan'208";a="197353574"
Received: from lkp-server01.sh.intel.com (HELO d335e3c6db51) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 13 Dec 2025 01:59:28 -0800
Received: from kbuild by d335e3c6db51 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vUMPN-000000007TV-3hxF;
 Sat, 13 Dec 2025 09:59:25 +0000
Date: Sat, 13 Dec 2025 17:59:05 +0800
From: kernel test robot <lkp@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, intel-xe@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 intel-gfx@lists.freedesktop.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: Re: [CI-ONLY PATCH v2 11/12] PREEMPT_RT injection
Message-ID: <202512131724.vg8wGsP4-lkp@intel.com>
References: <20251212143504.973839-25-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251212143504.973839-25-dev@lankhorst.se>
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

Hi Maarten,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]
[also build test ERROR on linus/master next-20251212]
[cannot apply to drm-i915/for-linux-next drm-i915/for-linux-next-fixes drm-xe/drm-xe-next v6.18]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Maarten-Lankhorst/drm-i915-display-Fix-intel_lpe_audio_irq_handler-for-PREEMPT-RT/20251213-023952
base:   https://gitlab.freedesktop.org/drm/tip.git drm-tip
patch link:    https://lore.kernel.org/r/20251212143504.973839-25-dev%40lankhorst.se
patch subject: [CI-ONLY PATCH v2 11/12] PREEMPT_RT injection
config: i386-buildonly-randconfig-005-20251213 (https://download.01.org/0day-ci/archive/20251213/202512131724.vg8wGsP4-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251213/202512131724.vg8wGsP4-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202512131724.vg8wGsP4-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/ttm/tests/ttm_bo_test.c:225:13: error: incompatible pointer types passing 'struct rt_mutex *' to parameter of type 'struct mutex *' [-Werror,-Wincompatible-pointer-types]
     225 |         mutex_lock(&bo->base.resv->lock.base);
         |                    ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mutex.h:168:44: note: expanded from macro 'mutex_lock'
     168 | #define mutex_lock(lock) mutex_lock_nested(lock, 0)
         |                                            ^~~~
   include/linux/mutex.h:160:45: note: passing argument to parameter 'lock' here
     160 | extern void mutex_lock_nested(struct mutex *lock, unsigned int subclass);
         |                                             ^
   drivers/gpu/drm/ttm/tests/ttm_bo_test.c:231:15: error: incompatible pointer types passing 'struct rt_mutex *' to parameter of type 'struct mutex *' [-Werror,-Wincompatible-pointer-types]
     231 |         mutex_unlock(&bo->base.resv->lock.base);
         |                      ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mutex.h:224:40: note: passing argument to parameter 'lock' here
     224 | extern void mutex_unlock(struct mutex *lock);
         |                                        ^
   2 errors generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for I2C_K1
   Depends on [n]: I2C [=y] && HAS_IOMEM [=y] && (ARCH_SPACEMIT || COMPILE_TEST [=y]) && OF [=n]
   Selected by [y]:
   - MFD_SPACEMIT_P1 [=y] && HAS_IOMEM [=y] && (ARCH_SPACEMIT || COMPILE_TEST [=y]) && I2C [=y]


vim +225 drivers/gpu/drm/ttm/tests/ttm_bo_test.c

995279d280d1ef5 Karolina Stolarek 2023-11-29  210  
995279d280d1ef5 Karolina Stolarek 2023-11-29  211  static void ttm_bo_reserve_interrupted(struct kunit *test)
995279d280d1ef5 Karolina Stolarek 2023-11-29  212  {
995279d280d1ef5 Karolina Stolarek 2023-11-29  213  	struct ttm_buffer_object *bo;
995279d280d1ef5 Karolina Stolarek 2023-11-29  214  	struct task_struct *task;
995279d280d1ef5 Karolina Stolarek 2023-11-29  215  	int err;
995279d280d1ef5 Karolina Stolarek 2023-11-29  216  
588c4c8d58c413b Karolina Stolarek 2024-06-12  217  	bo = ttm_bo_kunit_init(test, test->priv, BO_SIZE, NULL);
995279d280d1ef5 Karolina Stolarek 2023-11-29  218  
995279d280d1ef5 Karolina Stolarek 2023-11-29  219  	task = kthread_create(threaded_ttm_bo_reserve, bo, "ttm-bo-reserve");
995279d280d1ef5 Karolina Stolarek 2023-11-29  220  
995279d280d1ef5 Karolina Stolarek 2023-11-29  221  	if (IS_ERR(task))
995279d280d1ef5 Karolina Stolarek 2023-11-29  222  		KUNIT_FAIL(test, "Couldn't create ttm bo reserve task\n");
995279d280d1ef5 Karolina Stolarek 2023-11-29  223  
995279d280d1ef5 Karolina Stolarek 2023-11-29  224  	/* Take a lock so the threaded reserve has to wait */
995279d280d1ef5 Karolina Stolarek 2023-11-29 @225  	mutex_lock(&bo->base.resv->lock.base);
995279d280d1ef5 Karolina Stolarek 2023-11-29  226  
995279d280d1ef5 Karolina Stolarek 2023-11-29  227  	wake_up_process(task);
995279d280d1ef5 Karolina Stolarek 2023-11-29  228  	msleep(20);
995279d280d1ef5 Karolina Stolarek 2023-11-29  229  	err = kthread_stop(task);
995279d280d1ef5 Karolina Stolarek 2023-11-29  230  
995279d280d1ef5 Karolina Stolarek 2023-11-29  231  	mutex_unlock(&bo->base.resv->lock.base);
995279d280d1ef5 Karolina Stolarek 2023-11-29  232  
995279d280d1ef5 Karolina Stolarek 2023-11-29  233  	KUNIT_ASSERT_EQ(test, err, -ERESTARTSYS);
995279d280d1ef5 Karolina Stolarek 2023-11-29  234  }
995279d280d1ef5 Karolina Stolarek 2023-11-29  235  #endif /* IS_BUILTIN(CONFIG_DRM_TTM_KUNIT_TEST) */
995279d280d1ef5 Karolina Stolarek 2023-11-29  236  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
