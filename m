Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47808A5C3FC
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 15:37:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2791D10E5B4;
	Tue, 11 Mar 2025 14:37:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hFGXBhu3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 884B810E5B4;
 Tue, 11 Mar 2025 14:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741703860; x=1773239860;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=+I+wrR8rN/BAzWBZc6ZCjNoOHipTlAbAaRF+HrIeHs4=;
 b=hFGXBhu3lTA8dDXpPWuwcbboSMv2KrxPCVizq9ZNVeqadHkv4jIs484w
 U2rI8qOtFffcHzawgwHtsbhszeA2PCS1c8pNjTKGrVM+Qbd+pnCX8znL5
 i3mqZ62Chcx3tTMRjY8DAMGnDt/JnI+gzXyywlaNzFhaMjK5xg+dMer3E
 2KbsGRPfanDwsR+HHNeIHqpsRVsC7gOQf4lu0uv9yDmMNj0SHbDH9J13s
 pphJXWqvwZ2Gag++reRQzSVGMDfDZmypVgwy6ewI/l+wyJcRoifM23V07
 nH/syLNCv6ReAdbszYfM7YBhUtXAmEhPflP6gpgeObb6VPbcdp2j+eGPN Q==;
X-CSE-ConnectionGUID: 43Y+fn5KS8Kzh+T/tfpHjQ==
X-CSE-MsgGUID: znIrLnv8RsSLAnsQO9Mw0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="60150474"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="60150474"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 07:37:39 -0700
X-CSE-ConnectionGUID: sQaQsaMEQ+m4sskVjsFmNg==
X-CSE-MsgGUID: 0eUrxJVaTEix9uG1mdmzoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="120273225"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 07:37:36 -0700
Date: Tue, 11 Mar 2025 16:37:33 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_drm=2Fi915=2Fdp?= =?utf-8?Q?=3A?= Fix link training
 interrupted by HPD pulse (rev3)
Message-ID: <Z9BKrc2xRtI1o6ph@ideak-desk.fi.intel.com>
References: <20250304152917.3407080-1-imre.deak@intel.com>
 <174120906736.44240.15420770152155295918@64e06c682a23>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <174120906736.44240.15420770152155295918@64e06c682a23>
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

On Wed, Mar 05, 2025 at 09:11:07PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Fix link training interrupted by HPD pulse (rev3)
> URL   : https://patchwork.freedesktop.org/series/145782/
> State : failure

Thanks for the reviews, patchset is pushed to drm-intel-next.

