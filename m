Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A061D7FE9
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 19:18:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97D1E89C07;
	Mon, 18 May 2020 17:18:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EBCE289C07;
 Mon, 18 May 2020 17:18:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E5A6EA0099;
 Mon, 18 May 2020 17:18:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 18 May 2020 17:18:12 -0000
Message-ID: <158982229290.31688.17533552618588045785@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200516161542.8032-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200516161542.8032-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_dbuf_slice_mask_when_turning_off_all_the_pipes_=28?=
 =?utf-8?q?rev2=29?=
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

Series: drm/i915: Fix dbuf slice mask when turning off all the pipes (rev2)
URL   : https://patchwork.freedesktop.org/series/77322/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8494_full -> Patchwork_17690_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17690_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17690_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17690_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb2/igt@kms_panel_fitting@atomic-fastset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb5/igt@kms_panel_fitting@atomic-fastset.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][3] ([i915#668]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-iclb:         [FAIL][5] ([i915#1757]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-iclb6/igt@kms_panel_fitting@atomic-fastset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-iclb1/igt@kms_panel_fitting@atomic-fastset.html

  
Known issues
------------

  Here are the changes found in Patchwork_17690_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1436] / [i915#716])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-kbl3/igt@gen9_exec_parse@allowed-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-kbl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl6/igt@i915_suspend@debugfs-reader.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-apl1/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#300])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl8/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html

  
#### Possible fixes ####

  * {igt@gem_exec_schedule@pi-shared-iova@rcs0}:
    - shard-tglb:         [INCOMPLETE][23] ([i915#1193]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb2/igt@gem_exec_schedule@pi-shared-iova@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb5/igt@gem_exec_schedule@pi-shared-iova@rcs0.html

  * {igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-b}:
    - shard-kbl:          [DMESG-WARN][25] ([i915#78]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-kbl2/igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-b.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-kbl2/igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-b.html

  * igt@kms_available_modes_crc@available_mode_test_crc:
    - shard-tglb:         [FAIL][27] ([i915#1537]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb7/igt@kms_available_modes_crc@available_mode_test_crc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb1/igt@kms_available_modes_crc@available_mode_test_crc.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-tglb:         [FAIL][29] ([i915#1172] / [i915#1897] / [i915#402]) -> [PASS][30] +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb8/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb5/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-tglb:         [FAIL][31] ([i915#1172] / [i915#1897]) -> [PASS][32] +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic:
    - shard-tglb:         [FAIL][33] ([i915#1483] / [i915#1897] / [i915#402]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic.html

  * igt@kms_color@pipe-a-ctm-blue-to-red:
    - shard-tglb:         [FAIL][35] ([i915#1149] / [i915#402]) -> [PASS][36] +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb6/igt@kms_color@pipe-a-ctm-blue-to-red.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb2/igt@kms_color@pipe-a-ctm-blue-to-red.html

  * igt@kms_color@pipe-b-gamma:
    - shard-tglb:         [FAIL][37] ([i915#1149] / [i915#1897] / [i915#402]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb6/igt@kms_color@pipe-b-gamma.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb7/igt@kms_color@pipe-b-gamma.html

  * igt@kms_color@pipe-c-gamma:
    - shard-tglb:         [FAIL][39] ([i915#1149] / [i915#1897]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb7/igt@kms_color@pipe-c-gamma.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb2/igt@kms_color@pipe-c-gamma.html

  * igt@kms_color@pipe-d-ctm-max:
    - shard-tglb:         [FAIL][41] ([i915#1149]) -> [PASS][42] +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb7/igt@kms_color@pipe-d-ctm-max.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb1/igt@kms_color@pipe-d-ctm-max.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:
    - shard-skl:          [FAIL][43] ([i915#54]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-alpha-opaque:
    - shard-tglb:         [FAIL][45] ([i915#1897]) -> [PASS][46] +109 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-alpha-opaque.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-alpha-opaque.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-tglb:         [FAIL][47] ([IGT#5] / [i915#402]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [FAIL][49] ([i915#64]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb2/igt@kms_fbcon_fbt@fbc-suspend.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1}:
    - shard-skl:          [FAIL][51] ([i915#79]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [FAIL][55] ([i915#95]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl8/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-apl1/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_flip_tiling@flip-to-y-tiled:
    - shard-tglb:         [FAIL][57] ([i915#1897] / [i915#402] / [i915#699]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb2/igt@kms_flip_tiling@flip-to-y-tiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb2/igt@kms_flip_tiling@flip-to-y-tiled.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [FAIL][59] ([i915#1897] / [i915#402]) -> [PASS][60] +120 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-skl:          [FAIL][61] ([i915#49]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [SKIP][63] ([i915#668]) -> [PASS][64] +51 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][65] ([i915#1188]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl9/igt@kms_hdr@bpc-switch.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-skl4/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +8 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_mmap_write_crc@main:
    - shard-tglb:         [FAIL][69] ([i915#1180] / [i915#1897] / [i915#402]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb1/igt@kms_mmap_write_crc@main.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb6/igt@kms_mmap_write_crc@main.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-kbl:          [INCOMPLETE][71] ([i915#155]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-c-tiling-none:
    - shard-tglb:         [FAIL][75] ([i915#1897] / [i915#899]) -> [PASS][76] +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb6/igt@kms_plane_lowres@pipe-c-tiling-none.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb2/igt@kms_plane_lowres@pipe-c-tiling-none.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][77] ([fdo#109441]) -> [PASS][78] +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-iclb4/igt@kms_psr@psr2_suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-iclb2/igt@kms_psr@psr2_suspend.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][79] ([i915#1319]) -> [FAIL][80] ([fdo#110321] / [fdo#110336])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl6/igt@kms_content_protection@atomic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-apl8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [DMESG-FAIL][81] ([fdo#110321]) -> [FAIL][82] ([fdo#110321])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl8/igt@kms_content_protection@lic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_psr2_su@page_flip:
    - shard-tglb:         [SKIP][83] ([i915#668]) -> [FAIL][84] ([i915#608])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb3/igt@kms_psr2_su@page_flip.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/shard-tglb8/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1172]: https://gitlab.freedesktop.org/drm/intel/issues/1172
  [i915#1180]: https://gitlab.freedesktop.org/drm/intel/issues/1180
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1193]: https://gitlab.freedesktop.org/drm/intel/issues/1193
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1483]: https://gitlab.freedesktop.org/drm/intel/issues/1483
  [i915#1537]: https://gitlab.freedesktop.org/drm/intel/issues/1537
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1757]: https://gitlab.freedesktop.org/drm/intel/issues/1757
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1883]: https://gitlab.freedesktop.org/drm/intel/issues/1883
  [i915#1897]: https://gitlab.freedesktop.org/drm/intel/issues/1897
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#64]: https://gitlab.freedesktop.org/drm/intel/issues/64
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8494 -> Patchwork_17690

  CI-20190529: 20190529
  CI_DRM_8494: 3d15348fde9b998e754da0b0655baf02b98e7f17 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5657: 649eae5c905a7460b44305800f95db83a6dd47cb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17690: fed553859a0fa75b2dac63ac5738561c2094e1ed @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
