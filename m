Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 815CD563720
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 17:43:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7AB514AE99;
	Fri,  1 Jul 2022 15:43:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC4614AE99
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Jul 2022 15:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656690221; x=1688226221;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Z5UB3UjvMx6m4Y3Yxt38lB/JkpLoPQQ9HrBNStGXm60=;
 b=lF8gXIa4q9BeS4l1rgcZyrZousnwiGJAIf5O4MdCuWTp5xCUeWN+I83P
 xcrIJzfYgnHsKCwkCc1Ee99PNQMnTrJGRg92oWiY2EkWEGkxtr8xvbPRG
 0ucqTHOdMGwLzbiNcAzN5TEOMUoyatnIeXNBS8hHjMSoLIkG4R4+zbvDt
 b1f8kofzXAyT81dhMZz9FhrtWsYm9YdiH9/26K7zePrEN6kf2lpjBxnDv
 Lkd+FdjwolvbuLO9gR2f7saAtP2WZx5VNV7KqE64aSOzaG8fo7TcVIeaC
 govmKVonmJ1+sjki5cIwVPjipuK+PP6ltsU8OJKus0u8Dxxkhxo5y1rnL Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10395"; a="308195161"
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="308195161"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 08:43:34 -0700
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="659468234"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 08:43:34 -0700
Date: Fri, 1 Jul 2022 08:43:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yr8WJdM4p+Gr93DD@mdroper-desk1.amr.corp.intel.com>
References: <20220630201407.16770-1-gustavo.sousa@intel.com>
 <165667994139.30282.12029956395322216314@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165667994139.30282.12029956395322216314@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915/pvc=3A_Implement_w/a_16016694945?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 01, 2022 at 12:52:21PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/pvc: Implement w/a 16016694945
> URL   : https://patchwork.freedesktop.org/series/105837/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11835_full -> Patchwork_105837v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_105837v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_105837v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (13 -> 13)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_105837v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - {shard-rkl}:        NOTRUN -> [SKIP][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-5/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@i915_query@query-regions-unallocated:
>     - {shard-dg1}:        NOTRUN -> [SKIP][2] +2 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-dg1-16/igt@i915_query@query-regions-unallocated.html

These both look like new tests that were just added to exercise small
BAR support; I believe the skips were expected until the corresponding
kernel changes from Matt Auld landed (which just happened this morning,
probably after this series was tested).  Not related to Gustavo's patch
here.