The failures are unrelated, see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16229_full -> Patchwork_145782v3_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_145782v3_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_145782v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
> Participating hosts (11 -> 10)
> ------------------------------
> 
>   Missing    (1): shard-dg2-set2 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_145782v3_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a1:
>     - shard-tglu:         NOTRUN -> [FAIL][1] +1 other test fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a1.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible@c-hdmi-a1:
>     - shard-dg2:          NOTRUN -> [FAIL][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@kms_flip@wf_vblank-ts-check-interruptible@c-hdmi-a1.html

No hotplug events during either of the above tests and the output used
is HDMI, so the hotplug / DP link training changes in the patchset
aren't related.

The issue is:
vblank interval differs from modeline! expected 8334.6us, measured 8281us +- 3.586us, difference 53.5us (14.9 sigma)

Previous instances:
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16255/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a1.html
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16254/shard-dg2-3/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a3.html

The closest ticket I found:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13844

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_145782v3_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_fdinfo@all-busy-check-all:
>     - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#8414]) +2 other tests skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@drm_fdinfo@all-busy-check-all.html
> 
>   * igt@drm_fdinfo@busy-idle-check-all@vcs0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][4] ([i915#11527] / [i915#8414]) +6 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@drm_fdinfo@busy-idle-check-all@vcs0.html
> 
>   * igt@drm_fdinfo@busy-idle-check-all@vecs1:
>     - shard-dg2-9:        NOTRUN -> [SKIP][5] ([i915#8414])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@drm_fdinfo@busy-idle-check-all@vecs1.html
> 
>   * igt@drm_fdinfo@virtual-busy-hang-all:
>     - shard-mtlp:         NOTRUN -> [SKIP][6] ([i915#8414])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@drm_fdinfo@virtual-busy-hang-all.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-tglu:         NOTRUN -> [SKIP][7] ([i915#9323])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-9/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@large-ctrl-surf-copy:
>     - shard-tglu-1:       NOTRUN -> [SKIP][8] ([i915#13008])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][9] ([i915#9323]) +1 other test skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@gem_ccs@suspend-resume.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][10] ([i915#9323])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#7697])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-7/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#7697])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@gem_close_race@multigpu-basic-threads.html
>     - shard-tglu:         NOTRUN -> [SKIP][13] ([i915#7697])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-5/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#8562])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-7/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-dg2-9:        NOTRUN -> [SKIP][15] ([i915#8555])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-mtlp:         NOTRUN -> [SKIP][16] ([i915#8555]) +1 other test skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#5882]) +6 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#280])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-1/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#280])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@gem_ctx_sseu@invalid-sseu.html
>     - shard-tglu:         NOTRUN -> [SKIP][20] ([i915#280])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-5/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#4525]) +1 other test skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@gem_exec_balancer@parallel-balancer.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][22] ([i915#4525])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_balancer@sliced:
>     - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#4812])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@gem_exec_balancer@sliced.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#3539] / [i915#4852])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@gem_exec_flush@basic-wb-rw-before-default:
>     - shard-dg2-9:        NOTRUN -> [SKIP][25] ([i915#3539] / [i915#4852])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@gem_exec_flush@basic-wb-rw-before-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3281]) +7 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-active:
>     - shard-dg2-9:        NOTRUN -> [SKIP][27] ([i915#3281])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-active.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#3281]) +7 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-wc-read-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#3281]) +3 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@gem_exec_reloc@basic-wc-read-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-queue:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4537] / [i915#4812])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@gem_exec_schedule@preempt-queue.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-none:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4860])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@gem_fence_thrash@bo-write-verify-none.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-y:
>     - shard-dg2-9:        NOTRUN -> [SKIP][32] ([i915#4860])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@gem_fence_thrash@bo-write-verify-y.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#4613]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-tglu:         NOTRUN -> [SKIP][34] ([i915#4613]) +2 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-5/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#4613]) +3 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-tglu-1:       NOTRUN -> [SKIP][36] ([i915#4613]) +1 other test skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-glk:          NOTRUN -> [SKIP][37] ([i915#4613]) +1 other test skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-glk8/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_media_vme:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#284])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@gem_media_vme.html
>     - shard-tglu:         NOTRUN -> [SKIP][39] ([i915#284])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-5/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_gtt@basic-read:
>     - shard-dg2-9:        NOTRUN -> [SKIP][40] ([i915#4077]) +3 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@gem_mmap_gtt@basic-read.html
> 
>   * igt@gem_mmap_gtt@basic-read-write-distinct:
>     - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#4077]) +5 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@gem_mmap_gtt@basic-read-write-distinct.html
> 
>   * igt@gem_mmap_gtt@hang:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4077]) +8 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@gem_mmap_gtt@hang.html
> 
>   * igt@gem_mmap_wc@coherency:
>     - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#4083]) +2 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@gem_mmap_wc@coherency.html
> 
>   * igt@gem_mmap_wc@fault-concurrent:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4083]) +8 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@gem_mmap_wc@fault-concurrent.html
> 
>   * igt@gem_mmap_wc@set-cache-level:
>     - shard-dg2-9:        NOTRUN -> [SKIP][45] ([i915#4083])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@gem_mmap_wc@set-cache-level.html
> 
>   * igt@gem_partial_pwrite_pread@write-uncached:
>     - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#3282]) +3 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@gem_partial_pwrite_pread@write-uncached.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#3282]) +1 other test skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@create-valid-protected-context:
>     - shard-rkl:          [PASS][48] -> [TIMEOUT][49] ([i915#12964])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-rkl-8/igt@gem_pxp@create-valid-protected-context.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-5/igt@gem_pxp@create-valid-protected-context.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][50] ([i915#12917] / [i915#12964]) +1 other test timeout
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-1/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][51] ([i915#12964])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-7/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#4270])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>     - shard-rkl:          [PASS][53] -> [TIMEOUT][54] ([i915#12917] / [i915#12964])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-5/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#8428]) +2 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][56] ([i915#5190] / [i915#8428]) +1 other test skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#5190] / [i915#8428]) +4 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#8411]) +1 other test skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4079])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#3282]) +7 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-8/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gem_softpin@evict-prime:
>     - shard-rkl:          [PASS][61] -> [DMESG-WARN][62] ([i915#12964]) +22 other tests dmesg-warn
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-rkl-8/igt@gem_softpin@evict-prime.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-5/igt@gem_softpin@evict-prime.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-tglu-1:       NOTRUN -> [SKIP][63] ([i915#3297])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#3297]) +1 other test skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-tglu:         NOTRUN -> [SKIP][65] ([i915#3297] / [i915#3323])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-9/igt@gem_userptr_blits@dmabuf-sync.html
>     - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#3297] / [i915#3323])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-8/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-dg2-9:        NOTRUN -> [SKIP][67] ([i915#3297]) +1 other test skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#3282] / [i915#3297])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#3297] / [i915#4880])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@gem_userptr_blits@map-fixed-invalidate.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][70] ([i915#3297] / [i915#4880])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>     - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#3297])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-tglu:         NOTRUN -> [SKIP][72] ([i915#3297]) +1 other test skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-9/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#3297]) +2 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-1/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gen3_render_tiledy_blits:
>     - shard-mtlp:         NOTRUN -> [SKIP][74] +8 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@gen3_render_tiledy_blits.html
> 
>   * igt@gen7_exec_parse@basic-rejected:
>     - shard-dg2:          NOTRUN -> [SKIP][75] +7 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@gen7_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-dg2-9:        NOTRUN -> [SKIP][76] ([i915#2856])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-tglu:         NOTRUN -> [SKIP][77] ([i915#2527] / [i915#2856])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-5/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#2856])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#2856]) +2 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@gen9_exec_parse@unaligned-access.html
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#2527])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@gen9_exec_parse@unaligned-access.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#2527] / [i915#2856])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_hangman@gt-error-state-capture@vecs0:
>     - shard-mtlp:         [PASS][82] -> [ABORT][83] ([i915#13193]) +1 other test abort
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-mtlp-2/igt@i915_hangman@gt-error-state-capture@vecs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-7/igt@i915_hangman@gt-error-state-capture@vecs0.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#8399])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-7/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#6590]) +1 other test skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@i915_pm_freq_mult@media-freq@gt0.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][86] ([i915#6590]) +1 other test skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-tglu-1:       NOTRUN -> [WARN][87] ([i915#13790] / [i915#2681]) +4 other tests warn
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>     - shard-dg1:          [PASS][88] -> [FAIL][89] ([i915#3591])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#11681] / [i915#6621])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#11681]) +1 other test skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@i915_pm_rps@thresholds-idle-park.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-tglu-1:       NOTRUN -> [SKIP][92] ([i915#5723])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [PASS][93] -> [INCOMPLETE][94] ([i915#4817])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-rkl:          NOTRUN -> [DMESG-FAIL][95] ([i915#12964])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][96] ([i915#4212])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic:
>     - shard-glk:          [PASS][97] -> [FAIL][98] ([i915#10991] / [i915#13335])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip-atomic.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip-atomic.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-2:
>     - shard-glk:          [PASS][99] -> [FAIL][100] ([i915#10991])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-2.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2:
>     - shard-glk:          [PASS][101] -> [FAIL][102] ([i915#10991] / [i915#12518])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-2-4-mc-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][103] ([i915#8709]) +7 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-2-4-mc-ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc:
>     - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#8709]) +7 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#8709]) +7 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-dg1:          [PASS][106] -> [FAIL][107] ([i915#5956])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#1769] / [i915#3555])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#1769] / [i915#3555])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [FAIL][110] ([i915#5956])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [FAIL][111] ([i915#11808]) +1 other test fail
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#5286]) +6 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][113] ([i915#5286]) +1 other test skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][114] ([i915#5286]) +1 other test skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-addfb:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#5190]) +2 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@kms_big_fb@y-tiled-addfb.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#4538] / [i915#5190]) +6 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-dg2-9:        NOTRUN -> [SKIP][117] ([i915#5190])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-dg2-9:        NOTRUN -> [SKIP][118] ([i915#4538] / [i915#5190]) +1 other test skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][119] ([i915#12313])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#6095]) +151 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg1-12/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-c-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][121] ([i915#10307] / [i915#6095]) +14 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#10307] / [i915#6095]) +157 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#6095]) +19 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-2/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#12313])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][125] ([i915#6095]) +34 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#6095]) +34 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-c-edp-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#6095]) +97 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#6095]) +21 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-10/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-dp-4.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][129] ([i915#12313])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#10307] / [i915#10434] / [i915#6095]) +5 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#13781]) +4 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#13781]) +3 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#13783]) +3 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_chamelium_audio@dp-audio:
>     - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-5/igt@kms_chamelium_audio@dp-audio.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio:
>     - shard-dg2-9:        NOTRUN -> [SKIP][135] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_chamelium_audio@hdmi-audio.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#11151] / [i915#7828]) +6 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-1/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_frames@vga-frame-dump:
>     - shard-tglu-1:       NOTRUN -> [SKIP][137] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_chamelium_frames@vga-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@kms_chamelium_hpd@hdmi-hpd.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html
> 
>   * igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][140] ([i915#7173])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#3116])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@kms_content_protection@dp-mst-type-0.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][142] ([i915#3116] / [i915#3299]) +1 other test skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_content_protection@dp-mst-type-0.html
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#3299])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#7118] / [i915#9424])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#9424]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-7/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-tglu:         NOTRUN -> [SKIP][146] ([i915#6944] / [i915#9424])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-9/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#7118] / [i915#9424])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-snb:          NOTRUN -> [SKIP][148] +18 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-snb7/igt@kms_cursor_crc@cursor-offscreen-32x32.html
>     - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#3555]) +2 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-5/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#13049]) +1 other test skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-128x42:
>     - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#8814])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@kms_cursor_crc@cursor-onscreen-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#3555] / [i915#8814])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@kms_cursor_crc@cursor-random-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#13049])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#3555]) +5 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#13049])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-512x512.html
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#13049])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][157] ([i915#13046] / [i915#5354]) +1 other test skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#4103])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>     - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#4103])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#4213])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#13046] / [i915#5354])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#9809]) +2 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@torture-move@pipe-b:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][163] ([i915#12964]) +16 other tests dmesg-warn
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-1/igt@kms_cursor_legacy@torture-move@pipe-b.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#3555] / [i915#3804])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#3804])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#3555]) +2 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_dp_link_training@non-uhbr-mst:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#13749])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@kms_dp_link_training@non-uhbr-mst.html
>     - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#13749])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@kms_dp_link_training@non-uhbr-mst.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][169] ([i915#13749])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-mst.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#13707])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#3555] / [i915#3840])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-8/igt@kms_dsc@dsc-basic.html
>     - shard-tglu:         NOTRUN -> [SKIP][172] ([i915#3555] / [i915#3840]) +1 other test skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-9/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#3840])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#3555] / [i915#3840])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#3555] / [i915#3840])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#3840] / [i915#9053])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-dirtyfb-tests:
>     - shard-mtlp:         NOTRUN -> [SKIP][177] ([i915#13798])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-dirtyfb-tests.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-dg2-9:        NOTRUN -> [SKIP][178] ([i915#4854])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#658])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-5/igt@kms_feature_discovery@psr1.html
>     - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#658])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#658])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-1/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-dg2-9:        NOTRUN -> [SKIP][182] ([i915#9934])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#9934]) +1 other test skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#9934]) +4 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@kms_flip@2x-flip-vs-fences-interruptible.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][185] ([i915#3637]) +1 other test skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_flip@2x-flip-vs-fences-interruptible.html
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#8381])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#3637]) +2 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>     - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#3637]) +1 other test skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-2/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible:
>     - shard-tglu:         NOTRUN -> [FAIL][189] ([i915#1522]) +1 other test fail
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1:
>     - shard-rkl:          [PASS][190] -> [FAIL][191] ([i915#1522]) +1 other test fail
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-rkl-7/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-2/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible:
>     - shard-dg2:          NOTRUN -> [FAIL][192] ([i915#13734])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@kms_flip@wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:
>     - shard-dg2:          NOTRUN -> [FAIL][193] ([i915#1522]) +1 other test fail
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][194] ([i915#2587] / [i915#2672]) +5 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][196] ([i915#2672] / [i915#3555])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][197] ([i915#2672])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#2587] / [i915#2672] / [i915#3555])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
>     - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#2672]) +3 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#2672] / [i915#8813])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#2672] / [i915#3555]) +1 other test skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][204] ([i915#2672] / [i915#3555]) +4 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#2672] / [i915#3555]) +5 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#2672]) +5 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][207] ([i915#2672] / [i915#3555] / [i915#8813]) +2 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-dg2-9:        NOTRUN -> [FAIL][208] ([i915#6880])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#5354]) +22 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#1825]) +34 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][211] ([i915#8708]) +4 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#8708]) +9 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#3458]) +11 other tests skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][214] ([i915#5354]) +4 other tests skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-mtlp:         NOTRUN -> [SKIP][215] ([i915#1825]) +9 other tests skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
>     - shard-tglu:         NOTRUN -> [SKIP][216] +51 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#9766])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-7/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-glk:          NOTRUN -> [SKIP][218] +109 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-glk8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#8708]) +4 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
>     - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#3023]) +24 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
>     - shard-dg2-9:        NOTRUN -> [SKIP][221] ([i915#3458]) +4 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][222] +36 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_getfb@getfb-reject-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][223] ([i915#6118])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_getfb@getfb-reject-ccs.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          [PASS][224] -> [SKIP][225] ([i915#3555] / [i915#8228]) +1 other test skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-6/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#3555] / [i915#8228]) +1 other test skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@kms_hdr@static-toggle-suspend.html
>     - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#3555] / [i915#8228]) +1 other test skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@kms_hdr@static-toggle-suspend.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][228] ([i915#3555] / [i915#8228])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][229] ([i915#10656])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#12388])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-7/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#12394])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-dg2-9:        NOTRUN -> [SKIP][232] ([i915#12339])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#6301])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
>     - shard-dg2-9:        NOTRUN -> [SKIP][234] +1 other test skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][235] ([i915#13705])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@kms_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d:
>     - shard-tglu-1:       NOTRUN -> [SKIP][236] ([i915#12247]) +4 other tests skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][237] ([i915#12247]) +9 other tests skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
>     - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#12247]) +10 other tests skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#12247] / [i915#6953])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
>     - shard-mtlp:         NOTRUN -> [SKIP][240] ([i915#12247] / [i915#6953]) +3 other tests skip
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d:
>     - shard-mtlp:         NOTRUN -> [SKIP][241] ([i915#12247]) +25 other tests skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#5354])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-1/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#9685]) +1 other test skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#3828])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-7/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#5978])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@kms_pm_dc@dc6-dpms.html
>     - shard-tglu:         NOTRUN -> [FAIL][246] ([i915#9295])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu-1:       NOTRUN -> [SKIP][247] ([i915#4281])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [PASS][248] -> [SKIP][249] ([i915#9519]) +1 other test skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg2-8/igt@kms_pm_rpm@dpms-lpsp.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-7/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#9519])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@kms_pm_rpm@dpms-non-lpsp.html
>     - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#9519]) +1 other test skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@kms_pm_rpm@dpms-non-lpsp.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][252] ([i915#9519])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][253] ([i915#6524])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-7/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-tglu-1:       NOTRUN -> [SKIP][254] ([i915#6524])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][255] ([i915#11520]) +2 other tests skip
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-glk8/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][256] ([i915#9808]) +3 other tests skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
>     - shard-tglu:         NOTRUN -> [SKIP][257] ([i915#11520]) +5 other tests skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-5/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html
>     - shard-snb:          NOTRUN -> [SKIP][258] ([i915#11520])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-snb7/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:
>     - shard-mtlp:         NOTRUN -> [SKIP][259] ([i915#12316]) +2 other tests skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][260] ([i915#11520]) +2 other tests skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#11520]) +6 other tests skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#11520]) +8 other tests skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][263] ([i915#11520]) +2 other tests skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-tglu-1:       NOTRUN -> [SKIP][264] ([i915#9683])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr-cursor-mmap-gtt@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][265] ([i915#9688]) +11 other tests skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@kms_psr@fbc-psr-cursor-mmap-gtt@edp-1.html
> 
>   * igt@kms_psr@fbc-psr-primary-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#1072] / [i915#9732]) +14 other tests skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@kms_psr@fbc-psr-primary-mmap-gtt.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][267] ([i915#9732]) +9 other tests skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_psr@fbc-psr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@pr-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][268] ([i915#9732]) +10 other tests skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-9/igt@kms_psr@pr-dpms.html
> 
>   * igt@kms_psr@psr-primary-mmap-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][269] ([i915#1072] / [i915#9732]) +4 other tests skip
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_psr@psr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][270] ([i915#1072] / [i915#9732]) +20 other tests skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-8/igt@kms_psr@psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@primary-rotation-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][271] ([i915#12755])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_rotation_crc@primary-rotation-270.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][272] ([i915#5289]) +1 other test skip
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>     - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#12755] / [i915#5190])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-tglu:         NOTRUN -> [SKIP][274] ([i915#5289])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90:
>     - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#12755])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@kms_rotation_crc@sprite-rotation-90.html
> 
>   * igt@kms_scaling_modes@scaling-mode-center:
>     - shard-tglu-1:       NOTRUN -> [SKIP][276] ([i915#3555]) +2 other tests skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_scaling_modes@scaling-mode-center.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-rkl:          NOTRUN -> [ABORT][277] ([i915#13179]) +1 other test abort
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][278] ([i915#3555])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-dg2-9:        NOTRUN -> [SKIP][279] ([i915#8623])
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg2:          [PASS][280] -> [SKIP][281] ([i915#3555] / [i915#9906])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg2-11/igt@kms_vrr@negative-basic.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-6/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][282] ([i915#9906])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-tglu-1:       NOTRUN -> [SKIP][283] ([i915#9906])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-mtlp:         NOTRUN -> [SKIP][284] ([i915#2437])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-glk:          NOTRUN -> [SKIP][285] ([i915#2437])
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-glk8/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#2437] / [i915#9412]) +1 other test skip
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-tglu:         NOTRUN -> [SKIP][287] ([i915#2437] / [i915#9412])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-5/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@global-sseu-config-invalid:
>     - shard-mtlp:         NOTRUN -> [SKIP][288] ([i915#7387])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-4/igt@perf@global-sseu-config-invalid.html
> 
>   * igt@perf_pmu@invalid-init:
>     - shard-rkl:          NOTRUN -> [FAIL][289] ([i915#13663])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-8/igt@perf_pmu@invalid-init.html
>     - shard-tglu:         NOTRUN -> [FAIL][290] ([i915#13663])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-9/igt@perf_pmu@invalid-init.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-rkl:          NOTRUN -> [SKIP][291] ([i915#8516])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-7/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#8516])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          NOTRUN -> [SKIP][293] ([i915#3291] / [i915#3708])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-1/igt@prime_vgem@basic-write.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-dg2-9:        NOTRUN -> [SKIP][294] ([i915#9917])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-9/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-rkl:          NOTRUN -> [SKIP][295] +22 other tests skip
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-4/igt@tools_test@sysfs_l3_parity.html
>     - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#4818])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-8/igt@tools_test@sysfs_l3_parity.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-dg2:          [ABORT][297] ([i915#13427]) -> [PASS][298]
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg2-4/igt@gem_create@create-ext-cpu-access-big.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-1/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_ctx_freq@sysfs:
>     - shard-dg2:          [FAIL][299] ([i915#9561]) -> [PASS][300] +1 other test pass
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg2-8/igt@gem_ctx_freq@sysfs.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-7/igt@gem_ctx_freq@sysfs.html
> 
>   * igt@gem_eio@context-create:
>     - shard-mtlp:         [ABORT][301] ([i915#13193]) -> [PASS][302] +1 other test pass
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-mtlp-7/igt@gem_eio@context-create.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-5/igt@gem_eio@context-create.html
> 
>   * igt@gem_eio@kms:
>     - shard-dg2:          [FAIL][303] ([i915#5784]) -> [PASS][304]
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg2-2/igt@gem_eio@kms.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-3/igt@gem_eio@kms.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg1:          [FAIL][305] ([i915#12543] / [i915#5784]) -> [PASS][306]
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg1-13/igt@gem_eio@reset-stress.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg1-19/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-rkl:          [TIMEOUT][307] ([i915#12917] / [i915#12964]) -> [PASS][308]
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-rkl-4/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-8/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglu:         [ABORT][309] ([i915#12817] / [i915#9820]) -> [PASS][310]
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][311] ([i915#13729] / [i915#13821]) -> [PASS][312]
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-snb6/igt@i915_pm_rps@reset.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-snb7/igt@i915_pm_rps@reset.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-dg2:          [FAIL][313] ([i915#5956]) -> [PASS][314]
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1:
>     - shard-tglu:         [FAIL][315] ([i915#11808]) -> [PASS][316] +1 other test pass
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-tglu-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-7/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_color@gamma:
>     - shard-dg1:          [DMESG-WARN][317] ([i915#4423]) -> [PASS][318] +1 other test pass
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg1-15/igt@kms_color@gamma.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg1-13/igt@kms_color@gamma.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42:
>     - shard-tglu:         [FAIL][319] ([i915#13566]) -> [PASS][320] +7 other tests pass
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-128x42.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-64x21:
>     - shard-rkl:          [FAIL][321] ([i915#13566]) -> [PASS][322] +2 other tests pass
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-64x21.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-64x21.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
>     - shard-rkl:          [DMESG-WARN][323] ([i915#12964]) -> [PASS][324] +1 other test pass
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-rkl-4/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-8/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible:
>     - shard-tglu:         [FAIL][325] ([i915#1522]) -> [PASS][326] +1 other test pass
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-tglu-3/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-4/igt@kms_flip@plain-flip-ts-check-interruptible.html
>     - shard-mtlp:         [FAIL][327] ([i915#1522]) -> [PASS][328] +1 other test pass
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:
>     - shard-tglu:         [FAIL][329] ([i915#13734]) -> [PASS][330]
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-tglu-3/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-4/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1:
>     - shard-tglu:         [FAIL][331] -> [PASS][332]
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-tglu-3/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-tglu-4/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          [SKIP][333] ([i915#6953] / [i915#9423]) -> [PASS][334]
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg2-8/igt@kms_plane_scaling@intel-max-src-size.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [SKIP][335] ([i915#9519]) -> [PASS][336] +1 other test pass
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][337] ([i915#9519]) -> [PASS][338]
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-glk:          [ABORT][339] -> [PASS][340]
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-glk8/igt@perf_pmu@module-unload.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-glk8/igt@perf_pmu@module-unload.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-glk:          [INCOMPLETE][341] ([i915#13390]) -> [INCOMPLETE][342] ([i915#13197] / [i915#13390])
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-glk2/igt@gem_eio@in-flight-suspend.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-glk7/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-rkl:          [SKIP][343] ([i915#13717]) -> [TIMEOUT][344] ([i915#12917] / [i915#12964])
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-buffer.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-3/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [ABORT][345] ([i915#9820]) -> [ABORT][346] ([i915#10887] / [i915#9820])
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [FAIL][347] ([i915#5138]) -> [DMESG-FAIL][348] ([i915#13787])
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_chamelium_edid@dp-edid-resolution-list:
>     - shard-dg1:          [SKIP][349] ([i915#11151] / [i915#4423] / [i915#7828]) -> [SKIP][350] ([i915#11151] / [i915#7828])
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg1-18/igt@kms_chamelium_edid@dp-edid-resolution-list.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg1-17/igt@kms_chamelium_edid@dp-edid-resolution-list.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          [SKIP][351] ([i915#7118] / [i915#9424]) -> [FAIL][352] ([i915#7173])
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg2-3/igt@kms_content_protection@atomic-dpms.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][353] ([i915#9424]) -> [SKIP][354] ([i915#9433])
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg1-15/igt@kms_content_protection@mei-interface.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg1-13/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          [FAIL][355] ([i915#7173]) -> [SKIP][356] ([i915#7118])
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg2-11/igt@kms_content_protection@srm.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-4/igt@kms_content_protection@srm.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
>     - shard-dg2:          [SKIP][357] ([i915#10433] / [i915#3458]) -> [SKIP][358] ([i915#3458])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
>     - shard-dg2:          [SKIP][359] ([i915#3458]) -> [SKIP][360] ([i915#10433] / [i915#3458]) +1 other test skip
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-mtlp:         [SKIP][361] ([i915#12713]) -> [SKIP][362] ([i915#1187] / [i915#12713])
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-mtlp-8/igt@kms_hdr@brightness-with-hdr.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html
>     - shard-rkl:          [SKIP][363] ([i915#12713]) -> [SKIP][364] ([i915#1187] / [i915#12713])
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-rkl-8/igt@kms_hdr@brightness-with-hdr.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][365] ([i915#4070] / [i915#4816]) -> [SKIP][366] ([i915#4816])
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          [FAIL][367] ([i915#9295]) -> [SKIP][368] ([i915#3361])
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-rkl-7/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-dg1:          [SKIP][369] ([i915#4423] / [i915#6524]) -> [SKIP][370] ([i915#6524])
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg1-15/igt@kms_prime@basic-crc-hybrid.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg1-13/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_psr@psr2-primary-page-flip:
>     - shard-dg1:          [SKIP][371] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][372] ([i915#1072] / [i915#9732])
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16229/shard-dg1-15/igt@kms_psr@psr2-primary-page-flip.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/shard-dg1-13/igt@kms_psr@psr2-primary-page-flip.html
> 
>   
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
>   [i915#10991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#12518]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12518
>   [i915#12543]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12543
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12817
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193
>   [i915#13197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13197
>   [i915#13335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13335
>   [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
>   [i915#13427]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13427
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13663]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13663
>   [i915#13705]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13705
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
>   [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
>   [i915#13734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13787]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13787
>   [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
>   [i915#13798]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13798
>   [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
>   [i915#1522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1522
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5882
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#5978]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5978
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6118
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16229 -> Patchwork_145782v3
> 
>   CI-20190529: 20190529
>   CI_DRM_16229: f7eb7bd9a372f4a8444129d2b5422f71f7edf146 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8261: 8261
>   Patchwork_145782v3: f7eb7bd9a372f4a8444129d2b5422f71f7edf146 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145782v3/index.html
