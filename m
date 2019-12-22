Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D95C128FD7
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 21:35:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86C7F6E0C5;
	Sun, 22 Dec 2019 20:35:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB5896E0B6;
 Sun, 22 Dec 2019 20:35:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1C21A0BA8;
 Sun, 22 Dec 2019 20:35:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Sun, 22 Dec 2019 20:35:13 -0000
Message-ID: <157704691376.8700.13445942368131071638@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191220172754.3773-1-lucas.demarchi@intel.com>
In-Reply-To: <20191220172754.3773-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgUHJl?=
 =?utf-8?q?fer_acronym_for_prefixes?=
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

Series: Prefer acronym for prefixes
URL   : https://patchwork.freedesktop.org/series/71224/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7615_full -> Patchwork_15863_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7615_full and Patchwork_15863_full:

### New Piglit tests (3) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_double-position-float_mat4x2_array3:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dmat2_array3-double_dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-uint_uvec2-double_dmat2x4:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  

Known issues
------------

  Here are the changes found in Patchwork_15863_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#435])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb2/igt@gem_exec_reuse@single.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb9/igt@gem_exec_reuse@single.html

  * igt@gem_exec_schedule@preempt-queue-render:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([fdo#111606] / [fdo#111677])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb4/igt@gem_exec_schedule@preempt-queue-render.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb6/igt@gem_exec_schedule@preempt-queue-render.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#644])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#69])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-skl2/igt@gem_softpin@noreloc-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-skl2/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#470] / [i915#472])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb3/igt@gem_sync@basic-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb6/igt@gem_sync@basic-all.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#151] / [i915#69])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-skl8/igt@i915_pm_rpm@system-suspend-modeset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#109])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-skl8/igt@kms_color@pipe-b-ctm-0-5.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-skl9/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-random:
    - shard-hsw:          [PASS][17] -> [DMESG-WARN][18] ([IGT#6])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-hsw8/igt@kms_cursor_crc@pipe-c-cursor-256x85-random.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#54]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#34])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#123] / [i915#667])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#667])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-tglb:         [FAIL][33] ([i915#570]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb1/igt@gem_ctx_persistence@processes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb3/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][35] ([i915#461]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][37] ([fdo#111735]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][39] ([i915#82]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-snb1/igt@gem_eio@kms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-snb4/igt@gem_eio@kms.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [INCOMPLETE][41] ([i915#435]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb7/igt@gem_exec_nop@basic-sequential.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb2/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][43] ([i915#476]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb9/igt@gem_exec_parallel@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb1/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@vcs0:
    - shard-tglb:         [INCOMPLETE][45] ([fdo#111593]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb1/igt@gem_exec_parallel@vcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb2/igt@gem_exec_parallel@vcs0.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-tglb:         [INCOMPLETE][47] ([i915#530]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb6/igt@gem_persistent_relocs@forked-thrashing.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb5/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-skl:          [TIMEOUT][49] ([fdo#111732]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-skl3/igt@gem_pipe_control_store_loop@reused-buffer.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-skl3/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][51] ([i915#644]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-tglb:         [INCOMPLETE][53] ([i915#456] / [i915#460]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb5/igt@i915_suspend@fence-restore-tiled2untiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][55] ([i915#109]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-skl:          [FAIL][57] ([i915#54]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][59] ([i915#460]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - shard-snb:          [SKIP][61] ([fdo#109271]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-snb6/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-snb1/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - shard-skl:          [FAIL][63] ([i915#52] / [i915#54]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-skl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [FAIL][67] ([i915#49]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-tglb:         [DMESG-WARN][69] ([i915#766]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [INCOMPLETE][71] ([i915#667]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [DMESG-WARN][73] ([i915#402]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb7/igt@kms_psr@psr2_suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb4/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
    - shard-skl:          [INCOMPLETE][77] ([i915#69]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-skl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][79] ([i915#454]) -> [SKIP][80] ([i915#468])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb4/igt@i915_pm_dc@dc6-psr.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#766]: https://gitlab.freedesktop.org/drm/intel/issues/766
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (9 -> 10)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7615 -> Patchwork_15863

  CI-20190529: 20190529
  CI_DRM_7615: 2a3a29d061687518b6c7fa4605518fdaebac82cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15863: c9c5e8aad5a4a0b30c5b913525dfeae7e7e1e8cd @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
