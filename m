Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6399130FB42
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 19:23:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7A906EE2B;
	Thu,  4 Feb 2021 18:23:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A35E76EE2B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 18:23:17 +0000 (UTC)
IronPort-SDR: mN/BVdZg7TCpWgYp7s8qBdVcblCUFr1rFh9pmWDojSqqRi9oiMiJ6Ifo9dBQuUybX9A0rm97pz
 ql3l8AcMImNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="161057652"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="161057652"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 10:23:16 -0800
IronPort-SDR: 51NUPIr5sc5H/EDUL4Qk2ZCBwY8Q2z9vu7Pkf69zM+LG8TMxIKKH9rn7srCs9LjQ7pyVwEPEGd
 fAoTpyY2j7dQ==
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="434057554"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 10:23:15 -0800
Date: Thu, 4 Feb 2021 20:23:09 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20210204182309.GB750296@ideak-desk.fi.intel.com>
References: <20210127181909.128094-1-imre.deak@intel.com>
 <161179389818.13618.6161894879664577973@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161179389818.13618.6161894879664577973@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Disable_runtime_power_management_during_shutdown?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 28, 2021 at 12:31:38AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Disable runtime power management during shutdown
> URL   : https://patchwork.freedesktop.org/series/86362/
> State : success

Thanks for the review, pushed to -din with a code comment addition.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9688_full -> Patchwork_19524_full
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
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19524_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@close-replace-race:
>     - shard-glk:          [PASS][1] -> [TIMEOUT][2] ([i915#2918])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-glk6/igt@gem_ctx_persistence@close-replace-race.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-glk7/igt@gem_ctx_persistence@close-replace-race.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#2846])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-tglb5/igt@gem_exec_fair@basic-deadline.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-tglb6/igt@gem_exec_fair@basic-deadline.html
>     - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2846])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-glk7/igt@gem_exec_fair@basic-deadline.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-glk1/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#2842]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
>     - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#2849])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_params@no-vebox:
>     - shard-iclb:         NOTRUN -> [SKIP][15] ([fdo#109283])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-iclb7/igt@gem_exec_params@no-vebox.html
> 
>   * igt@gen7_exec_parse@basic-allowed:
>     - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271]) +9 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-skl8/igt@gen7_exec_parse@basic-allowed.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#454])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@system-suspend-modeset:
>     - shard-kbl:          [PASS][19] -> [INCOMPLETE][20] ([i915#151])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-kbl7/igt@i915_pm_rpm@system-suspend-modeset.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-kbl3/igt@i915_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_chamelium@hdmi-cmp-planar-formats:
>     - shard-glk:          NOTRUN -> [SKIP][21] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-glk1/igt@kms_chamelium@hdmi-cmp-planar-formats.html
> 
>   * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
>     - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-skl8/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
>     - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#54]) +9 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#2405] / [i915#300])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-128x42-random:
>     - shard-glk:          NOTRUN -> [SKIP][27] ([fdo#109271]) +3 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-glk1/igt@kms_cursor_crc@pipe-d-cursor-128x42-random.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-hsw:          [PASS][28] -> [FAIL][29] ([i915#2370])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
>     - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#52] / [i915#54])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-skl2/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:
>     - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#177] / [i915#52] / [i915#54])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-skl2/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#2122]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109280]) +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
>     - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#1982])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][39] ([fdo#108145] / [i915#265])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][40] -> [FAIL][41] ([fdo#108145] / [i915#265]) +1 similar issue
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_basic:
>     - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#109441]) +4 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-iclb2/igt@kms_psr@psr2_basic.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-iclb5/igt@kms_psr@psr2_basic.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
>     - shard-skl:          [PASS][44] -> [INCOMPLETE][45] ([i915#198])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-skl7/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          [FAIL][46] ([i915#2846]) -> [PASS][47]
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][48] ([i915#2842]) -> [PASS][49]
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [FAIL][50] ([i915#2842]) -> [PASS][51] +2 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_shrink@reclaim:
>     - shard-iclb:         [INCOMPLETE][52] -> [PASS][53]
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-iclb4/igt@gem_shrink@reclaim.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-iclb7/igt@gem_shrink@reclaim.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [DMESG-WARN][54] ([i915#1436] / [i915#716]) -> [PASS][55]
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-glk7/igt@gen9_exec_parse@allowed-all.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-glk1/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
>     - shard-skl:          [FAIL][56] ([i915#54]) -> [PASS][57] +4 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
> 
>   * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
>     - shard-hsw:          [FAIL][58] ([i915#96]) -> [PASS][59]
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-tglb:         [FAIL][60] ([i915#2346]) -> [PASS][61]
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:
>     - shard-skl:          [DMESG-WARN][62] ([i915#1982]) -> [PASS][63] +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-tglb:         [FAIL][64] ([i915#2598]) -> [PASS][65]
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
>     - shard-skl:          [FAIL][66] ([i915#2122]) -> [PASS][67]
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][68] ([i915#1188]) -> [PASS][69]
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][70] ([fdo#108145] / [i915#265]) -> [PASS][71]
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [SKIP][72] ([fdo#109441]) -> [PASS][73] +2 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-iclb5/igt@kms_psr@psr2_no_drrs.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
> 
>   * {igt@sysfs_clients@busy@bcs0}:
>     - shard-skl:          [FAIL][74] -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl6/igt@sysfs_clients@busy@bcs0.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-skl1/igt@sysfs_clients@busy@bcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][76] ([i915#1804] / [i915#2684]) -> [WARN][77] ([i915#2681] / [i915#2684])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][78] ([i915#2684]) -> [WARN][79] ([i915#2681] / [i915#2684])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
>     - shard-iclb:         [SKIP][80] ([i915#2920]) -> [SKIP][81] ([i915#658]) +2 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>     - shard-iclb:         [SKIP][82] ([i915#658]) -> [SKIP][83] ([i915#2920]) +1 similar issue
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-iclb4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][84], [FAIL][85], [FAIL][86]) ([i915#2295] / [i915#2505]) -> ([FAIL][87], [FAIL][88], [FAIL][89]) ([i915#2295])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-kbl6/igt@runner@aborted.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-kbl1/igt@runner@aborted.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-kbl6/igt@runner@aborted.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-kbl1/igt@runner@aborted.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-kbl7/igt@runner@aborted.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/shard-kbl4/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
>   [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2370]: https://gitlab.freedesktop.org/drm/intel/issues/2370
>   [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
>   [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
>   [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2918]: https://gitlab.freedesktop.org/drm/intel/issues/2918
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
> 
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_9688 -> Patchwork_19524
> 
>   CI-20190529: 20190529
>   CI_DRM_9688: 43295c2b7bc37446a480bb5d42b03675baed171a @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5974: a85398dcae50930c0e27548cf8c9575ad0bf69d1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_19524: 207a500f0a86f5a8bc5ceff6b57a86f07f606cbe @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19524/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
