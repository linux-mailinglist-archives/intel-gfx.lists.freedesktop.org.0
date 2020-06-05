Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 741891EF70E
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 14:10:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70E796E89B;
	Fri,  5 Jun 2020 12:10:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8264B6E8A0;
 Fri,  5 Jun 2020 12:10:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C0C5A47DF;
 Fri,  5 Jun 2020 12:10:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 05 Jun 2020 12:10:14 -0000
Message-ID: <159135901447.18509.1489882016024324506@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200605095858.28455-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200605095858.28455-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915=3A_Add_list=5Ffor=5Feach?=
 =?utf-8?q?=5Fentry=5Fsafe=5Fcontinue=5Freverse?=
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

Series: series starting with [1/5] drm/i915: Add list_for_each_entry_safe_continue_reverse
URL   : https://patchwork.freedesktop.org/series/78031/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8590_full -> Patchwork_17883_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17883_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl2/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#183])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk5/igt@gem_tiled_swapping@non-threaded.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-glk8/igt@gem_tiled_swapping@non-threaded.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl6/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-apl2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][9] -> [DMESG-FAIL][10] ([i915#118] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk5/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +13 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl1/igt@kms_color@pipe-c-ctm-0-25.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-skl8/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-kbl:          [PASS][13] -> [DMESG-FAIL][14] ([i915#54] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +6 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#95]) +7 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#93] / [i915#95])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#49])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-b-wait-busy:
    - shard-iclb:         [PASS][33] -> [DMESG-WARN][34] ([i915#1982]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-iclb1/igt@kms_vblank@pipe-b-wait-busy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-iclb8/igt@kms_vblank@pipe-b-wait-busy.html

  * igt@syncobj_wait@invalid-multi-wait-unsubmitted-submitted:
    - shard-tglb:         [PASS][35] -> [DMESG-WARN][36] ([i915#402])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-tglb6/igt@syncobj_wait@invalid-multi-wait-unsubmitted-submitted.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-tglb3/igt@syncobj_wait@invalid-multi-wait-unsubmitted-submitted.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][39] ([i915#1930]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk9/igt@gem_exec_reloc@basic-concurrent0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-glk7/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [DMESG-WARN][41] ([i915#118] / [i915#95]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk9/igt@gem_exec_whisper@basic-queues-forked-all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [INCOMPLETE][43] ([i915#155]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl2/igt@i915_suspend@debugfs-reader.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-kbl7/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-c-ctm-red-to-blue:
    - shard-kbl:          [DMESG-WARN][45] ([i915#93] / [i915#95]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl7/igt@kms_color@pipe-c-ctm-red-to-blue.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-kbl3/igt@kms_color@pipe-c-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][47] ([i915#54]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-skl:          [DMESG-WARN][49] ([i915#128]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl10/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-skl1/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-hsw:          [TIMEOUT][51] -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-hsw5/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-hsw5/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][53] ([i915#79]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk6/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-glk6/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip_tiling@flip-x-tiled:
    - shard-apl:          [DMESG-WARN][57] ([i915#95]) -> [PASS][58] +10 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl7/igt@kms_flip_tiling@flip-x-tiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-apl8/igt@kms_flip_tiling@flip-x-tiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-skl:          [FAIL][59] ([i915#49]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +4 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_scaling@pipe-c-plane-scaling:
    - shard-skl:          [DMESG-WARN][63] ([i915#1982]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl9/igt@kms_plane_scaling@pipe-c-plane-scaling.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-skl10/igt@kms_plane_scaling@pipe-c-plane-scaling.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][67] ([i915#31]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl6/igt@kms_setmode@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-kbl2/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][69] ([i915#454]) -> [SKIP][70] ([i915#468])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_ccs@pipe-c-crc-primary-basic:
    - shard-hsw:          [TIMEOUT][71] -> [SKIP][72] ([fdo#109271]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-hsw5/igt@kms_ccs@pipe-c-crc-primary-basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-hsw5/igt@kms_ccs@pipe-c-crc-primary-basic.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][73] ([fdo#110321] / [fdo#110336]) -> [DMESG-FAIL][74] ([fdo#110321])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl6/igt@kms_content_protection@atomic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-apl8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          [DMESG-FAIL][75] ([fdo#110321]) -> [TIMEOUT][76] ([i915#1319])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl3/igt@kms_content_protection@legacy.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-kbl6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [DMESG-FAIL][77] ([fdo#110321] / [i915#95]) -> [TIMEOUT][78] ([i915#1319])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl2/igt@kms_content_protection@srm.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-kbl3/igt@kms_content_protection@srm.html
    - shard-apl:          [DMESG-FAIL][79] ([fdo#110321] / [i915#95]) -> [TIMEOUT][80] ([i915#1319] / [i915#1635])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl8/igt@kms_content_protection@srm.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-apl6/igt@kms_content_protection@srm.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-hsw:          [INCOMPLETE][81] ([i915#61]) -> [SKIP][82] ([fdo#109271])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-hsw5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-hsw5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][83] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][84] ([i915#93] / [i915#95])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
    - shard-apl:          [DMESG-WARN][85] ([i915#180] / [i915#95]) -> [DMESG-WARN][86] ([i915#95])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#1893]: https://gitlab.freedesktop.org/drm/intel/issues/1893
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8590 -> Patchwork_17883

  CI-20190529: 20190529
  CI_DRM_8590: 91c6f0274b54c89679cd23f6fc65e9fe5922971f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5695: 53e8c878a6fb5708e63c99403691e8960b86ea9c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17883: 00beaabc4fe051ae2d54aeba089389d20131e280 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17883/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
