Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 140637353C6
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jun 2023 12:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8DAB10E1E8;
	Mon, 19 Jun 2023 10:48:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34DD610E1E6
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jun 2023 10:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687171721; x=1718707721;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=KIfrNlmHHsY2Rz3G1soeGC5MFMkVw+0U2Wlhxk+13SM=;
 b=T0tv7AaDZ+EcDy+SD0MNXQ8S9/R4AzAZ0gF/o+mQEzqHj+1LPghOMul4
 2ypRn3N09IGaS1z9XLtpEv6gd6QJXvVjgsGlqqp43obmVXdtZrsgjdwlZ
 rg0+8bnWe1rzpVfxqjoIwsA8XaP5RWC/ybq/uDrf9oh3+6MdeAmcKPN6W
 8fYzpW0Lb7Q5xoj2MaL+dA5EcVARCW1ZKpi7fPc7MzCbOfhDJiz+m+qTL
 6SdY9wDZODiC3s2XkLjgGxA8jELICFYDzXNfyhBOGHDvJmt6SRKnD8gkQ
 u41FjRA12gQGKm9H/iqlCncrpNHVJooce1IPqHa4JnX7Qb3bl0afvrth4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="363025347"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="363025347"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 03:48:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="837838543"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="837838543"
Received: from unknown (HELO ideak-desk) ([10.237.72.78])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 03:48:39 -0700
Date: Mon, 19 Jun 2023 13:48:42 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZJAyitO3ekW7QUfD@ideak-desk>
References: <20230616185104.2502003-1-imre.deak@intel.com>
 <168700744203.6154.3066544084477617151@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <168700744203.6154.3066544084477617151@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Add_missing_forward_dec?=
 =?utf-8?q?larations/includes_to_display_power_headers?=
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

