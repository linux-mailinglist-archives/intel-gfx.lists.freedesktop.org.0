Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1ED91BCC5
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 12:46:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1D5B10EC02;
	Fri, 28 Jun 2024 10:46:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LIUJHBUN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8155A10EC02;
 Fri, 28 Jun 2024 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719571586; x=1751107586;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=ZL9MU4qUldtjNr5523HU+S+Wq5MMRKKsuFrlUNYCh9k=;
 b=LIUJHBUNS6Akjn2v+SXkfCqnX+xHQ5QApIzzHqq4/og9JAcEg6sCR+9S
 Pgo9TQ3zh9zbarUtc4gt9mu+07EqOQYqdGV3y/Nj6ZF6GfYTB7ZINBDwv
 3smwQj+1mOT3lxRsu2oWYRTBwxj5wUeTuYfRTAojazlN2gSovlCbBms8P
 aX1URB4cLRh1Yr+Dzg6I/IAONAfx2vv0+gex2by6BWOHKSGtctwRXCY0w
 KHc+9Rwx0ZyaBxI9yI4G42+bbGVMVmiB2N6sF+J8Bkm9+DtR9vQajXI+X
 NqYscbsUdDaSNqNfvSO+sarw/2yyWr1OF+w7tLNuqjrvss6pe7BhjMjj4 w==;
X-CSE-ConnectionGUID: oaStuuMuQeqkjqdN7UZ9aw==
X-CSE-MsgGUID: BFgyHdzMRG++nMf017Z4og==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="42169634"
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="42169634"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 03:46:25 -0700
X-CSE-ConnectionGUID: qNU3E0i9RBm8KOWwF9CIMQ==
X-CSE-MsgGUID: VgLzl52fTxSN1vFhppt2eA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="44690715"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 03:46:23 -0700
Date: Fri, 28 Jun 2024 13:46:34 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>,
	I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?= =?utf-8?Q?e?= for
 drm/i915/mtl: Skip PLL state verification in TBT mode
Message-ID: <Zn6UimOYav4rqXMC@ideak-desk.fi.intel.com>
References: <20240626170813.806470-1-imre.deak@intel.com>
 <171945584855.163492.10553815405336791444@a6498e030952>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <171945584855.163492.10553815405336791444@a6498e030952>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 27, 2024 at 02:37:28AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/mtl: Skip PLL state verification in TBT mode
> URL   : https://patchwork.freedesktop.org/series/135441/
> State : failure

Thanks for the review, pushed to -din also adding
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11258

