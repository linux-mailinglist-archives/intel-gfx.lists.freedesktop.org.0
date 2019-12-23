Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2D4129424
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 11:23:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F3D46E24D;
	Mon, 23 Dec 2019 10:23:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6FEBA6E24D;
 Mon, 23 Dec 2019 10:23:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 67942A0094;
 Mon, 23 Dec 2019 10:23:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Mon, 23 Dec 2019 10:23:32 -0000
Message-ID: <157709661239.16937.11919303449369568220@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191221020109.27871-1-manasi.d.navare@intel.com>
In-Reply-To: <20191221020109.27871-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5_Fixes_for_8K_tiled_displays?=
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

Series: i915 Fixes for 8K tiled displays
URL   : https://patchwork.freedesktop.org/series/71235/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7616_full -> Patchwork_15869_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7616_full and Patchwork_15869_full:

### New Piglit tests (19) ###

  * spec@arb_compute_shader@indirect-compute:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_copy_image@arb_copy_image-simple --rb-to-rb:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d 32 1 1 gl_texture_cube_map 32 32 6 11 0 0 5 13 4 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_2d_array 32 16 15 11 12 0 5 7 12 14 8 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_cube_map 32 32 6 11 5 0 5 9 2 14 7 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_rectangle 32 16 1 11 12 0 5 7 0 14 9 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_1d 32 1 1 11 23 3 5 0 0 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_rectangle 32 16 1 11 12 13 5 7 0 14 6 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_shader_atomic_counters@array-indexing:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_texture_cube_map_array@texturesize@fs-texturesize-samplercubearray:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_vec4-double_dmat3x2_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@ext_framebuffer_multisample@alpha-to-coverage-no-draw-buffer-zero 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@ext_framebuffer_multisample@alpha-to-one-dual-src-blend 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@ext_framebuffer_object@ext_framebuffer_object-mipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_framebuffer_object@fbo-generatemipmap-npot:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@ext_texture_array@fbo-generatemipmap-array s3tc_dxt1:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@ext_texture_compression_s3tc@compressedteximage gl_compressed_rgba_s3tc_dxt1_ext:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2-position-float_mat3x2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3x4-position-float_mat3x4_array3:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  

