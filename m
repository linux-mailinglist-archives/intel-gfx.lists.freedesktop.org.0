Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFB0978343
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 17:05:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E8F610E113;
	Fri, 13 Sep 2024 15:05:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YYOeT+Do";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18D1510E113;
 Fri, 13 Sep 2024 15:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726239906; x=1757775906;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=LeKwasEHEbKU+2joN9BRFXKhgxho6kZ+ljgqwSD76L8=;
 b=YYOeT+Dooza6zH5BqNCpSkX22n5e64XCSm86S/gcHVIitQ1uBaqZHaUh
 +072JQrzrR6oTvnw9EP/6UuL8q5HTbTIfLgnq4JxHOa0Gf66fa3LVhm+k
 NzNzbYdjOAUse4dg2RhYNlnr+LYqH5WuP9oE3KUXBSNUZhw14h2TDIILC
 1/yYeDop+p4tQrCHkAeiBE/Dx7a+kh+2kTuTn7t1nSrRb3OIMM+GJX+mR
 tv/kNqyWQbZwIGBWrtm/m26zfm94tWI3HR0gwEqgQpS/xdmxclULByvmM
 AxqknkdoYBzUwnze0KBsFxbkSd3G52XDcS0M2CviHvH7dCtuknmtqxowR A==;
X-CSE-ConnectionGUID: HHrRTDaSTqSxs0TasjEJog==
X-CSE-MsgGUID: NhctgdKzRH2PJ9VCZayfXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="25016942"
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="25016942"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 08:05:06 -0700
X-CSE-ConnectionGUID: SzP7nUNyTsq9avyc3+A9Tw==
X-CSE-MsgGUID: wNlqZ8SqR5qtPlczH7fArA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="67941202"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 08:05:05 -0700
Date: Fri, 13 Sep 2024 18:05:28 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?= =?utf-8?Q?e?= for
 drm/i915/dp: Fix AUX IO power enabling for eDP PSR
Message-ID: <ZuRUuHqoKmxHOn0S@ideak-desk.fi.intel.com>
References: <20240910111847.2995725-1-imre.deak@intel.com>
 <172604241742.983746.8447693495320489262@2413ebb6fbb6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <172604241742.983746.8447693495320489262@2413ebb6fbb6>
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

On Wed, Sep 11, 2024 at 08:13:37AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Fix AUX IO power enabling for eDP PSR
> URL   : https://patchwork.freedesktop.org/series/138466/
> State : failure

Thanks for the review, pushed the patch to drm-intel-next with a TODO:
comment added wrt. PR ALPM/main-link off modes, both on eDP and DP.

The failures are unrelated, see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15388_full -> Patchwork_138466v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_138466v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_138466v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_138466v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_atomic_transition@modeset-transition:
>     - shard-glk:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-glk5/igt@kms_atomic_transition@modeset-transition.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-glk8/igt@kms_atomic_transition@modeset-transition.html

No eDP or DP sinks connected, so the change has no effect. Looks like
the issue is:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238

>   * igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-a-dp-4.html

Only a DP sink is connected, where PR is disabled. The test 
actually passes:
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt_runner12.txt

So something wrong with the logging, maybe network?

>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:
>     - shard-rkl:          NOTRUN -> [SKIP][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html

No eDP/DP sinks connected, so unrelated.

> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][5] +1 other test incomplete
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-glk9/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html