the failures are unrelated see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15007_full -> Patchwork_135441v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_135441v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_135441v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 9)
> ------------------------------
> 
>   Missing    (1): shard-snb-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_135441v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-dg2:          [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-dg2-5/igt@gem_eio@in-flight-contexts-immediate.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-8/igt@gem_eio@in-flight-contexts-immediate.html

There is no TypeC port on DG2, so the change shouldn't have any effect
on it. The failure is

<6> [438.873517] i915 0000:03:00.0: [drm] GPU HANG: ecode 12:0:00000000
<5> [438.875122] i915 0000:03:00.0: [drm] GT0: Resetting chip for Manually reset engine mask to ffffffffffffffff
<6> [438.877091] i915 0000:03:00.0: [drm] GT0: GuC firmware i915/dg2_guc_70.bin version 70.20.0
<6> [438.877095] i915 0000:03:00.0: [drm] GT0: HuC firmware i915/dg2_huc_gsc.bin version 7.10.15
<6> [438.885915] i915 0000:03:00.0: [drm] GT0: GUC: load failed: status = 0x400000A0, time = 6ms, freq = 2000MHz, ret = 0
<6> [438.885919] i915 0000:03:00.0: [drm] GT0: GUC: load failed: status: Reset = 0, BootROM = 0x50, UKernel = 0x00, MIA = 0x00, Auth = 0x01
<6> [438.885921] i915 0000:03:00.0: [drm] GT0: GUC: firmware signature verification failed
<7> [438.885923] i915 0000:03:00.0: [drm:__uc_init_hw [i915]] GT0: GuC fw load failed (-ENOEXEC) will reset and retry 0 more time(s)
<3> [438.886273] i915 0000:03:00.0: [drm] *ERROR* GT0: GuC initialization failed -ENOEXEC
<3> [438.886384] i915 0000:03:00.0: [drm] *ERROR* GT0: Enabling uc failed (-5)
<3> [438.886395] i915 0000:03:00.0: [drm] *ERROR* GT0: Failed to initialise HW following reset (-5)

haven't found any previous occurance for it, so not sure about the
root-cause.

>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
>     - shard-snb:          NOTRUN -> [FAIL][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-snb6/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html

SNB is an unrelated platform, the issue seems to be the pre-existing
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11462

> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_15007_full and Patchwork_135441v1_full:
> 
> ### New IGT tests (3) ###
> 
>   * igt@kms_cursor_crc@cursor-alpha-opaque@pipe-b-hdmi-a-2:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.37] s
> 
>   * igt@kms_cursor_crc@cursor-dpms@pipe-b-hdmi-a-2:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.82] s
> 
>   * igt@kms_panel_fitting:
>     - Statuses :
>     - Exec time: [None] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_135441v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-dg1:          NOTRUN -> [SKIP][4] ([i915#8411])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#8411])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@drm_fdinfo@busy-idle@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][6] ([i915#8414]) +8 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@drm_fdinfo@busy-idle@bcs0.html
> 
>   * igt@drm_fdinfo@isolation@vecs0:
>     - shard-dg1:          NOTRUN -> [SKIP][7] ([i915#8414]) +13 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@drm_fdinfo@isolation@vecs0.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#7697])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@gem_basic@multigpu-create-close.html
>     - shard-dg1:          NOTRUN -> [SKIP][9] ([i915#7697]) +1 other test skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-16/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#9323])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@gem_ccs@suspend-resume.html
>     - shard-dg1:          NOTRUN -> [SKIP][11] ([i915#9323])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#7697]) +1 other test skip
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_ctx_persistence@file:
>     - shard-snb:          NOTRUN -> [SKIP][13] ([i915#1099]) +1 other test skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-snb5/igt@gem_ctx_persistence@file.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg1:          NOTRUN -> [SKIP][14] ([i915#8555]) +2 other tests skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
>     - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#5882]) +6 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-3/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#280])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@gem_ctx_sseu@engines.html
>     - shard-dg1:          NOTRUN -> [SKIP][17] ([i915#280]) +1 other test skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-16/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#280]) +1 other test skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-tglu:         NOTRUN -> [SKIP][19] ([i915#280])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg2:          [PASS][20] -> [FAIL][21] ([i915#5784])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-dg2-4/igt@gem_eio@reset-stress.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-dg1:          NOTRUN -> [FAIL][22] ([i915#5784])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-16/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-dg1:          NOTRUN -> [SKIP][23] ([i915#4771])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_capture@capture-invisible@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][24] ([i915#6334]) +1 other test skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@gem_exec_capture@capture-invisible@lmem0.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-tglu:         NOTRUN -> [SKIP][25] ([i915#6334])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-rkl:          [PASS][26] -> [FAIL][27] ([i915#2842])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-rkl-4/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][28] ([i915#2842])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-tglu:         [PASS][29] -> [FAIL][30] ([i915#2842])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#2842])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][33] ([i915#2842]) +3 other tests fail
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#3539]) +1 other test skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@gem_exec_flush@basic-uc-prw-default.html
> 
>   * igt@gem_exec_flush@basic-wb-rw-before-default:
>     - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#3539] / [i915#4852]) +4 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@gem_exec_flush@basic-wb-rw-before-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#3281]) +3 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@gem_exec_reloc@basic-cpu-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#3281]) +6 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt-active:
>     - shard-dg1:          NOTRUN -> [SKIP][38] ([i915#3281]) +16 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@gem_exec_reloc@basic-write-gtt-active.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#7276])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@gem_exec_schedule@semaphore-power.html
>     - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#4812]) +3 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_lmem_swapping@basic@lmem0:
>     - shard-dg2:          [PASS][41] -> [FAIL][42] ([i915#10378]) +1 other test fail
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-dg2-3/igt@gem_lmem_swapping@basic@lmem0.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-3/igt@gem_lmem_swapping@basic@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-random@lmem0:
>     - shard-dg1:          NOTRUN -> [FAIL][43] ([i915#10378])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@gem_lmem_swapping@heavy-random@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
>     - shard-dg2:          NOTRUN -> [FAIL][44] ([i915#10378])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html
> 
>   * igt@gem_lmem_swapping@massive:
>     - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#4613]) +1 other test skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@gem_lmem_swapping@massive.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-tglu:         NOTRUN -> [SKIP][46] ([i915#4613]) +1 other test skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [PASS][47] -> [TIMEOUT][48] ([i915#5493])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#4565])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html
> 
>   * igt@gem_media_vme:
>     - shard-dg1:          NOTRUN -> [SKIP][50] ([i915#284])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@gem_media_vme.html
> 
>   * igt@gem_mmap@bad-object:
>     - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#4083]) +7 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@gem_mmap@bad-object.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
>     - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#4077]) +22 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
> 
>   * igt@gem_mmap_gtt@hang:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#4077]) +5 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@gem_mmap_gtt@hang.html
> 
>   * igt@gem_mmap_wc@write-read:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#4083])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@gem_mmap_wc@write-read.html
> 
>   * igt@gem_partial_pwrite_pread@write:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#3282]) +1 other test skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@gem_partial_pwrite_pread@write.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#3282]) +9 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-glk:          NOTRUN -> [WARN][57] ([i915#2658])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-glk4/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pwrite@basic-self:
>     - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#3282]) +4 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@gem_pwrite@basic-self.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4270]) +2 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-3/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-2:
>     - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#4270]) +1 other test skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-1/igt@gem_pxp@reject-modify-context-protection-off-2.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#4270]) +4 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#5190] / [i915#8428]) +2 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-3/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#4885])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#4079]) +3 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_unfence_active_buffers:
>     - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#4879])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-17/igt@gem_unfence_active_buffers.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#3297])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-7/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>     - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#3297] / [i915#4880])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#3297])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@gem_userptr_blits@readonly-unsync.html
>     - shard-dg1:          NOTRUN -> [SKIP][69] ([i915#3297])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_userptr_blits@sd-probe:
>     - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#3297] / [i915#4958])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@gem_userptr_blits@sd-probe.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#2527]) +1 other test skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-1/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#2527]) +4 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-tglu:         NOTRUN -> [SKIP][73] ([i915#2527] / [i915#2856])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#2856]) +1 other test skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_fb_tiling:
>     - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#4881])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@i915_fb_tiling.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          [PASS][76] -> [ABORT][77] ([i915#9820])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-snb:          [PASS][78] -> [ABORT][79] ([i915#9820])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg1:          [PASS][80] -> [ABORT][81] ([i915#9820])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg2:          [PASS][82] -> [ABORT][83] ([i915#9820])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-dg1:          NOTRUN -> [ABORT][84] ([i915#9413])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-15/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-glk:          NOTRUN -> [DMESG-WARN][85] ([i915#9311])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-glk1/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-tglu:         NOTRUN -> [INCOMPLETE][86] ([i915#7443])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-7/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#7707])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#7707])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-1/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>     - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#4212]) +1 other test skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#4212]) +1 other test skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-3/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#8709]) +11 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#9531])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#1769] / [i915#3555])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#5286]) +1 other test skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#5286]) +2 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#4538] / [i915#5286]) +8 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#3638]) +3 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
>     - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#3638]) +5 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#5190])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#4538] / [i915#5190]) +4 other tests skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#4538]) +7 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][102] +16 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#10656])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@kms_big_joiner@basic.html
>     - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#10656])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#6095]) +27 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-7/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-8/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#6095]) +37 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#10307] / [i915#6095]) +164 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#6095]) +107 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#3742])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-1/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#7213]) +3 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#4087]) +3 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-1/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio-edid:
>     - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#7828]) +14 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-15/igt@kms_chamelium_audio@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium_color@ctm-0-75:
>     - shard-snb:          NOTRUN -> [SKIP][114] +130 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-snb5/igt@kms_chamelium_color@ctm-0-75.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-dg2:          NOTRUN -> [SKIP][115] +9 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#7828]) +4 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#7828]) +3 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_hpd@common-hpd-after-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#7828]) +2 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#7118] / [i915#9424])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#3116])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_content_protection@dp-mst-lic-type-0.html
>     - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#3299])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#9424])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#3555])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#3359]) +2 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html
>     - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#3359]) +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-16/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#3359]) +2 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#3555]) +3 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#5354]) +15 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#9067])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#4103])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
>     - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#4103] / [i915#4213])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@torture-bo@pipe-b:
>     - shard-glk:          [PASS][132] -> [DMESG-WARN][133] ([i915#10166] / [i915#1982])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-glk3/igt@kms_cursor_legacy@torture-bo@pipe-b.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-glk5/igt@kms_cursor_legacy@torture-bo@pipe-b.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#9723])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#8588])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#1257])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-17/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#8812])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-3/igt@kms_draw_crc@draw-method-mmap-wc.html
>     - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#8812])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-16/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#3840])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#3555] / [i915#3840])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#3555] / [i915#3840])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#3555] / [i915#3840]) +1 other test skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@kms_dsc@dsc-with-output-formats.html
>     - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#3555] / [i915#3840])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-dg2:          NOTRUN -> [FAIL][144] ([i915#4767])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-3/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#3469])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#4854])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#9337])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-17/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-dg1:          NOTRUN -> [SKIP][148] ([i915#658])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-15/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
>     - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#3637]) +1 other test skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#8381])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>     - shard-dg1:          NOTRUN -> [SKIP][151] ([i915#9934]) +6 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#2672]) +2 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
>     - shard-dg1:          NOTRUN -> [SKIP][153] ([i915#2587] / [i915#2672]) +5 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#2672])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#3458]) +9 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
>     - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#3023]) +15 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#8708]) +28 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#1825]) +29 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
>     - shard-dg1:          NOTRUN -> [SKIP][159] +59 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#9766])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
>     - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#9766])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#3458]) +23 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
>     - shard-tglu:         NOTRUN -> [SKIP][163] +21 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#8708]) +5 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#3555] / [i915#8228]) +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-17/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#3555] / [i915#8228]) +1 other test skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#3555] / [i915#8228])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-1/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#6301])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_panel_fitting@atomic-fastset.html
>     - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#6301])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_plane_lowres@tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#8821])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-3/igt@kms_plane_lowres@tiling-y.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][171] ([i915#8292])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#9423]) +11 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#9423]) +3 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#9423]) +3 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-7/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#9423]) +11 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-17/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#5176] / [i915#9423]) +3 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#5235]) +7 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][178] ([i915#5235]) +3 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#5235]) +11 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][180] +109 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-glk4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#5235] / [i915#9423]) +11 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#5354]) +1 other test skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@kms_pm_backlight@fade-with-dpms.html
>     - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#9812])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-dg1:          NOTRUN -> [SKIP][184] ([i915#9685])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#9340])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-7/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#8430])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_pm_lpsp@screens-disabled.html
>     - shard-dg1:          NOTRUN -> [SKIP][187] ([i915#8430])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#9519]) +3 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][189] -> [SKIP][190] ([i915#9519])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#6524] / [i915#6805])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#11520]) +2 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area:
>     - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#11520]) +7 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-overlay-primary-update-sf-dmg-area:
>     - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#11520]) +1 other test skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@kms_psr2_sf@fbc-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#11520]) +2 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#9683])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-sprite-render:
>     - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#1072] / [i915#9732]) +30 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-16/igt@kms_psr@fbc-pr-sprite-render.html
> 
>   * igt@kms_psr@fbc-psr-primary-page-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#1072] / [i915#9732]) +8 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_psr@fbc-psr-primary-page-flip.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#1072] / [i915#9732]) +13 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-1/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html
> 
>   * igt@kms_psr@psr-sprite-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#9732]) +8 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-7/igt@kms_psr@psr-sprite-mmap-cpu.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#4884])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-13/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>     - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#4235] / [i915#5190])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-tglu:         NOTRUN -> [SKIP][203] ([i915#5289])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#5289]) +2 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-dg1:          NOTRUN -> [SKIP][205] ([i915#5289]) +3 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#3555]) +2 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-3/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-dg1:          NOTRUN -> [SKIP][207] ([i915#3555]) +5 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#8623])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-17/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [FAIL][209] ([i915#9196])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#9906])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-1/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#2437] / [i915#9412]) +1 other test skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-17/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#2437] / [i915#9412])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#2436])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-3/igt@perf@gen8-unprivileged-single-ctx-counters.html
>     - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#2436])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@global-sseu-config-invalid:
>     - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#7387])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@perf@global-sseu-config-invalid.html
> 
>   * igt@perf@mi-rpc:
>     - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#2434])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-1/igt@perf@mi-rpc.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#3291] / [i915#3708])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-3/igt@prime_vgem@basic-write.html
>     - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#3291] / [i915#3708])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@prime_vgem@basic-write.html
>     - shard-dg1:          NOTRUN -> [SKIP][219] ([i915#3708])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-16/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#3708])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-1/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-dg1:          NOTRUN -> [SKIP][221] ([i915#9917])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-18/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [FAIL][222] ([i915#2842]) -> [PASS][223]
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_mmap_offset@clear@smem0:
>     - shard-mtlp:         [INCOMPLETE][224] ([i915#5493]) -> [PASS][225]
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-mtlp-5/igt@gem_mmap_offset@clear@smem0.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-mtlp-3/igt@gem_mmap_offset@clear@smem0.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][226] ([i915#2346]) -> [PASS][227]
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@torture-move@pipe-a:
>     - shard-tglu:         [DMESG-WARN][228] ([i915#10166] / [i915#1982]) -> [PASS][229]
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-tglu-7/igt@kms_cursor_legacy@torture-move@pipe-a.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-6/igt@kms_cursor_legacy@torture-move@pipe-a.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         [FAIL][230] ([i915#9295]) -> [PASS][231]
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-3/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [SKIP][232] ([i915#4281]) -> [PASS][233]
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-5/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [SKIP][234] ([i915#9519]) -> [PASS][235] +2 other tests pass
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
>     - shard-snb:          [FAIL][236] ([i915#9196]) -> [PASS][237]
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-snb5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4:
>     - shard-dg1:          [FAIL][238] ([i915#9196]) -> [PASS][239]
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg1-16/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>     - shard-mtlp:         [FAIL][240] ([i915#9196]) -> [PASS][241]
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-mtlp:         [ABORT][242] ([i915#10131] / [i915#10887] / [i915#9697]) -> [ABORT][243] ([i915#10131] / [i915#10887] / [i915#9820])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
>     - shard-tglu:         [WARN][244] ([i915#2681]) -> [FAIL][245] ([i915#3591])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][246] ([i915#10433] / [i915#3458]) -> [SKIP][247] ([i915#3458]) +3 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][248] ([i915#3458]) -> [SKIP][249] ([i915#10433] / [i915#3458])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][250] ([i915#4816]) -> [SKIP][251] ([i915#4070] / [i915#4816])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_psr@psr-cursor-blt:
>     - shard-dg2:          [SKIP][252] ([i915#1072] / [i915#9732]) -> [SKIP][253] ([i915#1072] / [i915#9673] / [i915#9732])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-dg2-6/igt@kms_psr@psr-cursor-blt.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-11/igt@kms_psr@psr-cursor-blt.html
> 
>   * igt@kms_psr@psr2-primary-blt:
>     - shard-dg2:          [SKIP][254] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][255] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15007/shard-dg2-11/igt@kms_psr@psr2-primary-blt.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/shard-dg2-6/igt@kms_psr@psr2-primary-blt.html
> 
>   
>   [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
>   [i915#10166]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10166
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4879]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
>   [i915#4884]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#4958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958
>   [i915#5176]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5882
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
>   [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
>   [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
>   [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9697
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15007 -> Patchwork_135441v1
> 
>   CI-20190529: 20190529
>   CI_DRM_15007: c4601c83a202942e6af78bbda2a274f60262d1dd @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7903: 5993e109620867e80f6f4f0428db26260ae5d16d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_135441v1: c4601c83a202942e6af78bbda2a274f60262d1dd @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135441v1/index.html
