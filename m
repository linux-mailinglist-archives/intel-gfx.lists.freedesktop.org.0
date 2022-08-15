Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8D5592B08
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Aug 2022 10:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 898E912B2C6;
	Mon, 15 Aug 2022 08:50:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 149E4AD741
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Aug 2022 08:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660553439; x=1692089439;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=i9Ytu+6cDiDQJGmaT1cf5NlEQyNp/p9ts2yKAePYG/k=;
 b=ZOF451DAoMNihsWBdOHEI9wFDzoHaobNUFLHESPUz9KFlC054HnbaSjS
 hnzGTRIOJc+2+H1mMsCvScNUKpCXQ3dOQk6GiNgJSDg83SUsizwNMH4f/
 YtCiRdGYN/xnf3rlljCf++fYILWXBh0iH9lQJtDIED0P/BGjosaf9OuRi
 VNrYRCKt4nLxLI8BAFwkz/fUK0zSTmZ9Ke1cbr+4PzpK2ANNcxLSykV8y
 qOpb5wmu01xrUIlw5aFTu6Uw6ZmQF3wmtyA9/8h5YJJuEfGcrB4B4kG3M
 AXuMfRDT6iQfcQ0bcczKNlqOuPYbPeUFkthbTIxC8Z3TlgiWxNVWG0KLD w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10439"; a="353662422"
X-IronPort-AV: E=Sophos;i="5.93,237,1654585200"; d="scan'208";a="353662422"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 01:50:34 -0700
X-IronPort-AV: E=Sophos;i="5.93,237,1654585200"; d="scan'208";a="674773644"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 01:50:32 -0700
Date: Mon, 15 Aug 2022 11:50:28 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	Arun R Murthy <arun.r.murthy@intel.com>
Message-ID: <YvoI1L2t8UjU3GaE@ideak-desk.fi.intel.com>
References: <20220808103054.3586074-1-imre.deak@intel.com>
 <165996974225.13154.17140192450352903143@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165996974225.13154.17140192450352903143@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/d13=3A_Fix_unclaimed_accesses_while_loading_PIPEDMC-C/D?=
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

On Mon, Aug 08, 2022 at 02:42:22PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/d13: Fix unclaimed accesses while loading PIPEDMC-C/D
> URL   : https://patchwork.freedesktop.org/series/107059/
> State : failure

