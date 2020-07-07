Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73086217AEB
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 00:17:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BBE16E819;
	Tue,  7 Jul 2020 22:17:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6DEC66E817;
 Tue,  7 Jul 2020 22:17:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F6A6A47DF;
 Tue,  7 Jul 2020 22:17:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 07 Jul 2020 22:17:08 -0000
Message-ID: <159416022836.7662.12301912294420895149@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200707171517.28183-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200707171517.28183-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Fix_initial_fb_to_use_resource=5Fsize=5Ft_=28r?=
 =?utf-8?q?ev2=29?=
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

Series: drm/i915/display: Fix initial fb to use resource_size_t (rev2)
URL   : https://patchwork.freedesktop.org/series/79205/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8710_full -> Patchwork_18098_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18098_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl3/igt@gem_ctx_persistence@processes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-skl10/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_balancer@sliced:
    - shard-tglb:         [PASS][3] -> [TIMEOUT][4] ([i915#1936] / [i915#1958] / [i915#2119])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-tglb8/igt@gem_exec_balancer@sliced.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-tglb1/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - shard-tglb:         [PASS][5] -> [TIMEOUT][6] ([i915#2119])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-tglb8/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-tglb1/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1436] / [i915#716])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-kbl7/igt@gen9_exec_parse@allowed-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-kbl3/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-snb:          [PASS][9] -> [SKIP][10] ([fdo#109271])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-snb4/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-snb2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_color@pipe-a-gamma:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#93] / [i915#95]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-kbl3/igt@kms_color@pipe-a-gamma.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-kbl1/igt@kms_color@pipe-a-gamma.html

  * igt@kms_cursor_legacy@pipe-b-torture-move:
    - shard-iclb:         [PASS][13] -> [DMESG-WARN][14] ([i915#128])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-iclb6/igt@kms_cursor_legacy@pipe-b-torture-move.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-iclb8/igt@kms_cursor_legacy@pipe-b-torture-move.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +6 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl6/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-skl6/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip_tiling@flip-x-tiled:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1635] / [i915#95]) +12 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl3/igt@kms_flip_tiling@flip-x-tiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-apl1/igt@kms_flip_tiling@flip-x-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt:
    - shard-snb:          [PASS][23] -> [TIMEOUT][24] ([i915#1958] / [i915#2119]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-snb5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#49])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1188])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl2/igt@kms_hdr@bpc-switch.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
    - shard-kbl:          [PASS][29] -> [DMESG-FAIL][30] ([fdo#108145] / [i915#95])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
    - shard-apl:          [PASS][31] -> [DMESG-FAIL][32] ([fdo#108145] / [i915#1635] / [i915#95])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#31])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-glk7/igt@kms_setmode@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-glk2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-glk:          [FAIL][41] ([i915#1528]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-glk1/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-glk6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-apl:          [DMESG-WARN][43] ([i915#1635] / [i915#95]) -> [PASS][44] +12 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl3/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-apl1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][45] ([i915#69]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl2/igt@gem_softpin@noreloc-s3.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-skl5/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@stress-mm-invalidate-close-overlap:
    - shard-tglb:         [DMESG-WARN][47] ([i915#402]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-tglb2/igt@gem_userptr_blits@stress-mm-invalidate-close-overlap.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-tglb5/igt@gem_userptr_blits@stress-mm-invalidate-close-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-glk:          [DMESG-WARN][49] ([i915#118] / [i915#95]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-glk2/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-glk6/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][51] ([i915#454]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl3/igt@i915_pm_dc@dc6-psr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-skl10/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][53] ([i915#151] / [i915#69]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl4/igt@i915_pm_rpm@system-suspend-modeset.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][55] ([i915#118] / [i915#95]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-glk1/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-iclb:         [DMESG-WARN][57] ([i915#1982]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-iclb1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60] +8 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl9/igt@kms_color@pipe-c-ctm-0-25.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-skl5/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen:
    - shard-skl:          [FAIL][61] ([i915#54]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - shard-tglb:         [INCOMPLETE][63] -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-tglb7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-tglb2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][65] ([IGT#5]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:
    - shard-tglb:         [DMESG-WARN][67] ([i915#1982]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-tglb:         [SKIP][69] ([i915#668]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-iclb7/igt@kms_psr@psr2_suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][77] ([i915#31]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-kbl1/igt@kms_setmode@basic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-kbl6/igt@kms_setmode@basic.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][79] ([i915#1542]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-iclb3/igt@perf@blocking-parameterized.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-iclb4/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][81] ([i915#1930]) -> [TIMEOUT][82] ([i915#1958] / [i915#2119])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen:
    - shard-snb:          [SKIP][83] ([fdo#109271]) -> [TIMEOUT][84] ([i915#1958] / [i915#2119])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-snb5/igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-snb2/igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
    - shard-apl:          [SKIP][85] ([fdo#109271]) -> [SKIP][86] ([fdo#109271] / [i915#1635]) +4 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-apl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html

  * igt@prime_nv_api@nv_self_import_to_different_fd:
    - shard-apl:          [SKIP][87] ([fdo#109271] / [i915#1635]) -> [SKIP][88] ([fdo#109271]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl6/igt@prime_nv_api@nv_self_import_to_different_fd.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-apl8/igt@prime_nv_api@nv_self_import_to_different_fd.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][89] ([i915#1436] / [i915#1784] / [i915#2110]) -> ([FAIL][90], [FAIL][91]) ([fdo#109271] / [i915#1436] / [i915#1784] / [i915#2110] / [i915#716])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-kbl4/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-kbl7/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-kbl3/igt@runner@aborted.html
    - shard-apl:          ([FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][96] ([i915#1635] / [i915#2110])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl1/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl1/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl6/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl3/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/shard-apl7/igt@runner@aborted.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1936]: https://gitlab.freedesktop.org/drm/intel/issues/1936
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8710 -> Patchwork_18098

  CI-20190529: 20190529
  CI_DRM_8710: 274a7b2cbc164c0381a28cb30fd5d3ab93a36dee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5726: 5da80efbc7a2d5bd7b30c0f9eb4b5d001c99b558 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18098: 40ee693823d10e4f2ef3fe6a531b72e7eccabaaf @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18098/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
