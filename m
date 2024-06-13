Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27954907CCA
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 21:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2D2610EB85;
	Thu, 13 Jun 2024 19:40:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YEc0UyZG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E978A10E1C9;
 Thu, 13 Jun 2024 19:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718307643; x=1749843643;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Lj7xDRBYa45tdPIKUCkHP29lE9O+G2z4S5fTy78JJRg=;
 b=YEc0UyZG8+5A27CR7GO7BNxWQkxndbAVhZlFgcDHcOYtYUVEERBsTO9r
 M6RRo/ocFaazMnPMrcbsHKFBXdo3lZWUFCfW9iBxNI/lsrG6Vqs/YCJQ/
 h/v4iARqK0Go51ADPHxjzs3ZlIGTX8xP0rzjyxOAoH6TSXxHlSR5S1jbr
 Icv+fAefwd5oU71li1uXEq0mxCBzMNYrFaco2stJPKY8/Y9esnfYKK7si
 /QdyDAYCaIpSVMHhDlN6ekWspOrufjWMKDYmXnZvWG1WrH2GazbBH7W0l
 Tml5Us19VGR4yEsh9Naa4BZEkLguXLh+h/Yc55xC4g1baAh4tFGm6euPB A==;
X-CSE-ConnectionGUID: t1f+iSG4TlCzyJGC9dlTzg==
X-CSE-MsgGUID: SFGRDAuoS9Kt+bV41i37Kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="15292643"
X-IronPort-AV: E=Sophos;i="6.08,236,1712646000"; d="scan'208";a="15292643"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 12:40:42 -0700
X-CSE-ConnectionGUID: SyeudBRPR3Ky5wC7WW+ZiA==
X-CSE-MsgGUID: lvlwlEd6RkmVAXkJqHm0nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,236,1712646000"; d="scan'208";a="40966744"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 12:40:39 -0700
Date: Thu, 13 Jun 2024 22:40:47 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Manasi D Navare <navaremanasi@chromium.org>,
 I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?= =?utf-8?Q?e?= for
 drm/i915/dp_mst: Enable link training fallback (rev5)
Message-ID: <ZmtLP4pYmTWgxqEV@ideak-desk.fi.intel.com>
References: <20240610164933.2947366-1-imre.deak@intel.com>
 <171809015421.66237.4310988142736253725@a6498e030952>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <171809015421.66237.4310988142736253725@a6498e030952>
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

On Tue, Jun 11, 2024 at 07:15:54AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_mst: Enable link training fallback (rev5)
> URL   : https://patchwork.freedesktop.org/series/133624/
> State : failure

Thanks for the reviews, patchset is pushed to -din. The failures are
unrelated, see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14913_full -> Patchwork_133624v5_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_133624v5_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_133624v5_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/index.html
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_133624v5_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_schedule@deep@ccs0:
>     - shard-dg2:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-dg2-5/igt@gem_exec_schedule@deep@ccs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-11/igt@gem_exec_schedule@deep@ccs0.html

There is no (pstore) log for this, so no way to know the actual root
cause. There is a DP sink connected, but I couldn't find any trace of
link training failures, or link retrains on this machine in any past CI
runs with available logs. The last display activity is 1 minute before
the hang, after which there is a series of GEM tests. There is a history
of many similar incomplete test results during both GEM and KMS tests on
DG2s. Based on these I find it sufficiently unlikely that the link
training changes in this patchset would be related to the issue.

