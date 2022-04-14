Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DB2501B1D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 20:33:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FB1210E1DC;
	Thu, 14 Apr 2022 18:33:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DEE010E1DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 18:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649961189; x=1681497189;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=SbspB5W5vWvjrirdQx1uCD2gXlW/fnX0sdw18Iclt6A=;
 b=AeBUBDZZvwbpalRjuFi6uo8ZCStur8NhM5G82WO6uRrd7k6s+CJPMoNo
 VWLaM+d6EGzdYMK889R7OeaY/GBH7R/JDfZ7zGKtZFl+XNISNGOA+f3CP
 MiHdqBGAFN12OLwzkoxVYMRqeUoCssm9L6DlJM/GvnUqYQEm+NdjPBVWt
 wX3fAEFpRTF1cj1HsljqvTEvom95UPIFWoGkmYd3zza77CYarXYY3fZ3g
 109cqXsNa4pso3pAvAnmS9mZqkaVLp2J6XWzfn1f6sS+UlXNja50GdlT5
 YKBMt5Sm75jl4anzZOGlP3gRSYi0qrLHC6XHOFpwpVafzVCxiljcp4ZlC A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="288062148"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="288062148"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 11:32:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="725475634"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 11:32:51 -0700
Date: Thu, 14 Apr 2022 21:32:47 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>,
 Khaled Almahallawy <khaled.almahallawy@intel.com>
Message-ID: <Ylhoz64JiaZViCyS@ideak-desk.fi.intel.com>
References: <20220408172154.807900-1-imre.deak@intel.com>
 <164970831921.2972.6369284048106978823@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164970831921.2972.6369284048106978823@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/2=5D_drm/dp=3A_Factor_out_a_functio?=
 =?utf-8?q?n_to_probe_a_DPCD_address_=28rev3=29?=
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
Cc: Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 11, 2022 at 08:18:39PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [v3,1/2] drm/dp: Factor out a function to probe a DPCD address (rev3)
> URL   : https://patchwork.freedesktop.org/series/102428/
> State : failure

I pushed patch 1/2 to drm-misc-next, thanks for the reviews. The failure
is unrelated, see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11482_full -> Patchwork_102428v3_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_102428v3_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_102428v3_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
> Participating hosts (13 -> 10)
> ------------------------------
> 
>   Missing    (3): shard-rkl shard-dg1 shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_102428v3_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_rpm@system-suspend-modeset:
>     - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-skl10/igt@i915_pm_rpm@system-suspend-modeset.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-skl6/igt@i915_pm_rpm@system-suspend-modeset.html

