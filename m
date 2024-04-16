Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AA48A6DC6
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 16:18:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6503A10F0F2;
	Tue, 16 Apr 2024 14:18:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PasgpOMq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36DBC10F0F1
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 14:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713277088; x=1744813088;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v9eyiKnuUaUjEkdLaCvaYMLYm77SdKT6Tq5Tj50t6p0=;
 b=PasgpOMqzNGhnPtPhcNQ2tMSTEPeCv3u/Euq7HgOEB/WUBLo8zNMycKW
 eKAxzKpNOYpAQnraTbR+BP8L9DlLytjauraRgP2iqfylsBY3gegK8NHC4
 cVqQwe+B5YCHF4rRW8dZDKFLH02wNyI+rSPtmGD3xpZx4Ujt1yL2bPtTg
 dNZdwgxSjO0h4ZYhELzDkKEbbR0uY6b3k3CoCl84sXSSxFx7l1auBSevW
 C2hwvrwpKeIXR+IT8q+7e/2IGvi60qdpuVoWjx1AOtUZkhC0IUbfpqLu4
 8N5/kwJrlGxSUVMevU831sGwnAM3mQwV6m6xy/rxFYDxwuWKcNvWH0teU g==;
X-CSE-ConnectionGUID: smEelUnuTw2UYLgHHwEVcg==
X-CSE-MsgGUID: ZgG9Y63gTMiG4Ow8zTXirQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8638753"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="8638753"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 07:18:02 -0700
X-CSE-ConnectionGUID: 2dQ0uHD+RyCH6wJU9rtSOA==
X-CSE-MsgGUID: mKivwMrbRva247m4Ma2iSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="22333436"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.20.174])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 07:17:59 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: lgci.bug.filing@intel.com
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: =?UTF-8?B?4pyX?= Fi.CI.IGT: failure for drm/i915/vma: Fix UAF on
 reopen vs destroy race (rev3)
Date: Tue, 16 Apr 2024 16:17:56 +0200
Message-ID: <3277505.oiGErgHkdL@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <171326460591.1443400.13702094118899111911@8e613ede5ea5>
References: <20240415195310.165934-2-janusz.krzysztofik@linux.intel.com>
 <171326460591.1443400.13702094118899111911@8e613ede5ea5>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

On Tuesday, 16 April 2024 12:50:05 CEST Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/vma: Fix UAF on reopen vs destroy race (rev3)
> URL   : https://patchwork.freedesktop.org/series/132360/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14582_full -> Patchwork_132360v3_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_132360v3_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_132360v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/index.html
> 
> Participating hosts (9 -> 10)
> ------------------------------
> 
>   Additional (1): shard-snb-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_132360v3_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-glk8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-2.html

I think that's not a new issue.  It looks the same as eg. 
http://gfx-ci.igk.intel.com/cibuglog-ng/testresult/1752108558 from 
CI_DRM_14578, and should be reported to the same known issue, i.e., to 
http://gfx-ci.igk.intel.com/cibuglog-ng/issue/10769, I believe.

@BUG Filing, please update filters and re-report.

