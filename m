Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDnsLU/5n2n3fAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 08:42:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE591A1F62
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 08:42:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D8AD10E009;
	Thu, 26 Feb 2026 07:42:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D8N/p80Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1632B10E009
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Feb 2026 07:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772091723; x=1803627723;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wITukRR/ETFRAHxM9jR3Xxl55x4NZdhotKYiUwxEM18=;
 b=D8N/p80QNo4v871+5E2lu+oe9y5N9r+xWe2/AikfWmIKbSt75hcW+ajP
 bkIdQ+kceuTT82T9U9Xv7GbPVMCAaimcAyA9H6KbbMK1TDYB5fLKjZaq9
 ZmroQ+QhlHGEeBLGAtv801THeLBlZFWB0UMkoPZhy8hOY2BTQcT7atIo2
 t2mQBOr/O3V7oKVgoD9nfrvGxgWwXM1rsElQ5KWcjFa9406VpvH9zO4hc
 4cM8fkQoW9Z6rh5urdlhWPk0y6puaovGNV3pivEiKyiiUqZ6N/Z8iZgF5
 Jp32KJb9/vpmmhNj7H6Yr8+pbZl1mwniRWzCYcTB4lwLgPztajPfa3vbz Q==;
X-CSE-ConnectionGUID: g/wNiiKnTdSiDlYOP9pgTA==
X-CSE-MsgGUID: zqDdL9EEQniVk4eMdxqvCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72355857"
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="72355857"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 23:42:02 -0800
X-CSE-ConnectionGUID: D+j+KB7YSmCPCqaLRHD7kA==
X-CSE-MsgGUID: ls0x13YLSBmBVtqa72xp4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="247022380"
Received: from lkp-server02.sh.intel.com (HELO a3936d6a266d) ([10.239.97.151])
 by orviesa002.jf.intel.com with ESMTP; 25 Feb 2026 23:42:02 -0800
Received: from kbuild by a3936d6a266d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vvW0U-000000008Pd-3BDl;
 Thu, 26 Feb 2026 07:41:58 +0000
Date: Thu, 26 Feb 2026 15:41:16 +0800
From: kernel test robot <lkp@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev
Subject: Re: [i915-ci-only NO-REVIEW 24/25] PREEMPT_RT injection
Message-ID: <202602261547.3bM6yVAS-lkp@intel.com>
References: <20260225131931.60724-25-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225131931.60724-25-dev@lankhorst.se>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dev@lankhorst.se,m:oe-kbuild-all@lists.linux.dev,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,git-scm.com:url]
X-Rspamd-Queue-Id: DAE591A1F62
X-Rspamd-Action: no action

