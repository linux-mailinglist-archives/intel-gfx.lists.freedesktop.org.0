Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E00B23184D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jul 2020 05:49:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54B2E6E436;
	Wed, 29 Jul 2020 03:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 09F446E433;
 Wed, 29 Jul 2020 03:49:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EFA3BA0BA8;
 Wed, 29 Jul 2020 03:49:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 29 Jul 2020 03:49:20 -0000
Message-ID: <159599456095.20645.10147829450749978204@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200728152812.26962-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200728152812.26962-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gem=3A_Serialise_debugfs_i?=
 =?utf-8?q?915=5Fgem=5Fobjects_with_ctx-=3Emutex?=
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
Content-Type: multipart/mixed; boundary="===============0736723441=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0736723441==
Content-Type: multipart/alternative;
 boundary="===============2338841449627210870=="

--===============2338841449627210870==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/gem: Serialise debugfs i915_gem_objects with ctx->mutex
URL   : https://patchwork.freedesktop.org/series/79990/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8807_full -> Patchwork_18255_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18255_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18255_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18255_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@nonexisting-fb@b-dp1:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-kbl6/igt@kms_flip@nonexisting-fb@b-dp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-kbl7/igt@kms_flip@nonexisting-fb@b-dp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_18255_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#1528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl7/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl2/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_ctx_persistence@replace@bcs0:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#2092])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl1/igt@gem_ctx_persistence@replace@bcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl4/igt@gem_ctx_persistence@replace@bcs0.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk9/igt@gem_exec_whisper@basic-queues-priority.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-glk3/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#454])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl7/igt@i915_pm_dc@dc6-psr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-c:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#2242]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb1/igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-c.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-tglb2/igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-c.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +13 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl6/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl3/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@pipe-c-torture-bo:
    - shard-iclb:         [PASS][17] -> [DMESG-WARN][18] ([i915#128])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb2/igt@kms_cursor_legacy@pipe-c-torture-bo.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-iclb5/igt@kms_cursor_legacy@pipe-c-torture-bo.html

  * igt@kms_flip@nonexisting-fb@a-edp1:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#2240])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb6/igt@kms_flip@nonexisting-fb@a-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-tglb6/igt@kms_flip@nonexisting-fb@a-edp1.html

  * igt@kms_flip@nonexisting-fb@b-vga1:
    - shard-snb:          [PASS][21] -> [INCOMPLETE][22] ([i915#82])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-snb2/igt@kms_flip@nonexisting-fb@b-vga1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-snb6/igt@kms_flip@nonexisting-fb@b-vga1.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-glk:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk3/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-glk6/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#198])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-iclb1/igt@kms_psr@psr2_sprite_blt.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#1542])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb4/igt@perf@blocking-parameterized.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-iclb2/igt@perf@blocking-parameterized.html
    - shard-tglb:         [PASS][33] -> [FAIL][34] ([i915#1542])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb3/igt@perf@blocking-parameterized.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-tglb6/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [PASS][35] -> [DMESG-WARN][36] ([i915#1982]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb2/igt@perf_pmu@module-unload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-tglb5/igt@perf_pmu@module-unload.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [DMESG-WARN][37] ([i915#1982]) -> [PASS][38] +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl7/igt@gem_eio@in-flight-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl10/igt@gem_eio@in-flight-suspend.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][39] ([i915#2190]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-tglb3/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][41] ([i915#151]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl3/igt@i915_pm_rpm@system-suspend-modeset.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl5/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a:
    - shard-tglb:         [INCOMPLETE][43] ([i915#2242]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb6/igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-tglb7/igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][45] ([i915#118] / [i915#95]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-glk9/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-apl:          [DMESG-WARN][47] ([i915#1635] / [i915#1982]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-apl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-apl2/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][49] ([i915#300]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge:
    - shard-glk:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk9/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-glk2/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][53] ([i915#79]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@nonexisting-fb@a-edp1:
    - shard-iclb:         [INCOMPLETE][55] ([i915#2240]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb4/igt@kms_flip@nonexisting-fb@a-edp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-iclb1/igt@kms_flip@nonexisting-fb@a-edp1.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-skl:          [FAIL][57] ([i915#699]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl5/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl9/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-iclb:         [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
    - shard-tglb:         [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-iclb:         [INCOMPLETE][63] ([i915#123]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb1/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][65] ([i915#1188]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +9 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  
#### Warnings ####

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][71] ([fdo#109349]) -> [DMESG-WARN][72] ([i915#1226])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][74] ([fdo#108145] / [i915#1982]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2092]: https://gitlab.freedesktop.org/drm/intel/issues/2092
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2240]: https://gitlab.freedesktop.org/drm/intel/issues/2240
  [i915#2242]: https://gitlab.freedesktop.org/drm/intel/issues/2242
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-icl-1065g7 


Build changes
-------------

  * Linux: CI_DRM_8807 -> Patchwork_18255

  CI-20190529: 20190529
  CI_DRM_8807: 494850d613c74f24a5799710b346faa5cd12a407 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5749: 2fef871e791ceab7841b899691c443167550173d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18255: a1fa09b7c79050a0c74b144969c4b87b4f220fa3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/index.html

--===============2338841449627210870==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/gem: Serialise debugfs i915_gem_objects with ctx-&gt;mutex</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79990/">https://patchwork.freedesktop.org/series/79990/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8807_full -&gt; Patchwork_18255_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18255_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18255_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18255_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@nonexisting-fb@b-dp1:<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-kbl6/igt@kms_flip@nonexisting-fb@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-kbl7/igt@kms_flip@nonexisting-fb@b-dp1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18255_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process@vcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl7/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl2/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1528">i915#1528</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@replace@bcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl1/igt@gem_ctx_persistence@replace@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl4/igt@gem_ctx_persistence@replace@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2092">i915#2092</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk9/igt@gem_exec_whisper@basic-queues-priority.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-glk3/igt@gem_exec_whisper@basic-queues-priority.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-c:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb1/igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-tglb2/igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-c.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2242">i915#2242</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl6/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl3/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-torture-bo:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb2/igt@kms_cursor_legacy@pipe-c-torture-bo.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-iclb5/igt@kms_cursor_legacy@pipe-c-torture-bo.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/128">i915#128</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb6/igt@kms_flip@nonexisting-fb@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-tglb6/igt@kms_flip@nonexisting-fb@a-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2240">i915#2240</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb@b-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-snb2/igt@kms_flip@nonexisting-fb@b-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-snb6/igt@kms_flip@nonexisting-fb@b-vga1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-badstride:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk3/igt@kms_frontbuffer_tracking@fbc-badstride.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-glk6/igt@kms_frontbuffer_tracking@fbc-badstride.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-iclb1/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb4/igt@perf@blocking-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-iclb2/igt@perf@blocking-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb3/igt@perf@blocking-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-tglb6/igt@perf@blocking-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb2/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-tglb5/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl7/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl10/igt@gem_eio@in-flight-suspend.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl3/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/151">i915#151</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl5/igt@i915_pm_rpm@system-suspend-modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb6/igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2242">i915#2242</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-tglb7/igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-glk9/igt@kms_big_fb@linear-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-apl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-apl2/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk9/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-glk2/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb@a-edp1:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb4/igt@kms_flip@nonexisting-fb@a-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2240">i915#2240</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-iclb1/igt@kms_flip@nonexisting-fb@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling-y:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl5/igt@kms_flip_tiling@flip-changes-tiling-y.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/699">i915#699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl9/igt@kms_flip_tiling@flip-changes-tiling-y.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-stridechange:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb1/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/123">i915#123</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109349">fdo#109349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18255/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): pig-icl-1065g7 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8807 -&gt; Patchwork_18255</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8807: 494850d613c74f24a5799710b346faa5cd12a407 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5749: 2fef871e791ceab7841b899691c443167550173d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18255: a1fa09b7c79050a0c74b144969c4b87b4f220fa3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============2338841449627210870==--

--===============0736723441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0736723441==--