No eDP/DP sinks connected, so unrelated.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_138466v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#8411]) +1 other test skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#8411])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@api_intel_bb@crc32:
>     - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#6230])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-4/igt@api_intel_bb@crc32.html
> 
>   * igt@drm_fdinfo@all-busy-check-all:
>     - shard-mtlp:         NOTRUN -> [SKIP][9] ([i915#8414])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@drm_fdinfo@all-busy-check-all.html
> 
>   * igt@drm_fdinfo@busy-check-all@bcs0:
>     - shard-dg1:          NOTRUN -> [SKIP][10] ([i915#8414]) +5 other tests skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@drm_fdinfo@busy-check-all@bcs0.html
> 
>   * igt@drm_fdinfo@most-busy-check-all:
>     - shard-rkl:          NOTRUN -> [FAIL][11] ([i915#12179])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][12] ([i915#7742]) +2 other tests fail
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#7697]) +1 other test skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#3555] / [i915#9323])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-10/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][15] ([i915#3555] / [i915#9323])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ctx_persistence@engines-hostile-preempt:
>     - shard-snb:          NOTRUN -> [SKIP][16] ([i915#1099])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-snb7/igt@gem_ctx_persistence@engines-hostile-preempt.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#280])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#280])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg1:          NOTRUN -> [SKIP][19] ([i915#280])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg1:          [PASS][20] -> [FAIL][21] ([i915#5784])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg1-13/igt@gem_eio@reset-stress.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-14/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#4525])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-rkl:          NOTRUN -> [FAIL][23] ([i915#2846])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][24] ([i915#2842]) +3 other tests fail
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][25] ([i915#2842]) +1 other test fail
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-4/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-rkl:          [PASS][26] -> [FAIL][27] ([i915#2842]) +1 other test fail
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-rkl-3/igt@gem_exec_fair@basic-pace@vecs0.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_flush@basic-wb-prw-default:
>     - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@gem_exec_flush@basic-wb-prw-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-active:
>     - shard-mtlp:         NOTRUN -> [SKIP][29] ([i915#3281])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@gem_exec_reloc@basic-cpu-active.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#3281]) +1 other test skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#3281]) +7 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu.html
> 
>   * igt@gem_exec_reloc@basic-write-cpu-active:
>     - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#3281]) +9 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@gem_exec_reloc@basic-write-cpu-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue:
>     - shard-dg1:          NOTRUN -> [SKIP][33] ([i915#4812]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@gem_exec_schedule@preempt-queue.html
> 
>   * igt@gem_fenced_exec_thrash@too-many-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#4860])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-16/igt@gem_fenced_exec_thrash@too-many-fences.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][35] ([i915#4613]) +2 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-glk5/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#4613])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-tglu:         NOTRUN -> [SKIP][37] ([i915#4613])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-10/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_media_vme:
>     - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#284])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_gtt@flink-race:
>     - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#4077]) +6 other tests skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-15/igt@gem_mmap_gtt@flink-race.html
> 
>   * igt@gem_mmap_wc@bad-object:
>     - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#4083]) +3 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-16/igt@gem_mmap_wc@bad-object.html
> 
>   * igt@gem_mmap_wc@copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#4083]) +1 other test skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@gem_mmap_wc@copy.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#3282]) +7 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#3282]) +1 other test skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-16/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#4270]) +2 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-2:
>     - shard-tglu:         NOTRUN -> [SKIP][45] ([i915#4270])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-10/igt@gem_pxp@reject-modify-context-protection-off-2.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#4270]) +3 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#4270])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#8428])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#4079]) +1 other test skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-15/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#4079])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#4885])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-16/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@reads:
>     - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#4077]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@gem_tiled_partial_pwrite_pread@reads.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#3297]) +2 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#3297]) +1 other test skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-5/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][55] -> [ABORT][56] ([i915#5566])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-glk8/igt@gen9_exec_parse@allowed-single.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-glk9/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#2527] / [i915#2856])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-10/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#2856])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#2527]) +1 other test skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-16/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#2527]) +2 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_module_load@load:
>     - shard-snb:          NOTRUN -> [SKIP][61] ([i915#6227])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-snb7/igt@i915_module_load@load.html
>     - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#6227])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          NOTRUN -> [ABORT][63] ([i915#9820])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-15/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#8399]) +1 other test skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-4/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-tglu:         NOTRUN -> [SKIP][65] ([i915#6590]) +1 other test skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-10/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#11681] / [i915#6621]) +1 other test skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-16/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_pm_rps@thresholds:
>     - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#11681])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-15/igt@i915_pm_rps@thresholds.html
> 
>   * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
>     - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#4212]) +1 other test skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-16/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#8709]) +3 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#8709]) +7 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#8709]) +11 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html
> 
>   * igt@kms_async_flips@test-cursor:
>     - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#10333])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@kms_async_flips@test-cursor.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#9531])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@modeset-transition@2x-outputs:
>     - shard-glk:          [PASS][74] -> [FAIL][75] ([i915#11859])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-glk5/igt@kms_atomic_transition@modeset-transition@2x-outputs.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-glk8/igt@kms_atomic_transition@modeset-transition@2x-outputs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-tglu:         [PASS][76] -> [FAIL][77] ([i915#11808]) +1 other test fail
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-tglu-10/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@plane-all-transition-nonblocking:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][78] ([i915#10056])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@kms_atomic_transition@plane-all-transition-nonblocking.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#4538] / [i915#5286]) +2 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-15/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
>     - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#5286])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#5286])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-10/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#5286]) +6 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#3638]) +1 other test skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#3638]) +1 other test skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-16/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4538] / [i915#5190])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
>     - shard-glk:          NOTRUN -> [SKIP][86] +179 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-glk2/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
>     - shard-tglu:         NOTRUN -> [SKIP][87] +17 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-10/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#4538]) +3 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-mtlp:         NOTRUN -> [SKIP][89] +3 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_joiner@basic-force-joiner:
>     - shard-dg2:          [PASS][90] -> [SKIP][91] ([i915#10656])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg2-11/igt@kms_big_joiner@basic-force-joiner.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-6/igt@kms_big_joiner@basic-force-joiner.html
> 
>   * igt@kms_big_joiner@invalid-modeset-force-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#10656])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-4/igt@kms_big_joiner@invalid-modeset-force-joiner.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#12042]) +2 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-15/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#6095]) +79 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#6095]) +9 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#12042])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#6095]) +19 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-10/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#6095]) +83 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#10307] / [i915#6095]) +138 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-2/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#10307] / [i915#10434] / [i915#6095]) +6 other tests skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-2/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#3742]) +1 other test skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-3/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#7828]) +8 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-5/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#7828]) +1 other test skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
>     - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#7828]) +2 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-16/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd:
>     - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#7828]) +1 other test skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@kms_chamelium_hpd@hdmi-hpd.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#7828]) +2 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-10/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#3116])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#3299])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-15/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#9424])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-0@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][110] ([i915#7173])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@kms_content_protection@lic-type-0@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#9424])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-4/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#3555] / [i915#8814]) +1 other test skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#11453]) +1 other test skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#3555]) +2 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-15/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-snb:          NOTRUN -> [SKIP][115] +61 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-snb7/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][116] +30 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-3/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [PASS][117] -> [FAIL][118] ([i915#2346]) +1 other test fail
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#4103])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#8812])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-16/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#3555] / [i915#3840]) +1 other test skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#3955])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#1839]) +1 other test skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#1839])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-10/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][125] +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
>     - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#3637]) +1 other test skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#9934]) +5 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#3637])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-10/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#2672] / [i915#3555]) +4 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][130] ([i915#2587] / [i915#2672]) +1 other test skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#2672]) +4 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#2672] / [i915#3555]) +1 other test skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#2672] / [i915#3555]) +1 other test skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-16/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#8708]) +1 other test skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff:
>     - shard-dg2:          [PASS][136] -> [FAIL][137] ([i915#6880])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move:
>     - shard-snb:          [PASS][138] -> [SKIP][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#3458])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#3023]) +19 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#8708]) +10 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff:
>     - shard-dg1:          NOTRUN -> [SKIP][143] +26 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#1825]) +39 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#9766])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#1825]) +5 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#5354]) +1 other test skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#8708]) +2 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#3458]) +16 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#3555] / [i915#8228])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          [PASS][151] -> [SKIP][152] ([i915#3555] / [i915#8228]) +1 other test skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-6/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#3555]) +6 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#9423]) +12 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#9423]) +17 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-14/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#5235] / [i915#9423]) +2 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a-dp-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#9423]) +28 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#9728]) +9 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#9728]) +7 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-13/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#6953])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#9812])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-10/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#5354])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-15/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#3361])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-16/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [PASS][164] -> [SKIP][165] ([i915#4281])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#9519])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-10/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg2:          [PASS][167] -> [FAIL][168] ([i915#8717])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg2-6/igt@kms_pm_rpm@i2c.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-2/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#9519]) +1 other test skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#9519])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-dg2:          [PASS][171] -> [SKIP][172] ([i915#9519])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg2-7/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [PASS][173] -> [SKIP][174] ([i915#9519]) +1 other test skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@pm-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#4077])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@kms_pm_rpm@pm-tiling.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#6524]) +1 other test skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-4/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#11520]) +2 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#11520]) +2 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-5/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#11520])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-10/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#9683])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-psr-primary-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#1072] / [i915#9673] / [i915#9732]) +2 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@kms_psr@fbc-psr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-plane-onoff:
>     - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#9688]) +2 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@kms_psr@fbc-psr2-sprite-plane-onoff.html
> 
>   * igt@kms_psr@psr-primary-mmap-gtt@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#4077] / [i915#9688]) +1 other test skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html
> 
>   * igt@kms_psr@psr2-cursor-plane-onoff:
>     - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#9732]) +4 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-10/igt@kms_psr@psr2-cursor-plane-onoff.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#1072] / [i915#9732]) +20 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-5/igt@kms_psr@psr2-sprite-mmap-cpu.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][186] ([i915#1072] / [i915#9732]) +13 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-16/igt@kms_psr@psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#9685]) +1 other test skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#8808] / [i915#9906])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#3555] / [i915#9906])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-15/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#9906])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-16/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-glk:          NOTRUN -> [SKIP][191] ([i915#2437])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-glk5/igt@kms_writeback@writeback-check-output-xrgb2101010.html
>     - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#2437] / [i915#9412])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-5/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#2437])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-10/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#2436])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#8516])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-10/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#3291] / [i915#3708]) +1 other test skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@prime_vgem@basic-write.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#9917])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-5/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-glk:          NOTRUN -> [FAIL][198] ([i915#9781])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-glk5/igt@syncobj_wait@invalid-wait-zero-handles.html
>     - shard-rkl:          NOTRUN -> [FAIL][199] ([i915#9781])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [FAIL][200] ([i915#2842]) -> [PASS][201] +4 other tests pass
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>     - shard-tglu:         [FAIL][202] ([i915#2842]) -> [PASS][203] +1 other test pass
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-tglu-8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          [ABORT][204] ([i915#9820]) -> [PASS][205]
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-rkl-6/igt@i915_module_load@reload-with-fault-injection.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][206] ([i915#7790]) -> [PASS][207]
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-snb7/igt@i915_pm_rps@reset.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-snb7/igt@i915_pm_rps@reset.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-snb:          [FAIL][208] ([i915#5956]) -> [PASS][209] +1 other test pass
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-snb4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-snb5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:
>     - shard-dg1:          [FAIL][210] ([i915#5956]) -> [PASS][211] +1 other test pass
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-16/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1:
>     - shard-snb:          [FAIL][212] ([i915#2122]) -> [PASS][213]
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-snb7/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-snb7/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a2:
>     - shard-glk:          [INCOMPLETE][214] -> [PASS][215] +1 other test pass
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-glk5/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a2.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-glk9/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a2.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible:
>     - shard-dg2:          [FAIL][216] ([i915#2122]) -> [PASS][217]
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg2-2/igt@kms_flip@wf_vblank-ts-check-interruptible.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-5/igt@kms_flip@wf_vblank-ts-check-interruptible.html
>     - shard-dg1:          [FAIL][218] ([i915#2122]) -> [PASS][219]
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg1-15/igt@kms_flip@wf_vblank-ts-check-interruptible.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-13/igt@kms_flip@wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg2:          [SKIP][220] ([i915#3555] / [i915#8228]) -> [PASS][221]
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg2-3/igt@kms_hdr@static-swap.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_plane@pixel-format@pipe-a-plane-3:
>     - shard-mtlp:         [ABORT][222] ([i915#10354]) -> [PASS][223] +1 other test pass
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-mtlp-5/igt@kms_plane@pixel-format@pipe-a-plane-3.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@kms_plane@pixel-format@pipe-a-plane-3.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         [FAIL][224] ([i915#9295]) -> [PASS][225]
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          [SKIP][226] ([i915#9519]) -> [PASS][227]
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress.html
>     - shard-rkl:          [SKIP][228] ([i915#9519]) -> [PASS][229] +3 other tests pass
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
>     - shard-rkl:          [FAIL][230] ([i915#9196]) -> [PASS][231] +2 other tests pass
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-rkl-2/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
>     - shard-tglu:         [FAIL][232] ([i915#9196]) -> [PASS][233]
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_vblank@query-forked-hang:
>     - shard-dg1:          [INCOMPLETE][234] -> [PASS][235] +1 other test pass
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg1-16/igt@kms_vblank@query-forked-hang.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-17/igt@kms_vblank@query-forked-hang.html
> 
>   * igt@kms_vblank@query-forked-hang@pipe-a-edp-1:
>     - shard-mtlp:         [INCOMPLETE][236] -> [PASS][237] +1 other test pass
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-mtlp-4/igt@kms_vblank@query-forked-hang@pipe-a-edp-1.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-mtlp-7/igt@kms_vblank@query-forked-hang@pipe-a-edp-1.html
> 
>   * igt@vgem_slow@nohang:
>     - shard-dg2:          [INCOMPLETE][238] -> [PASS][239]
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg2-2/igt@vgem_slow@nohang.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-5/igt@vgem_slow@nohang.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglu:         [FAIL][240] ([i915#2876]) -> [FAIL][241] ([i915#2842])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-tglu-9/igt@gem_exec_fair@basic-pace@rcs0.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-5/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-tglu:         [FAIL][242] ([i915#3591]) -> [WARN][243] ([i915#2681]) +1 other test warn
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-idle.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_selftest@mock:
>     - shard-dg1:          [DMESG-WARN][244] ([i915#1982] / [i915#9311]) -> [DMESG-WARN][245] ([i915#9311])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg1-17/igt@i915_selftest@mock.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg1-16/igt@i915_selftest@mock.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          [SKIP][246] ([i915#9424]) -> [TIMEOUT][247] ([i915#7173])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg2-3/igt@kms_content_protection@lic-type-0.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2:          [FAIL][248] ([i915#1339] / [i915#7173]) -> [SKIP][249] ([i915#7118] / [i915#9424])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg2-11/igt@kms_content_protection@uevent.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-6/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-dg2:          [SKIP][250] ([i915#11453] / [i915#3359]) -> [SKIP][251] ([i915#11453])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
>     - shard-dg2:          [SKIP][252] ([i915#3458]) -> [SKIP][253] ([i915#10433] / [i915#3458]) +3 other tests skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][254] ([i915#4816]) -> [SKIP][255] ([i915#4070] / [i915#4816])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-dg2:          [SKIP][256] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][257] ([i915#1072] / [i915#9732]) +14 other tests skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg2-11/igt@kms_psr@psr2-primary-mmap-gtt.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-6/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-sprite-render:
>     - shard-dg2:          [SKIP][258] ([i915#1072] / [i915#9732]) -> [SKIP][259] ([i915#1072] / [i915#9673] / [i915#9732]) +6 other tests skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg2-3/igt@kms_psr@psr2-sprite-render.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-11/igt@kms_psr@psr2-sprite-render.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-270:
>     - shard-dg2:          [SKIP][260] ([i915#11131] / [i915#4235]) -> [SKIP][261] ([i915#11131])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15388/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-270.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/shard-dg2-6/igt@kms_rotation_crc@sprite-rotation-270.html
> 
>   
>   [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10333]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10333
>   [i915#10354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10354
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
>   [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
>   [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
>   [i915#12042]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12042
>   [i915#12179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12179
>   [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#2876]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2876
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6227
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
>   [i915#7790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7790
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8717
>   [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9728]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9728
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
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
>   * Linux: CI_DRM_15388 -> Patchwork_138466v1
> 
>   CI-20190529: 20190529
>   CI_DRM_15388: 45770b0eec2155dcc4df41438934976f6a8da0d6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8011: 26dca87f1252b7f6f0c0f833050256f0244d61e9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_138466v1: 45770b0eec2155dcc4df41438934976f6a8da0d6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138466v1/index.html
