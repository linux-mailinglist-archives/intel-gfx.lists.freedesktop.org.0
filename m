Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB71905922
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2024 18:50:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1CFF10E8BE;
	Wed, 12 Jun 2024 16:50:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BX1QeBuE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 726ED10E8E1;
 Wed, 12 Jun 2024 16:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718211018; x=1749747018;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=q53pT1t0JSMJGM5cGUwa7NyW7C7gBWLsCJ124x+J0iA=;
 b=BX1QeBuEpY9qPhe+TBKdu6g3QlPlwejabWSs0f8ACB4Xe0cnvRjCZYuc
 NbO4NF7v3lme+Bhl13XbdC/uL8lfIcYuq1OVxcoU767M/fIQ7hMnlIsEK
 UoS0VDklX/Fn/ZwnK5wyWfMxpw5wrNDHqbnTBnP3GcLk8zt1XfIwEYtgy
 DsgO1cp6635/Si08dC3O2+WRUw6gkORvJN8L/4d/vYzcf1Y40oXZ/TcWQ
 rVwEZDmn+jK7DEfYvDvMHP5BIUjppbZD1YNotcQJu/529+zG7w2ZNxhQZ
 xbUCxDuZQANtMcfaKtT0cCvf0Gh7zXhRba5IESpHgAozc9yBVqb9X0HMZ w==;
X-CSE-ConnectionGUID: bIUCrb4PR0S1drbrbgBQNA==
X-CSE-MsgGUID: aaCdDuVRSRCM1NqcHZH8nw==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="25569037"
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="25569037"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 09:50:18 -0700
X-CSE-ConnectionGUID: 7v2eV53qSnCziHGeSofsnQ==
X-CSE-MsgGUID: W/Ztu4fXQCqnqqNY6V28gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="39959497"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 09:50:16 -0700
Date: Wed, 12 Jun 2024 19:50:24 +0300
From: Imre Deak <imre.deak@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Jani Saarinen <jani.saarinen@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?=
 =?utf-8?Q?e_for_Revert_=22e1000e?= =?utf-8?Q?=3A?= move force SMBUS near the
 end of enable_ulp function"
Message-ID: <ZmnR0MX3/qrz2LUn@ideak-desk.fi.intel.com>
References: <20240610074627.3762842-1-chaitanya.kumar.borah@intel.com>
 <171801452373.31115.7190607009900665670@a6498e030952>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <171801452373.31115.7190607009900665670@a6498e030952>
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

On Mon, Jun 10, 2024 at 10:15:23AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Revert "e1000e: move force SMBUS near the end of enable_ulp function"
> URL   : https://patchwork.freedesktop.org/series/134664/
> State : failure

Thanks for the patch and acks, I pushed it to core-for-CI. The failures
are unrelated, see below.

Note that the corresponding upstream revert [1] hasn't been accepted
yet, however it clearly resolves a lot of CI failures (on DG1/DG2 at
least) caused by the reverted commit.

