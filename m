Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2204E7790C8
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Aug 2023 15:29:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F095F10E0E2;
	Fri, 11 Aug 2023 13:29:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A72D010E0E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Aug 2023 13:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691760577; x=1723296577;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=IToJgUobZXvzIRtCzhqdaXjVbbaQBz4p59XMUmFDwU0=;
 b=innGVHzhCmWSA2cW3j5zn5ji6Xo/vza4/mn+qo325sfhJr5hBLxhC07u
 0WkHsgcHquDIyYUaw0ZlteRkKzSarLurT469RA2fQYhOxklWvyct/GFgg
 AzuXZtkmDO2YS+G+j12m9hHIdh883zWoYkBDdeIF+R6mabobLZZf63/Xm
 C/InL/FbW6L+34Mz8aUpQBsHcNEhy9rFHQuTX5YNCnpt1a6fK4jl2imLx
 kb4O59IFauxzULGoBeQXQB/AJEIzA3/TnBm/1uzuL/ewlxg2UtDUpsWyb
 qHm8cvnGpUVE9lP/twFLDmTs7nFYd+bE4so7KEO45Ncu2p45cEsRZbVw/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="374446952"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="374446952"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 06:29:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="798040027"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="798040027"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 06:29:35 -0700
Date: Fri, 11 Aug 2023 16:29:47 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jouni Hogander <jouni.hogander@intel.com>
Message-ID: <ZNY3y3noR6wUWDgP@ideak-desk.fi.intel.com>
References: <20230809104307.1218058-1-imre.deak@intel.com>
 <169168872499.4957.9475877216694344304@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <169168872499.4957.9475877216694344304@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915=3A_Avoid_endless_HPD_?=
 =?utf-8?q?poll_detect_loop_via_runtime_suspend/resume_=28rev2=29?=
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

On Thu, Aug 10, 2023 at 05:32:04PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [CI,1/3] drm/i915: Avoid endless HPD poll detect loop via runtime suspend/resume (rev2)
> URL   : https://patchwork.freedesktop.org/series/122218/
> State : success

Thanks for the review. I pushed the patchset without the two patches
fixing re-enabling of HPD polling at [1], [2], that's a separate issue
in fact and merging it would need an additional ack from DRM core
people.