>   * igt@kms_draw_crc@draw-method-pwrite@xrgb2101010-xtiled:
>     - shard-snb:          [PASS][3] -> [ABORT][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-snb7/igt@kms_draw_crc@draw-method-pwrite@xrgb2101010-xtiled.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-snb4/igt@kms_draw_crc@draw-method-pwrite@xrgb2101010-xtiled.html

This is
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8852

some block-io/scsi lock consistency issue since 6.5-rc1, I notified the
maintainers now about it.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_133624v5_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#11078])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - shard-rkl:          [PASS][6] -> [FAIL][7] ([i915#7742])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@drm_fdinfo@virtual-busy-all:
>     - shard-dg1:          NOTRUN -> [SKIP][8] ([i915#8414]) +5 other tests skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@drm_fdinfo@virtual-busy-all.html
> 
>   * igt@drm_fdinfo@virtual-busy-idle-all:
>     - shard-mtlp:         NOTRUN -> [SKIP][9] ([i915#8414])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@drm_fdinfo@virtual-busy-idle-all.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-dg1:          NOTRUN -> [SKIP][10] ([i915#7697])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-18/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          NOTRUN -> [FAIL][11] ([i915#11265] / [i915#11279]) +7 other tests fail
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#7697]) +1 other test skip
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-dg2:          NOTRUN -> [ABORT][13] ([i915#9846])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#8562])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-5/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_persistence@hang:
>     - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#8555])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@gem_ctx_persistence@hang.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-dg1:          NOTRUN -> [SKIP][16] ([i915#8555])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-18/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
>     - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#5882]) +6 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg1:          NOTRUN -> [SKIP][18] ([i915#280])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-dg2:          [PASS][19] -> [FAIL][20] ([i915#5784])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-dg2-4/igt@gem_eio@unwedge-stress.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-1/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@noheartbeat:
>     - shard-mtlp:         NOTRUN -> [SKIP][21] ([i915#8555])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@gem_exec_balancer@noheartbeat.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#4525])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-glk:          NOTRUN -> [SKIP][23] ([i915#6334])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-glk4/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_capture@capture@vecs0-lmem0:
>     - shard-dg2:          NOTRUN -> [FAIL][24] ([i915#10386]) +3 other tests fail
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@gem_exec_capture@capture@vecs0-lmem0.html
> 
>   * igt@gem_exec_capture@many-4k-incremental:
>     - shard-dg1:          NOTRUN -> [FAIL][25] ([i915#9606])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@gem_exec_capture@many-4k-incremental.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#4473] / [i915#4771])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][27] ([i915#2842])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share:
>     - shard-snb:          NOTRUN -> [SKIP][28] +6 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-snb5/igt@gem_exec_fair@basic-none-share.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][29] ([i915#2842])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-glk7/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-rkl:          [PASS][30] -> [FAIL][31] ([i915#2842])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-rkl-2/igt@gem_exec_fair@basic-none@vcs0.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-1/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace:
>     - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#3539])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-18/igt@gem_exec_fair@basic-pace.html
> 
>   * igt@gem_exec_fair@basic-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3539]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-1/igt@gem_exec_fair@basic-sync.html
> 
>   * igt@gem_exec_fence@submit67:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4812]) +1 other test skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@gem_exec_fence@submit67.html
> 
>   * igt@gem_exec_flush@basic-uc-rw-default:
>     - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-18/igt@gem_exec_flush@basic-uc-rw-default.html
> 
>   * igt@gem_exec_flush@basic-wb-rw-before-default:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#3539] / [i915#4852])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@gem_exec_flush@basic-wb-rw-before-default.html
> 
>   * igt@gem_exec_reloc@basic-active:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#3281]) +4 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@gem_exec_reloc@basic-active.html
> 
>   * igt@gem_exec_reloc@basic-gtt-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#3281]) +1 other test skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@gem_exec_reloc@basic-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>     - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#3281]) +5 other tests skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-wc-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#3281]) +4 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@gem_exec_reloc@basic-write-wc-noreloc.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#4537] / [i915#4812])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#7276])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_exec_suspend@basic-s3@lmem0:
>     - shard-dg2:          NOTRUN -> [FAIL][43] ([i915#11279]) +1 other test fail
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@gem_exec_suspend@basic-s3@lmem0.html
> 
>   * igt@gem_fence_thrash@bo-copy:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4860])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@gem_fence_thrash@bo-copy.html
> 
>   * igt@gem_fenced_exec_thrash@too-many-fences:
>     - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#4860]) +1 other test skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@gem_fenced_exec_thrash@too-many-fences.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#4613] / [i915#7582])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@heavy-random@lmem0:
>     - shard-dg1:          [PASS][47] -> [FAIL][48] ([i915#10378])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-dg1-16/igt@gem_lmem_swapping@heavy-random@lmem0.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-18/igt@gem_lmem_swapping@heavy-random@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#4565])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi@lmem0:
>     - shard-dg1:          NOTRUN -> [FAIL][50] ([i915#10378]) +1 other test fail
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-18/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][51] ([i915#4613])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-5/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-glk:          NOTRUN -> [SKIP][52] ([i915#4613]) +3 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-glk8/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#4613]) +3 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-5/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy:
>     - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#4077]) +6 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
>     - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#4077]) +2 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#4083]) +1 other test skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@gem_mmap_wc@write-cpu-read-wc.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
>     - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#4083])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html
> 
>   * igt@gem_partial_pwrite_pread@write-uncached:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#3282]) +2 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@gem_partial_pwrite_pread@write-uncached.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#3282]) +4 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pwrite@basic-self:
>     - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#3282]) +1 other test skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@gem_pwrite@basic-self.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4270]) +2 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-tglu:         NOTRUN -> [SKIP][62] ([i915#4270])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-5/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#4270]) +2 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#4270]) +1 other test skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_readwrite@write-bad-handle:
>     - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#3282]) +1 other test skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@gem_readwrite@write-bad-handle.html
> 
>   * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#8428])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][67] +323 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-glk7/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#5190] / [i915#8428]) +2 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#8411])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#4885])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_spin_batch@spin-all-new:
>     - shard-dg2:          NOTRUN -> [FAIL][71] ([i915#5889])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-1/igt@gem_spin_batch@spin-all-new.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#4077]) +8 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@gem_tiled_partial_pwrite_pread@writes.html
> 
>   * igt@gem_tiled_pread_basic:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4079])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@gem_tiled_pread_basic.html
> 
>   * igt@gem_unfence_active_buffers:
>     - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#4879])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@gem_unfence_active_buffers.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#3297]) +1 other test skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#3297] / [i915#3323])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@sd-probe:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#3297] / [i915#4958])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@gem_userptr_blits@sd-probe.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#3297]) +1 other test skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#3297]) +1 other test skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#2856])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#2856])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#2527]) +1 other test skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-18/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#2527]) +1 other test skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@i915_module_load@load:
>     - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#6227])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][85] ([i915#1982] / [i915#9820] / [i915#9849])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#8399])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#6621])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#5723])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-tglu:         NOTRUN -> [DMESG-WARN][89] ([i915#9311])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-5/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#4212])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#5190])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#8709]) +7 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#8709]) +11 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#1769] / [i915#3555])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-180:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#5286]) +3 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#5286])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#4538] / [i915#5286]) +3 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [PASS][98] -> [DMESG-FAIL][99] ([i915#2017])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#3638]) +2 other tests skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][101] +6 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#3638]) +3 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#4538] / [i915#5190]) +5 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#4538])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][105] +18 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_joiner@basic-force-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#10656]) +1 other test skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-5/igt@kms_big_joiner@basic-force-joiner.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#6095]) +11 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-edp-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-10/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-xe2-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#10278])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@kms_ccs@crc-primary-basic-4-tiled-xe2-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-c-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#6095]) +7 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-5/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#10307] / [i915#6095]) +189 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#6095]) +75 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#6095]) +59 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-1/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#7828]) +5 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-5/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium_edid@hdmi-mode-timings:
>     - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#7828]) +2 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-5/igt@kms_chamelium_edid@hdmi-mode-timings.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#7828]) +4 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#7828]) +4 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-18/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm:
>     - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#7828]) +1 other test skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@kms_chamelium_hpd@hdmi-hpd-storm.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#3299])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#7118] / [i915#9424])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#6944] / [i915#9424])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@srm@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][122] ([i915#7173]) +1 other test timeout
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-max-size:
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#3555]) +1 other test skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-5/igt@kms_cursor_crc@cursor-offscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#3555]) +2 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#3359]) +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-128x42:
>     - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#8814])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@kms_cursor_crc@cursor-rapid-movement-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#3359])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#3359])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [FAIL][129] ([i915#11279] / [i915#11298]) +1 other test fail
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-13/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-dg1:          NOTRUN -> [SKIP][130] ([i915#4103] / [i915#4213])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#4103])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#9067])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@torture-bo@pipe-a:
>     - shard-snb:          [PASS][133] -> [DMESG-WARN][134] ([i915#10166])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-snb4/igt@kms_cursor_legacy@torture-bo@pipe-a.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-snb6/igt@kms_cursor_legacy@torture-bo@pipe-a.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#9723])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-4/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#9723])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#3555]) +5 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-5/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#8588])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#3555]) +5 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#3555] / [i915#3840])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#3555] / [i915#3840])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#3555] / [i915#3840]) +1 other test skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#1839])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-1/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#9337])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#658])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-5/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#658])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-blocking-absolute-wf_vblank:
>     - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#3637]) +1 other test skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@kms_flip@2x-blocking-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#8381])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-1/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][149] +33 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-5/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#9934]) +5 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][151] -> [FAIL][152] ([i915#2122])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-snb2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-fences:
>     - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#8381])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@kms_flip@flip-vs-fences.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp4:
>     - shard-dg2:          NOTRUN -> [FAIL][154] ([i915#11275] / [i915#11279]) +3 other tests fail
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-11/igt@kms_flip@flip-vs-suspend-interruptible@c-dp4.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1:
>     - shard-rkl:          NOTRUN -> [FAIL][155] ([i915#2122])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#2672]) +1 other test skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#2672]) +1 other test skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#2587] / [i915#2672])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#2587] / [i915#2672]) +1 other test skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#2672]) +1 other test skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#5274])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@kms_force_connector_basic@prune-stale-modes.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][162] +26 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#5439])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][164] ([i915#8708]) +8 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#8708]) +15 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#8708])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][167] ([i915#1825]) +6 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:
>     - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#3458]) +8 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#1825]) +28 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#5354]) +15 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#3023]) +17 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#3458]) +12 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#3555] / [i915#8228])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-5/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#3555] / [i915#8228])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-5/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#3555] / [i915#8228]) +1 other test skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#4070] / [i915#4816])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#6301])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-1/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [FAIL][178] ([i915#11274] / [i915#11279]) +3 other tests fail
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][179] ([i915#10647]) +3 other tests fail
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-glk6/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_lowres@tiling-y:
>     - shard-mtlp:         NOTRUN -> [SKIP][180] ([i915#3555] / [i915#8821])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@kms_plane_lowres@tiling-y.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [FAIL][181] ([i915#8292])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-13/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#9423]) +7 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#9423]) +3 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#9423]) +7 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#5235]) +3 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#5235]) +5 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#5235] / [i915#9423]) +19 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#5354])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-5/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#9812])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-5/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#10139])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@kms_pm_dc@dc6-dpms.html
>     - shard-tglu:         [PASS][191] -> [FAIL][192] ([i915#9295])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#9685])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [PASS][194] -> [SKIP][195] ([i915#9519]) +1 other test skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-1/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [PASS][196] -> [SKIP][197] ([i915#9519]) +1 other test skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#9519]) +1 other test skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#9519])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#9519])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#6524] / [i915#6805])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_prime@basic-crc-vgem:
>     - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#6524])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@kms_prime@basic-crc-vgem.html
> 
>   * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][203] +9 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-dg1:          NOTRUN -> [SKIP][204] ([i915#9683])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#9683])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][206] ([i915#9732]) +4 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-5/igt@kms_psr@fbc-psr2-cursor-blt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-mmap-gtt@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][207] ([i915#9688]) +2 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@kms_psr@fbc-psr2-sprite-mmap-gtt@edp-1.html
> 
>   * igt@kms_psr@pr-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#1072] / [i915#9732]) +12 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@kms_psr@pr-suspend.html
> 
>   * igt@kms_psr@psr2-cursor-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#1072] / [i915#9732]) +11 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@kms_psr@psr2-cursor-blt.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#1072] / [i915#9732]) +14 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@kms_psr@psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][211] ([i915#4077] / [i915#9688])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@kms_psr@psr2-primary-mmap-gtt@edp-1.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-dg1:          NOTRUN -> [SKIP][212] ([i915#9685]) +1 other test skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#5289]) +1 other test skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-270:
>     - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#4235])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@kms_rotation_crc@sprite-rotation-270.html
> 
>   * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
>     - shard-dg2:          [PASS][215] -> [FAIL][216] ([i915#5465]) +1 other test fail
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-dg2-8/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-8/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc-stealing:
>     - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#3555] / [i915#8809])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
>     - shard-mtlp:         [PASS][218] -> [FAIL][219] ([i915#9196])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
>     - shard-tglu:         [PASS][220] -> [FAIL][221] ([i915#9196])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [FAIL][222] ([i915#10305] / [i915#11279]) +1 other test fail
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-6/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#9906])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-dg1:          NOTRUN -> [SKIP][224] ([i915#9906])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#2437])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-5/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@perf@global-sseu-config:
>     - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#7387])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@perf@global-sseu-config.html
> 
>   * igt@perf@mi-rpc:
>     - shard-dg1:          NOTRUN -> [SKIP][227] ([i915#2434])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-18/igt@perf@mi-rpc.html
> 
>   * igt@perf_pmu@faulting-read@gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#8440])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@perf_pmu@faulting-read@gtt.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg2:          NOTRUN -> [FAIL][229] ([i915#10537] / [i915#5793])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-dg2:          NOTRUN -> [FAIL][230] ([i915#10864] / [i915#11279])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-dg1:          NOTRUN -> [SKIP][231] ([i915#3708])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-mtlp:         NOTRUN -> [SKIP][232] ([i915#3708])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#3708])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#9917])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-dg1:          NOTRUN -> [SKIP][235] ([i915#9917])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   * igt@syncobj_timeline@invalid-wait-zero-handles:
>     - shard-rkl:          NOTRUN -> [FAIL][236] ([i915#9781])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@syncobj_timeline@invalid-wait-zero-handles.html
> 
>   * igt@v3d/v3d_submit_cl@bad-in-sync:
>     - shard-dg1:          NOTRUN -> [SKIP][237] ([i915#2575]) +7 other tests skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@v3d/v3d_submit_cl@bad-in-sync.html
> 
>   * igt@v3d/v3d_submit_cl@bad-multisync-out-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#2575]) +6 other tests skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-3/igt@v3d/v3d_submit_cl@bad-multisync-out-sync.html
> 
>   * igt@v3d/v3d_submit_csd@bad-multisync-out-sync:
>     - shard-tglu:         NOTRUN -> [SKIP][239] ([i915#2575]) +4 other tests skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-5/igt@v3d/v3d_submit_csd@bad-multisync-out-sync.html
> 
>   * igt@v3d/v3d_wait_bo@bad-pad:
>     - shard-mtlp:         NOTRUN -> [SKIP][240] ([i915#2575]) +2 other tests skip
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@v3d/v3d_wait_bo@bad-pad.html
> 
>   * igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done:
>     - shard-dg1:          NOTRUN -> [SKIP][241] ([i915#7711]) +4 other tests skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-16/igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done.html
> 
>   * igt@vc4/vc4_label_bo@set-label:
>     - shard-mtlp:         NOTRUN -> [SKIP][242] ([i915#7711])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-2/igt@vc4/vc4_label_bo@set-label.html
> 
>   * igt@vc4/vc4_perfmon@destroy-valid-perfmon:
>     - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#7711]) +2 other tests skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@vc4/vc4_perfmon@destroy-valid-perfmon.html
> 
>   * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:
>     - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#7711]) +5 other tests skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-2/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglu:         [FAIL][245] ([i915#6268]) -> [PASS][246]
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-rkl:          [FAIL][247] ([i915#2842]) -> [PASS][248]
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-rkl-2/igt@gem_exec_fair@basic-none@vecs0.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-1/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglu:         [FAIL][249] ([i915#2842]) -> [PASS][250]
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-multi@lmem0:
>     - shard-dg1:          [FAIL][251] ([i915#10378]) -> [PASS][252]
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-dg1-15/igt@gem_lmem_swapping@heavy-multi@lmem0.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-15/igt@gem_lmem_swapping@heavy-multi@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
>     - shard-dg2:          [FAIL][253] ([i915#10378]) -> [PASS][254] +1 other test pass
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-dg2-7/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-7/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [ABORT][255] ([i915#9820]) -> [PASS][256]
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a4:
>     - shard-dg1:          [FAIL][257] ([i915#2122]) -> [PASS][258]
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-dg1-15/igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a4.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg1-17/igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a4.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a2:
>     - shard-dg2:          [FAIL][259] ([i915#2122]) -> [PASS][260] +2 other tests pass
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-dg2-2/igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a2.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-2/igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a2.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1:
>     - shard-snb:          [FAIL][261] ([i915#2122]) -> [PASS][262]
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-snb7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-snb2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-dg2:          [SKIP][263] ([i915#9519]) -> [PASS][264]
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][265] ([i915#9519]) -> [PASS][266] +2 other tests pass
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-snb:          [FAIL][267] ([i915#9196]) -> [PASS][268]
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-snb5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>     - shard-tglu:         [FAIL][269] ([i915#9196]) -> [PASS][270]
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>     - shard-mtlp:         [FAIL][271] ([i915#9196]) -> [PASS][272]
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [DMESG-WARN][273] ([i915#4936] / [i915#5493]) -> [TIMEOUT][274] ([i915#5493])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglu:         [INCOMPLETE][275] ([i915#10047] / [i915#9697] / [i915#9820]) -> [INCOMPLETE][276] ([i915#10047] / [i915#9820])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         [ABORT][277] ([i915#10131] / [i915#9820]) -> [ABORT][278] ([i915#10131] / [i915#9697])
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-dg2:          [SKIP][279] ([i915#10433] / [i915#3458]) -> [SKIP][280] ([i915#3458]) +1 other test skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_psr@fbc-pr-primary-mmap-gtt:
>     - shard-dg2:          [SKIP][281] ([i915#1072] / [i915#9732]) -> [SKIP][282] ([i915#1072] / [i915#9673] / [i915#9732]) +13 other tests skip
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-dg2-5/igt@kms_psr@fbc-pr-primary-mmap-gtt.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-11/igt@kms_psr@fbc-pr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-pr-primary-page-flip:
>     - shard-dg2:          [SKIP][283] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][284] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-dg2-11/igt@kms_psr@fbc-pr-primary-page-flip.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-5/igt@kms_psr@fbc-pr-primary-page-flip.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][285] ([i915#7484]) -> [FAIL][286] ([i915#9100])
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14913/shard-dg2-10/igt@perf@non-zero-reason@0-rcs0.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html
> 
>   
>   [i915#10047]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10047
>   [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
>   [i915#10139]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10139
>   [i915#10166]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10166
>   [i915#10278]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278
>   [i915#10305]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10305
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
>   [i915#10386]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10386
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10537
>   [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10864]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10864
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11265]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11265
>   [i915#11274]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11274
>   [i915#11275]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11275
>   [i915#11279]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11279
>   [i915#11298]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11298
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#2017]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2017
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4473]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4473
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4879]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#4936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4936
>   [i915#4958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
>   [i915#5274]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5793]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5793
>   [i915#5882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5882
>   [i915#5889]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5889
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6227
>   [i915#6268]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
>   [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
>   [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8440]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8440
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9606]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9606
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9697
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9846]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9846
>   [i915#9849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9849
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14913 -> Patchwork_133624v5
> 
>   CI-20190529: 20190529
>   CI_DRM_14913: a7d697ac042a3c94241bc4b3d0c19b763107c205 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7880: 73618605b4370cf902267aaf1d25666ff5e26112 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_133624v5: a7d697ac042a3c94241bc4b3d0c19b763107c205 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v5/index.html