Thanks for the review pushed to drm-intel-next. The failure below is
unrelated as it's on GLK where the change shouldn't have an effect.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11972_full -> Patchwork_107059v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_107059v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_107059v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (12 -> 12)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_107059v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
>     - shard-glk:          NOTRUN -> [TIMEOUT][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-glk7/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html
> 
>   * igt@perf@enable-disable:
>     - shard-glk:          [PASS][2] -> [TIMEOUT][3] +1 similar issue
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-glk9/igt@perf@enable-disable.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-glk7/igt@perf@enable-disable.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen:
>     - shard-glk:          [SKIP][4] ([fdo#109271]) -> [TIMEOUT][5] +3 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-glk9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-glk7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_107059v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_mm@all:
>     - shard-kbl:          NOTRUN -> [SKIP][6] ([fdo#109271]) +157 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl7/igt@drm_mm@all.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#4525])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-kbl:          NOTRUN -> [FAIL][9] ([i915#6117])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl1/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][10] ([i915#2842]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#2849])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-skl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#4613])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-skl6/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-kbl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl7/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-kbl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#658]) +2 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl7/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][18] -> [FAIL][19] ([i915#454])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-skl6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][21] ([fdo#109271]) +61 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-skl6/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_rc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271]) +4 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-apl4/igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#3886]) +8 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl1/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-storm:
>     - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl7/igt@kms_chamelium@dp-hpd-storm.html
> 
>   * igt@kms_color_chamelium@ctm-green-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-snb7/igt@kms_color_chamelium@ctm-green-to-red.html
> 
>   * igt@kms_color_chamelium@degamma:
>     - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-skl6/igt@kms_color_chamelium@degamma.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][27] ([i915#1319]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl1/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@toggle:
>     - shard-iclb:         [PASS][28] -> [FAIL][29] ([i915#2346]) +1 similar issue
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][30] ([fdo#109271])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-glk7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#79])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][33] ([i915#180]) +2 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#2122]) +3 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([i915#6375])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([i915#2672]) +7 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][38] ([i915#2672] / [i915#3555]) +2 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([i915#3555])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-snb:          [PASS][40] -> [SKIP][41] ([fdo#109271])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-snb5/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-snb2/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-kbl:          NOTRUN -> [FAIL][42] ([i915#1188])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-kbl:          NOTRUN -> [FAIL][43] ([fdo#108145] / [i915#265]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [PASS][44] -> [SKIP][45] ([i915#5176]) +2 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-iclb8/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#658])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-skl6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441]) +2 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-apl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180]) +2 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>     - shard-kbl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#2437])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl7/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-snb:          NOTRUN -> [SKIP][54] ([fdo#109271]) +33 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-snb7/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#5639])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-skl7/igt@perf@polling-parameterized.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-skl1/igt@perf@polling-parameterized.html
> 
>   * igt@sysfs_clients@split-25:
>     - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#2994])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl7/igt@sysfs_clients@split-25.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#2994])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-skl6/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@pan:
>     - {shard-rkl}:        [SKIP][59] ([i915#2582]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-rkl-2/igt@fbdev@pan.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-rkl-6/igt@fbdev@pan.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - {shard-tglu}:       [FAIL][61] ([i915#6268]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_eio@in-flight-1us:
>     - shard-skl:          [TIMEOUT][63] ([i915#3063]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-skl7/igt@gem_eio@in-flight-1us.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-skl1/igt@gem_eio@in-flight-1us.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [SKIP][65] ([i915#4525]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_endless@dispatch@bcs0:
>     - {shard-rkl}:        [SKIP][67] ([i915#6247]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-rkl-2/igt@gem_exec_endless@dispatch@bcs0.html
> 
>   * igt@gem_exec_endless@dispatch@vecs0:
>     - shard-tglb:         [INCOMPLETE][69] ([i915#3778]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-tglb5/igt@gem_exec_endless@dispatch@vecs0.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-tglb7/igt@gem_exec_endless@dispatch@vecs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - {shard-tglu}:       [FAIL][71] ([i915#2842]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-tglu-1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [FAIL][73] ([i915#2842]) -> [PASS][74] +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-cpu-active:
>     - {shard-rkl}:        [SKIP][75] ([i915#3281]) -> [PASS][76] +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-rkl-2/igt@gem_exec_reloc@basic-cpu-active.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-active.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-y:
>     - shard-snb:          [INCOMPLETE][77] ([i915#5161]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-snb4/igt@gem_mmap_gtt@fault-concurrent-y.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-y.html
> 
>   * igt@gem_pwrite_snooped:
>     - {shard-rkl}:        [SKIP][79] ([i915#3282]) -> [PASS][80] +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-rkl-2/igt@gem_pwrite_snooped.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-rkl-5/igt@gem_pwrite_snooped.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-kbl:          [DMESG-WARN][81] ([i915#5566] / [i915#716]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-kbl7/igt@gen9_exec_parse@allowed-single.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - {shard-rkl}:        [SKIP][83] ([i915#2527]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-rkl-1/igt@gen9_exec_parse@bb-start-far.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [FAIL][85] ([i915#454]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rpm@i2c:
>     - {shard-rkl}:        [SKIP][87] ([fdo#109308]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-rkl-1/igt@i915_pm_rpm@i2c.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-rkl-6/igt@i915_pm_rpm@i2c.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:
>     - {shard-rkl}:        [SKIP][89] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][90] +7 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:
>     - shard-glk:          [FAIL][91] ([i915#79]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-apl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-apl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
>     - shard-skl:          [FAIL][95] ([i915#2122]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98] +6 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
>     - {shard-rkl}:        [SKIP][99] ([i915#1849] / [i915#4098]) -> [PASS][100] +9 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][101] ([fdo#108145] / [i915#265]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
>     - {shard-rkl}:        [SKIP][103] ([i915#1849] / [i915#3546] / [i915#4070] / [i915#4098]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-a-tiling-none:
>     - {shard-rkl}:        [SKIP][105] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
>     - shard-iclb:         [SKIP][107] ([i915#5235]) -> [PASS][108] +2 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
> 
>   * igt@kms_properties@plane-properties-legacy:
>     - {shard-rkl}:        [SKIP][109] ([i915#1849]) -> [PASS][110] +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-rkl-1/igt@kms_properties@plane-properties-legacy.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-iclb:         [SKIP][111] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-iclb8/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@cursor_blt:
>     - {shard-rkl}:        [SKIP][113] ([i915#1072]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-rkl-2/igt@kms_psr@cursor_blt.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-rkl-6/igt@kms_psr@cursor_blt.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][115] ([fdo#109441]) -> [PASS][116] +1 similar issue
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_vblank@pipe-b-query-idle:
>     - {shard-rkl}:        [SKIP][117] ([i915#1845] / [i915#4098]) -> [PASS][118] +24 similar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-rkl-1/igt@kms_vblank@pipe-b-query-idle.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html
> 
>   * igt@perf@mi-rpc:
>     - {shard-rkl}:        [SKIP][119] ([i915#2434]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-rkl-2/igt@perf@mi-rpc.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-rkl-5/igt@perf@mi-rpc.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@bcs0:
>     - shard-skl:          [FAIL][121] ([i915#1731]) -> [PASS][122] +2 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-skl2/igt@sysfs_heartbeat_interval@mixed@bcs0.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-skl4/igt@sysfs_heartbeat_interval@mixed@bcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][123] ([i915#3063]) -> [FAIL][124] ([i915#5784])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-tglb3/igt@gem_eio@unwedge-stress.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          [FAIL][125] ([i915#454]) -> [INCOMPLETE][126] ([i915#6443])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-skl4/igt@i915_pm_dc@dc6-psr.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-skl4/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs:
>     - shard-skl:          [SKIP][127] ([fdo#109271] / [i915#1888]) -> [SKIP][128] ([fdo#109271]) +2 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-skl6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-skl9/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [FAIL][129] ([i915#4767]) -> [INCOMPLETE][130] ([i915#180] / [i915#4939])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [FAIL][131] ([i915#2122]) -> [FAIL][132] ([i915#79])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-skl:          [SKIP][133] ([fdo#109271]) -> [SKIP][134] ([fdo#109271] / [i915#1888]) +1 similar issue
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-skl9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-skl2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][135] ([i915#2920]) -> [SKIP][136] ([i915#658])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         [SKIP][137] ([i915#658]) -> [SKIP][138] ([i915#2920])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-iclb8/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][139] ([fdo#111068] / [i915#658]) -> [SKIP][140] ([i915#2920])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#716]) -> ([FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158]) ([i915#180] / [i915#4312] / [i915#5257] / [i915#92])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-kbl7/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-kbl7/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-kbl1/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-kbl1/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-kbl4/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-kbl4/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-kbl1/igt@runner@aborted.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-kbl4/igt@runner@aborted.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-kbl4/igt@runner@aborted.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-kbl4/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11972/shard-kbl1/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl4/igt@runner@aborted.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl4/igt@runner@aborted.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl4/igt@runner@aborted.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl4/igt@runner@aborted.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl1/igt@runner@aborted.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl4/igt@runner@aborted.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/shard-kbl1/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
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
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
>   [i915#3692]: https://gitlab.freedesktop.org/drm/intel/issues/3692
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6375]: https://gitlab.freedesktop.org/drm/intel/issues/6375
>   [i915#6443]: https://gitlab.freedesktop.org/drm/intel/issues/6443
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11972 -> Patchwork_107059v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11972: ae25b9088f6c94a6f9cd12f747c3dacd8a161502 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6615: a98a66399db9939b16e1cb3b47055f400834affb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_107059v1: ae25b9088f6c94a6f9cd12f747c3dacd8a161502 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107059v1/index.html
