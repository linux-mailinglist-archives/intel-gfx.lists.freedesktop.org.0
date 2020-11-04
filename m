Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 769752A66CC
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 15:55:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E12A389DA5;
	Wed,  4 Nov 2020 14:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C7CB89DA5
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Nov 2020 14:55:07 +0000 (UTC)
IronPort-SDR: cYPM/OuongiEOpRJHLEYt7dDu46rqJ6Qmr1nQ1uKkRwduwrjolHodcSn/RZSumUX9Pkd21flQI
 ARnOzvbMo62Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="230856859"
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="230856859"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 06:55:06 -0800
IronPort-SDR: QCK278su0RSWB3fnRpRetlUm0UFcfjtY2evQLAwhUDPAlcZ0DLStJfmHbYeEwX/nx7jslVDprY
 Ok+xl5BoGqgA==
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="306174668"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 06:55:05 -0800
Date: Wed, 4 Nov 2020 16:55:01 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20201104145501.GB4174249@ideak-desk.fi.intel.com>
References: <20201104010000.4165574-1-imre.deak@intel.com>
 <160446926565.21427.9211544617741605508@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160446926565.21427.9211544617741605508@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Fix_typo_during_output_setup?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 04, 2020 at 05:54:25AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tgl: Fix typo during output setup
> URL   : https://patchwork.freedesktop.org/series/83465/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9258_full -> Patchwork_18847_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_18847_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_18847_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_18847_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@bc-vga1-hdmi-a1:
>     - shard-hsw:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-hsw4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@bc-vga1-hdmi-a1.html

Unrelated platform. Pused to -dinq thanks for the review.

> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_9258_full and Patchwork_18847_full:
> 
> ### New CI tests (1) ###
> 
>   * boot:
>     - Statuses : 200 pass(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18847_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_caching@writes:
>     - shard-skl:          [PASS][2] -> [DMESG-WARN][3] ([i915#1982]) +13 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-skl8/igt@gem_caching@writes.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-skl1/igt@gem_caching@writes.html
> 
>   * igt@i915_module_load@reload:
>     - shard-iclb:         [PASS][4] -> [DMESG-WARN][5] ([i915#1982]) +1 similar issue
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-iclb4/igt@i915_module_load@reload.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-iclb8/igt@i915_module_load@reload.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
>     - shard-skl:          [PASS][6] -> [FAIL][7] ([i915#54]) +5 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
> 
>   * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
>     - shard-hsw:          [PASS][8] -> [FAIL][9] ([i915#96])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipa-varying-size:
>     - shard-apl:          [PASS][10] -> [DMESG-WARN][11] ([i915#1635] / [i915#1982]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-apl1/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-apl6/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>     - shard-hsw:          [PASS][12] -> [DMESG-WARN][13] ([i915#1982])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-hsw8/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-hsw1/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-skl:          [PASS][14] -> [FAIL][15] ([i915#2346])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
>     - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#2122])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-hdmi-a1:
>     - shard-glk:          [PASS][18] -> [DMESG-WARN][19] ([i915#1982]) +3 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-glk5/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-hdmi-a1.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-glk8/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-tglb:         [PASS][20] -> [DMESG-WARN][21] ([i915#1982]) +1 similar issue
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#1188])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [PASS][24] -> [DMESG-FAIL][25] ([fdo#108145] / [i915#1982])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-none:
>     - shard-glk:          [PASS][26] -> [FAIL][27] ([i915#899])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-glk5/igt@kms_plane_lowres@pipe-b-tiling-none.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-glk8/igt@kms_plane_lowres@pipe-b-tiling-none.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#109441]) +2 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
>     - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#1982]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-kbl2/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-kbl3/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
>     - shard-skl:          [PASS][32] -> [INCOMPLETE][33] ([i915#198])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-skl2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-snb:          [TIMEOUT][34] -> [PASS][35]
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-snb6/igt@gem_eio@unwedge-stress.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-snb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_suspend@basic:
>     - shard-hsw:          [FAIL][36] ([i915#1888]) -> [PASS][37]
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-hsw6/igt@gem_exec_suspend@basic.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-hsw6/igt@gem_exec_suspend@basic.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][38] ([i915#2190]) -> [PASS][39]
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-tglb6/igt@gem_huc_copy@huc-copy.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-tglb5/igt@gem_huc_copy@huc-copy.html
> 
>   * {igt@kms_async_flips@alternate-sync-async-flip}:
>     - shard-kbl:          [FAIL][40] ([i915#2521]) -> [PASS][41]
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-kbl4/igt@kms_async_flips@alternate-sync-async-flip.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-kbl7/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * {igt@kms_async_flips@async-flip-with-page-flip-events}:
>     - shard-iclb:         [FAIL][42] ([i915#2521]) -> [PASS][43]
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-iclb4/igt@kms_async_flips@async-flip-with-page-flip-events.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-iclb8/igt@kms_async_flips@async-flip-with-page-flip-events.html
> 
>   * igt@kms_busy@basic-flip-pipe-b:
>     - shard-skl:          [DMESG-WARN][44] ([i915#1982]) -> [PASS][45] +2 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-skl9/igt@kms_busy@basic-flip-pipe-b.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-skl7/igt@kms_busy@basic-flip-pipe-b.html
> 
>   * igt@kms_color@pipe-a-gamma:
>     - shard-tglb:         [FAIL][46] ([i915#1149]) -> [PASS][47]
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-tglb8/igt@kms_color@pipe-a-gamma.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-tglb6/igt@kms_color@pipe-a-gamma.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:
>     - shard-skl:          [FAIL][48] ([i915#54]) -> [PASS][49] +3 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-apl:          [DMESG-WARN][50] ([i915#1635] / [i915#1982]) -> [PASS][51]
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-apl3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-apl7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-hsw:          [FAIL][52] ([i915#2370]) -> [PASS][53]
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-hsw2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
>     - shard-skl:          [FAIL][54] ([i915#2346]) -> [PASS][55]
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
>     - shard-snb:          [FAIL][56] ([i915#54]) -> [PASS][57]
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-snb6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-snb5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:
>     - shard-hsw:          [INCOMPLETE][58] -> [PASS][59]
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-hsw6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-hsw4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          [DMESG-WARN][60] ([i915#180]) -> [PASS][61]
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [FAIL][62] ([i915#2122]) -> [PASS][63]
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-glk:          [DMESG-WARN][64] ([i915#1982]) -> [PASS][65] +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-glk9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-glk7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-kbl:          [DMESG-WARN][66] ([i915#1982]) -> [PASS][67] +2 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
>     - shard-skl:          [INCOMPLETE][68] ([i915#198]) -> [PASS][69]
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [SKIP][70] ([fdo#109441]) -> [PASS][71] +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-iclb1/igt@kms_psr@psr2_sprite_blt.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@perf@polling:
>     - shard-skl:          [FAIL][72] ([i915#1542]) -> [PASS][73] +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-skl8/igt@perf@polling.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-skl1/igt@perf@polling.html
> 
>   
> #### Warnings ####
> 
>   * igt@runner@aborted:
>     - shard-iclb:         [FAIL][74] ([i915#1814]) -> [FAIL][75] ([i915#1814] / [i915#483])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9258/shard-iclb2/igt@runner@aborted.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/shard-iclb5/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2370]: https://gitlab.freedesktop.org/drm/intel/issues/2370
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
>   [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
> 
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_9258 -> Patchwork_18847
> 
>   CI-20190529: 20190529
>   CI_DRM_9258: a9c138cdeb8819048da5d488bdddf6bc81122585 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5831: b6247cc06d76b48ec2a3a0b13ffbd25aec8a42ff @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18847: 5bd3d12bcb0ffe821ec14983542c818b7baab6a3 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18847/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