There's only eDP on this machine, where the changes should make no
difference. In previous CI_DRM results I can see quite a few incompletes
during suspend tests on the shard-skl machines, while can't see any such
on other skls (fi-skl-6700k2, fi-skl-guc).

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_102428v3_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-apl:          NOTRUN -> [SKIP][3] ([fdo#109271]) +119 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-apl1/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][4] ([i915#5076] / [i915#5614])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl3/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2846])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-glk1/igt@gem_exec_fair@basic-deadline.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-glk2/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-glk4/igt@gem_exec_fair@basic-none@vcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-glk1/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#2842]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-snb:          [PASS][11] -> [SKIP][12] ([fdo#109271]) +4 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-snb2/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-iclb:         NOTRUN -> [SKIP][13] ([fdo#109283])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb6/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][14] -> [SKIP][15] ([i915#2190])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-tglb8/igt@gem_huc_copy@huc-copy.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-tglb6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-skl1/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-iclb:         NOTRUN -> [DMESG-WARN][17] ([i915#4991])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb6/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][18] ([i915#180])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-apl8/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][19] ([i915#3743])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-skl9/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-storm-disable:
>     - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-apl1/igt@kms_chamelium@dp-hpd-storm-disable.html
> 
>   * igt@kms_chamelium@vga-hpd-after-suspend:
>     - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +11 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-skl9/igt@kms_chamelium@vga-hpd-after-suspend.html
> 
>   * igt@kms_color_chamelium@pipe-b-gamma:
>     - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl7/igt@kms_color_chamelium@pipe-b-gamma.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-5:
>     - shard-iclb:         NOTRUN -> [SKIP][28] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb6/igt@kms_color_chamelium@pipe-c-ctm-0-5.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][29] ([i915#1319])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl7/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-128x42-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109278]) +4 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-128x42-offscreen.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
>     - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#5072])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-iclb6/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>     - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#109274] / [fdo#109278])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>     - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#2346])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +14 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +3 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-iclb:         [PASS][40] -> [SKIP][41] ([i915#3701])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109280]) +4 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
>     - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271]) +206 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#533]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-skl9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][45] ([fdo#108145] / [i915#265]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][46] -> [FAIL][47] ([fdo#108145] / [i915#265]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-skl:          NOTRUN -> [FAIL][48] ([fdo#108145] / [i915#265]) +2 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:
>     - shard-iclb:         [PASS][49] -> [SKIP][50] ([i915#5235]) +2 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-iclb7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-1-scaler-with-pixel-format:
>     - shard-iclb:         [PASS][51] -> [INCOMPLETE][52] ([i915#5395])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-iclb8/igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-1-scaler-with-pixel-format.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb2/igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-1-scaler-with-pixel-format.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#658]) +2 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-apl8/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>     - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#658]) +1 similar issue
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-skl4/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#658])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_gtt:
>     - shard-iclb:         [PASS][56] -> [SKIP][57] ([fdo#109441])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_gtt.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c:
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([i915#5030]) +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb8/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          NOTRUN -> [FAIL][59] ([i915#1722])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-skl1/igt@perf@polling-small-buf.html
> 
>   * igt@prime_nv_api@i915_nv_double_import:
>     - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271]) +73 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl3/igt@prime_nv_api@i915_nv_double_import.html
> 
>   * igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:
>     - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109291])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb6/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html
> 
>   * igt@syncobj_timeline@invalid-transfer-non-existent-point:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][62] ([i915#5098])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl7/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
> 
>   * igt@syncobj_timeline@transfer-timeline-point:
>     - shard-iclb:         NOTRUN -> [DMESG-FAIL][63] ([i915#5098])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb8/igt@syncobj_timeline@transfer-timeline-point.html
>     - shard-apl:          NOTRUN -> [DMESG-FAIL][64] ([i915#5098])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-apl3/igt@syncobj_timeline@transfer-timeline-point.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-skl4/igt@sysfs_clients@sema-10.html
>     - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#2994])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-apl8/igt@sysfs_clients@sema-10.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl7/igt@sysfs_clients@sema-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][68] ([i915#2842]) -> [PASS][69]
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-kbl:          [FAIL][70] ([i915#2842]) -> [PASS][71] +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-iclb:         [FAIL][72] ([i915#2842]) -> [PASS][73]
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-iclb4/igt@gem_exec_fair@basic-pace@rcs0.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb5/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-wb:
>     - shard-snb:          [SKIP][74] ([fdo#109271]) -> [PASS][75] +3 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
> 
>   * igt@gem_ppgtt@blt-vs-render-ctx0:
>     - shard-snb:          [DMESG-FAIL][76] ([i915#3692]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-snb7/igt@gem_ppgtt@blt-vs-render-ctx0.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-snb4/igt@gem_ppgtt@blt-vs-render-ctx0.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [DMESG-WARN][78] ([i915#5566] / [i915#716]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-apl4/igt@gen9_exec_parse@allowed-single.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-apl8/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][80] ([i915#454]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [SKIP][82] ([i915#4281]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb4/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
>     - shard-glk:          [DMESG-WARN][84] ([i915#118]) -> [PASS][85] +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-glk3/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-glk7/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
>     - shard-skl:          [DMESG-WARN][86] ([i915#1982]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-glk:          [FAIL][88] ([i915#72]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][90] ([i915#2346]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [INCOMPLETE][92] ([i915#180]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
>     - shard-apl:          [FAIL][94] ([i915#79]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-apl:          [DMESG-WARN][96] ([i915#180]) -> [PASS][97] +3 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:
>     - shard-tglb:         [DMESG-WARN][98] ([i915#2411] / [i915#2867]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-tglb5/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
>     - shard-skl:          [FAIL][100] ([i915#1188]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-skl9/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-skl8/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][102] ([fdo#108145] / [i915#265]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format:
>     - shard-iclb:         [SKIP][104] ([i915#5176]) -> [PASS][105] +4 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb3/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [SKIP][106] ([fdo#109441]) -> [PASS][107] +2 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-iclb7/igt@kms_psr@psr2_no_drrs.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-tglb:         [SKIP][108] ([i915#5519]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-tglb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>     - shard-iclb:         [SKIP][110] ([i915#5519]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-iclb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [DMESG-WARN][112] ([i915#180]) -> [PASS][113] +1 similar issue
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [DMESG-WARN][114] ([i915#5614]) -> [SKIP][115] ([i915#4525]) +1 similar issue
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         [SKIP][116] ([i915#4525]) -> [DMESG-WARN][117] ([i915#5614]) +2 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][118] ([i915#658]) -> [SKIP][119] ([i915#2920])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [FAIL][120] ([i915#4148]) -> [SKIP][121] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-iclb3/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92]) -> ([FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#5257])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl6/igt@runner@aborted.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl7/igt@runner@aborted.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl6/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl6/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl6/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl6/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl4/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl1/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl3/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl4/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl4/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl4/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/shard-kbl1/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl1/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl6/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl4/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl3/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl7/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl4/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl6/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl4/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl1/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl6/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/shard-kbl7/igt@runner@aborted.htm
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102428v3/index.html
