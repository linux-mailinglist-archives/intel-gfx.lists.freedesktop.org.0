Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 701004DB942
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 21:20:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFE5A10EA5D;
	Wed, 16 Mar 2022 20:20:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A40E10EA5D
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 20:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647462012; x=1678998012;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CYMBTDd9vpTitNeMwp8pDz+kcWwpPKBKELsUab2dgkc=;
 b=fcxbvFD33gYxJxBKMTcv8eAUpTQXwbI3L4DhUGq73BDu6LZQm5J1S4J6
 uhjVnNzDcN0GVPfKOhLyeK63J5Xh7TMLq48BzIbduWiJYUvq2EJYo+tTx
 Wn41i0uZmo2juQbcfHmL2tAS3Z93wabwQMAgzWxS7cRSMr33iZhU8Ajqn
 9adRoRPx3kLugl4UTprT98vTO7OkZ+a5s/mqaaHMznzMYJevVIJQWSuxQ
 cZ568mcia83Y6LqUKyAj5A/RNINx3KIj+ZeP/rz8kM+7Gcd5qDdaECIBi
 2cy8qYOLBOgIkhlMOZlTB1AYznqw/P2muvbVv0VD4dxonJ2ebiMiGE125 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="244157121"
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="244157121"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 13:20:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="646794734"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 16 Mar 2022 13:20:09 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nUa7s-000CsZ-Ns; Wed, 16 Mar 2022 20:20:08 +0000
Date: Thu, 17 Mar 2022 04:19:05 +0800
From: kernel test robot <lkp@intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202203170430.cDmFRpYE-lkp@intel.com>
References: <20220316130754.813761-2-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220316130754.813761-2-tejaskumarx.surendrakumar.upadhyay@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: preempt and reset based on
 reset domain
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
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
 Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tejas,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]
[cannot apply to drm-intel/for-linux-next v5.17-rc8 next-20220316]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Tejas-Upadhyay/drm-i915-gt-preempt-engine-to-idle-before-reset/20220316-215054
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: x86_64-randconfig-a005 (https://download.01.org/0day-ci/archive/20220317/202203170430.cDmFRpYE-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project a6ec1e3d798f8eab43fb3a91028c6ab04e115fcb)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/06139e9768f3f8e43bf061ae6292feb7daf07944
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Tejas-Upadhyay/drm-i915-gt-preempt-engine-to-idle-before-reset/20220316-215054
        git checkout 06139e9768f3f8e43bf061ae6292feb7daf07944
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2524:7: warning: variable 'err' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
                   if (READ_ONCE(el->pending[0])) {
                       ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/rwonce.h:47:28: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x)                                                    \
                                                                           ^
   drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2538:9: note: uninitialized use occurs here
           return err;
                  ^~~
   drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2524:3: note: remove the 'if' if its condition is always true
                   if (READ_ONCE(el->pending[0])) {
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2489:6: warning: variable 'err' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
           if (*el->active) { /* preempt to idle required */
               ^~~~~~~~~~~
   drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2538:9: note: uninitialized use occurs here
           return err;
                  ^~~
   drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2489:2: note: remove the 'if' if its condition is always true
           if (*el->active) { /* preempt to idle required */
           ^~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2462:9: note: initialize the variable 'err' to silence this warning
           int err;
                  ^
                   = 0
   2 warnings generated.


vim +2524 drivers/gpu/drm/i915/gt/intel_execlists_submission.c

c3b2b6ffcd31318 Chris Wilson   2022-03-16  2453  
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2454  /* XXX return error and force a full reset if we fail to
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2455   * preempt-to-idle
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2456   */
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2457  static int execlists_suspend(struct intel_engine_cs *engine)
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2458  {
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2459  	struct i915_sched_engine *se = engine->sched_engine;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2460  	struct intel_engine_execlists * const el = &engine->execlists;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2461  	unsigned long timeout;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2462  	int err;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2463  
06139e9768f3f8e Tejas Upadhyay 2022-03-16  2464  	if (!intel_engine_pm_get_if_awake(engine))
06139e9768f3f8e Tejas Upadhyay 2022-03-16  2465  		return 0;
06139e9768f3f8e Tejas Upadhyay 2022-03-16  2466  	ENGINE_TRACE(engine, "supending active engine\n");
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2467  	/* Stop further submissions, but listen for our own preempt-to-idle */
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2468  	tasklet_disable(&se->tasklet);
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2469  	se->tasklet.callback = suspend_tasklet;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2470  	tasklet_enable(&se->tasklet);
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2471  
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2472  	/*
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2473  	 * We have to wait for the HW to complete a pending context switch
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2474  	 * before we can write to ELS[PQ] again. Otherwise the behaviour
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2475  	 * is undefined...
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2476  	 *
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2477  	 * If the engine is truly hung, it will neither clear pending
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2478  	 * nor respond to our preemption request. In the later case,
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2479  	 * we have the dilemma of how to restore hang detection...
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2480  	 */
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2481  	timeout = jiffies + HZ / 2;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2482  	while (READ_ONCE(el->pending[0]) && time_before(jiffies, timeout))
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2483  		intel_engine_flush_submission(engine);
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2484  	if (READ_ONCE(el->pending[0])) {
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2485  		err = -EBUSY;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2486  		goto err;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2487  	}
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2488  
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2489  	if (*el->active) { /* preempt to idle required */
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2490  		struct i915_request **pending = el->pending;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2491  		struct intel_context *ce = el->preempt_context;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2492  		u64 desc;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2493  		int n;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2494  
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2495  		/* Always submit an empty / idle context */
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2496  		desc = lrc_update_regs(ce, engine, ce->ring->tail);
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2497  
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2498  		/*
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2499  		 * As we submit a dummy context, we will get two events.
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2500  		 * First a preemption of the running context, causing us
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2501  		 * to promote el->pending to el->inflight. And then
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2502  		 * we will receive a completion event as our context
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2503  		 * idles.
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2504  		 *
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2505  		 * We can use any dummy request here for tracking the
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2506  		 * preemption events.
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2507  		 */
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2508  		execlists_schedule_in(*el->active, 0);
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2509  		*pending++ = i915_request_get(*el->active);
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2510  		*pending++ = NULL;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2511  
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2512  		/* Tell the HW to preempt to our special context */
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2513  		for (n = execlists_num_ports(el); --n; )
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2514  			write_desc(el, 0, n);
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2515  		write_desc(el, desc, 0);
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2516  		if (el->ctrl_reg)
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2517  			writel(EL_CTRL_LOAD, el->ctrl_reg);
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2518  
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2519  		timeout = jiffies + HZ / 2;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2520  		while (READ_ONCE(el->pending[0]) &&
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2521  		       time_before(jiffies, timeout))
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2522  			intel_engine_flush_submission(engine);
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2523  
c3b2b6ffcd31318 Chris Wilson   2022-03-16 @2524  		if (READ_ONCE(el->pending[0])) {
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2525  			err = -EIO;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2526  			goto err;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2527  		}
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2528  	}
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2529  
06139e9768f3f8e Tejas Upadhyay 2022-03-16  2530  	goto out;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2531  
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2532  err:
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2533  	tasklet_disable(&se->tasklet);
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2534  	se->tasklet.callback = execlists_submission_tasklet;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2535  	tasklet_enable(&se->tasklet);
06139e9768f3f8e Tejas Upadhyay 2022-03-16  2536  out:
06139e9768f3f8e Tejas Upadhyay 2022-03-16  2537  	intel_engine_pm_put(engine);
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2538  	return err;
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2539  }
c3b2b6ffcd31318 Chris Wilson   2022-03-16  2540  

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
