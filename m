Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 617DC8FB95E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 18:45:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE12B10E569;
	Tue,  4 Jun 2024 16:45:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YIMYfDEA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C358910E569
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 16:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717519534; x=1749055534;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=53p1iMDBSRt6Jxkl6//HvUmlunU1nvZJ5uc9maAEtW0=;
 b=YIMYfDEAaSItUR+tEda9spOmAJlKRYA/8j9DYEaAivXRFSPXavgmQ4fp
 /l36hOtCjtWIy0ajdEVko7qWJLsI4Of9k44DQ5mVPThOfvF0rdq5Pye94
 zKQGf8OsbhKijukLBfQdKXoPhPFxCp9v7zcW2qmNB3XZuJIjox0shc7bR
 IKA1sXlMdQpuZyuu1KW79r+9PplzDIx5+6l/HRC1ti0iReGADyiF6TK+o
 /G2/UzSsW37z94uhdnFR7u7leUQEZlgyS7CUVnERsegwLD5At7jjYc6W3
 LIpW1JscDvVq0FzSkWKouAlhgbMOa2Wx9aYV0Xi8LknEGc/NKAR7vb5eF A==;
X-CSE-ConnectionGUID: y8ux7YTET9mCLtu0AeN7LA==
X-CSE-MsgGUID: s0QX68FYToCYLUO3FQweFA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="39486650"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="39486650"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 09:45:33 -0700
X-CSE-ConnectionGUID: CP9QERlGSwSJAt9pgdOFcQ==
X-CSE-MsgGUID: ZdacsKAjSUCzrOTasQMIbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="74786505"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 09:45:32 -0700
Date: Tue, 4 Jun 2024 19:45:38 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jouni Hogander <jouni.hogander@intel.com>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?=
 =?utf-8?Q?e_for_drm=2Fi915=3A_Fix_assert_o?= =?utf-8?Q?n?= pending async-put
 power domain work when it requeues itself
Message-ID: <Zl9Esjp6iV77gqoX@ideak-desk.fi.intel.com>
References: <20240530105312.1016485-1-imre.deak@intel.com>
 <171714013411.2240114.271791853689523849@8e613ede5ea5>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <171714013411.2240114.271791853689523849@8e613ede5ea5>
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

On Fri, May 31, 2024 at 07:22:14AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix assert on pending async-put power domain work when it requeues itself
> URL   : https://patchwork.freedesktop.org/series/134246/
> State : failure

Thanks for the review, pushed to drm-intel-next.

The failures are unrelated, see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14850_full -> Patchwork_134246v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_134246v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_134246v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/index.html
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_134246v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_color@ctm-max@pipe-d:
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][1] +1 other test incomplete
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@kms_color@ctm-max@pipe-d.html

No (pstore) log available, but can't see how this issue would be related
to the change: the only effect of the patch is to possibly delay up to
100ms the scheduling of the work dropping a display power reference,
keeping this delay in the same range as it used to be.