>   
> 
> ### Piglit changes ###
> 
> #### Possible regressions ####
> 
>   * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-3-unorm-2drect-const:
>     - pig-glk-j5005:      NOTRUN -> [CRASH][3] +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/pig-glk-j5005/spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-3-unorm-2drect-const.html
> 
>   * spec@ext_texture_snorm@fbo-colormask-formats:
>     - pig-skl-6260u:      NOTRUN -> [INCOMPLETE][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/pig-skl-6260u/spec@ext_texture_snorm@fbo-colormask-formats.html

The PVC workaround wouldn't have impacted execution on old gen9
platforms like GLK and SKL.  Not related to Gustavo's patch.


Applied to drm-intel-gt-next.  Thanks for the patch.

Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_105837v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@hang:
>     - shard-skl:          NOTRUN -> [SKIP][5] ([fdo#109271]) +116 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl6/igt@gem_ctx_persistence@hang.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#5784])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [PASS][8] -> [SKIP][9] ([i915#4525]) +1 similar issue
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-kbl:          [PASS][12] -> [FAIL][13] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][14] ([i915#2842])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#2849])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_schedule@u-submit-late-slice@bcs0:
>     - shard-glk:          [PASS][17] -> [INCOMPLETE][18] ([i915#6310])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-glk9/igt@gem_exec_schedule@u-submit-late-slice@bcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-glk2/igt@gem_exec_schedule@u-submit-late-slice@bcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl6/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl7/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-skl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#4613])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl3/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-tglb:         NOTRUN -> [SKIP][22] ([i915#4270]) +1 similar issue
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - shard-glk:          NOTRUN -> [FAIL][23] ([i915#4171])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-glk7/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3323])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl1/igt@gem_userptr_blits@dmabuf-sync.html
>     - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3323])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl7/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#3297])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][27] ([i915#4991])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl7/igt@gem_userptr_blits@input-checking.html
>     - shard-tglb:         NOTRUN -> [DMESG-WARN][28] ([i915#4991])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-skl:          NOTRUN -> [FAIL][29] ([i915#3318])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl3/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen3_render_tiledx_blits:
>     - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#109289]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@gen3_render_tiledx_blits.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#2527] / [i915#2856])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-tglb:         NOTRUN -> [FAIL][32] ([i915#3989] / [i915#454])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
>     - shard-kbl:          NOTRUN -> [FAIL][33] ([i915#454])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl7/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][34] -> [FAIL][35] ([i915#454])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271]) +155 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl7/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#5286]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#111614]) +1 similar issue
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_big_fb@linear-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-snb:          [PASS][39] -> [SKIP][40] ([fdo#109271])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-snb7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-snb6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][41] ([i915#3743]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#111615])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-glk:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#3886])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-glk7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
>     - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#3689]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_rc_ccs_cc:
>     - shard-tglb:         NOTRUN -> [SKIP][47] ([i915#6095]) +2 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#3689] / [i915#3886])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#3886]) +9 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl1/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][50] ([fdo#109271]) +11 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-glk7/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_rc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#3689] / [i915#6095])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#111615] / [i915#3689]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-audio-edid:
>     - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl1/igt@kms_chamelium@dp-audio-edid.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
>     - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html
> 
>   * igt@kms_color_chamelium@pipe-a-degamma:
>     - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [fdo#111827]) +16 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl6/igt@kms_color_chamelium@pipe-a-degamma.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-green-to-red:
>     - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl6/igt@kms_color_chamelium@pipe-b-ctm-green-to-red.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][57] ([i915#1319])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl4/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#1063])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor:
>     - shard-tglb:         NOTRUN -> [SKIP][59] ([i915#4103])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_cursor_legacy@short-busy-flip-before-cursor.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-iclb:         [PASS][60] -> [DMESG-WARN][61] ([i915#4391])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-iclb8/igt@kms_dp_aux_dev.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-iclb7/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-blt-4tiled:
>     - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#5287])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_draw_crc@draw-method-xrgb8888-blt-4tiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][63] -> [INCOMPLETE][64] ([i915#180] / [i915#1982] / [i915#4939])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-skl:          [PASS][65] -> [FAIL][66] ([i915#4767])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@2x-busy-flip:
>     - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#109274] / [fdo#111825])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_flip@2x-busy-flip.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][68] ([i915#2122])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][69] -> [FAIL][70] ([i915#79]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-apl:          [PASS][71] -> [DMESG-WARN][72] ([i915#180]) +4 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-apl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
>     - shard-skl:          [PASS][73] -> [FAIL][74] ([i915#2122]) +2 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [PASS][75] -> [DMESG-WARN][76] ([i915#180]) +4 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#109280] / [fdo#111825]) +8 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][78] ([fdo#108145] / [i915#265])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
>     - shard-kbl:          NOTRUN -> [FAIL][79] ([fdo#108145] / [i915#265])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][80] ([i915#265])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          NOTRUN -> [FAIL][81] ([fdo#108145] / [i915#265])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_plane_lowres@tiling-y@pipe-c-edp-1:
>     - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#3536]) +3 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_plane_lowres@tiling-y@pipe-c-edp-1.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-tglb:         NOTRUN -> [SKIP][83] ([fdo#112054])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb2/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_lowres@tiling-yf@pipe-a-edp-1:
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#3536]) +2 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-iclb2/igt@kms_plane_lowres@tiling-yf@pipe-a-edp-1.html
> 
>   * igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-c-edp-1:
>     - shard-tglb:         NOTRUN -> [SKIP][85] ([i915#5176]) +7 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-c-edp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#658]) +1 similar issue
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl7/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#2920])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#658])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [PASS][89] -> [SKIP][90] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-iclb1/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-skl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#658]) +1 similar issue
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl6/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@primary_page_flip:
>     - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271]) +65 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl6/igt@kms_psr@primary_page_flip.html
> 
>   * igt@kms_psr@psr2_primary_blt:
>     - shard-tglb:         NOTRUN -> [FAIL][93] ([i915#132] / [i915#3467])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_psr@psr2_primary_blt.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][94] -> [SKIP][95] ([fdo#109441]) +1 similar issue
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc-stealing:
>     - shard-tglb:         NOTRUN -> [SKIP][96] ([i915#3555])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#533])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl6/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-apl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2437])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl1/igt@kms_writeback@writeback-invalid-parameters.html
>     - shard-kbl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#2437])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl7/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@prime_nv_pcopy@test3_2:
>     - shard-tglb:         NOTRUN -> [SKIP][100] ([fdo#109291])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb7/igt@prime_nv_pcopy@test3_2.html
> 
>   * igt@sw_sync@sync_merge:
>     - shard-skl:          NOTRUN -> [FAIL][101] ([i915#6140])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl6/igt@sw_sync@sync_merge.html
> 
>   * igt@sysfs_clients@busy:
>     - shard-apl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl1/igt@sysfs_clients@busy.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-kbl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl6/igt@sysfs_clients@fair-0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@engines-hang@vcs0:
>     - {shard-dg1}:        [FAIL][104] ([i915#4883]) -> [PASS][105] +1 similar issue
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-dg1-18/igt@gem_ctx_persistence@engines-hang@vcs0.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-dg1-19/igt@gem_ctx_persistence@engines-hang@vcs0.html
> 
>   * igt@gem_ctx_persistence@hostile:
>     - {shard-tglu}:       [FAIL][106] ([i915#2410]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-tglu-4/igt@gem_ctx_persistence@hostile.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglu-3/igt@gem_ctx_persistence@hostile.html
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - shard-tglb:         [TIMEOUT][108] ([i915#3063]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-tglb7/igt@gem_eio@in-flight-contexts-1us.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb2/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-snb:          [SKIP][110] ([fdo#109271]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-snb5/igt@gem_eio@in-flight-suspend.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-snb5/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_eio@reset-stress:
>     - {shard-dg1}:        [FAIL][112] ([i915#5784]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-dg1-12/igt@gem_eio@reset-stress.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-dg1-12/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - {shard-rkl}:        [TIMEOUT][114] ([i915#3063]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-2/igt@gem_eio@unwedge-stress.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [SKIP][116] ([i915#4525]) -> [PASS][117] +2 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - {shard-tglu}:       [FAIL][118] ([i915#2842]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][120] ([i915#2842]) -> [PASS][121] +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-tglb:         [FAIL][122] ([i915#2842]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [FAIL][124] ([i915#2842]) -> [PASS][125] +2 similar issues
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt:
>     - {shard-rkl}:        [SKIP][126] ([i915#3281]) -> [PASS][127] +7 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-1/igt@gem_exec_reloc@basic-cpu-gtt.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt.html
> 
>   * igt@gem_exec_schedule@preempt-hang@vcs0:
>     - shard-glk:          [INCOMPLETE][128] ([i915#6310]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-glk5/igt@gem_exec_schedule@preempt-hang@vcs0.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-glk7/igt@gem_exec_schedule@preempt-hang@vcs0.html
> 
>   * igt@gem_exec_whisper@basic-queues-forked-all:
>     - shard-glk:          [DMESG-WARN][130] ([i915#118]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-glk9/igt@gem_exec_whisper@basic-queues-forked-all.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-glk1/igt@gem_exec_whisper@basic-queues-forked-all.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][132] ([i915#2190]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-tglb7/igt@gem_huc_copy@huc-copy.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-tglb2/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - {shard-dg1}:        [DMESG-WARN][134] ([i915#4936]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - {shard-rkl}:        [SKIP][136] ([i915#3282]) -> [PASS][137] +4 similar issues
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-1/igt@gem_partial_pwrite_pread@reads.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-kbl:          [DMESG-WARN][138] ([i915#180]) -> [PASS][139] +5 similar issues
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - {shard-rkl}:        [SKIP][140] ([i915#2527]) -> [PASS][141] +1 similar issue
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-2/igt@gen9_exec_parse@shadow-peek.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_pm_backlight@fade_with_suspend:
>     - {shard-rkl}:        [SKIP][142] ([i915#3012]) -> [PASS][143]
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-2/igt@i915_pm_backlight@fade_with_suspend.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html
> 
>   * igt@i915_pm_dc@dc5-psr:
>     - {shard-rkl}:        [SKIP][144] ([i915#658]) -> [PASS][145] +1 similar issue
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-2/igt@i915_pm_dc@dc5-psr.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-6/igt@i915_pm_dc@dc5-psr.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - {shard-rkl}:        [SKIP][146] ([i915#1397]) -> [PASS][147] +1 similar issue
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-5/igt@i915_pm_rpm@dpms-lpsp.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - {shard-dg1}:        [SKIP][148] ([i915#1397]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-dg1-17/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-dg1-18/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@i915_pm_rpm@system-suspend-modeset:
>     - {shard-rkl}:        [SKIP][150] ([fdo#109308]) -> [PASS][151]
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-2/igt@i915_pm_rpm@system-suspend-modeset.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_color@pipe-b-ctm-red-to-blue:
>     - {shard-rkl}:        [SKIP][152] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][153] +1 similar issue
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-2/igt@kms_color@pipe-b-ctm-red-to-blue.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-6/igt@kms_color@pipe-b-ctm-red-to-blue.html
> 
>   * igt@kms_color@pipe-d-ctm-max:
>     - {shard-dg1}:        [SKIP][154] ([i915#1836]) -> [PASS][155]
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-dg1-16/igt@kms_color@pipe-d-ctm-max.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-dg1-15/igt@kms_color@pipe-d-ctm-max.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-glk:          [FAIL][156] ([i915#2346]) -> [PASS][157] +1 similar issue
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
>     - {shard-rkl}:        [SKIP][158] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][159] +8 similar issues
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [INCOMPLETE][160] ([i915#180] / [i915#4939]) -> [PASS][161]
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
>     - shard-glk:          [FAIL][162] ([i915#79]) -> [PASS][163]
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          [DMESG-WARN][164] ([i915#180]) -> [PASS][165] +2 similar issues
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-vga1:
>     - shard-snb:          [DMESG-WARN][166] ([i915#5090]) -> [PASS][167]
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-snb5/igt@kms_flip@flip-vs-suspend@b-vga1.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-snb5/igt@kms_flip@flip-vs-suspend@b-vga1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a1:
>     - shard-glk:          [FAIL][168] ([i915#2122]) -> [PASS][169]
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-glk5/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a1.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>     - shard-skl:          [FAIL][170] ([i915#2122]) -> [PASS][171] +3 similar issues
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible@c-hdmi-a1:
>     - {shard-dg1}:        [FAIL][172] -> [PASS][173] +4 similar issues
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-dg1-16/igt@kms_flip@wf_vblank-ts-check-interruptible@c-hdmi-a1.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-dg1-15/igt@kms_flip@wf_vblank-ts-check-interruptible@c-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-glk:          [FAIL][174] ([i915#4911]) -> [PASS][175]
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
>     - {shard-rkl}:        [SKIP][176] ([i915#3701]) -> [PASS][177]
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
>     - {shard-dg1}:        [SKIP][178] ([i915#5721]) -> [PASS][179]
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
>     - {shard-rkl}:        [SKIP][180] ([i915#1849] / [i915#4098]) -> [PASS][181] +24 similar issues
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
>     - shard-kbl:          [FAIL][182] ([i915#1188]) -> [PASS][183]
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
> 
>   * igt@kms_invalid_mode@uint-max-clock:
>     - {shard-rkl}:        [SKIP][184] ([i915#4278]) -> [PASS][185] +1 similar issue
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-2/igt@kms_invalid_mode@uint-max-clock.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html
> 
>   * igt@kms_lease@empty_lease:
>     - {shard-dg1}:        [WARN][186] ([i915#5971]) -> [PASS][187]
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-dg1-16/igt@kms_lease@empty_lease.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-dg1-15/igt@kms_lease@empty_lease.html
> 
>   * igt@kms_plane@plane-panning-top-left@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][188] ([i915#1849] / [i915#3558]) -> [PASS][189] +1 similar issue
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-5/igt@kms_plane@plane-panning-top-left@pipe-b-planes.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-6/igt@kms_plane@plane-panning-top-left@pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - {shard-rkl}:        [SKIP][190] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][191] +1 similar issue
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_cursor@pipe-b-overlay-size-256:
>     - shard-skl:          [DMESG-WARN][192] ([i915#1982]) -> [PASS][193] +1 similar issue
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-skl1/igt@kms_plane_cursor@pipe-b-overlay-size-256.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl1/igt@kms_plane_cursor@pipe-b-overlay-size-256.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-75@pipe-d-hdmi-a-1:
>     - {shard-dg1}:        [SKIP][194] ([i915#5176]) -> [PASS][195] +3 similar issues
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-dg1-16/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-75@pipe-d-hdmi-a-1.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-dg1-15/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-75@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
>     - shard-iclb:         [SKIP][196] ([i915#5176]) -> [PASS][197] +1 similar issue
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-iclb4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20@pipe-d-hdmi-a-1:
>     - {shard-dg1}:        [SKIP][198] -> [PASS][199] +4 similar issues
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-dg1-16/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d-hdmi-a-1.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-dg1-15/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_properties@crtc-properties-atomic:
>     - {shard-rkl}:        [SKIP][200] ([i915#1849]) -> [PASS][201]
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-2/igt@kms_properties@crtc-properties-atomic.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-6/igt@kms_properties@crtc-properties-atomic.html
> 
>   * igt@kms_psr@cursor_plane_move:
>     - {shard-rkl}:        [SKIP][202] ([i915#1072]) -> [PASS][203]
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-5/igt@kms_psr@cursor_plane_move.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-6/igt@kms_psr@cursor_plane_move.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [SKIP][204] ([fdo#109441]) -> [PASS][205] +1 similar issue
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-iclb5/igt@kms_psr@psr2_suspend.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-iclb2/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_universal_plane@disable-primary-vs-flip-pipe-b:
>     - {shard-rkl}:        [SKIP][206] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][207]
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-2/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html
> 
>   * igt@kms_vblank@pipe-b-query-forked:
>     - {shard-rkl}:        [SKIP][208] ([i915#1845] / [i915#4098]) -> [PASS][209] +26 similar issues
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-2/igt@kms_vblank@pipe-b-query-forked.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-forked.html
> 
>   * igt@perf@gen12-unprivileged-single-ctx-counters:
>     - {shard-rkl}:        [SKIP][210] ([fdo#109289]) -> [PASS][211]
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-1/igt@perf@gen12-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@polling-parameterized:
>     - {shard-rkl}:        [FAIL][212] ([i915#5639]) -> [PASS][213]
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-6/igt@perf@polling-parameterized.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-2/igt@perf@polling-parameterized.html
> 
>   * igt@perf@polling-small-buf:
>     - {shard-rkl}:        [FAIL][214] ([i915#1722]) -> [PASS][215]
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-2/igt@perf@polling-small-buf.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-6/igt@perf@polling-small-buf.html
>     - shard-skl:          [FAIL][216] ([i915#1722]) -> [PASS][217]
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-skl10/igt@perf@polling-small-buf.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl3/igt@perf@polling-small-buf.html
> 
>   * igt@prime_vgem@basic-write:
>     - {shard-rkl}:        [SKIP][218] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][219]
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-rkl-2/igt@prime_vgem@basic-write.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-rkl-5/igt@prime_vgem@basic-write.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [FAIL][220] ([i915#6117]) -> [SKIP][221] ([i915#4525])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         [FAIL][222] ([i915#2852]) -> [FAIL][223] ([i915#2842])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@kms_chamelium@vga-hpd-with-enabled-mode:
>     - shard-skl:          [SKIP][224] ([fdo#109271] / [fdo#111827] / [i915#1888]) -> [SKIP][225] ([fdo#109271] / [fdo#111827])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-skl9/igt@kms_chamelium@vga-hpd-with-enabled-mode.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl10/igt@kms_chamelium@vga-hpd-with-enabled-mode.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-kbl:          [DMESG-WARN][226] ([i915#180]) -> [DMESG-FAIL][227] ([i915#180])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][228] ([i915#2920]) -> [SKIP][229] ([i915#658])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-iclb3/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-iclb:         [SKIP][230] ([fdo#111068] / [i915#658]) -> [SKIP][231] ([i915#2920]) +1 similar issue
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [FAIL][232] ([i915#5939]) -> [SKIP][233] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-iclb3/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@runner@aborted:
>     - shard-skl:          ([FAIL][234], [FAIL][235], [FAIL][236], [FAIL][237]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][238], [FAIL][239]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-skl10/igt@runner@aborted.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-skl3/igt@runner@aborted.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-skl3/igt@runner@aborted.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-skl7/igt@runner@aborted.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl9/igt@runner@aborted.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-skl4/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][240], [FAIL][241], [FAIL][242], [FAIL][243], [FAIL][244], [FAIL][245]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][246], [FAIL][247], [FAIL][248], [FAIL][249], [FAIL][250], [FAIL][251], [FAIL][252], [FAIL][253], [FAIL][254]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-apl3/igt@runner@aborted.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-apl3/igt@runner@aborted.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-apl3/igt@runner@aborted.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-apl6/igt@runner@aborted.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-apl8/igt@runner@aborted.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-apl2/igt@runner@aborted.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl8/igt@runner@aborted.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl8/igt@runner@aborted.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl2/igt@runner@aborted.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl2/igt@runner@aborted.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl4/igt@runner@aborted.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl6/igt@runner@aborted.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl1/igt@runner@aborted.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl3/igt@runner@aborted.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-apl3/igt@runner@aborted.html
>     - shard-kbl:          ([FAIL][255], [FAIL][256], [FAIL][257], [FAIL][258], [FAIL][259], [FAIL][260], [FAIL][261], [FAIL][262], [FAIL][263], [FAIL][264], [FAIL][265], [FAIL][266], [FAIL][267]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92]) -> ([FAIL][268], [FAIL][269], [FAIL][270], [FAIL][271], [FAIL][272], [FAIL][273], [FAIL][274], [FAIL][275], [FAIL][276]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl4/igt@runner@aborted.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl7/igt@runner@aborted.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl7/igt@runner@aborted.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl1/igt@runner@aborted.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl6/igt@runner@aborted.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl6/igt@runner@aborted.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl7/igt@runner@aborted.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl6/igt@runner@aborted.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl6/igt@runner@aborted.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl7/igt@runner@aborted.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl1/igt@runner@aborted.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl1/igt@runner@aborted.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11835/shard-kbl7/igt@runner@aborted.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl1/igt@runner@aborted.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl6/igt@runner@aborted.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl7/igt@runner@aborted.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl7/igt@runner@aborted.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl6/igt@runner@aborted.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl6/igt@runner@aborted.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl6/igt@runner@aborted.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl1/igt@runner@aborted.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/shard-kbl6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4904]: https://gitlab.freedesktop.org/drm/intel/issues/4904
>   [i915#4911]: https://gitlab.freedesktop.org/drm/intel/issues/4911
>   [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5090]: https://gitlab.freedesktop.org/drm/intel/issues/5090
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5721]: https://gitlab.freedesktop.org/drm/intel/issues/5721
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#5971]: https://gitlab.freedesktop.org/drm/intel/issues/5971
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
>   [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6310]: https://gitlab.freedesktop.org/drm/intel/issues/6310
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11835 -> Patchwork_105837v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11835: 04a306d4367231c6a86c1d415eb2596aaf7aca5f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6553: 3cf110f8dcd1f4f02cf84339664b413abdaebf7d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_105837v1: 04a306d4367231c6a86c1d415eb2596aaf7aca5f @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105837v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