Known issues
------------

  Here are the changes found in Patchwork_15869_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([fdo#111735])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-apl6/igt@gem_eio@in-flight-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-apl6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#707]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-kbl7/igt@gem_exec_suspend@basic-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111736] / [i915#460])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb6/igt@gem_exec_suspend@basic-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-tglb7/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [PASS][11] -> [FAIL][12] ([i915#520])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-snb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#472] / [i915#707])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb1/igt@gem_sync@basic-each.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-tglb7/igt@gem_sync@basic-each.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb5/igt@gem_sync@basic-store-all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-tglb2/igt@gem_sync@basic-store-all.html

  * igt@gem_tiled_blits@interruptible:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#435])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb3/igt@gem_tiled_blits@interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-tglb6/igt@gem_tiled_blits@interruptible.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#88])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-skl7/igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-skl7/igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#435] / [i915#456] / [i915#460])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb3/igt@kms_fbcon_fbt@fbc-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-tglb3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#79])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-tglb:         [PASS][31] -> [DMESG-WARN][32] ([i915#766])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][33] -> [FAIL][34] ([i915#49]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#123] / [i915#667])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_plane@pixel-format-pipe-c-planes-source-clamping:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#109])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-skl8/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-skl5/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#456] / [i915#460]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-tglb2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  
#### Possible fixes ####

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][41] ([i915#435]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb9/igt@gem_exec_nop@basic-series.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-tglb4/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_schedule@preempt-queue-chain-render:
    - shard-tglb:         [INCOMPLETE][43] ([fdo#111606] / [fdo#111677]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-render.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-tglb2/igt@gem_exec_schedule@preempt-queue-chain-render.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-tglb:         [TIMEOUT][45] ([fdo#112126] / [i915#530]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb5/igt@gem_persistent_relocs@forked-thrashing.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-tglb1/igt@gem_persistent_relocs@forked-thrashing.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-glk:          [DMESG-WARN][47] ([i915#716]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-glk2/igt@gen9_exec_parse@allowed-all.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-glk3/igt@gen9_exec_parse@allowed-all.html
    - shard-kbl:          [DMESG-WARN][49] ([i915#716]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-kbl2/igt@gen9_exec_parse@allowed-all.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-kbl7/igt@gen9_exec_parse@allowed-all.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][51] ([i915#716]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-apl3/igt@gen9_exec_parse@allowed-single.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-apl8/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-hsw:          [DMESG-WARN][53] ([IGT#6]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-hsw5/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [FAIL][55] ([i915#54]) -> [PASS][56] +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][57] ([i915#72]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-glk4/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-glk1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - shard-skl:          [INCOMPLETE][59] ([i915#646]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-skl5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-tglb:         [INCOMPLETE][61] ([i915#667]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb2/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-tglb2/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - shard-skl:          [FAIL][63] ([i915#52] / [i915#54]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-untiled:
    - shard-kbl:          [INCOMPLETE][65] ([fdo#103665] / [i915#667]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-kbl4/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-kbl6/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +5 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [FAIL][69] ([i915#49]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72] +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
    - shard-tglb:         [INCOMPLETE][73] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][75] ([i915#648]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][77] ([fdo#108145] / [i915#265]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][79] ([i915#31]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-glk1/igt@kms_setmode@basic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-glk2/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][81] ([i915#31]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-kbl6/igt@kms_setmode@basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-kbl2/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][83] ([i915#82]) -> [DMESG-WARN][84] ([i915#444])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-snb4/igt@gem_eio@kms.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-snb2/igt@gem_eio@kms.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][85] ([i915#832]) -> [FAIL][86] ([i915#818])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-hsw4/igt@gem_tiled_blits@interruptible.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-hsw1/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-snb:          [INCOMPLETE][87] ([i915#82]) -> [SKIP][88] ([fdo#109271])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-snb1/igt@i915_pm_dc@dc5-dpms.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-snb4/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][89] ([i915#468]) -> [FAIL][90] ([i915#454])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@mock_requests:
    - shard-apl:          [INCOMPLETE][91] ([fdo#103927] / [i915#873]) -> [DMESG-WARN][92] ([i915#873])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-apl4/igt@i915_selftest@mock_requests.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-apl3/igt@i915_selftest@mock_requests.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][93], [FAIL][94]) ([fdo#103665] / [i915#716]) -> [FAIL][95] ([fdo#103665] / [i915#873])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-kbl2/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-kbl4/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-kbl2/igt@runner@aborted.html
    - shard-apl:          ([FAIL][96], [FAIL][97]) ([i915#716] / [i915#873]) -> [FAIL][98] ([i915#873])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-apl3/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-apl4/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-apl3/igt@runner@aborted.html
    - shard-glk:          ([FAIL][99], [FAIL][100]) ([k.org#202321]) -> [FAIL][101] ([i915#873] / [k.org#202321])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-glk2/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-glk1/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-glk2/igt@runner@aborted.html
    - shard-skl:          [FAIL][102] ([i915#69]) -> ([FAIL][103], [FAIL][104]) ([i915#69] / [i915#873])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-skl10/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-skl8/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/shard-skl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#766]: https://gitlab.freedesktop.org/drm/intel/issues/766
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#873]: https://gitlab.freedesktop.org/drm/intel/issues/873
  [i915#88]: https://gitlab.freedesktop.org/drm/intel/issues/88
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7616 -> Patchwork_15869

  CI-20190529: 20190529
  CI_DRM_7616: 81105b549355270c1d15073dc7f7b137cdc3d5c4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15869: 97197e6a3f19b64a55f1400ad22d5cbcceb04b5d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15869/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