I found multiple previous CI runs on DG1 with incomplete results in KMS
and GEM tests.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_134246v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-dg1:          NOTRUN -> [SKIP][2] ([i915#8411])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@api_intel_bb@render-ccs:
>     - shard-dg2:          NOTRUN -> [FAIL][3] ([i915#10380])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@api_intel_bb@render-ccs.html
> 
>   * igt@drm_fdinfo@busy-idle-check-all@vcs1:
>     - shard-dg1:          NOTRUN -> [SKIP][4] ([i915#8414]) +10 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@drm_fdinfo@busy-idle-check-all@vcs1.html
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][5] ([i915#7742])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#9323])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [PASS][7] -> [FAIL][8] ([i915#6268])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html
>     - shard-tglu:         [PASS][9] -> [FAIL][10] ([i915#6268])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#280])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@gem_ctx_sseu@engines.html
>     - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#280])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#4036])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@sliced:
>     - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#4812])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@gem_exec_balancer@sliced.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#6344])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_capture@many-4k-incremental:
>     - shard-dg2:          NOTRUN -> [FAIL][16] ([i915#9606])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@gem_exec_capture@many-4k-incremental.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-rkl:          [PASS][17] -> [FAIL][18] ([i915#2842])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-rkl-2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][19] ([i915#2842])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-glk8/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@bcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][20] ([i915#2842]) +3 other tests fail
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@gem_exec_fair@basic-none@bcs0.html
> 
>   * igt@gem_exec_fair@basic-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#3539])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@gem_exec_fair@basic-sync.html
> 
>   * igt@gem_exec_flush@basic-uc-ro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#3539] / [i915#4852])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@gem_exec_flush@basic-uc-ro-default.html
> 
>   * igt@gem_exec_flush@basic-uc-rw-default:
>     - shard-dg1:          NOTRUN -> [SKIP][23] ([i915#3539] / [i915#4852]) +4 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@gem_exec_flush@basic-uc-rw-default.html
> 
>   * igt@gem_exec_reloc@basic-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#3281]) +3 other tests skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@gem_exec_reloc@basic-gtt.html
>     - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#3281]) +6 other tests skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
>     - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#3281]) +6 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#4860])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@gem_fence_thrash@bo-write-verify-x.html
> 
>   * igt@gem_fenced_exec_thrash@2-spare-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#4860]) +1 other test skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@gem_fenced_exec_thrash@2-spare-fences.html
> 
>   * igt@gem_lmem_swapping@heavy-multi:
>     - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#4613])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-multi.html
> 
>   * igt@gem_lmem_swapping@heavy-multi@lmem0:
>     - shard-dg2:          NOTRUN -> [FAIL][30] ([i915#10378])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@gem_lmem_swapping@heavy-multi@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-random@lmem0:
>     - shard-dg1:          [PASS][31] -> [FAIL][32] ([i915#10378])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-dg1-13/igt@gem_lmem_swapping@heavy-random@lmem0.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@gem_lmem_swapping@heavy-random@lmem0.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][33] ([i915#4613])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-glk8/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [PASS][34] -> [DMESG-WARN][35] ([i915#1982] / [i915#4936] / [i915#5493])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_media_vme:
>     - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#284])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_gtt@basic-write:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4077]) +5 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@gem_mmap_gtt@basic-write.html
> 
>   * igt@gem_mmap_gtt@close-race:
>     - shard-dg1:          NOTRUN -> [SKIP][38] ([i915#4077]) +2 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@gem_mmap_gtt@close-race.html
> 
>   * igt@gem_mmap_wc@invalid-flags:
>     - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#4083]) +4 other tests skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@gem_mmap_wc@invalid-flags.html
> 
>   * igt@gem_partial_pwrite_pread@reads-snoop:
>     - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#3282]) +2 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@gem_partial_pwrite_pread@reads-snoop.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#3282])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
> 
>   * igt@gem_pwrite@basic-self:
>     - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#3282]) +3 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@gem_pwrite@basic-self.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#4270]) +2 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#4270]) +4 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#4270])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#5190] / [i915#8428]) +3 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#4079])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#3297]) +1 other test skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>     - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#3297] / [i915#4880]) +1 other test skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#3281] / [i915#3297])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#3297])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gen7_exec_parse@bitmasks:
>     - shard-dg2:          NOTRUN -> [SKIP][52] +11 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@gen7_exec_parse@bitmasks.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#2527]) +3 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#2856])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@gen9_exec_parse@bb-start-far.html
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#2527]) +3 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          [PASS][56] -> [INCOMPLETE][57] ([i915#9820] / [i915#9849])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-snb:          [PASS][58] -> [INCOMPLETE][59] ([i915#9849])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         [PASS][60] -> [ABORT][61] ([i915#10131] / [i915#10887] / [i915#9697])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg2:          [PASS][62] -> [INCOMPLETE][63] ([i915#9820] / [i915#9849])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
>     - shard-dg1:          NOTRUN -> [FAIL][64] ([i915#3591])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
> 
>   * igt@i915_pm_rps@thresholds-park@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#8925])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@i915_pm_rps@thresholds-park@gt0.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#7984])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@i915_power@sanity.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#7707]) +1 other test skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>     - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#4212])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#3826])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#8709]) +7 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#9531])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>     - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#9531])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#1769] / [i915#3555])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#5286]) +3 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#4538] / [i915#5286]) +3 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#3638])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#3638]) +2 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#4538] / [i915#5190]) +3 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#5190])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#4538]) +2 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-13/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#10656])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_big_joiner@invalid-modeset-force-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#10656]) +1 other test skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_big_joiner@invalid-modeset-force-joiner.html
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#10656]) +1 other test skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@kms_big_joiner@invalid-modeset-force-joiner.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#6095]) +71 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#6095]) +35 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#10278])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs.html
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#10278])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#10307] / [i915#6095]) +159 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-10/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][90] +70 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-glk8/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-xe2-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#10278])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_ccs@crc-primary-rotation-180-4-tiled-xe2-ccs.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#7828]) +4 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_frames@hdmi-aspect-ratio:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#7828]) +2 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@kms_chamelium_frames@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd:
>     - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#7828]) +5 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_chamelium_hpd@dp-hpd.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#7118] / [i915#9424])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_content_protection@atomic-dpms.html
>     - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#7118] / [i915#9424])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@legacy@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][97] ([i915#7173])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#7118])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_content_protection@srm.html
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#7118])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#3359])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#3359]) +1 other test skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_cursor_crc@cursor-random-512x512.html
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#3359])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#3555]) +2 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][104] +31 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#4103])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#4103] / [i915#4213])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#4103] / [i915#4213])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#9227])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-7/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#8588])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#3555]) +2 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          [PASS][111] -> [SKIP][112] ([i915#1257])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-dg2-11/igt@kms_dp_aux_dev.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-5/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#8812])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#8812])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#3840])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#3555] / [i915#3840])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#3840] / [i915#9053])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#3955])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#3469])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#9337])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_feature_discovery@dp-mst.html
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#9337])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#9934]) +1 other test skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#2672]) +2 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#2672]) +1 other test skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][126] +30 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#8708]) +11 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#5439])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#5354]) +15 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#1825]) +27 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#8708]) +9 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#3023]) +17 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#3458]) +5 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#3458]) +15 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#3555] / [i915#8228])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#3555] / [i915#8228])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-5/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#3555] / [i915#8228])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#3555]) +4 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#3555] / [i915#8806])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [FAIL][140] ([i915#8292])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-13/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#9423]) +7 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#9423]) +3 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#9423]) +5 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#5235] / [i915#9423] / [i915#9728]) +3 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#5235]) +15 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#5235] / [i915#9423]) +3 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-11/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#5354])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#9685]) +1 other test skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [PASS][149] -> [SKIP][150] ([i915#4281])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [PASS][151] -> [SKIP][152] ([i915#9519])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-dg2-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#9519])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_prime@basic-crc-vgem:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#6524] / [i915#6805])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_prime@basic-crc-vgem.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#6524])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-13/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#9683])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@fbc-pr-sprite-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#1072] / [i915#9732]) +8 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@kms_psr@fbc-pr-sprite-blt.html
> 
>   * igt@kms_psr@pr-cursor-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#1072] / [i915#9732]) +13 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@kms_psr@pr-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@pr-sprite-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#1072] / [i915#9732]) +13 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@kms_psr@pr-sprite-mmap-gtt.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#9685])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#4235] / [i915#5190])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#5289])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][163] ([i915#9196])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
>     - shard-tglu:         [PASS][164] -> [FAIL][165] ([i915#9196]) +1 other test fail
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_vblank@query-forked-hang@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][166] ([i915#9508])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-8/igt@kms_vblank@query-forked-hang@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#9906])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#9906]) +1 other test skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#2437])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@global-sseu-config:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#7387])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@perf@global-sseu-config.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [PASS][171] -> [FAIL][172] ([i915#4349]) +3 other tests fail
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-10/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#3291] / [i915#3708])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@prime_vgem@basic-read.html
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#3291] / [i915#3708])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@prime_vgem@basic-read.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#9917])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@sriov_basic@enable-vfs-autoprobe-off.html
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#9917])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-rkl:          NOTRUN -> [FAIL][177] ([i915#9779])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   * igt@v3d/v3d_submit_cl@bad-in-sync:
>     - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#2575]) +7 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@v3d/v3d_submit_cl@bad-in-sync.html
> 
>   * igt@v3d/v3d_submit_cl@valid-multisync-submission:
>     - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#2575]) +5 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@v3d/v3d_submit_cl@valid-multisync-submission.html
> 
>   * igt@vc4/vc4_perfmon@create-two-perfmon:
>     - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#7711]) +5 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-17/igt@vc4/vc4_perfmon@create-two-perfmon.html
> 
>   * igt@vc4/vc4_perfmon@destroy-valid-perfmon:
>     - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#7711]) +1 other test skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-1/igt@vc4/vc4_perfmon@destroy-valid-perfmon.html
> 
>   * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
>     - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#7711]) +5 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-3/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - shard-rkl:          [FAIL][183] ([i915#7742]) -> [PASS][184]
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglu:         [INCOMPLETE][185] ([i915#10513]) -> [PASS][186]
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-tglu-9/igt@gem_eio@kms.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-tglu-6/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_schedule@deep@rcs0:
>     - shard-dg1:          [INCOMPLETE][187] -> [PASS][188]
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-dg1-17/igt@gem_exec_schedule@deep@rcs0.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-13/igt@gem_exec_schedule@deep@rcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random@lmem0:
>     - shard-dg2:          [FAIL][189] ([i915#10378]) -> [PASS][190] +1 other test pass
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-dg2-8/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-8/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html
>     - shard-dg1:          [FAIL][191] ([i915#10378]) -> [PASS][192]
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-dg1-13/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg1-18/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1:
>     - shard-rkl:          [FAIL][193] ([i915#2122]) -> [PASS][194]
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [SKIP][195] ([i915#9519]) -> [PASS][196] +1 other test pass
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-dg2-2/igt@kms_pm_rpm@dpms-lpsp.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
>     - shard-mtlp:         [FAIL][197] ([i915#9196]) -> [PASS][198]
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-snb:          [FAIL][199] ([i915#9196]) -> [PASS][200]
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][201] ([i915#10433] / [i915#3458]) -> [SKIP][202] ([i915#3458]) +1 other test skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
>     - shard-dg2:          [SKIP][203] ([i915#3458]) -> [SKIP][204] ([i915#10433] / [i915#3458]) +1 other test skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
> 
>   * igt@kms_psr@fbc-psr-primary-page-flip:
>     - shard-dg2:          [SKIP][205] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][206] ([i915#1072] / [i915#9732]) +12 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-dg2-11/igt@kms_psr@fbc-psr-primary-page-flip.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-3/igt@kms_psr@fbc-psr-primary-page-flip.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-dg2:          [SKIP][207] ([i915#1072] / [i915#9732]) -> [SKIP][208] ([i915#1072] / [i915#9673] / [i915#9732]) +9 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-dg2-3/igt@kms_psr@psr2-primary-mmap-gtt.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-11/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][209] ([i915#7484]) -> [FAIL][210] ([i915#9100])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14850/shard-dg2-10/igt@perf@non-zero-reason@0-rcs0.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html
> 
>   
>   [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
>   [i915#10278]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
>   [i915#10380]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10380
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10513]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3826
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4036]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4936
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6268]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
>   [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7711]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8925]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8925
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9227]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9227
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9508]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9508
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9606]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9606
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9697
>   [i915#9728]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9728
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9779]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9779
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
>   * Linux: CI_DRM_14850 -> Patchwork_134246v1
>   * Piglit: piglit_4509 -> None
> 
>   CI-20190529: 20190529
>   CI_DRM_14850: 4a32411a2b73e515af2cc54034ef686e03df8385 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7873: b9bcded9123ac56ce05748de6c4870fb49451b87 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_134246v1: 4a32411a2b73e515af2cc54034ef686e03df8385 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134246v1/index.html
