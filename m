Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48983507AF1
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 22:28:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1E2710E330;
	Tue, 19 Apr 2022 20:27:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7983510E326
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 20:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650400077; x=1681936077;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=9OsTtsko96c6OMb6uyhwQZyGN8/skp/2AWRvJI7bHrU=;
 b=F6qcZk/AwyMN8mXDAcZk4xi+5IhUDmf01iVoNZQRRS8ToDKZhJJT3n4/
 ME4oMGCWpYIwhEKmNz+lBEZtOyZa5J1gJ1LYfu/S40A+pSv8ck7RdhMyU
 zsntprj8FvaJLlgdyt0/rxNMBzu8rLIxZ+dWj24kfXPyLk1HxBVNsmWup
 1l3EbDKTVcsaPo3a/zHhUJyVLYD3Q9PnngOq3P01DB/RZHXiLRDoVH03Q
 WX4kcTHuU0gwYzRmAYFIeqZ0qYRyM764N72UhNkHQI8qkObjNhAJAiiYf
 ZqGWk2YWZtnGFXkztpvdX7onjgWPjj6dDXdWb2kqSxAl3FGmjiudGW82k Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="263626485"
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="263626485"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 13:27:48 -0700
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="666920712"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 13:27:47 -0700
Date: Tue, 19 Apr 2022 23:27:43 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <Yl8bP4o1gRpKP7e2@ideak-desk.fi.intel.com>
References: <20220414210657.1785773-1-imre.deak@intel.com>
 <165001824336.6516.6412896270647487763@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165001824336.6516.6412896270647487763@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2Cv2=2C01/18=5D_drm/i915=3A_Move_per-pl?=
 =?utf-8?q?atform_power_well_hooks_to_intel=5Fdisplay=5Fpower=5Fwell=2Ec_?=
 =?utf-8?b?KHJldjIp?=
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

Hi Lakshmi,

On Fri, Apr 15, 2022 at 10:24:03AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [CI,v2,01/18] drm/i915: Move per-platform power well hooks to intel_display_power_well.c (rev2)
> URL   : https://patchwork.freedesktop.org/series/102719/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11504_full -> Patchwork_102719v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_102719v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_102719v2_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (12 -> 11)
> ------------------------------
> 
>   Missing    (1): shard-rkl 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_102719v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

The issue looks unrelated, the changes should not affect the behavior
and checking the order/dependencies of enabled/disabled power wells in
the above logs confirms this.

It's probably the general issue affecting all S3 suspend tests on all
the SKL shard machines (all of those are the same/similar model afaik)
vs. the BAT SKL machines without any trace of this problem
(fi-skl-6700k2, fi-skl-guc).

One previous instance of the same issue is at:
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11487/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