[1] https://patchwork.freedesktop.org/patch/548590/?series=121050&rev=1
[2] https://patchwork.freedesktop.org/patch/548591/?series=121050&rev=1

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13496_full -> Patchwork_122218v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   Additional (1): shard-rkl0 
>   Missing    (1): pig-kbl-iris 
> 
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_13496_full and Patchwork_122218v2_full:
> 
> ### New IGT tests (10) ###
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-2:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-d-dp-2:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-a-dp-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-dp-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_plane_scaling@plane-upscale-with-pixel-format-factor-0-25@pipe-a-dp-2:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_plane_scaling@plane-upscale-with-pixel-format-factor-0-25@pipe-d-dp-2:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-dp-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-dp-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-a-dp-2:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d-dp-2:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_122218v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][1] ([i915#8411])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][2] ([i915#8414]) +21 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@drm_fdinfo@most-busy-check-all@bcs0.html
> 
>   * igt@drm_fdinfo@virtual-busy-idle:
>     - shard-mtlp:         NOTRUN -> [SKIP][3] ([i915#8414])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-8/igt@drm_fdinfo@virtual-busy-idle.html
> 
>   * igt@drm_mm@drm_mm_test:
>     - shard-snb:          NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#8661])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-snb2/igt@drm_mm@drm_mm_test.html
> 
>   * igt@feature_discovery@chamelium:
>     - shard-tglu:         NOTRUN -> [SKIP][5] ([fdo#111827])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@feature_discovery@chamelium.html
> 
>   * igt@feature_discovery@display-4x:
>     - shard-dg2:          NOTRUN -> [SKIP][6] ([i915#1839])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@feature_discovery@display-4x.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hostile:
>     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#8555]) +2 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hostile.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed-process:
>     - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1099]) +1 similar issue
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed-process.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#280])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg1:          [PASS][10] -> [ABORT][11] ([i915#7975] / [i915#8213])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg1-17/igt@gem_eio@hibernate.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-14/igt@gem_eio@hibernate.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-dg2:          NOTRUN -> [FAIL][12] ([fdo#103375])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-5/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_balancer@bonded-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#4771])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@gem_exec_balancer@bonded-sync.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#4036])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#2846])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-glk4/igt@gem_exec_fair@basic-deadline.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-glk2/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglu:         [PASS][17] -> [FAIL][18] ([i915#2842])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo:
>     - shard-dg1:          NOTRUN -> [SKIP][19] ([i915#3539])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-13/igt@gem_exec_fair@basic-pace-solo.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#2842])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-glk3/igt@gem_exec_fair@basic-pace@vecs0.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-glk1/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#3539]) +2 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-2/igt@gem_exec_fair@basic-sync.html
> 
>   * igt@gem_exec_flush@basic-wb-rw-default:
>     - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#3539] / [i915#4852]) +6 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@gem_exec_flush@basic-wb-rw-default.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([fdo#112283])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_exec_reloc@basic-gtt-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][25] ([i915#3281])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-8/igt@gem_exec_reloc@basic-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3281]) +17 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@lmem0:
>     - shard-dg2:          NOTRUN -> [ABORT][27] ([i915#7975] / [i915#8213])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-5/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - shard-tglu:         [PASS][28] -> [ABORT][29] ([i915#7975] / [i915#8213])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-tglu-6/igt@gem_exec_suspend@basic-s4-devices@smem.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4860])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-2/igt@gem_fenced_exec_thrash@no-spare-fences.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [PASS][31] -> [TIMEOUT][32] ([i915#5493])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_madvise@dontneed-before-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3282]) +4 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@gem_madvise@dontneed-before-pwrite.html
> 
>   * igt@gem_media_vme:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#284])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-2/igt@gem_media_vme.html
> 
>   * igt@gem_mmap@short-mmap:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4083]) +7 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@gem_mmap@short-mmap.html
>     - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#4083]) +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-13/igt@gem_mmap@short-mmap.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4077]) +8 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_ppgtt@blt-vs-render-ctx0:
>     - shard-snb:          [PASS][38] -> [FAIL][39] ([i915#8295])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-snb2/igt@gem_ppgtt@blt-vs-render-ctx0.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-snb1/igt@gem_ppgtt@blt-vs-render-ctx0.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#4270]) +3 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#4885])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-5/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#3297]) +2 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#3297] / [i915#4880])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-2/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-dg2:          NOTRUN -> [FAIL][44] ([i915#3318])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen3_render_mixed_blits:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([fdo#109289]) +2 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@gen3_render_mixed_blits.html
> 
>   * igt@gen7_exec_parse@basic-rejected:
>     - shard-mtlp:         NOTRUN -> [SKIP][46] ([fdo#109289])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-1/igt@gen7_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-tglu:         NOTRUN -> [SKIP][47] ([i915#2527] / [i915#2856])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#2856]) +3 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-mtlp:         [PASS][49] -> [ABORT][50] ([i915#8489] / [i915#8668])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_backlight@fade-with-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#5354] / [i915#7561])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-2/igt@i915_pm_backlight@fade-with-suspend.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-tglu:         [PASS][52] -> [SKIP][53] ([i915#4281])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-tglu-10/igt@i915_pm_dc@dc9-dpms.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-5/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-tglu:         NOTRUN -> [SKIP][54] ([i915#8399])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - shard-dg1:          [PASS][55] -> [FAIL][56] ([i915#3591])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>     - shard-tglu:         [PASS][57] -> [FAIL][58] ([i915#3591])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>     - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#3591])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-glk4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-glk2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - shard-dg1:          [PASS][61] -> [SKIP][62] ([i915#1397])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg1-19/igt@i915_pm_rpm@dpms-lpsp.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-15/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#1397])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [PASS][64] -> [SKIP][65] ([i915#1397])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg2-5/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#6621]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_pm_rps@thresholds@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#8925])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@i915_pm_rps@thresholds@gt0.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([fdo#109303])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-5/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-tglu:         NOTRUN -> [SKIP][69] ([i915#5723])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#4212]) +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#8502] / [i915#8709]) +11 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs.html
> 
>   * igt@kms_async_flips@crc@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [FAIL][72] ([i915#8247]) +3 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-5/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_async_flips@crc@pipe-b-vga-1:
>     - shard-snb:          NOTRUN -> [FAIL][73] ([i915#8247]) +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-snb6/igt@kms_async_flips@crc@pipe-b-vga-1.html
> 
>   * igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][74] ([i915#8247]) +3 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-18/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_async_flips@invalid-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#6228])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([fdo#111614]) +2 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-2/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-mtlp:         [PASS][77] -> [FAIL][78] ([i915#3743])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][79] ([fdo#111615] / [i915#5286])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [PASS][80] -> [FAIL][81] ([i915#5138])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#5190]) +18 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#4538] / [i915#5190]) +3 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-snb:          NOTRUN -> [SKIP][84] ([fdo#109271]) +171 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-snb2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-mtlp:         NOTRUN -> [SKIP][85] ([fdo#111615])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_joiner@2x-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#2705])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-2/igt@kms_big_joiner@2x-modeset.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3689] / [i915#5354]) +22 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][88] ([fdo#111615] / [i915#3689] / [i915#5354] / [i915#6095]) +2 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#3689] / [i915#3886] / [i915#5354]) +12 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-4_tiled_mtl_mc_ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#5354] / [i915#6095])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-13/igt@kms_ccs@pipe-b-missing-ccs-buffer-4_tiled_mtl_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#5354]) +53 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#3689] / [i915#3886] / [i915#5354] / [i915#6095]) +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:
>     - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#6095]) +3 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-8/igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#5354] / [i915#6095]) +4 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-a-dp-2:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#4087] / [i915#7213]) +3 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@kms_cdclk@mode-transition@pipe-a-dp-2.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#4087]) +3 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_chamelium_color@ctm-0-50:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([fdo#111827])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@kms_chamelium_color@ctm-0-50.html
> 
>   * igt@kms_chamelium_frames@dp-frame-dump:
>     - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#7828]) +2 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@kms_chamelium_frames@dp-frame-dump.html
> 
>   * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#7828]) +10 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
>     - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#7828])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-13/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
> 
>   * igt@kms_content_protection@atomic@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][101] ([i915#7173]) +1 similar issue
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@content_type_change:
>     - shard-tglu:         NOTRUN -> [SKIP][102] ([i915#6944] / [i915#7116] / [i915#7118])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@kms_content_protection@content_type_change.html
> 
>   * igt@kms_content_protection@mei_interface:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#7118]) +2 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-2/igt@kms_content_protection@mei_interface.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#3359]) +2 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#3555]) +4 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([fdo#109274] / [fdo#111767] / [i915#5354])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
>     - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#3546])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([fdo#109274] / [i915#5354]) +7 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [PASS][109] -> [FAIL][110] ([i915#2346])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-mtlp:         [PASS][111] -> [FAIL][112] ([i915#2346])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-mtlp-3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#4103] / [i915#4213]) +1 similar issue
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-tglu:         NOTRUN -> [SKIP][114] ([i915#4103])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#8588])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-5/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#3555] / [i915#3840])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#3555] / [i915#3840])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#3469])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-13/igt@kms_fbcon_fbt@psr-suspend.html
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#3469])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][120] ([fdo#109274] / [i915#3637])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][121] -> [FAIL][122] ([i915#79])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
>     - shard-snb:          NOTRUN -> [SKIP][123] ([fdo#109271] / [fdo#111767])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-snb2/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([fdo#109274]) +8 similar issues
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#2587] / [i915#2672])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#2672]) +4 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-dg2:          [PASS][127] -> [FAIL][128] ([i915#6880])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [FAIL][129] ([i915#6880])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:
>     - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#1825]) +3 similar issues
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
>     - shard-tglu:         NOTRUN -> [SKIP][131] ([fdo#109280]) +6 similar issues
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#8708])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#8708]) +19 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#3458])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:
>     - shard-tglu:         NOTRUN -> [SKIP][135] ([fdo#110189]) +3 similar issues
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#5460])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#3458]) +21 similar issues
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#3555] / [i915#8228])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#6301])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_plane_lowres@tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#8821])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@kms_plane_lowres@tiling-y.html
> 
>   * igt@kms_plane_multiple@tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#8806])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@kms_plane_multiple@tiling-y.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#3555] / [i915#8806])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-2/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][143] ([i915#8292])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-14/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#5176]) +11 similar issues
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#5176]) +11 similar issues
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#5176]) +27 similar issues
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-16/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#5235]) +15 similar issues
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-15/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#5235]) +5 similar issues
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#5235]) +23 similar issues
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#5235]) +3 similar issues
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#6524] / [i915#6805])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#658]) +3 similar issues
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#1072]) +7 similar issues
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#4235] / [i915#5190])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_selftest@drm_cmdline:
>     - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#8661])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@kms_selftest@drm_cmdline.html
> 
>   * igt@kms_selftest@drm_format_helper:
>     - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#8661])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-1/igt@kms_selftest@drm_format_helper.html
> 
>   * igt@kms_selftest@drm_plane:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#8661])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-2/igt@kms_selftest@drm_plane.html
> 
>   * igt@kms_setmode@basic@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [FAIL][158] ([i915#5465]) +1 similar issue
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-snb2/igt@kms_setmode@basic@pipe-a-vga-1.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc:
>     - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#3555]) +1 similar issue
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@kms_setmode@invalid-clone-single-crtc.html
> 
>   * igt@kms_tv_load_detect@load-detect:
>     - shard-dg2:          NOTRUN -> [SKIP][160] ([fdo#109309])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@kms_tv_load_detect@load-detect.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#2437]) +1 similar issue
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#2436])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-5/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@global-sseu-config-invalid:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#7387]) +1 similar issue
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@perf@global-sseu-config-invalid.html
> 
>   * igt@perf@mi-rpc:
>     - shard-tglu:         NOTRUN -> [SKIP][164] ([fdo#109289]) +1 similar issue
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@perf@mi-rpc.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg2:          NOTRUN -> [FAIL][165] ([i915#5793] / [i915#6121])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#8516])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-5/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#3708])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-2/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sysfs_heartbeat_interval@nopreempt@vcs1:
>     - shard-mtlp:         [PASS][168] -> [FAIL][169] ([i915#6015])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-mtlp-5/igt@sysfs_heartbeat_interval@nopreempt@vcs1.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-1/igt@sysfs_heartbeat_interval@nopreempt@vcs1.html
> 
>   * igt@v3d/v3d_perfmon@destroy-valid-perfmon:
>     - shard-tglu:         NOTRUN -> [SKIP][170] ([fdo#109315] / [i915#2575]) +3 similar issues
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@v3d/v3d_perfmon@destroy-valid-perfmon.html
> 
>   * igt@v3d/v3d_submit_cl@simple-flush-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#2575]) +13 similar issues
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@v3d/v3d_submit_cl@simple-flush-cache.html
> 
>   * igt@vc4/vc4_perfmon@create-perfmon-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#7711]) +1 similar issue
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-8/igt@vc4/vc4_perfmon@create-perfmon-0.html
> 
>   * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#7711]) +9 similar issues
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - shard-rkl:          [FAIL][174] ([i915#7742]) -> [PASS][175] +1 similar issue
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@gem_busy@close-race:
>     - shard-tglu:         [ABORT][176] ([i915#6016] / [i915#8102]) -> [PASS][177]
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-tglu-3/igt@gem_busy@close-race.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-8/igt@gem_busy@close-race.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg2:          [ABORT][178] ([i915#7975] / [i915#8213]) -> [PASS][179]
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg2-2/igt@gem_eio@hibernate.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@gem_eio@hibernate.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg1:          [FAIL][180] ([i915#5784]) -> [PASS][181]
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg1-15/igt@gem_eio@reset-stress.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-16/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-rkl:          [FAIL][182] ([i915#2842]) -> [PASS][183]
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-rkl-4/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-rkl-6/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-apl:          [FAIL][184] ([i915#2842]) -> [PASS][185]
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-apl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-apl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-untiled:
>     - shard-mtlp:         [FAIL][186] ([i915#8691]) -> [PASS][187]
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-mtlp-1/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>     - shard-dg2:          [SKIP][188] ([i915#1937]) -> [PASS][189]
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg2-5/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-10/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-tglu:         [WARN][190] ([i915#2681]) -> [PASS][191]
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-fence.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-rkl:          [SKIP][192] ([i915#1397]) -> [PASS][193]
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-rkl-4/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@i915_pm_rpm@drm-resources-equal:
>     - shard-tglu:         [FAIL][194] ([i915#7940]) -> [PASS][195]
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-tglu-4/igt@i915_pm_rpm@drm-resources-equal.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-4/igt@i915_pm_rpm@drm-resources-equal.html
> 
>   * igt@i915_pm_rpm@i2c:
>     - shard-dg2:          [FAIL][196] ([i915#8717]) -> [PASS][197]
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg2-2/igt@i915_pm_rpm@i2c.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-11/igt@i915_pm_rpm@i2c.html
>     - shard-dg1:          [DMESG-WARN][198] ([i915#4391]) -> [PASS][199]
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg1-19/igt@i915_pm_rpm@i2c.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-16/igt@i915_pm_rpm@i2c.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [SKIP][200] ([i915#1397]) -> [PASS][201]
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg2-6/igt@i915_pm_rpm@modeset-lpsp.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@i915_pm_rpm@modeset-lpsp.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][202] ([i915#7790]) -> [PASS][203]
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-snb4/igt@i915_pm_rps@reset.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-snb2/igt@i915_pm_rps@reset.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-mtlp:         [FAIL][204] ([i915#3743]) -> [PASS][205]
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-mtlp-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
>     - shard-snb:          [SKIP][206] ([fdo#109271]) -> [PASS][207]
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
>     - shard-glk:          [FAIL][208] ([i915#2122]) -> [PASS][209]
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:
>     - shard-dg2:          [FAIL][210] ([i915#6880]) -> [PASS][211]
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_plane@pixel-format@pipe-b-planes:
>     - shard-mtlp:         [FAIL][212] ([i915#1623]) -> [PASS][213]
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-mtlp-8/igt@kms_plane@pixel-format@pipe-b-planes.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-4/igt@kms_plane@pixel-format@pipe-b-planes.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
>     - shard-dg2:          [FAIL][214] ([fdo#103375]) -> [PASS][215]
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg2-5/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-10/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
> 
>   * igt@perf@enable-disable@0-rcs0:
>     - shard-dg2:          [FAIL][216] ([i915#8724]) -> [PASS][217]
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-8/igt@perf@enable-disable@0-rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
>     - shard-tglu:         [FAIL][218] ([i915#2681] / [i915#3591]) -> [WARN][219] ([i915#2681])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
> 
>   * igt@i915_pm_rpm@basic-pci-d3-state:
>     - shard-dg1:          [FAIL][220] ([i915#7691]) -> [DMESG-WARN][221] ([i915#4423])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg1-18/igt@i915_pm_rpm@basic-pci-d3-state.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-13/igt@i915_pm_rpm@basic-pci-d3-state.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][222] ([i915#7118]) -> [SKIP][223] ([i915#7118] / [i915#7162])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg2-8/igt@kms_content_protection@type1.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg2-12/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-mtlp:         [DMESG-FAIL][224] ([i915#2017] / [i915#5954]) -> [FAIL][225] ([i915#2346])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-mtlp-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][226] ([fdo#110189] / [i915#3955]) -> [SKIP][227] ([i915#3955])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move:
>     - shard-dg1:          [SKIP][228] ([fdo#111825]) -> [SKIP][229] ([fdo#111825] / [i915#4423]) +1 similar issue
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][230] ([i915#4070] / [i915#4816]) -> [SKIP][231] ([i915#4816])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-dg1:          [SKIP][232] ([fdo#111068] / [i915#658]) -> [SKIP][233] ([fdo#111068] / [i915#4423] / [i915#658])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg1-18/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-13/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr@sprite_plane_onoff:
>     - shard-dg1:          [SKIP][234] ([i915#1072]) -> [SKIP][235] ([i915#1072] / [i915#4078]) +1 similar issue
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13496/shard-dg1-15/igt@kms_psr@sprite_plane_onoff.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/shard-dg1-16/igt@kms_psr@sprite_plane_onoff.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1623]: https://gitlab.freedesktop.org/drm/intel/issues/1623
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
>   [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5793]: https://gitlab.freedesktop.org/drm/intel/issues/5793
>   [i915#5954]: https://gitlab.freedesktop.org/drm/intel/issues/5954
>   [i915#6015]: https://gitlab.freedesktop.org/drm/intel/issues/6015
>   [i915#6016]: https://gitlab.freedesktop.org/drm/intel/issues/6016
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
>   [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7691]: https://gitlab.freedesktop.org/drm/intel/issues/7691
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8102]: https://gitlab.freedesktop.org/drm/intel/issues/8102
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8295]: https://gitlab.freedesktop.org/drm/intel/issues/8295
>   [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
>   [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
>   [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
>   [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>   [i915#8691]: https://gitlab.freedesktop.org/drm/intel/issues/8691
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8717]: https://gitlab.freedesktop.org/drm/intel/issues/8717
>   [i915#8724]: https://gitlab.freedesktop.org/drm/intel/issues/8724
>   [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
>   [i915#8821]: https://gitlab.freedesktop.org/drm/intel/issues/8821
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13496 -> Patchwork_122218v2
> 
>   CI-20190529: 20190529
>   CI_DRM_13496: b8e950192f00fdeeb5559f5c596acedd70f5d8f1 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7425: dd16a519cc89cdfbd74a79cb1d4d5e8874034684 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_122218v2: b8e950192f00fdeeb5559f5c596acedd70f5d8f1 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122218v2/index.html