[1] https://lore.kernel.org/netdev/20240611062416.16440-1-hui.wang@canonical.com/T/#mab132f0ab1be62b340deb32c38d6bb0addf08593
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14905_full -> Patchwork_134664v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_134664v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_134664v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_134664v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_rps@thresholds-idle-park@gt0:
>     - shard-glk:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-glk9/igt@i915_pm_rps@thresholds-idle-park@gt0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-glk9/igt@i915_pm_rps@thresholds-idle-park@gt0.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:
>     - shard-snb:          [PASS][3] -> [CRASH][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html

Both seem to be unrelated, since neither of the above machines uses the
e1000e driver.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_134664v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-dg1:          NOTRUN -> [SKIP][5] ([i915#8411])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-mtlp:         NOTRUN -> [SKIP][6] ([i915#11078])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][7] ([i915#9408])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-15/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@drm_fdinfo@busy-check-all@bcs0:
>     - shard-dg1:          NOTRUN -> [SKIP][8] ([i915#8414]) +10 other tests skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@drm_fdinfo@busy-check-all@bcs0.html
> 
>   * igt@drm_fdinfo@busy-idle-check-all@vcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#8414]) +6 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@drm_fdinfo@busy-idle-check-all@vcs0.html
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][10] ([i915#7742])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#7697])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-tglu:         NOTRUN -> [SKIP][12] ([i915#3555] / [i915#9323])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-mtlp:         NOTRUN -> [SKIP][13] ([i915#9323])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#7697]) +1 other test skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#6335])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#8555])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-8/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg1:          NOTRUN -> [SKIP][17] ([i915#8555]) +2 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-17/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#280])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-dg1:          NOTRUN -> [SKIP][19] ([i915#280])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-dg2:          NOTRUN -> [FAIL][20] ([i915#5784])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@bonded-true-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#4812]) +2 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@gem_exec_balancer@bonded-true-hang.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#4525])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-tglu:         NOTRUN -> [FAIL][23] ([i915#6117])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_capture@capture-invisible@lmem0:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#6334]) +1 other test skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@gem_exec_capture@capture-invisible@lmem0.html
> 
>   * igt@gem_exec_capture@capture@vecs0-smem:
>     - shard-mtlp:         NOTRUN -> [FAIL][25] ([i915#10386])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@gem_exec_capture@capture@vecs0-smem.html
> 
>   * igt@gem_exec_capture@many-4k-incremental:
>     - shard-rkl:          NOTRUN -> [FAIL][26] ([i915#9606]) +1 other test fail
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@gem_exec_capture@many-4k-incremental.html
>     - shard-dg1:          NOTRUN -> [FAIL][27] ([i915#9606])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@gem_exec_capture@many-4k-incremental.html
> 
>   * igt@gem_exec_fair@basic-none-rrul:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@gem_exec_fair@basic-none-rrul.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-tglu:         NOTRUN -> [FAIL][29] ([i915#2842]) +4 other tests fail
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][30] ([i915#2842]) +3 other tests fail
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][31] ([i915#2842]) +1 other test fail
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_fence@submit67:
>     - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#4812])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@gem_exec_fence@submit67.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3539]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_exec_flush@basic-wb-ro-before-default:
>     - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@gem_exec_flush@basic-wb-ro-before-default.html
> 
>   * igt@gem_exec_reloc@basic-scanout:
>     - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#3281]) +5 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@gem_exec_reloc@basic-scanout.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#3281]) +3 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-8/igt@gem_exec_reloc@basic-write-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-read-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#3281]) +5 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4537] / [i915#4812]) +1 other test skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@gem_exec_schedule@preempt-queue-chain.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts:
>     - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#4812]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-17/igt@gem_exec_schedule@preempt-queue-contexts.html
> 
>   * igt@gem_fence_thrash@bo-copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#4860])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@gem_fence_thrash@bo-copy.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#4860]) +1 other test skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@gem_fence_thrash@bo-write-verify-x.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-y:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4860]) +1 other test skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@gem_fence_thrash@bo-write-verify-y.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#4613]) +1 other test skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
>     - shard-dg2:          [PASS][44] -> [FAIL][45] ([i915#10378])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-8/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
>     - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#4565]) +1 other test skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#4613])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][48] ([i915#4613]) +1 other test skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-glk9/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_mmap@pf-nonblock:
>     - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#4083]) +4 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@gem_mmap@pf-nonblock.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy:
>     - shard-dg1:          NOTRUN -> [SKIP][50] ([i915#4077]) +7 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-x:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#4077]) +8 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@gem_mmap_gtt@fault-concurrent-x.html
> 
>   * igt@gem_mmap_gtt@hang-busy:
>     - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#4077]) +2 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@gem_mmap_gtt@hang-busy.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][53] ([i915#4083])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@gem_mmap_wc@write-cpu-read-wc.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
>     - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#4083]) +1 other test skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#3282]) +2 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-tglu:         NOTRUN -> [WARN][56] ([i915#2658])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#3282]) +1 other test skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@gem_pwrite@basic-exhaustion.html
>     - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#3282]) +5 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#4270]) +3 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-15/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#4270])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4270])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#4270]) +1 other test skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#5190] / [i915#8428]) +3 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.html
> 
>   * igt@gem_render_copy@yf-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#8428])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@gem_render_copy@yf-tiled.html
> 
>   * igt@gem_tiled_pread_basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#4079])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@gem_tiled_pread_basic.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4079])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-11/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_unfence_active_buffers:
>     - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#4879])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@gem_unfence_active_buffers.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-mtlp:         NOTRUN -> [SKIP][68] ([i915#3297])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#3297]) +1 other test skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#3282] / [i915#3297])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3297] / [i915#4880])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>     - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#3297] / [i915#4880])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-17/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#3297]) +3 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#3281] / [i915#3297])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#3297]) +1 other test skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#2527]) +2 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-17/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#2856])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#2527]) +2 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#2856]) +2 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_module_load@load:
>     - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#6227])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@i915_module_load@load.html
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#6227])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [PASS][82] -> [INCOMPLETE][83] ([i915#9849])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-tglu:         [PASS][84] -> [INCOMPLETE][85] ([i915#10047] / [i915#9820])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         [PASS][86] -> [ABORT][87] ([i915#10131] / [i915#10887] / [i915#9820])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg2:          NOTRUN -> [ABORT][88] ([i915#9820])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#7178])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
>     - shard-dg1:          [PASS][90] -> [FAIL][91] ([i915#3591])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
> 
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#6621])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@i915_pm_rps@min-max-config-loaded.html
> 
>   * igt@i915_pm_rps@thresholds-idle@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#8925]) +1 other test skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-11/igt@i915_pm_rps@thresholds-idle@gt0.html
> 
>   * igt@i915_pm_rps@waitboost:
>     - shard-dg1:          NOTRUN -> [FAIL][94] ([i915#11295])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@i915_pm_rps@waitboost.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#4387])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#6245])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@i915_query@hwconfig_table.html
> 
>   * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>     - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#4212])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#5190])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#4212]) +1 other test skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#4215])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#8709]) +3 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#8709]) +7 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#9531])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#1769] / [i915#3555])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#1769] / [i915#3555])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#5286]) +4 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
>     - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#4538] / [i915#5286]) +4 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
>     - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#5286])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#3638]) +2 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
>     - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#3638]) +2 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#4538] / [i915#5190]) +9 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#4538]) +5 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#10656]) +1 other test skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-17/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#6095]) +99 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#10278])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#10307] / [i915#6095]) +161 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#6095]) +15 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#6095]) +11 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#6095]) +75 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-8/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#3742])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#4087]) +3 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_chamelium_color@ctm-blue-to-red:
>     - shard-mtlp:         NOTRUN -> [SKIP][123] +5 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_chamelium_color@ctm-blue-to-red.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#7828]) +5 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_frames@dp-crc-multiple:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#7828]) +6 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-11/igt@kms_chamelium_frames@dp-crc-multiple.html
> 
>   * igt@kms_chamelium_frames@dp-crc-single:
>     - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#7828]) +10 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@kms_chamelium_frames@dp-crc-single.html
> 
>   * igt@kms_chamelium_frames@hdmi-frame-dump:
>     - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#7828]) +1 other test skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_chamelium_frames@hdmi-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#7828]) +1 other test skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#3299])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#3299])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#9433])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-17/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#3359])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-128x42:
>     - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#8814]) +1 other test skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-random-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#3555]) +6 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#3359]) +2 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-15/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#3359])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#3555]) +5 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#3359])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][139] ([i915#4103])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#4103] / [i915#4213])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][141] +29 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#9809])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          NOTRUN -> [FAIL][143] ([i915#2346])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#9067])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>     - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#9067])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#4103] / [i915#4213])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-17/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#9723])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#9227])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-5/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#9723])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#8588])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#3804])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#3555]) +3 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#8812])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#3555] / [i915#3840]) +1 other test skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#3840])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#3555] / [i915#3840])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#3555] / [i915#3840])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#3555] / [i915#3840])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@kms_dsc@dsc-with-formats.html
>     - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#3555] / [i915#3840])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#3469])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#4854])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-17/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#1839])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#9337])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-15/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
>     - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#3637])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#3637]) +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#9934]) +6 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][167] -> [FAIL][168] ([i915#2122])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-snb2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][169] +23 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@flip-vs-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#8381])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@kms_flip@flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#2587] / [i915#2672]) +1 other test skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#2672]) +1 other test skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#2587] / [i915#2672]) +4 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#2672]) +3 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#2672])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - shard-mtlp:         NOTRUN -> [SKIP][176] ([i915#5274])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_force_connector_basic@prune-stale-modes.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#1825]) +23 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#5354]) +25 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#3458]) +18 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#3023]) +21 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
>     - shard-dg1:          NOTRUN -> [SKIP][181] +43 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:
>     - shard-tglu:         NOTRUN -> [SKIP][182] +19 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#1825]) +7 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#8708]) +9 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#8708]) +22 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][186] ([i915#3458]) +17 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#8708]) +1 other test skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#433])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-17/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#3555] / [i915#8228]) +1 other test skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@kms_hdr@bpc-switch.html
>     - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#3555] / [i915#8228])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-6/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#3555] / [i915#8228]) +2 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#6301])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane_lowres@tiling-4@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][193] ([i915#3582]) +3 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_plane_lowres@tiling-4@pipe-b-edp-1.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#3555] / [i915#8806])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][195] ([i915#8292])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#9423]) +7 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][197] ([i915#9423]) +3 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#9423]) +11 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-15/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#9423]) +5 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#5176] / [i915#9423]) +1 other test skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#5235]) +3 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#5235]) +19 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#5235]) +3 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#5235] / [i915#9423]) +19 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][205] +186 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-glk3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_pm_backlight@fade-with-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][206] ([i915#5354]) +1 other test skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-15/igt@kms_pm_backlight@fade-with-suspend.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#9685])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-8/igt@kms_pm_dc@dc3co-vpb-simulation.html
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#9685])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         [PASS][209] -> [FAIL][210] ([i915#9295])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#4281])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#9340])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-rkl:          [PASS][213] -> [SKIP][214] ([i915#9519])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-rkl-6/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg1:          NOTRUN -> [SKIP][215] ([i915#9519])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#9519]) +1 other test skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>     - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#9519])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf@psr2-pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][218] ([i915#9808]) +1 other test skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf@psr2-pipe-a-edp-1.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#9683])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-11/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>     - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#9683])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#9683])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-dg1:          NOTRUN -> [SKIP][222] ([i915#9683]) +1 other test skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#4348])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-sprite-render:
>     - shard-tglu:         NOTRUN -> [SKIP][224] ([i915#9732]) +4 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@kms_psr@fbc-pr-sprite-render.html
> 
>   * igt@kms_psr@fbc-psr-primary-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#1072] / [i915#9732]) +12 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@kms_psr@fbc-psr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@pr-basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][226] ([i915#9688]) +2 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_psr@pr-basic.html
> 
>   * igt@kms_psr@psr2-no-drrs:
>     - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#1072] / [i915#9673] / [i915#9732]) +4 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-11/igt@kms_psr@psr2-no-drrs.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#1072] / [i915#9732]) +15 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_psr@psr2-sprite-mmap-cpu.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][229] ([i915#1072] / [i915#9732]) +17 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@kms_psr@psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#4884])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-17/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-dg1:          NOTRUN -> [SKIP][231] ([i915#5289])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-tglu:         NOTRUN -> [SKIP][232] ([i915#5289])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
>     - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#5190]) +1 other test skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#4235] / [i915#5190])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full-aspect:
>     - shard-tglu:         NOTRUN -> [SKIP][235] ([i915#3555])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-full-aspect.html
> 
>   * igt@kms_setmode@basic@pipe-a-hdmi-a-4:
>     - shard-dg1:          [PASS][236] -> [FAIL][237] ([i915#5465]) +1 other test fail
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg1-16/igt@kms_setmode@basic@pipe-a-hdmi-a-4.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-18/igt@kms_setmode@basic@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_setmode@invalid-clone-exclusive-crtc:
>     - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#3555] / [i915#8809] / [i915#8823])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@kms_setmode@invalid-clone-exclusive-crtc.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4:
>     - shard-dg1:          [PASS][239] -> [FAIL][240] ([i915#9196])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-15/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
>     - shard-tglu:         [PASS][241] -> [FAIL][242] ([i915#9196])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#9906])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-dg1:          NOTRUN -> [SKIP][244] ([i915#9906])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-glk:          NOTRUN -> [SKIP][245] ([i915#2437]) +1 other test skip
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-glk9/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#2437] / [i915#9412])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-11/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
>     - shard-tglu:         NOTRUN -> [SKIP][247] ([i915#2437] / [i915#9412])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#2437] / [i915#9412])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@global-sseu-config-invalid:
>     - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#7387])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@perf@global-sseu-config-invalid.html
> 
>   * igt@perf@mi-rpc:
>     - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#2434])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-8/igt@perf@mi-rpc.html
>     - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#2434])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-5/igt@perf@mi-rpc.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-dg1:          NOTRUN -> [SKIP][252] ([i915#2433])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][253] ([i915#3708] / [i915#4077])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@prime_vgem@basic-gtt.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#3291] / [i915#3708])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@prime_vgem@basic-write.html
>     - shard-dg1:          NOTRUN -> [SKIP][255] ([i915#3708])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@prime_vgem@basic-write.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-dg1:          NOTRUN -> [SKIP][256] ([i915#9917])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@sriov_basic@enable-vfs-bind-unbind-each.html
>     - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#9917])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   * igt@syncobj_timeline@invalid-wait-zero-handles:
>     - shard-dg2:          NOTRUN -> [FAIL][258] ([i915#9781])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-7/igt@syncobj_timeline@invalid-wait-zero-handles.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-dg2:          NOTRUN -> [FAIL][259] ([i915#9779])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-11/igt@syncobj_wait@invalid-wait-zero-handles.html
>     - shard-tglu:         NOTRUN -> [FAIL][260] ([i915#9779])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   * igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync:
>     - shard-tglu:         NOTRUN -> [SKIP][261] ([i915#2575]) +4 other tests skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-8/igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync.html
> 
>   * igt@v3d/v3d_submit_cl@bad-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][262] ([i915#2575]) +9 other tests skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-8/igt@v3d/v3d_submit_cl@bad-bo.html
> 
>   * igt@v3d/v3d_submit_cl@single-in-sync:
>     - shard-dg1:          NOTRUN -> [SKIP][263] ([i915#2575]) +13 other tests skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-17/igt@v3d/v3d_submit_cl@single-in-sync.html
> 
>   * igt@v3d/v3d_submit_csd@bad-perfmon:
>     - shard-mtlp:         NOTRUN -> [SKIP][264] ([i915#2575]) +2 other tests skip
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@v3d/v3d_submit_csd@bad-perfmon.html
> 
>   * igt@vc4/vc4_perfmon@create-two-perfmon:
>     - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#7711]) +5 other tests skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@vc4/vc4_perfmon@create-two-perfmon.html
> 
>   * igt@vc4/vc4_perfmon@destroy-invalid-perfmon:
>     - shard-dg1:          NOTRUN -> [SKIP][266] ([i915#7711]) +8 other tests skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-17/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html
> 
>   * igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:
>     - shard-mtlp:         NOTRUN -> [SKIP][267] ([i915#7711])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-mtlp-7/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html
> 
>   * igt@vc4/vc4_tiling@get-bad-modifier:
>     - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#7711]) +7 other tests skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@vc4/vc4_tiling@get-bad-modifier.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-dg2:          [FAIL][269] ([i915#10086]) -> [PASS][270]
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-11/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vecs1:
>     - shard-dg2:          [FAIL][271] ([i915#10086] / [i915#11279]) -> [PASS][272] +5 other tests pass
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3@vecs1.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-11/igt@gem_ctx_isolation@preservation-s3@vecs1.html
> 
>   * igt@gem_eio@suspend:
>     - shard-dg1:          [FAIL][273] ([i915#11269]) -> [PASS][274] +3 other tests pass
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg1-15/igt@gem_eio@suspend.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-16/igt@gem_eio@suspend.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglu:         [FAIL][275] ([i915#2842]) -> [PASS][276]
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s3-devices@lmem0:
>     - shard-dg2:          [FAIL][277] ([i915#11269]) -> [PASS][278] +2 other tests pass
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-4/igt@gem_exec_suspend@basic-s3-devices@lmem0.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-8/igt@gem_exec_suspend@basic-s3-devices@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random@lmem0:
>     - shard-dg2:          [FAIL][279] ([i915#10378]) -> [PASS][280]
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-3/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-3/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-dg2:          [FAIL][281] ([i915#11279]) -> [PASS][282] +2 other tests pass
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-11/igt@gem_softpin@noreloc-s3.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-6/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-dg1:          [FAIL][283] ([i915#10177] / [i915#11279]) -> [PASS][284]
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg1-13/igt@gem_workarounds@suspend-resume-context.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-dg2:          [FAIL][285] ([i915#10177] / [i915#11279]) -> [PASS][286] +2 other tests pass
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-8/igt@gem_workarounds@suspend-resume-fd.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@gem_workarounds@suspend-resume-fd.html
>     - shard-dg1:          [FAIL][287] ([i915#10177]) -> [PASS][288]
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg1-16/igt@gem_workarounds@suspend-resume-fd.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-18/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-dg1:          [FAIL][289] ([i915#3591]) -> [PASS][290]
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-dg2:          [FAIL][291] ([i915#10314] / [i915#11279]) -> [PASS][292] +1 other test pass
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-11/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-6/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - shard-dg2:          [FAIL][293] ([i915#10031] / [i915#11279]) -> [PASS][294] +4 other tests pass
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-5/igt@i915_suspend@basic-s2idle-without-i915.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-5/igt@i915_suspend@basic-s2idle-without-i915.html
>     - shard-dg1:          [FAIL][295] ([i915#10031]) -> [PASS][296]
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg1-18/igt@i915_suspend@basic-s2idle-without-i915.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-13/igt@i915_suspend@basic-s2idle-without-i915.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-dg1:          [FAIL][297] ([i915#10031] / [i915#11279]) -> [PASS][298]
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg1-16/igt@i915_suspend@debugfs-reader.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-18/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-4:
>     - shard-dg1:          [FAIL][299] ([i915#11298]) -> [PASS][300]
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg1-18/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-4.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-17/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4:
>     - shard-dg1:          [FAIL][301] ([i915#11279] / [i915#11298]) -> [PASS][302]
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg1-18/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-17/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          [SKIP][303] ([i915#1257]) -> [PASS][304]
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-8/igt@kms_dp_aux_dev.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-11/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-dg1:          [FAIL][305] ([i915#11139] / [i915#11279]) -> [PASS][306]
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg1-17/igt@kms_fbcon_fbt@fbc-suspend.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-15/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-hdmi-a4:
>     - shard-dg1:          [FAIL][307] ([i915#10545] / [i915#11279]) -> [PASS][308] +3 other tests pass
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg1-17/igt@kms_flip@flip-vs-suspend@b-hdmi-a4.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-15/igt@kms_flip@flip-vs-suspend@b-hdmi-a4.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>     - shard-snb:          [SKIP][309] -> [PASS][310]
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-dg1:          [FAIL][311] ([i915#11279] / [i915#11280]) -> [PASS][312]
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
>     - shard-dg2:          [FAIL][313] ([i915#11279] / [i915#11284]) -> [PASS][314]
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
>     - shard-dg1:          [FAIL][315] ([i915#11279] / [i915#11284]) -> [PASS][316]
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg1-16/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-18/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:
>     - shard-dg1:          [FAIL][317] ([i915#11279]) -> [PASS][318] +3 other tests pass
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg1-16/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg1-18/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-dg2:          [SKIP][319] ([i915#9519]) -> [PASS][320] +1 other test pass
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-8/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-11/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][321] ([i915#9519]) -> [PASS][322] +2 other tests pass
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@system-suspend-modeset:
>     - shard-dg2:          [FAIL][323] ([i915#11273] / [i915#11279]) -> [PASS][324]
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-5/igt@kms_pm_rpm@system-suspend-modeset.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-1/igt@kms_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-3:
>     - shard-dg2:          [FAIL][325] ([i915#10305] / [i915#11279]) -> [PASS][326] +1 other test pass
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-5/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-3.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-5/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-3.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-dg2:          [FAIL][327] ([i915#10864] / [i915#11279]) -> [PASS][328]
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-6/igt@perf_pmu@rc6-suspend.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-6/igt@perf_pmu@rc6-suspend.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:
>     - shard-dg2:          [SKIP][329] ([i915#3458]) -> [SKIP][330] ([i915#10433] / [i915#3458]) +1 other test skip
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][331] ([i915#4816]) -> [SKIP][332] ([i915#4070] / [i915#4816])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][333] ([i915#4281]) -> [SKIP][334] ([i915#3361])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-move:
>     - shard-dg2:          [SKIP][335] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][336] ([i915#1072] / [i915#9732]) +8 other tests skip
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-11/igt@kms_psr@fbc-psr-cursor-plane-move.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-2/igt@kms_psr@fbc-psr-cursor-plane-move.html
> 
>   * igt@kms_psr@fbc-psr-suspend:
>     - shard-dg2:          [SKIP][337] ([i915#1072] / [i915#9732]) -> [SKIP][338] ([i915#1072] / [i915#9673] / [i915#9732]) +9 other tests skip
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-5/igt@kms_psr@fbc-psr-suspend.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-11/igt@kms_psr@fbc-psr-suspend.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][339] ([i915#7484]) -> [FAIL][340] ([i915#9100])
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html
> 
>   
>   [i915#10031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10031
>   [i915#10047]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10047
>   [i915#10086]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10086
>   [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
>   [i915#10177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10177
>   [i915#10278]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278
>   [i915#10305]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10305
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10314
>   [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
>   [i915#10386]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10386
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10545
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10864]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10864
>   [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11139]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11139
>   [i915#11269]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11269
>   [i915#11273]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11273
>   [i915#11279]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11279
>   [i915#11280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11280
>   [i915#11284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11284
>   [i915#11295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11295
>   [i915#11298]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11298
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3582
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/433
>   [i915#4348]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4348
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4879]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4884]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4884
>   [i915#5176]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
>   [i915#5274]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6117
>   [i915#6227]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6227
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#7178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7178
>   [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
>   [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8823]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8823
>   [i915#8925]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8925
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9227]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9227
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9408]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9408
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9606]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9606
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9779]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9779
>   [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
>   [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9849
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14905 -> Patchwork_134664v1
> 
>   CI-20190529: 20190529
>   CI_DRM_14905: c410bb641ea861fdd70c14ed8cc30d0d9a2ef587 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7880: 73618605b4370cf902267aaf1d25666ff5e26112 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_134664v1: c410bb641ea861fdd70c14ed8cc30d0d9a2ef587 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/index.html
