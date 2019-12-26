Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC72F12AB14
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 09:54:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C0B89B48;
	Thu, 26 Dec 2019 08:54:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5569289B38;
 Thu, 26 Dec 2019 08:54:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45405A00E6;
 Thu, 26 Dec 2019 08:54:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 26 Dec 2019 08:54:04 -0000
Message-ID: <157735044425.14822.3525957615311552228@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191223204411.2355304-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191223204411.2355304-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Add_spaces_before_compo?=
 =?utf-8?q?und_GEM=5FTRACE?=
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

Series: series starting with [1/2] drm/i915: Add spaces before compound GEM_TRACE
URL   : https://patchwork.freedesktop.org/series/71331/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7630_full -> Patchwork_15903_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15903_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15903_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15903_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_workarounds:
    - shard-apl:          [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-apl3/igt@i915_selftest@live_workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-apl4/igt@i915_selftest@live_workarounds.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7630_full and Patchwork_15903_full:

### New Piglit tests (9) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2-double_dvec3-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@ext_framebuffer_object@fbo-stencil-gl_stencil_index4-copypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2_array5-float_float-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_mat4x2-double_dmat4x2_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_vec3-position-double_dmat3x2_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.20@execution@vs_in@vs-input-int_ivec3-position-double_dmat3x4_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-4.20@execution@vs_in@vs-input-int_ivec3_array3-position-double_dvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dmat3x4-float_mat2x3_array3:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-4.20@execution@vs_in@vs-input-ushort_uint-position-double_dmat4:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  

Known issues
------------

  Here are the changes found in Patchwork_15903_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-s3:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#456])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb6/igt@gem_ctx_isolation@vcs1-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-tglb4/igt@gem_ctx_isolation@vcs1-s3.html

  * igt@gem_eio@in-flight-suspend:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#456] / [i915#460] / [i915#534])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb3/igt@gem_eio@in-flight-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-tglb7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#435])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb7/igt@gem_exec_create@madvise.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-tglb4/igt@gem_exec_create@madvise.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111606] / [fdo#111677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#463])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-tglb7/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@debugfs-reader:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#456] / [i915#460])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb7/igt@i915_suspend@debugfs-reader.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-tglb8/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - shard-hsw:          [PASS][19] -> [DMESG-WARN][20] ([IGT#6])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#460]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-glk:          [PASS][25] -> [DMESG-WARN][26] ([i915#128])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-glk2/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-glk4/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#49]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#49])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#53])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#109]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145] / [i915#265])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][43] -> [FAIL][44] ([i915#31])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-apl1/igt@kms_setmode@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-apl3/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-s3:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-kbl2/igt@gem_ctx_isolation@vcs1-s3.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-kbl6/igt@gem_ctx_isolation@vcs1-s3.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [FAIL][47] ([i915#679]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl7/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-skl4/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [INCOMPLETE][49] ([i915#469]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-tglb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][51] ([fdo#111593]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-tglb4/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][53] ([i915#470]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb9/igt@gem_exec_parallel@contexts.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-tglb2/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [INCOMPLETE][55] ([i915#435]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb7/igt@gem_exec_reuse@single.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-tglb9/igt@gem_exec_reuse@single.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][57] ([i915#109]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl4/igt@kms_color@pipe-a-ctm-0-5.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - shard-skl:          [FAIL][59] ([i915#54]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][61] ([i915#435] / [i915#456] / [i915#460]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb2/igt@kms_fbcon_fbt@fbc-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-tglb1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][63] ([i915#79]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][65] ([i915#79]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][67] ([i915#49]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][69] ([fdo#108145]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-tglb:         [INCOMPLETE][71] ([i915#456] / [i915#460]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-tglb9/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][75] ([fdo#111912] / [fdo#112080]) -> [SKIP][76] ([fdo#112080]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb1/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][77] ([i915#454]) -> [SKIP][78] ([i915#468])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7630 -> Patchwork_15903

  CI-20190529: 20190529
  CI_DRM_7630: 28a2aa0ebf1520ea8a0dd89299f7ceea80dfd96f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15903: 0e8083f32b6366df29e9383d31722eea390f9a39 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