On Sat, Jun 17, 2023 at 01:10:42PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/4] drm/i915: Add missing forward declarations/includes to display power headers
> URL   : https://patchwork.freedesktop.org/series/119480/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13279_full -> Patchwork_119480v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_119480v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_119480v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (8 -> 7)
> ------------------------------
> 
>   Missing    (1): shard-rkl0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_119480v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
>     - shard-snb:          NOTRUN -> [ABORT][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-snb5/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

DEBUG_LOCKS_WARN_ON(debug_atomic_read(nr_unused_locks) != nr_unused)

SNB doesn't support DC states, so the change on this machine causes only
dropping the runtime PM reference after a 17 ms delay. However the
corresponding runtime suspend happens anyway in a delayed manner
already, so it's hard to imagine how the change would be related to the
other failure.

There is a ticket for the same WARN at
https://gitlab.freedesktop.org/drm/intel/-/issues/8189

which also happened on SNB.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_119480v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-rkl:          NOTRUN -> [SKIP][2] ([i915#7697])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-snb:          [PASS][3] -> [SKIP][4] ([fdo#109271])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-snb6/igt@gem_eio@hibernate.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-snb6/igt@gem_eio@hibernate.html
>     - shard-rkl:          NOTRUN -> [ABORT][5] ([i915#7975] / [i915#8213])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][6] -> [FAIL][7] ([i915#2842])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglu:         [PASS][8] -> [FAIL][9] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-rkl:          [PASS][10] -> [FAIL][11] ([i915#2842]) +2 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-wc-read:
>     - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#3281])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@gem_exec_reloc@basic-wc-read.html
> 
>   * igt@gem_ppgtt@blt-vs-render-ctx0:
>     - shard-snb:          [PASS][13] -> [INCOMPLETE][14] ([i915#8295])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-snb6/igt@gem_ppgtt@blt-vs-render-ctx0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-snb6/igt@gem_ppgtt@blt-vs-render-ctx0.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#8411])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_spin_batch@spin-each:
>     - shard-apl:          [PASS][16] -> [FAIL][17] ([i915#2898])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-apl6/igt@gem_spin_batch@spin-each.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-apl3/igt@gem_spin_batch@spin-each.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#3297])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-tglu:         [PASS][19] -> [SKIP][20] ([i915#4281])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-tglu-10/igt@i915_pm_dc@dc9-dpms.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-tglu-6/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#8399])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [PASS][22] -> [SKIP][23] ([i915#1397])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-apl:          [PASS][24] -> [DMESG-FAIL][25] ([i915#5334])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-apl4/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][26] ([fdo#111614] / [i915#3638]) +1 similar issue
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         [PASS][27] -> [FAIL][28] ([i915#3743]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][29] ([fdo#110723])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_mtl_rc_ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#5354] / [i915#6095])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_mtl_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-yf_tiled_ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#3734] / [i915#5354] / [i915#6095]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@kms_ccs@pipe-b-missing-ccs-buffer-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#5354]) +6 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium_edid@dp-mode-timings:
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#7828]) +2 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@kms_chamelium_edid@dp-mode-timings.html
> 
>   * igt@kms_color@deep-color:
>     - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#3555] / [i915#4579]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#4579] / [i915#7118])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-apl:          [PASS][36] -> [FAIL][37] ([i915#2346])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#3804] / [i915#4579])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#3840] / [i915#4579])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_flip@2x-flip-vs-panning:
>     - shard-rkl:          NOTRUN -> [SKIP][40] ([fdo#111825]) +2 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-panning.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
>     - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#79])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1:
>     - shard-glk:          [PASS][43] -> [FAIL][44] ([i915#2122])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-glk5/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-glk9/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#2672] / [i915#4579])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([fdo#111825] / [i915#1825]) +8 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#3023]) +6 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
>     - shard-tglu:         NOTRUN -> [SKIP][48] ([fdo#110189])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#4579] / [i915#6953] / [i915#8228])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-2/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_plane_lowres@tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#4579])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@kms_plane_lowres@tiling-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#5176]) +5 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#4579] / [i915#5176]) +5 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1:
>     - shard-snb:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#4579]) +13 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-snb5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-a-hdmi-a-1:
>     - shard-snb:          NOTRUN -> [SKIP][54] ([fdo#109271]) +27 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-snb1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#5235]) +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#4579] / [i915#5235]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_psr@sprite_blt:
>     - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#1072]) +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@kms_psr@sprite_blt.html
> 
>   * igt@kms_vblank@pipe-d-wait-busy-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#4070] / [i915#533] / [i915#6768])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@kms_vblank@pipe-d-wait-busy-hang.html
> 
>   * igt@v3d/v3d_submit_cl@bad-in-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][59] ([fdo#109315])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@v3d/v3d_submit_cl@bad-in-sync.html
> 
>   * igt@vc4/vc4_perfmon@get-values-valid-perfmon:
>     - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#7711]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-7/igt@vc4/vc4_perfmon@get-values-valid-perfmon.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - shard-rkl:          [FAIL][61] ([i915#7742]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@drm_read@empty-nonblock:
>     - shard-snb:          [SKIP][63] ([fdo#109271]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-snb2/igt@drm_read@empty-nonblock.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-snb2/igt@drm_read@empty-nonblock.html
> 
>   * igt@gem_eio@reset-stress:
>     - {shard-dg1}:        [FAIL][65] ([i915#5784]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-dg1-19/igt@gem_eio@reset-stress.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-dg1-19/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_eio@throttle:
>     - {shard-dg1}:        [DMESG-WARN][67] ([i915#4423]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-dg1-13/igt@gem_eio@throttle.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-dg1-18/igt@gem_eio@throttle.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-rkl:          [FAIL][69] ([i915#2846]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - shard-tglu:         [ABORT][71] ([i915#7975] / [i915#8213]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-tglu-6/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-x:
>     - shard-snb:          [ABORT][73] ([i915#5161]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-x.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-snb1/igt@gem_mmap_gtt@fault-concurrent-x.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>     - {shard-dg1}:        [FAIL][75] ([i915#3591]) -> [PASS][76] +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
> 
>   * igt@i915_pm_rpm@dpms-non-lpsp:
>     - {shard-dg1}:        [SKIP][77] ([i915#1397]) -> [PASS][78] +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-dg1-16/igt@i915_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_cursor_legacy@forked-move@pipe-b:
>     - {shard-dg1}:        [INCOMPLETE][79] ([i915#8011] / [i915#8347]) -> [PASS][80] +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-dg1-19/igt@kms_cursor_legacy@forked-move@pipe-b.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-dg1-16/igt@kms_cursor_legacy@forked-move@pipe-b.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][81] ([i915#2122]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][83] ([i915#3955]) -> [SKIP][84] ([fdo#110189] / [i915#3955])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13279/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2898]: https://gitlab.freedesktop.org/drm/intel/issues/2898
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
>   [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7178]: https://gitlab.freedesktop.org/drm/intel/issues/7178
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8295]: https://gitlab.freedesktop.org/drm/intel/issues/8295
>   [i915#8304]: https://gitlab.freedesktop.org/drm/intel/issues/8304
>   [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
>   [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13279 -> Patchwork_119480v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13279: 2998419e79e4f902b49309915b475d5a0e3db8a7 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7335: b7d168f61bef72a3e84e72eeee1767fac577d70d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_119480v1: 2998419e79e4f902b49309915b475d5a0e3db8a7 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119480v1/index.html
