Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F39F9433D9
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 18:06:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4882210E67F;
	Wed, 31 Jul 2024 16:06:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iUH9HA77";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 934D410E67F;
 Wed, 31 Jul 2024 16:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722441974; x=1753977974;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=m5vYjkucfAQ4X7VxIut0veYFPPYayOFZM7HoMxEfNFg=;
 b=iUH9HA77PTJ6HKJsJBQmhA89Tlj1fOkWW8Ge9yWx8l7dSNABXb41voz0
 kDI++oMIOGuH8mwQZqdAHwkO4MpEQowE7ugvs7erY1VVcCuOCLvRmU1EV
 FlnrnJD2xxQ3Co7d+5sqITfZeIiGRkRE9coSKgj0shIWmhEMwD2zYJHkD
 /y0ZgBn8DyLaLdrmvgEfvEV+1MPhcBum3mzzErY/31voywgNSwmVn7x5S
 VQnyCeC9fUyJM+Kki6gYcRd1PIANtp2iC9Wn1lgbTjW2YuVrrjGYxKvKy
 m+139MhJKJGkZ+5Gjgd8WFqa5Oc/3Mp3FZICRqRt+s8QbgRGBYmKRUn4J Q==;
X-CSE-ConnectionGUID: lc/l2rxSRzizoyZkTDxn5Q==
X-CSE-MsgGUID: kqfPVdAISX2B0ObnJOmL9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="20474079"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="20474079"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 09:05:44 -0700
X-CSE-ConnectionGUID: LogBa7MkTRyWoxPSKhELJw==
X-CSE-MsgGUID: oG8Ymq29T4qyvO+9vxlt7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="54634543"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 09:05:41 -0700
Date: Wed, 31 Jul 2024 19:05:57 +0300
From: Imre Deak <imre.deak@intel.com>
To: Lyude Paul <lyude@redhat.com>, Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?=
 =?utf-8?Q?e_for_drm=2Fi915=2Fdp=5Fmst?= =?utf-8?Q?=3A?= Enable LT fallback
 for UHBR<->non-UHBR rates (rev2)
Message-ID: <Zqpg5SEwCh7RAcz8@ideak-desk.fi.intel.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <172232446937.427524.6914773043447546846@2413ebb6fbb6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <172232446937.427524.6914773043447546846@2413ebb6fbb6>
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

On Tue, Jul 30, 2024 at 07:27:49AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_mst: Enable LT fallback for UHBR<->non-UHBR rates (rev2)
> URL   : https://patchwork.freedesktop.org/series/136347/
> State : failure

Thanks for the reviews/acks, patchset is pushed to drm-intel-next, with
Thomas' irc ack for the first 3 DRM core patches.

The failures are unrelated, see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15148_full -> Patchwork_136347v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_136347v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_136347v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_136347v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_rc6_residency@rc6-accuracy@gt0:
>     - shard-dg2:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-dg2-5/igt@i915_pm_rc6_residency@rc6-accuracy@gt0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@i915_pm_rc6_residency@rc6-accuracy@gt0.html

There is only an HDMI sink connected, no DP, so the failure is unrelated
to the changes. It's

(i915_pm_rc6_residency:1196) CRITICAL: Failed assertion: ratio > 0.9 && ratio < 1.05
(i915_pm_rc6_residency:1196) CRITICAL: Sysfs RC6 residency counter is inaccurate.

which looks like
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11294

>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-mtlp:         [PASS][3] -> [FAIL][4] +3 other tests fail
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-mtlp-1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-mtlp-8/igt@kms_fbcon_fbt@fbc-suspend.html

Only eDP is connected (so no DP-MST), without any retraining, so can't
see how the changes would relate to this. It's 

<3> [304.416840] e1000e 0000:00:1f.6: PM: pci_pm_suspend(): e1000e_pm_suspend [e1000e] returns -2
<3> [304.425272] e1000e 0000:00:1f.6: PM: dpm_run_callback(): pci_pm_suspend returns -2
<3> [304.432881] e1000e 0000:00:1f.6: PM: failed to suspend async: error -2

