Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E250A907595
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 16:47:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A61810E1D1;
	Thu, 13 Jun 2024 14:47:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NCPY6vqU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 314F610E1D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 14:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718290060; x=1749826060;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=hdl9d7O8Z4cW3yTL9/eS+v1JfEr2m4Q+dApbxh8+Wy4=;
 b=NCPY6vqUHaUn+SH3i5YG3ePCQiWDcQ2SQJ43YHQhlO7o0wL9jgDzAHdu
 zywhDwTZrfxKnSMpnH+SfVxWBcYSTuHGgaIeJs6r6R+ijE64Fxi01YgSa
 iAxatBr7FnxW3EADlb9sPwVlDeKdRKjoZxwWOd3M1JAK1ZYkT8ahJYvl2
 OMCV3x7i5cgxyE6teI3aR9gazERSuVaRbx8ta6sOx2XFJJkRAiyiJyZtg
 5Z496gP6JPt4T1P/1XyvfmjanmDODjsi3hzGDix+opBsLRV9SCad1iVUi
 ywrF3YLYGpStSsDDoNsMPq3H5+wvxnvhCvXogYK/8Vyj4t5UKTcxLK1rd g==;
X-CSE-ConnectionGUID: tY122pXaQpWdsWRhdc0fCg==
X-CSE-MsgGUID: WLWHxQBARfeTnOG+ztAWgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="18972523"
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="18972523"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 07:47:40 -0700
X-CSE-ConnectionGUID: zZiiqmPwR022vlaCObRuJA==
X-CSE-MsgGUID: OzQ9RgVRSHmrHoXNOpIGHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="40640801"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 07:47:38 -0700
Date: Thu, 13 Jun 2024 17:47:45 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Luciano Coelho <luciano.coelho@intel.com>
Subject: Re: =?utf-8?B?4pyTIEZpLkNJLklHVA==?= =?utf-8?Q?=3A?= success for
 drm/i915/dp_mst: Fix DSC input BPP computation
Message-ID: <ZmsGkVACpM8Wzaks@ideak-desk.fi.intel.com>
References: <20240611153351.3013235-1-imre.deak@intel.com>
 <171817443465.67160.1105804457673918729@a6498e030952>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <171817443465.67160.1105804457673918729@a6498e030952>
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

On Wed, Jun 12, 2024 at 06:40:34AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_mst: Fix DSC input BPP computation
> URL   : https://patchwork.freedesktop.org/series/134726/
> State : success