One theory is that the machines don't support S3 at all or well (they
only support S0ix) or that some other peripheral causes the problem.
I'll try to borrow one of these systems and check out this.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_102719v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#232])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-tglb7/igt@gem_eio@kms.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-tglb5/igt@gem_eio@kms.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-skl:          [PASS][5] -> [TIMEOUT][6] ([i915#3063])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-skl7/igt@gem_eio@unwedge-stress.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-skl4/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_flush@basic-wb-prw-default:
>     - shard-snb:          [PASS][9] -> [SKIP][10] ([fdo#109271])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-snb4/igt@gem_exec_flush@basic-wb-prw-default.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-snb6/igt@gem_exec_flush@basic-wb-prw-default.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-skl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#4613])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-skl3/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-apl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#4613])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-apl2/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gen7_exec_parse@basic-offset:
>     - shard-apl:          NOTRUN -> [SKIP][13] ([fdo#109271]) +46 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-apl2/igt@gen7_exec_parse@basic-offset.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][14] -> [FAIL][15] ([i915#454])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [PASS][16] -> [DMESG-WARN][17] ([i915#180]) +2 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#2521])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#5286])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3777]) +5 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-skl5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][22] ([i915#3743]) +4 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - shard-glk:          [PASS][23] -> [DMESG-WARN][24] ([i915#118])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-glk7/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-glk9/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][25] ([fdo#110723])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-skl9/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][27] ([i915#3689] / [i915#3886])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-tglb1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-apl2/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109278] / [i915#3886])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb3/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][30] ([i915#3689])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-tglb1/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html
> 
>   * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb3/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-0-25:
>     - shard-glk:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-glk6/igt@kms_color_chamelium@pipe-a-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-negative:
>     - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-apl2/igt@kms_color_chamelium@pipe-c-ctm-negative.html
> 
>   * igt@kms_color_chamelium@pipe-d-degamma:
>     - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +23 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-skl5/igt@kms_color_chamelium@pipe-d-degamma.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#1063])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-tglb1/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109278] / [fdo#109279]) +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#2346])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:
>     - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#5160])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
>     - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#79])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
>     - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#2122])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][45] ([i915#3701])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-skl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [PASS][46] -> [DMESG-WARN][47] ([i915#180]) +5 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
>     - shard-glk:          NOTRUN -> [SKIP][48] ([fdo#109271]) +7 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-glk6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109280]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][50] ([fdo#109280] / [fdo#111825])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
>     - shard-skl:          NOTRUN -> [FAIL][51] ([i915#1188])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-skl7/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#533]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-skl3/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][53] ([fdo#108145] / [i915#265])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>     - shard-skl:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265]) +1 similar issue
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> 
>   * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format:
>     - shard-iclb:         [PASS][55] -> [SKIP][56] ([i915#5176]) +2 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-iclb8/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-1-scaler-with-pixel-format:
>     - shard-iclb:         [PASS][57] -> [INCOMPLETE][58] ([i915#1982] / [i915#5395])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-iclb1/igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-1-scaler-with-pixel-format.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb2/igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-1-scaler-with-pixel-format.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#658]) +5 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-skl3/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][60] -> [SKIP][61] ([fdo#109441])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_psr@psr2_sprite_plane_onoff:
>     - shard-tglb:         NOTRUN -> [FAIL][62] ([i915#132] / [i915#3467])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-tglb1/igt@kms_psr@psr2_sprite_plane_onoff.html
> 
>   * igt@kms_psr@psr2_sprite_render:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109441])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb3/igt@kms_psr@psr2_sprite_render.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:
>     - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271]) +271 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-skl3/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a.html
> 
>   * igt@perf_pmu@event-wait@rcs0:
>     - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#112283])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb3/igt@perf_pmu@event-wait@rcs0.html
> 
>   * igt@prime_udl:
>     - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109291])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb3/igt@prime_udl.html
> 
>   * igt@syncobj_timeline@transfer-timeline-point:
>     - shard-apl:          NOTRUN -> [DMESG-FAIL][67] ([i915#5098])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-apl7/igt@syncobj_timeline@transfer-timeline-point.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-glk:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2994])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-glk6/igt@sysfs_clients@fair-1.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#2994])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-tglb1/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-skl8/igt@sysfs_clients@sema-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-tglb:         [FAIL][71] ([i915#2846]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-tglb7/igt@gem_exec_fair@basic-deadline.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-tglb5/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - {shard-tglu}:       [FAIL][73] ([i915#2842]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][75] ([i915#2842]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-kbl:          [FAIL][77] ([i915#2842]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-iclb:         [FAIL][79] ([i915#2842]) -> [PASS][80]
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-iclb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][81] ([i915#2849]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-snb:          [SKIP][83] ([fdo#109271]) -> [PASS][84] +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-snb6/igt@gem_exec_flush@basic-uc-set-default.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-snb5/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_softpin@allocator-evict-all-engines:
>     - shard-glk:          [FAIL][85] ([i915#4171]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-glk2/igt@gem_softpin@allocator-evict-all-engines.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-glk6/igt@gem_softpin@allocator-evict-all-engines.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [DMESG-WARN][87] ([i915#5566] / [i915#716]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-glk2/igt@gen9_exec_parse@allowed-all.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-glk6/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][89] ([i915#5566] / [i915#716]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-skl3/igt@gen9_exec_parse@allowed-single.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-skl10/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-glk:          [FAIL][91] ([i915#2346]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
>     - shard-glk:          [FAIL][93] ([i915#79]) -> [PASS][94] +1 similar issue
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96] +2 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-none:
>     - {shard-tglu}:       [FAIL][97] ([i915#3957]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-tglu-1/igt@kms_plane_lowres@pipe-a-tiling-none.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-tglu-2/igt@kms_plane_lowres@pipe-a-tiling-none.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         [SKIP][99] ([fdo#109441]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-iclb1/igt@kms_psr@psr2_cursor_render.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [DMESG-WARN][101] ([i915#5614]) -> [SKIP][102] ([i915#4525])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb3/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [SKIP][103] ([i915#4525]) -> [DMESG-WARN][104] ([i915#5614]) +2 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-iclb5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [FAIL][105] ([i915#2851]) -> [FAIL][106] ([i915#2842])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][107] ([i915#658]) -> [SKIP][108] ([i915#2920])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][109] ([fdo#111068] / [i915#658]) -> [SKIP][110] ([i915#2920]) +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [FAIL][111] ([i915#4148]) -> [SKIP][112] ([fdo#109642] / [fdo#111068] / [i915#658]) +1 similar issue
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-iclb1/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92]) -> ([FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-kbl4/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-kbl4/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-kbl1/igt@runner@aborted.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-kbl3/igt@runner@aborted.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-kbl6/igt@runner@aborted.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-kbl7/igt@runner@aborted.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-kbl4/igt@runner@aborted.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-kbl7/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-kbl4/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-kbl4/igt@runner@aborted.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/shard-kbl3/igt@runner@aborted.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-kbl3/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-kbl7/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-kbl3/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-kbl4/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-kbl3/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-kbl3/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-kbl6/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-kbl4/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-kbl4/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-kbl4/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-kbl4/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-kbl3/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-kbl4/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-kbl1/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/shard-kbl6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2851]: https://gitlab.freedesktop.org/drm/intel/issues/2851
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3777]: https://gitlab.freedesktop.org/drm/intel/issues/3777
>   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3957]: https://gitlab.freedesktop.org/drm/intel/issues/3957
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4148]: https://gitlab.freedesktop.org/drm/intel/issues/4148
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
>   [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
>   [i915#5160]: https://gitlab.freedesktop.org/drm/intel/issues/5160
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5395]: https://gitlab.freedesktop.org/drm/intel/issues/5395
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11504 -> Patchwork_102719v2
> 
>   CI-20190529: 20190529
>   CI_DRM_11504: 64c052dc4fd1f39ef083b217434f140ed0feca5e @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6437: ea0144ed6ccb66b977f204b4d53b6062ed1cc8bc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_102719v2: 64c052dc4fd1f39ef083b217434f140ed0feca5e @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/index.html