aborting the system suspend/resume, seen many times before in CI runs.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_136347v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-dg1:          NOTRUN -> [SKIP][5] ([i915#8411])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@drm_fdinfo@isolation@vecs0:
>     - shard-dg1:          NOTRUN -> [SKIP][6] ([i915#8414]) +5 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-16/igt@drm_fdinfo@isolation@vecs0.html
> 
>   * igt@drm_fdinfo@virtual-busy-all:
>     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#8414])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@drm_fdinfo@virtual-busy-all.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-dg1:          NOTRUN -> [SKIP][8] ([i915#9323])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg1:          NOTRUN -> [SKIP][9] ([i915#7697])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@gem_close_race@multigpu-basic-threads.html
>     - shard-tglu:         NOTRUN -> [SKIP][10] ([i915#7697])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-5/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hostile:
>     - shard-dg1:          NOTRUN -> [SKIP][11] ([i915#8555]) +1 other test skip
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-hostile.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#280])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@gem_ctx_sseu@mmap-args.html
>     - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#280])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_fair@basic-none:
>     - shard-dg1:          NOTRUN -> [SKIP][14] ([i915#3539] / [i915#4852]) +3 other tests skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-16/igt@gem_exec_fair@basic-none.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][15] ([i915#2842])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share:
>     - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#3539] / [i915#4852])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@gem_exec_fair@basic-none-share.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-rkl:          [PASS][17] -> [FAIL][18] ([i915#2842])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fence@submit:
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#4812]) +1 other test skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@gem_exec_fence@submit.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#3281]) +6 other tests skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read-noreloc:
>     - shard-dg1:          NOTRUN -> [SKIP][21] ([i915#3281]) +7 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#3281]) +5 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-3/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts:
>     - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#4537] / [i915#4812])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@gem_exec_schedule@preempt-queue-contexts.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
>     - shard-dg1:          NOTRUN -> [SKIP][24] ([i915#4860]) +1 other test skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-tglu:         NOTRUN -> [SKIP][25] ([i915#4613])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-5/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@heavy-multi@lmem0:
>     - shard-dg2:          NOTRUN -> [FAIL][26] ([i915#10378])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@gem_lmem_swapping@heavy-multi@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#4613])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-ccs@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#4565])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@gem_lmem_swapping@verify-ccs@lmem0.html
> 
>   * igt@gem_mmap@pf-nonblock:
>     - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#4083]) +3 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@gem_mmap@pf-nonblock.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy:
>     - shard-dg1:          NOTRUN -> [SKIP][30] ([i915#4077]) +8 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-x:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4077]) +6 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@gem_mmap_gtt@fault-concurrent-x.html
> 
>   * igt@gem_mmap_wc@write-gtt-read-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#4083]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@gem_mmap_wc@write-gtt-read-wc.html
> 
>   * igt@gem_pread@self:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3282]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@gem_pread@self.html
> 
>   * igt@gem_pwrite_snooped:
>     - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#3282]) +1 other test skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@gem_pwrite_snooped.html
>     - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#3282]) +2 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@gem_pwrite_snooped.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-tglu:         NOTRUN -> [SKIP][36] ([i915#4270])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-5/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#4270]) +3 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#5190] / [i915#8428]) +3 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#8411]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-3/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#4885])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_spin_batch@spin-all-new:
>     - shard-dg2:          NOTRUN -> [FAIL][41] ([i915#5889])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@gem_spin_batch@spin-all-new.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#3297]) +1 other test skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#3297] / [i915#4880])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#3297]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#3281] / [i915#3297])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@gem_userptr_blits@relocations.html
>     - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#3281] / [i915#3297])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#3297]) +4 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-tglu:         NOTRUN -> [SKIP][48] ([i915#3297]) +1 other test skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-5/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-mtlp:         [PASS][49] -> [FAIL][50] ([i915#10177])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-mtlp-2/igt@gem_workarounds@suspend-resume-context.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-mtlp-8/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen7_exec_parse@basic-rejected:
>     - shard-dg2:          NOTRUN -> [SKIP][51] +5 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@gen7_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#2856]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#2527]) +1 other test skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-3/igt@gen9_exec_parse@batch-zero-length.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#2527]) +2 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@i915_fb_tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#4881])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@i915_fb_tiling.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          [PASS][56] -> [ABORT][57] ([i915#9820])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#7178])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_rc6_residency@media-rc6-accuracy:
>     - shard-rkl:          NOTRUN -> [SKIP][59] +13 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-3/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#6621])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4387])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#6245])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-3/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-dg1:          NOTRUN -> [DMESG-WARN][63] ([i915#9311])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#7707])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#4212])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4215] / [i915#5190])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
>     - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#4212]) +2 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#8709]) +7 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-18/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#1769] / [i915#3555])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#4538] / [i915#5286]) +6 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][71] ([i915#5286]) +1 other test skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#5286]) +2 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-mtlp:         [PASS][73] -> [FAIL][74] ([i915#5138])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [PASS][75] -> [DMESG-FAIL][76] ([i915#2017])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#3638]) +3 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-16/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#4538] / [i915#5190]) +5 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#4538]) +3 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#6095]) +75 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-18/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#10307] / [i915#6095]) +144 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-10/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][82] ([i915#6095]) +11 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-5/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#6095]) +69 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio-edid:
>     - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#7828]) +7 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-16/igt@kms_chamelium_audio@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#7828]) +5 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_frames@dp-crc-multiple:
>     - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#7828]) +2 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@kms_chamelium_frames@dp-crc-multiple.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>     - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#7828]) +1 other test skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-5/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#7116] / [i915#9424])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@kms_content_protection@atomic.html
>     - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#7118] / [i915#9424])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#3299]) +1 other test skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@kms_content_protection@dp-mst-type-0.html
>     - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#3116] / [i915#3299])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-5/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#7118] / [i915#9424])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@uevent@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][94] ([i915#1339] / [i915#7173])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#3555]) +1 other test skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#11453])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#11453])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#3555]) +2 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
>     - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#3555]) +3 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#4103])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#4103] / [i915#4213])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#8812])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#3840])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-7/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#3840])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
>     - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#3840])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#3555] / [i915#3840])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-16/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#3555] / [i915#3840])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#3955])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-3/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#9934]) +8 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#8381])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@kms_flip@2x-flip-vs-fences.html
>     - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#3637]) +4 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-5/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a4:
>     - shard-dg1:          [PASS][112] -> [FAIL][113] ([i915#2122])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-dg1-15/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a4.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-18/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a4.html
> 
>   * igt@kms_flip@flip-vs-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#8381])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@kms_flip@flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#2672]) +2 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#2587] / [i915#2672]) +4 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
>     - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#2587] / [i915#2672])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#2672] / [i915#3555])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#5354]) +16 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
>     - shard-dg2:          [PASS][120] -> [FAIL][121] ([i915#6880])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#3458]) +11 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff:
>     - shard-dg1:          NOTRUN -> [SKIP][123] +41 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#1825]) +16 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#9766])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-7/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][126] +22 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#8708]) +4 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#3458]) +7 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#10433] / [i915#3458])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#3023]) +9 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#8708]) +18 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#3555] / [i915#8228])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#3555] / [i915#8228])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-3/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#6301])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-5/igt@kms_panel_fitting@legacy.html
>     - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#6301])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane_multiple@tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#8806])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_plane_multiple@tiling-y.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [FAIL][137] ([i915#8292])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-13/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#9423]) +11 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#9423]) +7 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-16/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#9423]) +7 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#9728]) +5 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#5354]) +1 other test skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-16/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#9685])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-3/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#5978])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#9519])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-5/igt@kms_pm_rpm@dpms-non-lpsp.html
>     - shard-dg2:          [PASS][146] -> [SKIP][147] ([i915#9519]) +1 other test skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-dg2-6/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-10/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [PASS][148] -> [SKIP][149] ([i915#9519])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_prime@basic-crc-vgem:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#6524] / [i915#6805])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_prime@basic-crc-vgem.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#6524])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@kms_prime@d3hot.html
>     - shard-dg1:          NOTRUN -> [SKIP][152] ([i915#6524])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#11520])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-5/igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#11520]) +1 other test skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area:
>     - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#11520]) +2 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-16/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#9683])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#9683]) +1 other test skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@fbc-psr-no-drrs:
>     - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#9732]) +6 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-7/igt@kms_psr@fbc-psr-no-drrs.html
> 
>   * igt@kms_psr@fbc-psr2-basic:
>     - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#1072] / [i915#9732]) +20 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@kms_psr@fbc-psr2-basic.html
> 
>   * igt@kms_psr@pr-sprite-render:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#1072] / [i915#9732]) +10 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@kms_psr@pr-sprite-render.html
> 
>   * igt@kms_psr@psr-primary-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#1072] / [i915#9732]) +8 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@kms_psr@psr-primary-mmap-cpu.html
> 
>   * igt@kms_rotation_crc@bad-pixel-format:
>     - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#11131])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_rotation_crc@bad-pixel-format.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#4235])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#11131] / [i915#5190])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#5289])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
>     - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#5289]) +2 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-17/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full-aspect:
>     - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#3555]) +1 other test skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-7/igt@kms_scaling_modes@scaling-mode-full-aspect.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#9906])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@kms_vrr@max-min.html
>     - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#9906])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-5/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#9906])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-3/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#2437])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-3/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-tglu:         NOTRUN -> [SKIP][172] ([i915#2437] / [i915#9412])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-7/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#2436])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#8850])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@perf_pmu@multi-client@vcs1:
>     - shard-mtlp:         [PASS][175] -> [FAIL][176] ([i915#4349])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-mtlp-7/igt@perf_pmu@multi-client@vcs1.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-mtlp-7/igt@perf_pmu@multi-client@vcs1.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#3708] / [i915#4077])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#3708]) +1 other test skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#4818])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-15/igt@tools_test@sysfs_l3_parity.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@virtual-idle:
>     - shard-rkl:          [FAIL][180] ([i915#7742]) -> [PASS][181] +1 other test pass
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-rkl-6/igt@drm_fdinfo@virtual-idle.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html
> 
>   * igt@gem_ctx_freq@sysfs@gt0:
>     - shard-dg2:          [FAIL][182] ([i915#9561]) -> [PASS][183]
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-dg2-6/igt@gem_ctx_freq@sysfs@gt0.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-10/igt@gem_ctx_freq@sysfs@gt0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-rkl:          [FAIL][184] ([i915#2842]) -> [PASS][185] +1 other test pass
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-rkl-3/igt@gem_exec_fair@basic-none@vcs0.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-2/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglu:         [FAIL][186] ([i915#2842]) -> [PASS][187]
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_lmem_swapping@basic@lmem0:
>     - shard-dg2:          [FAIL][188] ([i915#10378]) -> [PASS][189] +1 other test pass
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-dg2-6/igt@gem_lmem_swapping@basic@lmem0.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-10/igt@gem_lmem_swapping@basic@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-multi@lmem0:
>     - shard-dg1:          [FAIL][190] ([i915#10378]) -> [PASS][191]
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-dg1-17/igt@gem_lmem_swapping@heavy-multi@lmem0.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg1-14/igt@gem_lmem_swapping@heavy-multi@lmem0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglu:         [ABORT][192] ([i915#10887] / [i915#9820]) -> [PASS][193]
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-tglu-9/igt@i915_module_load@reload-with-fault-injection.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
>     - shard-dg2:          [FAIL][194] ([i915#3591]) -> [PASS][195]
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-dg2-5/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-11/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1:
>     - shard-tglu:         [FAIL][196] -> [PASS][197]
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1:
>     - shard-rkl:          [FAIL][198] ([i915#2122]) -> [PASS][199] +1 other test pass
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-2/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          [FAIL][200] ([i915#6880]) -> [PASS][201]
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:
>     - shard-mtlp:         [FAIL][202] -> [PASS][203] +2 other tests pass
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-mtlp-8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-mtlp-4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         [FAIL][204] ([i915#9295]) -> [PASS][205]
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-tglu-10/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-rkl:          [SKIP][206] ([i915#9519]) -> [PASS][207] +3 other tests pass
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-dg2:          [SKIP][208] ([i915#9519]) -> [PASS][209] +1 other test pass
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-mtlp:         [ABORT][210] ([i915#10131] / [i915#9820]) -> [ABORT][211] ([i915#10131] / [i915#10887] / [i915#9697])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-dg2:          [SKIP][212] ([i915#3458]) -> [SKIP][213] ([i915#10433] / [i915#3458]) +1 other test skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][214] ([i915#4816]) -> [SKIP][215] ([i915#4070] / [i915#4816])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_psr@fbc-psr-primary-page-flip:
>     - shard-dg2:          [SKIP][216] ([i915#1072] / [i915#9732]) -> [SKIP][217] ([i915#1072] / [i915#9673] / [i915#9732]) +9 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15148/shard-dg2-5/igt@kms_psr@fbc-psr-primary-page-flip.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/shard-dg2-11/igt@kms_psr@fbc-psr-primary-page-flip.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
>   [i915#10177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10177
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
>   [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
>   [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#2017]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2017
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5889]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5889
>   [i915#5978]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5978
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7178
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9697
>   [i915#9728]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9728
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15148 -> Patchwork_136347v2
> 
>   CI-20190529: 20190529
>   CI_DRM_15148: 4b0d29cef51dec47a5892317ae3c6ff9a8ab8d17 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7941: 3acf6637792bab9a748de63330ef81f5e22eb174 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_136347v2: 4b0d29cef51dec47a5892317ae3c6ff9a8ab8d17 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v2/index.html