Thanks for the review, pushed this now to drm-intel-next.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14920_full -> Patchwork_134726v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/index.html
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_134726v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_plane@plane-position-hole-dpms@pipe-b-plane-3}:
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-18/igt@kms_plane@plane-position-hole-dpms@pipe-b-plane-3.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_134726v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][2] ([i915#8411])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@debugfs_test@basic-hwmon:
>     - shard-rkl:          NOTRUN -> [SKIP][3] ([i915#9318])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-5/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@drm_fdinfo@busy@bcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][4] ([i915#8414]) +6 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@drm_fdinfo@busy@bcs0.html
> 
>   * igt@drm_fdinfo@virtual-idle:
>     - shard-rkl:          NOTRUN -> [FAIL][5] ([i915#7742])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html
> 
>   * igt@gem_busy@semaphore:
>     - shard-mtlp:         NOTRUN -> [SKIP][6] ([i915#3936])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@gem_busy@semaphore.html
> 
>   * igt@gem_caching@writes:
>     - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#4873]) +1 other test skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@gem_caching@writes.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-tglu:         NOTRUN -> [SKIP][8] ([i915#3555] / [i915#9323])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-mtlp:         NOTRUN -> [SKIP][9] ([i915#9323])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#9323])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-4/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-dg1:          NOTRUN -> [SKIP][11] ([i915#7697])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-14/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-dg1:          NOTRUN -> [FAIL][12] ([i915#10086] / [i915#11279]) +4 other tests fail
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-14/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_ctx_persistence@hang:
>     - shard-mtlp:         NOTRUN -> [SKIP][13] ([i915#8555]) +1 other test skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@gem_ctx_persistence@hang.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg1:          NOTRUN -> [SKIP][14] ([i915#8555])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-dg1:          NOTRUN -> [SKIP][15] ([i915#280])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_exec_balancer@bonded-pair:
>     - shard-mtlp:         NOTRUN -> [SKIP][16] ([i915#4771])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@gem_exec_balancer@bonded-pair.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#4525])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-3/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-glk:          NOTRUN -> [SKIP][18] ([i915#6334])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-glk7/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_capture@capture@vecs0-lmem0:
>     - shard-dg1:          NOTRUN -> [FAIL][19] ([i915#10386]) +1 other test fail
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@gem_exec_capture@capture@vecs0-lmem0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-mtlp:         NOTRUN -> [SKIP][20] ([i915#4473] / [i915#4771])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][21] ([i915#2842]) +2 other tests fail
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-glk8/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglu:         [PASS][22] -> [FAIL][23] ([i915#2842])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-rkl:          [PASS][24] -> [FAIL][25] ([i915#2842])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fence@submit:
>     - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#4812]) +1 other test skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@gem_exec_fence@submit.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#3281]) +4 other tests skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-15/igt@gem_exec_reloc@basic-gtt-cpu.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#3281]) +5 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-cpu-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][29] ([i915#3281]) +3 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@gem_exec_reloc@basic-write-cpu-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-chain:
>     - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#4537] / [i915#4812]) +1 other test skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@gem_exec_schedule@preempt-queue-chain.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts:
>     - shard-dg1:          NOTRUN -> [SKIP][31] ([i915#4812])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-15/igt@gem_exec_schedule@preempt-queue-contexts.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#4860])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-14/igt@gem_fenced_exec_thrash@no-spare-fences.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#4613] / [i915#7582])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-4/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-tglu:         NOTRUN -> [SKIP][34] ([i915#4613]) +1 other test skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@gem_lmem_swapping@heavy-random.html
>     - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4613]) +2 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-2/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@heavy-random@lmem0:
>     - shard-dg1:          NOTRUN -> [FAIL][36] ([i915#10378])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-15/igt@gem_lmem_swapping@heavy-random@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify-ccs@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#4565])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@gem_lmem_swapping@verify-ccs@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#4613]) +2 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-3/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][39] ([i915#4613]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-glk7/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_mmap@basic-small-bo:
>     - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#4083]) +3 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-2/igt@gem_mmap@basic-small-bo.html
> 
>   * igt@gem_mmap_wc@write-read-distinct:
>     - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#4083]) +3 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-15/igt@gem_mmap_wc@write-read-distinct.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#3282]) +5 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-glk:          NOTRUN -> [WARN][43] ([i915#2658])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-glk8/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#4270]) +3 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-4/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-dg1:          NOTRUN -> [SKIP][45] ([i915#4270]) +2 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-15/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
>     - shard-tglu:         NOTRUN -> [SKIP][46] ([i915#4270]) +2 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#4270]) +4 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_readwrite@read-bad-handle:
>     - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#3282]) +1 other test skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-5/igt@gem_readwrite@read-bad-handle.html
> 
>   * igt@gem_readwrite@read-write:
>     - shard-mtlp:         NOTRUN -> [SKIP][49] ([i915#3282])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-2/igt@gem_readwrite@read-write.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#8428]) +3 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html
> 
>   * igt@gem_tiled_fence_blits@basic:
>     - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#4077]) +7 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-14/igt@gem_tiled_fence_blits@basic.html
> 
>   * igt@gem_tiled_wb:
>     - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#4077]) +4 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@gem_tiled_wb.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#3282] / [i915#3297])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-4/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#3297]) +1 other test skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#3297])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#2856]) +1 other test skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#2527] / [i915#2856])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@gen9_exec_parse@batch-zero-length.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#2527]) +3 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#2527])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          NOTRUN -> [ABORT][60] ([i915#9820])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-3/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg1:          NOTRUN -> [ABORT][61] ([i915#9820])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-15/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-tglu:         NOTRUN -> [ABORT][62] ([i915#9820])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         NOTRUN -> [ABORT][63] ([i915#10131] / [i915#9820])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
>     - shard-dg1:          [PASS][64] -> [FAIL][65] ([i915#3591]) +1 other test fail
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
> 
>   * igt@i915_pm_rpm@gem-mmap-type@gtt-smem0:
>     - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#8431])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@i915_pm_rpm@gem-mmap-type@gtt-smem0.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#6621])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#5723])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#4212]) +1 other test skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@tile-pitch-mismatch:
>     - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#4212])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-15/igt@kms_addfb_basic@tile-pitch-mismatch.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#8709]) +7 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#8709]) +11 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#9531])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-14/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#1769] / [i915#3555])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#5286]) +2 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-5/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-tglu:         NOTRUN -> [SKIP][76] ([i915#5286]) +1 other test skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#4538] / [i915#5286]) +3 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#3638])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
>     - shard-mtlp:         NOTRUN -> [SKIP][79] +17 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#3638]) +2 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#4538]) +2 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#6095]) +91 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-17/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#10307] / [i915#10434] / [i915#6095]) +8 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#6095]) +23 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-2/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-c-edp-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#6095]) +11 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [SKIP][86] +125 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-glk8/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#10307] / [i915#6095]) +174 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#6095]) +65 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#7213]) +3 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#3742])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-14/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium_edid@vga-edid-read:
>     - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#7828]) +3 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@kms_chamelium_edid@vga-edid-read.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-single:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#7828]) +3 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-3/igt@kms_chamelium_frames@hdmi-crc-single.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#7828]) +4 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-14/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
>     - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#7828]) +2 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html
> 
>   * igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][95] ([i915#7173])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#6944] / [i915#9424]) +1 other test skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@kms_content_protection@content-type-change.html
>     - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#6944] / [i915#9424])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-2/igt@kms_content_protection@content-type-change.html
>     - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#9424])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-15/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#7116] / [i915#9424])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-14/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#9424]) +1 other test skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-4/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#7118])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-10/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@uevent@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][102] ([i915#1339] / [i915#7173])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-256x85:
>     - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#8814]) +1 other test skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-offscreen-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#3555]) +2 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#3359])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#3555]) +1 other test skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#3555]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#3359]) +1 other test skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-max-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#3555] / [i915#8814]) +1 other test skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-sliding-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][110] ([i915#11279] / [i915#11298]) +1 other test fail
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-14/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#9809]) +2 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][112] +25 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#4103])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#9723])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-2/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#9227])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-6/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#3804])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#3804])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#1257])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#3555] / [i915#8812])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#3555] / [i915#3840])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-glk:          [PASS][121] -> [FAIL][122] ([i915#4767])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-glk3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-glk3/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#1839])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-4/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#9337])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#3637]) +2 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#9934]) +1 other test skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@kms_flip@2x-flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend:
>     - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#3637]) +3 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@kms_flip@2x-flip-vs-suspend.html
> 
>   * igt@kms_flip@flip-vs-fences:
>     - shard-mtlp:         NOTRUN -> [SKIP][128] ([i915#8381])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@kms_flip@flip-vs-fences.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp4:
>     - shard-dg2:          NOTRUN -> [FAIL][129] ([i915#11275] / [i915#11279]) +3 other tests fail
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-11/igt@kms_flip@flip-vs-suspend-interruptible@c-dp4.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#2672])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#3555] / [i915#8810]) +1 other test skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#2587] / [i915#2672]) +4 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html
>     - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#2587] / [i915#2672])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#8810])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#2672]) +1 other test skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt:
>     - shard-snb:          [PASS][136] -> [SKIP][137] +2 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:
>     - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#1825]) +19 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-dg1:          NOTRUN -> [FAIL][139] ([i915#11279] / [i915#11280])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#3023]) +13 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#1825]) +22 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff:
>     - shard-dg1:          NOTRUN -> [SKIP][142] +31 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#8708]) +4 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][144] ([i915#3458]) +10 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#10055])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-tglu:         NOTRUN -> [SKIP][146] +31 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#8708]) +9 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg1:          NOTRUN -> [SKIP][148] ([i915#3555] / [i915#8228])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-14/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#3555] / [i915#8228])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-4/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#6301])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [FAIL][151] ([i915#11274] / [i915#11279]) +3 other tests fail
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_plane_multiple@tiling-y:
>     - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#3555] / [i915#8806])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@kms_plane_multiple@tiling-y.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][153] ([i915#9423]) +7 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-13/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#5176]) +3 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-edp-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#9423]) +7 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#5176] / [i915#9423]) +1 other test skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#5235]) +7 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#5235]) +3 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#5235] / [i915#9423]) +19 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-dp-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#5235]) +6 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#3555] / [i915#5235])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#5235]) +7 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#9812]) +1 other test skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@kms_pm_backlight@fade.html
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#5354])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-3/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#5354]) +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-14/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#10139])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [PASS][167] -> [SKIP][168] ([i915#9519]) +3 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [PASS][169] -> [SKIP][170] ([i915#9519])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#9519])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#6524])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-5/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-cursor-plane-update-sf@psr2-pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#9808]) +1 other test skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@kms_psr2_sf@fbc-cursor-plane-update-sf@psr2-pipe-a-edp-1.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#9683])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#4348]) +1 other test skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#1072] / [i915#9732]) +13 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-14/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_psr@pr-primary-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][177] ([i915#9688]) +9 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@kms_psr@pr-primary-render.html
> 
>   * igt@kms_psr@pr-sprite-render:
>     - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#1072] / [i915#9732]) +14 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-4/igt@kms_psr@pr-sprite-render.html
> 
>   * igt@kms_psr@psr2-cursor-plane-onoff:
>     - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#9732]) +9 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@kms_psr@psr2-cursor-plane-onoff.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#9685])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#4235]) +1 other test skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#5289])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#8623])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#8623])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-5/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
>     - shard-tglu:         [PASS][185] -> [FAIL][186] ([i915#9196])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [FAIL][187] ([i915#10305] / [i915#11279]) +3 other tests fail
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-4/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#3555] / [i915#8808])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#9906])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-14/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#2437])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-glk:          NOTRUN -> [SKIP][191] ([i915#2437])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-glk8/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#2433])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-3/igt@perf@unprivileged-single-ctx-counters.html
>     - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#2433])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-15/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@busy-double-start@ccs0:
>     - shard-mtlp:         [PASS][194] -> [FAIL][195] ([i915#4349])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-mtlp-3/igt@perf_pmu@busy-double-start@ccs0.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@perf_pmu@busy-double-start@ccs0.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - shard-mtlp:         NOTRUN -> [SKIP][196] ([i915#3708] / [i915#4077])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#3708])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@prime_vgem@basic-read.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#9917])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-14/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   * igt@syncobj_timeline@invalid-wait-zero-handles:
>     - shard-mtlp:         NOTRUN -> [FAIL][199] ([i915#9781])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-6/igt@syncobj_timeline@invalid-wait-zero-handles.html
> 
>   * igt@v3d/v3d_perfmon@destroy-valid-perfmon:
>     - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#2575]) +4 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-tglu-3/igt@v3d/v3d_perfmon@destroy-valid-perfmon.html
> 
>   * igt@v3d/v3d_submit_cl@bad-multisync-in-sync:
>     - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#2575]) +4 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@v3d/v3d_submit_cl@bad-multisync-in-sync.html
> 
>   * igt@v3d/v3d_submit_cl@valid-submission:
>     - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#2575]) +5 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@v3d/v3d_submit_cl@valid-submission.html
> 
>   * igt@vc4/vc4_perfmon@create-two-perfmon:
>     - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#7711]) +4 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-3/igt@vc4/vc4_perfmon@create-two-perfmon.html
>     - shard-dg1:          NOTRUN -> [SKIP][204] ([i915#7711]) +4 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-15/igt@vc4/vc4_perfmon@create-two-perfmon.html
> 
>   * igt@vc4/vc4_tiling@set-bad-flags:
>     - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#7711]) +4 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-4/igt@vc4/vc4_tiling@set-bad-flags.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - shard-rkl:          [FAIL][206] ([i915#7742]) -> [PASS][207]
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-rkl-3/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg1:          [FAIL][208] ([i915#5784]) -> [PASS][209]
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-dg1-15/igt@gem_eio@reset-stress.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-16/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-rkl:          [FAIL][210] ([i915#2842]) -> [PASS][211]
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random@lmem0:
>     - shard-dg2:          [FAIL][212] ([i915#10378]) -> [PASS][213] +1 other test pass
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-dg2-2/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-11/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [SKIP][214] ([i915#7984]) -> [PASS][215]
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-mtlp-7/igt@i915_power@sanity.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-mtlp-1/igt@i915_power@sanity.html
> 
>   * igt@i915_selftest@live@guc_hang:
>     - shard-dg1:          [INCOMPLETE][216] -> [PASS][217]
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-dg1-17/igt@i915_selftest@live@guc_hang.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-18/igt@i915_selftest@live@guc_hang.html
> 
>   * igt@kms_cursor_legacy@torture-move@pipe-a:
>     - shard-dg1:          [DMESG-WARN][218] ([i915#10166]) -> [PASS][219]
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-dg1-18/igt@kms_cursor_legacy@torture-move@pipe-a.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg1-13/igt@kms_cursor_legacy@torture-move@pipe-a.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1:
>     - shard-snb:          [FAIL][220] ([i915#2122]) -> [PASS][221] +2 other tests pass
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-snb5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [SKIP][222] ([i915#9519]) -> [PASS][223]
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg2:          [FAIL][224] ([i915#8717]) -> [PASS][225]
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-dg2-2/igt@kms_pm_rpm@i2c.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-11/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][226] ([i915#9519]) -> [PASS][227] +2 other tests pass
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          [FAIL][228] ([IGT#2]) -> [PASS][229]
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-dg2-2/igt@kms_sysfs_edid_timing.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-11/igt@kms_sysfs_edid_timing.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
>     - shard-dg2:          [FAIL][230] ([i915#10378]) -> [FAIL][231] ([i915#10446])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-dg2-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-5/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
>     - shard-dg2:          [SKIP][232] ([i915#10433] / [i915#3458]) -> [SKIP][233] ([i915#3458]) +4 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-dg2:          [SKIP][234] ([i915#3458]) -> [SKIP][235] ([i915#10433] / [i915#3458]) +1 other test skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][236] ([i915#4070] / [i915#4816]) -> [SKIP][237] ([i915#4816])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-move:
>     - shard-dg2:          [SKIP][238] ([i915#1072] / [i915#9732]) -> [SKIP][239] ([i915#1072] / [i915#9673] / [i915#9732]) +15 other tests skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-dg2-2/igt@kms_psr@fbc-psr-cursor-plane-move.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-11/igt@kms_psr@fbc-psr-cursor-plane-move.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-dg2:          [SKIP][240] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][241] ([i915#1072] / [i915#9732]) +4 other tests skip
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/shard-dg2-11/igt@kms_psr@psr2-primary-mmap-gtt.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/shard-dg2-10/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10086]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10086
>   [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
>   [i915#10139]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10139
>   [i915#10166]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10166
>   [i915#10305]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10305
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
>   [i915#10386]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10386
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10446]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10446
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11274]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11274
>   [i915#11275]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11275
>   [i915#11279]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11279
>   [i915#11280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11280
>   [i915#11298]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11298
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
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
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4348]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4348
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4473]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4473
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4873
>   [i915#5176]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8431]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8431
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8717
>   [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
>   [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
>   [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9227]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9227
>   [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
>   [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
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
>   * Linux: CI_DRM_14920 -> Patchwork_134726v1
> 
>   CI-20190529: 20190529
>   CI_DRM_14920: 950ce28fe0b31a24c5bddcc337aba9554a41cbb3 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7881: 7881
>   Patchwork_134726v1: 950ce28fe0b31a24c5bddcc337aba9554a41cbb3 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/index.html
