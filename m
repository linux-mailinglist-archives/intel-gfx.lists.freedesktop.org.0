Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 194591F208D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 22:15:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D24089CDE;
	Mon,  8 Jun 2020 20:14:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D7F8689CDE;
 Mon,  8 Jun 2020 20:14:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D16EBA00E6;
 Mon,  8 Jun 2020 20:14:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 08 Jun 2020 20:14:56 -0000
Message-ID: <159164729685.14460.7631286722864688615@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200608181023.11503-1-imre.deak@intel.com>
In-Reply-To: <20200608181023.11503-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_the_i915=5Fdsc=5Ffec=5Fsupport_debugfs_file_for_DP?=
 =?utf-8?q?_MST_connectors_=28rev2=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Fix the i915_dsc_fec_support debugfs file for DP MST connectors (rev2)
URL   : https://patchwork.freedesktop.org/series/78128/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8601_full -> Patchwork_17911_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17911_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_engines@idempotent:
    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-tglb6/igt@gem_ctx_engines@idempotent.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-tglb2/igt@gem_ctx_engines@idempotent.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk4/igt@gem_exec_whisper@basic-queues-priority-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-glk7/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_sync@basic-store-each:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#95]) +11 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl3/igt@gem_sync@basic-store-each.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-apl4/igt@gem_sync@basic-store-each.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl6/igt@i915_suspend@forcewake.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-kbl2/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][9] -> [DMESG-FAIL][10] ([i915#118] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl5/igt@kms_color@pipe-c-ctm-0-5.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-skl8/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_color@pipe-c-ctm-blue-to-red:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#93] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl6/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-kbl2/igt@kms_color@pipe-c-ctm-blue-to-red.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([IGT#5])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-tglb:         [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
    - shard-snb:          [PASS][19] -> [SKIP][20] ([fdo#109271])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-snb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-glk:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk4/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-glk6/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#1188])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl7/igt@kms_hdr@bpc-switch.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#69]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][31] -> [DMESG-WARN][32] ([i915#1982])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb2/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#173])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb2/igt@kms_psr@no_drrs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-tglb:         [PASS][37] -> [SKIP][38] ([i915#668]) +6 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-tglb8/igt@kms_psr@psr2_cursor_plane_onoff.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-tglb6/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-skl:          [CRASH][39] -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl2/igt@gem_mmap_gtt@fault-concurrent.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-skl9/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][41] ([i915#118] / [i915#95]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-glk4/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +10 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl3/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-skl4/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-skl:          [FAIL][47] ([i915#52] / [i915#54]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * {igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][49] ([i915#1928]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk5/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-glk9/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1}:
    - shard-kbl:          [FAIL][51] ([i915#79]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-kbl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-apl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@a-edp1}:
    - shard-skl:          [INCOMPLETE][55] ([i915#198]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl4/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-skl1/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-iclb:         [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb3/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-iclb2/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid:
    - shard-apl:          [DMESG-WARN][63] ([i915#95]) -> [PASS][64] +12 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb7/igt@kms_psr@psr2_dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [INCOMPLETE][67] ([i915#155]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-kbl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][69] ([i915#1542]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb3/igt@perf@blocking-parameterized.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-iclb2/igt@perf@blocking-parameterized.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][71] ([i915#1542]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-hsw6/igt@perf@polling-parameterized.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-hsw2/igt@perf@polling-parameterized.html

  * igt@syncobj_wait@multi-wait-all-for-submit-signaled:
    - shard-tglb:         [DMESG-WARN][73] ([i915#402]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-tglb3/igt@syncobj_wait@multi-wait-all-for-submit-signaled.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-tglb7/igt@syncobj_wait@multi-wait-all-for-submit-signaled.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][75] ([i915#588]) -> [SKIP][76] ([i915#658])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][77] ([i915#454]) -> [SKIP][78] ([i915#468])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][79] ([i915#1319] / [i915#1635]) -> [DMESG-FAIL][80] ([fdo#110321] / [i915#95])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl4/igt@kms_content_protection@atomic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-apl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][81] ([fdo#110321] / [fdo#110336]) -> [DMESG-FAIL][82] ([fdo#110321])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl3/igt@kms_content_protection@atomic-dpms.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-apl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][83] ([i915#1319] / [i915#1635]) -> [TIMEOUT][84] ([i915#1319]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl4/igt@kms_content_protection@lic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-apl7/igt@kms_content_protection@lic.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][85] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][86] ([i915#93] / [i915#95])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8601 -> Patchwork_17911

  CI-20190529: 20190529
  CI_DRM_8601: c801ab3a923b2436d765bd7a97888715f68451cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5699: 201da47cb57b8fadd9bc45be16b82617b32a2c01 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17911: 2c4524628e2260caff58cb7020b91497c3091394 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17911/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
