Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 262751EDFC2
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 10:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70DF489933;
	Thu,  4 Jun 2020 08:26:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8298589933;
 Thu,  4 Jun 2020 08:26:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7AC41A00CC;
 Thu,  4 Jun 2020 08:26:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 04 Jun 2020 08:26:16 -0000
Message-ID: <159125917647.14554.7653253231789861779@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200603211040.8190-1-imre.deak@intel.com>
In-Reply-To: <20200603211040.8190-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/dp=5Fmst=3A_Fix_disabling_?=
 =?utf-8?q?MST_on_a_port?=
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

Series: series starting with [1/3] drm/i915/dp_mst: Fix disabling MST on a port
URL   : https://patchwork.freedesktop.org/series/77969/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8579_full -> Patchwork_17858_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17858_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb6/igt@gem_exec_reloc@basic-write-gtt-active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-tglb7/igt@gem_exec_reloc@basic-write-gtt-active.html

  * igt@gem_sync@basic-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk6/igt@gem_sync@basic-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-glk4/igt@gem_sync@basic-all.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#95]) +19 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-apl3/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#69])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl6/igt@i915_suspend@debugfs-reader.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-skl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +10 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-skl2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl4/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-apl1/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [PASS][15] -> [DMESG-FAIL][16] ([i915#1925] / [i915#1926])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk9/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-glk6/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@pipe-b-torture-move:
    - shard-iclb:         [PASS][17] -> [DMESG-WARN][18] ([i915#128])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb1/igt@kms_cursor_legacy@pipe-b-torture-move.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-iclb4/igt@kms_cursor_legacy@pipe-b-torture-move.html

  * igt@kms_flip_tiling@flip-yf-tiled:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_flip_tiling@flip-yf-tiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-skl5/igt@kms_flip_tiling@flip-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-snb:          [PASS][21] -> [SKIP][22] ([fdo#109271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-snb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-iclb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-glk:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk4/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-glk5/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-tglb:         [PASS][27] -> [DMESG-WARN][28] ([i915#1982]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#49])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#1188]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][39] -> [FAIL][40] ([i915#31])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-apl3/igt@kms_setmode@basic.html

  * igt@syncobj_wait@single-wait-all-signaled:
    - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#93] / [i915#95]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl7/igt@syncobj_wait@single-wait-all-signaled.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-kbl4/igt@syncobj_wait@single-wait-all-signaled.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-glk:          [DMESG-WARN][43] ([i915#118] / [i915#95]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-apl7/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - shard-apl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-apl3/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-tglb:         [DMESG-WARN][49] ([i915#402]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:
    - shard-apl:          [DMESG-WARN][51] ([i915#95]) -> [PASS][52] +8 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl1/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-apl2/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1}:
    - shard-skl:          [FAIL][53] ([i915#46]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][57] ([i915#93] / [i915#95]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][59] ([i915#69]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane@plane-position-hole-pipe-a-planes:
    - shard-skl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +10 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl4/igt@kms_plane@plane-position-hole-pipe-a-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-skl4/igt@kms_plane@plane-position-hole-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][63] ([fdo#108145] / [i915#265]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][65] ([i915#1982]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][67] ([fdo#109642] / [fdo#111068]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb1/igt@kms_psr2_su@page_flip.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][71] ([i915#31]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl8/igt@kms_setmode@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-skl5/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +5 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-tglb:         [FAIL][75] ([i915#1542]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb7/igt@perf@blocking-parameterized.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-tglb2/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][77] ([i915#1319] / [i915#1635]) -> [TIMEOUT][78] ([i915#1319])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@kms_content_protection@atomic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-apl2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][79] ([i915#1319]) -> [TIMEOUT][80] ([i915#1319] / [i915#1635])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl1/igt@kms_content_protection@atomic-dpms.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-apl4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [TIMEOUT][81] ([i915#1319] / [i915#1635]) -> [FAIL][82] ([fdo#110321] / [fdo#110336])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl3/igt@kms_content_protection@legacy.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-apl6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][83] ([fdo#110321]) -> [TIMEOUT][84] ([i915#1319] / [i915#1635])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@kms_content_protection@srm.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-apl4/igt@kms_content_protection@srm.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-tglb:         [DMESG-WARN][85] ([i915#1982]) -> [DMESG-WARN][86] ([i915#1982] / [i915#402])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-apl:          [DMESG-FAIL][87] ([i915#49] / [i915#95]) -> [FAIL][88] ([i915#49])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8579 -> Patchwork_17858

  CI-20190529: 20190529
  CI_DRM_8579: 289eb12c88c49a4ac8d325dc457d8878c7f5bdc0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5694: a9b6c4c74bfddf7d3d2da3be08804fe315945cea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17858: 7a10916bbf7e8b6d18f552c3d6135250da4caa20 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17858/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