Thanks,
Janusz

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_132360v3_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][2] ([i915#8411])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-3/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@debugfs_test@basic-hwmon:
>     - shard-mtlp:         NOTRUN -> [SKIP][3] ([i915#9318])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-dg1:          NOTRUN -> [SKIP][4] ([i915#7701])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@device_reset@cold-reset-bound.html
> 
>   * igt@drm_fdinfo@busy-hang@rcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][5] ([i915#8414]) +5 other tests skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@drm_fdinfo@busy-hang@rcs0.html
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
>     - shard-dg2:          NOTRUN -> [SKIP][6] ([i915#8414]) +6 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html
> 
>   * igt@drm_fdinfo@virtual-busy-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][7] ([i915#8414]) +1 other test skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@drm_fdinfo@virtual-busy-hang.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#3555] / [i915#9323])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-3/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg1:          NOTRUN -> [SKIP][9] ([i915#9323]) +1 other test skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#7697])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-4/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
>     - shard-snb:          NOTRUN -> [SKIP][11] ([i915#1099])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-snb1/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#280])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_exec_balancer@bonded-true-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#4812]) +2 other tests skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@gem_exec_balancer@bonded-true-hang.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-dg1:          NOTRUN -> [SKIP][14] ([i915#4036])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#4525])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_capture@capture-invisible@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][16] ([i915#6334]) +1 other test skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@gem_exec_capture@capture-invisible@lmem0.html
> 
>   * igt@gem_exec_capture@many-4k-incremental:
>     - shard-dg2:          NOTRUN -> [FAIL][17] ([i915#9606])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@gem_exec_capture@many-4k-incremental.html
> 
>   * igt@gem_exec_capture@many-4k-zero:
>     - shard-dg1:          NOTRUN -> [FAIL][18] ([i915#9606])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@gem_exec_capture@many-4k-zero.html
>     - shard-glk:          NOTRUN -> [FAIL][19] ([i915#9606])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-glk5/igt@gem_exec_capture@many-4k-zero.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          NOTRUN -> [FAIL][20] ([i915#2846])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-glk3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share:
>     - shard-dg1:          NOTRUN -> [SKIP][21] ([i915#3539] / [i915#4852]) +1 other test skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@gem_exec_fair@basic-none-share.html
> 
>   * igt@gem_exec_fair@basic-none-solo:
>     - shard-mtlp:         NOTRUN -> [SKIP][22] ([i915#4473])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@gem_exec_fair@basic-none-solo.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][23] ([i915#2842]) +1 other test fail
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-rkl:          [PASS][24] -> [FAIL][25] ([i915#2842])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-rkl-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3539]) +1 other test skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-1/igt@gem_exec_fair@basic-pace-solo.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-tglu:         [PASS][27] -> [FAIL][28] ([i915#2842])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-tglu-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-tglu-10/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle:
>     - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#3539]) +1 other test skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@gem_exec_fair@basic-throttle.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-11/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3281]) +9 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read:
>     - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#3281]) +5 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@gem_exec_reloc@basic-cpu-read.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read-active:
>     - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#3281])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-read-active.html
> 
>   * igt@gem_exec_reloc@basic-scanout:
>     - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#3281]) +3 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@gem_exec_reloc@basic-scanout.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4537] / [i915#4812]) +1 other test skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-1/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#4812]) +1 other test skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-none:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4860])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@gem_fence_thrash@bo-write-verify-none.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][38] ([i915#4860]) +4 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@gem_fenced_exec_thrash@no-spare-fences.html
> 
>   * igt@gem_lmem_swapping@heavy-random@lmem0:
>     - shard-dg1:          NOTRUN -> [FAIL][39] ([i915#10378])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@gem_lmem_swapping@heavy-random@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
>     - shard-dg2:          NOTRUN -> [FAIL][40] ([i915#10378])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random@lmem0:
>     - shard-dg1:          [PASS][41] -> [FAIL][42] ([i915#10378])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg1-16/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-14/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#4613]) +3 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-3/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][44] ([i915#4613]) +3 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-glk8/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [PASS][45] -> [TIMEOUT][46] ([i915#5493])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#4565])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html
> 
>   * igt@gem_media_vme:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#284])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_gtt@basic-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#4077]) +12 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@gem_mmap_gtt@basic-wc.html
> 
>   * igt@gem_mmap_gtt@hang:
>     - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#4077]) +10 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@gem_mmap_gtt@hang.html
> 
>   * igt@gem_mmap_gtt@hang-busy:
>     - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#4077]) +1 other test skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@gem_mmap_gtt@hang-busy.html
> 
>   * igt@gem_mmap_wc@bad-offset:
>     - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#4083]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@gem_mmap_wc@bad-offset.html
> 
>   * igt@gem_mmap_wc@invalid-flags:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#4083]) +6 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-1/igt@gem_mmap_wc@invalid-flags.html
> 
>   * igt@gem_mmap_wc@write-prefaulted:
>     - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#4083]) +3 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@gem_mmap_wc@write-prefaulted.html
> 
>   * igt@gem_partial_pwrite_pread@reads-snoop:
>     - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#3282]) +3 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@gem_partial_pwrite_pread@reads-snoop.html
> 
>   * igt@gem_partial_pwrite_pread@write-display:
>     - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#3282]) +1 other test skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-4/igt@gem_partial_pwrite_pread@write-display.html
> 
>   * igt@gem_pread@display:
>     - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#3282])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-1/igt@gem_pread@display.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-glk:          NOTRUN -> [WARN][58] ([i915#2658])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-glk8/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#4270])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#4270]) +4 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4270]) +1 other test skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#4270]) +1 other test skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_readwrite@beyond-eob:
>     - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#3282]) +4 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@gem_readwrite@beyond-eob.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#8428])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#5190] / [i915#8428]) +3 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4885]) +1 other test skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_spin_batch@spin-all-new:
>     - shard-dg2:          NOTRUN -> [FAIL][67] ([i915#5889])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@gem_spin_batch@spin-all-new.html
> 
>   * igt@gem_tiled_pread_basic:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#4079]) +1 other test skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@gem_tiled_pread_basic.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-dg1:          NOTRUN -> [SKIP][69] ([i915#3297])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#3297]) +4 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3297] / [i915#4880])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>     - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#3297])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
> 
>   * igt@gem_userptr_blits@sd-probe:
>     - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#3297] / [i915#4958])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@gem_userptr_blits@sd-probe.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#3297]) +2 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#2527]) +1 other test skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#2856])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#2856]) +4 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@gen9_exec_parse@unaligned-access.html
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#2527]) +3 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_fb_tiling:
>     - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#4881])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@i915_fb_tiling.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [PASS][80] -> [INCOMPLETE][81] ([i915#9849])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg1:          [PASS][82] -> [INCOMPLETE][83] ([i915#9820] / [i915#9849])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg1-15/igt@i915_module_load@reload-with-fault-injection.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         [PASS][84] -> [ABORT][85] ([i915#10131] / [i915#9697])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg2:          [PASS][86] -> [INCOMPLETE][87] ([i915#9820] / [i915#9849])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#6621])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_pm_rps@thresholds-idle@gt0:
>     - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#8925])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@i915_pm_rps@thresholds-idle@gt0.html
> 
>   * igt@i915_pm_rps@thresholds-idle@gt1:
>     - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#3555] / [i915#8925])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@i915_pm_rps@thresholds-idle@gt1.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#7984])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@i915_power@sanity.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#5723])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          NOTRUN -> [FAIL][93] ([i915#10031])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#4212]) +2 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_addfb_basic@tile-pitch-mismatch:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#4212])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-11/igt@kms_addfb_basic@tile-pitch-mismatch.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#8709]) +11 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html
> 
>   * igt@kms_async_flips@invalid-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#6228])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@kms_async_flips@invalid-async-flip.html
> 
>   * igt@kms_async_flips@test-cursor:
>     - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#10333])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_async_flips@test-cursor.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#3555])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#1769] / [i915#3555])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#4538] / [i915#5286]) +4 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#5286]) +3 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-3/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#3638]) +1 other test skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#3638]) +4 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#4538] / [i915#5190]) +10 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglu:         [PASS][106] -> [FAIL][107] ([i915#3743]) +1 other test fail
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>     - shard-mtlp:         NOTRUN -> [SKIP][108] +5 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#4538]) +4 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#10656])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#6095]) +67 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-16/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#10307] / [i915#10434] / [i915#6095]) +4 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#6095]) +3 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-edp-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#10307] / [i915#6095]) +166 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#6095]) +27 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#10278])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#7213]) +3 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm:
>     - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#7828]) +8 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@kms_chamelium_hpd@dp-hpd-storm.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-fast:
>     - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#7828]) +6 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
>     - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#7828]) +1 other test skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#7828]) +5 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-snb:          NOTRUN -> [SKIP][122] +50 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-snb1/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#3116])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-3/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#3299])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-11/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#7118] / [i915#9424])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#9424])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-3/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#9424]) +2 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#7116] / [i915#9424]) +1 other test skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#3555]) +3 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#3555] / [i915#8814])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_cursor_crc@cursor-onscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#3359]) +1 other test skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#3359])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#4103] / [i915#4213])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#4103]) +1 other test skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#4103] / [i915#4213])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#9809])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][137] +28 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-3/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#9067])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#9227])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#9723])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#3555]) +4 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#8812])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#8812])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#3840] / [i915#9688])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#3555] / [i915#3840])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#3555] / [i915#3840]) +1 other test skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@kms_dsc@dsc-with-output-formats.html
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#3555] / [i915#3840])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#4854])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-1/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#1839])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#658])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-3/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#3637]) +1 other test skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][152] -> [FAIL][153] ([i915#2122])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-snb1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-snb7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#8381])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-dg2:          NOTRUN -> [SKIP][155] +22 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-1/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#9934]) +2 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@blocking-wf_vblank@b-hdmi-a4:
>     - shard-dg1:          [PASS][157] -> [FAIL][158] ([i915#2122]) +2 other tests fail
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg1-14/igt@kms_flip@blocking-wf_vblank@b-hdmi-a4.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@kms_flip@blocking-wf_vblank@b-hdmi-a4.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:
>     - shard-glk:          [PASS][159] -> [FAIL][160] ([i915#79])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#8381]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@kms_flip@flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#2587] / [i915#2672]) +3 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#2672]) +2 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#2672]) +2 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#2672]) +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [FAIL][166] ([i915#6880])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          [PASS][167] -> [FAIL][168] ([i915#6880]) +1 other test fail
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#8708]) +14 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#1825]) +6 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
>     - shard-dg1:          NOTRUN -> [SKIP][171] +47 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
>     - shard-snb:          [PASS][172] -> [SKIP][173] +4 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#1825]) +32 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
>     - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#3458]) +16 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#9766])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@plane-fbc-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#10070])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@kms_frontbuffer_tracking@plane-fbc-rte.html
>     - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#10070])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@kms_frontbuffer_tracking@plane-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#8708]) +10 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
>     - shard-mtlp:         [PASS][180] -> [DMESG-WARN][181] ([i915#1982])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#3023]) +16 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#3458]) +14 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#5354]) +34 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#8708]) +5 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#3555] / [i915#8228])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-6/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][187] ([i915#3555] / [i915#8228])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#6301])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@kms_panel_fitting@legacy.html
>     - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#6301])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][190] ([i915#10647]) +1 other test fail
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-glk8/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_lowres@tiling-none@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#3582]) +3 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_plane_lowres@tiling-none@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>     - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#5354] / [i915#9423])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][193] ([i915#8292])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#9423]) +7 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][195] ([i915#5176] / [i915#9423]) +3 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-16/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#9423]) +1 other test skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#5235]) +2 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][198] ([i915#3555] / [i915#5235])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#5235]) +3 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-hdmi-a-4:
>     - shard-dg1:          [PASS][200] -> [DMESG-WARN][201] ([i915#4423]) +1 other test dmesg-warn
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-hdmi-a-4.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#5235] / [i915#9423]) +15 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#5235]) +1 other test skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][204] +330 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-glk3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-dg1:          NOTRUN -> [SKIP][205] ([i915#5354])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#9685])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@kms_pm_dc@dc3co-vpb-simulation.html
>     - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#9685])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [PASS][208] -> [SKIP][209] ([i915#4281])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#8430])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#9519]) +1 other test skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [PASS][212] -> [SKIP][213] ([i915#9519])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg2-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg2:          [PASS][214] -> [FAIL][215] ([i915#8717])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg2-6/igt@kms_pm_rpm@i2c.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-2/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#9519]) +2 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#9519]) +1 other test skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#6524])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-3/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#6524] / [i915#6805])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-11/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#9683])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-11/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-dg1:          NOTRUN -> [SKIP][221] ([i915#9683])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-cursor-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#9688]) +3 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_psr@fbc-pr-cursor-render.html
> 
>   * igt@kms_psr@fbc-pr-sprite-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#1072] / [i915#9673] / [i915#9732]) +2 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-11/igt@kms_psr@fbc-pr-sprite-blt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][224] ([i915#1072] / [i915#9732]) +20 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_psr@psr-sprite-plane-move:
>     - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#1072] / [i915#9732]) +16 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-4/igt@kms_psr@psr-sprite-plane-move.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#1072] / [i915#9732]) +16 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][227] ([i915#4884])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#5289])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-dg1:          NOTRUN -> [SKIP][229] ([i915#5289]) +1 other test skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#4235] / [i915#5190])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90:
>     - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#4235])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@kms_rotation_crc@sprite-rotation-90.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full-aspect:
>     - shard-rkl:          NOTRUN -> [SKIP][232] ([i915#3555])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@kms_scaling_modes@scaling-mode-full-aspect.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-mtlp:         NOTRUN -> [SKIP][233] ([i915#8623])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#9906]) +1 other test skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@kms_vrr@max-min.html
>     - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#9906])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#9906])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-mtlp:         NOTRUN -> [SKIP][237] ([i915#2437])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#2437])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-4/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-glk:          NOTRUN -> [SKIP][239] ([i915#2437]) +1 other test skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-glk6/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf_pmu@busy-double-start@rcs0:
>     - shard-mtlp:         NOTRUN -> [FAIL][240] ([i915#4349]) +1 other test fail
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@perf_pmu@busy-double-start@rcs0.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-dg1:          NOTRUN -> [SKIP][241] ([i915#8850])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#8516])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#3708] / [i915#4077])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#3291] / [i915#3708])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-3/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#3708])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#9917]) +1 other test skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-1/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#9917])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   * igt@syncobj_timeline@invalid-wait-zero-handles:
>     - shard-rkl:          NOTRUN -> [FAIL][248] ([i915#9781])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-4/igt@syncobj_timeline@invalid-wait-zero-handles.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-dg1:          NOTRUN -> [FAIL][249] ([i915#9779])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-dg1:          NOTRUN -> [SKIP][250] ([i915#4818])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@tools_test@sysfs_l3_parity.html
> 
>   * igt@v3d/v3d_get_bo_offset@create-get-offsets:
>     - shard-dg1:          NOTRUN -> [SKIP][251] ([i915#2575]) +8 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@v3d/v3d_get_bo_offset@create-get-offsets.html
> 
>   * igt@v3d/v3d_submit_cl@single-in-sync:
>     - shard-mtlp:         NOTRUN -> [SKIP][252] ([i915#2575]) +2 other tests skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@v3d/v3d_submit_cl@single-in-sync.html
> 
>   * igt@v3d/v3d_submit_csd@bad-flag:
>     - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#2575]) +11 other tests skip
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@v3d/v3d_submit_csd@bad-flag.html
> 
>   * igt@vc4/vc4_purgeable_bo@mark-purgeable:
>     - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#7711]) +7 other tests skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@vc4/vc4_purgeable_bo@mark-purgeable.html
> 
>   * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:
>     - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#7711]) +5 other tests skip
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-10/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html
> 
>   * igt@vc4/vc4_wait_bo@used-bo:
>     - shard-mtlp:         NOTRUN -> [SKIP][256] ([i915#7711]) +1 other test skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-mtlp-5/igt@vc4/vc4_wait_bo@used-bo.html
> 
>   * igt@vc4/vc4_wait_bo@used-bo-0ns:
>     - shard-dg1:          NOTRUN -> [SKIP][257] ([i915#7711]) +9 other tests skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@vc4/vc4_wait_bo@used-bo-0ns.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_freq@sysfs@gt0:
>     - shard-dg2:          [FAIL][258] ([i915#9561]) -> [PASS][259]
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg2-2/igt@gem_ctx_freq@sysfs@gt0.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-4/igt@gem_ctx_freq@sysfs@gt0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglu:         [FAIL][260] ([i915#2842]) -> [PASS][261]
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][262] ([i915#2842]) -> [PASS][263]
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-rkl:          [FAIL][264] ([i915#2842]) -> [PASS][265]
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          [INCOMPLETE][266] ([i915#9820] / [i915#9849]) -> [PASS][267]
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-glk:          [INCOMPLETE][268] ([i915#9849]) -> [PASS][269]
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [INCOMPLETE][270] ([i915#9407]) -> [PASS][271]
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-11/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][272] ([i915#7790]) -> [PASS][273]
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-snb2/igt@i915_pm_rps@reset.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-snb1/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_selftest@live@gt_timelines:
>     - shard-dg2:          [ABORT][274] ([i915#10366] / [i915#10461]) -> [PASS][275]
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg2-5/igt@i915_selftest@live@gt_timelines.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-1/igt@i915_selftest@live@gt_timelines.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1:
>     - shard-tglu:         [FAIL][276] ([i915#2521]) -> [PASS][277]
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-tglu-9/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-tglu-2/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglu:         [FAIL][278] ([i915#3743]) -> [PASS][279]
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_cursor_legacy@torture-move@pipe-a:
>     - shard-tglu:         [DMESG-WARN][280] ([i915#10166] / [i915#1982]) -> [PASS][281]
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-tglu-2/igt@kms_cursor_legacy@torture-move@pipe-a.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-tglu-5/igt@kms_cursor_legacy@torture-move@pipe-a.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:
>     - shard-snb:          [FAIL][282] ([i915#2122]) -> [PASS][283] +3 other tests pass
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-snb7/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-snb1/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [SKIP][284] ([i915#9519]) -> [PASS][285] +1 other test pass
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_setmode@basic@pipe-a-hdmi-a-4:
>     - shard-dg1:          [FAIL][286] ([i915#5465]) -> [PASS][287]
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg1-15/igt@kms_setmode@basic@pipe-a-hdmi-a-4.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-18/igt@kms_setmode@basic@pipe-a-hdmi-a-4.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-dg2:          [INCOMPLETE][288] ([i915#9364]) -> [ABORT][289] ([i915#9846])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg2-4/igt@gem_create@create-ext-cpu-access-big.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_eio@kms:
>     - shard-dg1:          [INCOMPLETE][290] ([i915#10513] / [i915#1982]) -> [INCOMPLETE][291] ([i915#10513])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg1-14/igt@gem_eio@kms.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-15/igt@gem_eio@kms.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglu:         [INCOMPLETE][292] -> [INCOMPLETE][293] ([i915#9820])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-tglu-4/igt@i915_module_load@reload-with-fault-injection.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-tglu-6/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
>     - shard-dg1:          [SKIP][294] ([i915#9723]) -> [SKIP][295] ([i915#4423] / [i915#9723])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg1-17/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][296] ([i915#10433] / [i915#3458]) -> [SKIP][297] ([i915#3458])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:
>     - shard-dg1:          [SKIP][298] -> [SKIP][299] ([i915#4423])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][300] ([i915#3458]) -> [SKIP][301] ([i915#10433] / [i915#3458]) +4 other tests skip
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          [SKIP][302] ([i915#3361]) -> [FAIL][303] ([i915#9295])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-rkl-4/igt@kms_pm_dc@dc6-dpms.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_psr@fbc-pr-no-drrs:
>     - shard-dg1:          [SKIP][304] ([i915#1072] / [i915#9732]) -> [SKIP][305] ([i915#1072] / [i915#4423] / [i915#9732])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg1-17/igt@kms_psr@fbc-pr-no-drrs.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg1-17/igt@kms_psr@fbc-pr-no-drrs.html
> 
>   * igt@kms_psr@fbc-pr-primary-mmap-gtt:
>     - shard-dg2:          [SKIP][306] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][307] ([i915#1072] / [i915#9732]) +12 other tests skip
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg2-11/igt@kms_psr@fbc-pr-primary-mmap-gtt.html
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-6/igt@kms_psr@fbc-pr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-mmap-cpu:
>     - shard-dg2:          [SKIP][308] ([i915#1072] / [i915#9732]) -> [SKIP][309] ([i915#1072] / [i915#9673] / [i915#9732]) +5 other tests skip
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg2-10/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-11/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html
> 
>   * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>     - shard-dg2:          [INCOMPLETE][310] ([i915#5493]) -> [CRASH][311] ([i915#9351])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/shard-dg2-10/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10031]: https://gitlab.freedesktop.org/drm/intel/issues/10031
>   [i915#10070]: https://gitlab.freedesktop.org/drm/intel/issues/10070
>   [i915#10131]: https://gitlab.freedesktop.org/drm/intel/issues/10131
>   [i915#10166]: https://gitlab.freedesktop.org/drm/intel/issues/10166
>   [i915#10278]: https://gitlab.freedesktop.org/drm/intel/issues/10278
>   [i915#10307]: https://gitlab.freedesktop.org/drm/intel/issues/10307
>   [i915#10333]: https://gitlab.freedesktop.org/drm/intel/issues/10333
>   [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
>   [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
>   [i915#10433]: https://gitlab.freedesktop.org/drm/intel/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/intel/issues/10434
>   [i915#10461]: https://gitlab.freedesktop.org/drm/intel/issues/10461
>   [i915#10513]: https://gitlab.freedesktop.org/drm/intel/issues/10513
>   [i915#10647]: https://gitlab.freedesktop.org/drm/intel/issues/10647
>   [i915#10656]: https://gitlab.freedesktop.org/drm/intel/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3582]: https://gitlab.freedesktop.org/drm/intel/issues/3582
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5889]: https://gitlab.freedesktop.org/drm/intel/issues/5889
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/intel/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
>   [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8717]: https://gitlab.freedesktop.org/drm/intel/issues/8717
>   [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8850]: https://gitlab.freedesktop.org/drm/intel/issues/8850
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
>   [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
>   [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
>   [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
>   [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
>   [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
>   [i915#9364]: https://gitlab.freedesktop.org/drm/intel/issues/9364
>   [i915#9407]: https://gitlab.freedesktop.org/drm/intel/issues/9407
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>   [i915#9561]: https://gitlab.freedesktop.org/drm/intel/issues/9561
>   [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
>   [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
>   [i915#9697]: https://gitlab.freedesktop.org/drm/intel/issues/9697
>   [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/intel/issues/9766
>   [i915#9779]: https://gitlab.freedesktop.org/drm/intel/issues/9779
>   [i915#9781]: https://gitlab.freedesktop.org/drm/intel/issues/9781
>   [i915#9809]: https://gitlab.freedesktop.org/drm/intel/issues/9809
>   [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
>   [i915#9846]: https://gitlab.freedesktop.org/drm/intel/issues/9846
>   [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
>   [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/intel/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14582 -> Patchwork_132360v3
> 
>   CI-20190529: 20190529
>   CI_DRM_14582: 7bc330055f5c2924b42e389887691fea3f401a45 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7806: 849cd963ce7e8222dcf17cc872d355181fd2c2a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_132360v3: 7bc330055f5c2924b42e389887691fea3f401a45 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/index.html
> 