Hi Maarten,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-i915/for-linux-next]
[also build test ERROR on next-20260225]
[cannot apply to drm-i915/for-linux-next-fixes drm-misc/drm-misc-next drm-xe/drm-xe-next linus/master v7.0-rc1]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Maarten-Lankhorst/drm-vblank_work-Add-methods-to-schedule-vblank_work-in-2-stages/20260226-012447
base:   https://gitlab.freedesktop.org/drm/i915/kernel.git for-linux-next
patch link:    https://lore.kernel.org/r/20260225131931.60724-25-dev%40lankhorst.se
patch subject: [i915-ci-only NO-REVIEW 24/25] PREEMPT_RT injection
config: arm64-randconfig-r123-20260226 (https://download.01.org/0day-ci/archive/20260226/202602261547.3bM6yVAS-lkp@intel.com/config)
compiler: clang version 23.0.0git (https://github.com/llvm/llvm-project 9a109fbb6e184ec9bcce10615949f598f4c974a9)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260226/202602261547.3bM6yVAS-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602261547.3bM6yVAS-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/ttm/tests/ttm_bo_test.c:225:13: error: incompatible pointer types passing 'struct rt_mutex *' to parameter of type 'struct mutex *' [-Wincompatible-pointer-types]
     225 |         mutex_lock(&bo->base.resv->lock.base);
         |                    ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mutex.h:193:44: note: expanded from macro 'mutex_lock'
     193 | #define mutex_lock(lock) mutex_lock_nested(lock, 0)
         |                                            ^~~~
   include/linux/mutex.h:185:45: note: passing argument to parameter 'lock' here
     185 | extern void mutex_lock_nested(struct mutex *lock, unsigned int subclass) __acquires(lock);
         |                                             ^
   drivers/gpu/drm/ttm/tests/ttm_bo_test.c:231:15: error: incompatible pointer types passing 'struct rt_mutex *' to parameter of type 'struct mutex *' [-Wincompatible-pointer-types]
     231 |         mutex_unlock(&bo->base.resv->lock.base);
         |                      ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mutex.h:249:40: note: passing argument to parameter 'lock' here
     249 | extern void mutex_unlock(struct mutex *lock) __releases(lock);
         |                                        ^
   2 errors generated.


vim +225 drivers/gpu/drm/ttm/tests/ttm_bo_test.c

995279d280d1ef Karolina Stolarek 2023-11-29  210  
995279d280d1ef Karolina Stolarek 2023-11-29  211  static void ttm_bo_reserve_interrupted(struct kunit *test)
995279d280d1ef Karolina Stolarek 2023-11-29  212  {
995279d280d1ef Karolina Stolarek 2023-11-29  213  	struct ttm_buffer_object *bo;
995279d280d1ef Karolina Stolarek 2023-11-29  214  	struct task_struct *task;
995279d280d1ef Karolina Stolarek 2023-11-29  215  	int err;
995279d280d1ef Karolina Stolarek 2023-11-29  216  
588c4c8d58c413 Karolina Stolarek 2024-06-12  217  	bo = ttm_bo_kunit_init(test, test->priv, BO_SIZE, NULL);
995279d280d1ef Karolina Stolarek 2023-11-29  218  
995279d280d1ef Karolina Stolarek 2023-11-29  219  	task = kthread_create(threaded_ttm_bo_reserve, bo, "ttm-bo-reserve");
995279d280d1ef Karolina Stolarek 2023-11-29  220  
995279d280d1ef Karolina Stolarek 2023-11-29  221  	if (IS_ERR(task))
995279d280d1ef Karolina Stolarek 2023-11-29  222  		KUNIT_FAIL(test, "Couldn't create ttm bo reserve task\n");
995279d280d1ef Karolina Stolarek 2023-11-29  223  
995279d280d1ef Karolina Stolarek 2023-11-29  224  	/* Take a lock so the threaded reserve has to wait */
995279d280d1ef Karolina Stolarek 2023-11-29 @225  	mutex_lock(&bo->base.resv->lock.base);
995279d280d1ef Karolina Stolarek 2023-11-29  226  
995279d280d1ef Karolina Stolarek 2023-11-29  227  	wake_up_process(task);
995279d280d1ef Karolina Stolarek 2023-11-29  228  	msleep(20);
995279d280d1ef Karolina Stolarek 2023-11-29  229  	err = kthread_stop(task);
995279d280d1ef Karolina Stolarek 2023-11-29  230  
995279d280d1ef Karolina Stolarek 2023-11-29  231  	mutex_unlock(&bo->base.resv->lock.base);
995279d280d1ef Karolina Stolarek 2023-11-29  232  
995279d280d1ef Karolina Stolarek 2023-11-29  233  	KUNIT_ASSERT_EQ(test, err, -ERESTARTSYS);
995279d280d1ef Karolina Stolarek 2023-11-29  234  }
995279d280d1ef Karolina Stolarek 2023-11-29  235  #endif /* IS_BUILTIN(CONFIG_DRM_TTM_KUNIT_TEST) */
995279d280d1ef Karolina Stolarek 2023-11-29  236  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
