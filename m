Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B87129653
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 14:14:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B74F6E2B0;
	Mon, 23 Dec 2019 13:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D46676E2AF;
 Mon, 23 Dec 2019 13:14:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C37ACA0094;
 Mon, 23 Dec 2019 13:14:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 23 Dec 2019 13:14:19 -0000
Message-ID: <157710685976.16935.7271783737089800047@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191221200109.1202310-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191221200109.1202310-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Move_i915=5Fgem=5Finit=5Fcontexts=28=29_earlier?=
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

Series: drm/i915: Move i915_gem_init_contexts() earlier
URL   : https://patchwork.freedesktop.org/series/71254/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7619_full -> Patchwork_15876_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7619_full and Patchwork_15876_full:

### New Piglit tests (16) ###

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d 32 1 1 gl_texture_cube_map 32 32 6 11 0 0 5 13 4 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_cube_map 32 32 6 11 5 0 5 9 2 14 7 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_rectangle 32 16 1 11 12 13 5 7 0 14 6 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_rectangle 32 32 1 gl_texture_1d_array 32 1 16 11 2 0 5 0 7 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_cull_distance@arb_cull_distance-max-distances:
    - Statuses : 1 fail(s)
    - Exec time: [5.91] s

  * spec@arb_texture_cube_map_array@texturesize@gs-texturesize-samplercubearray:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_texture_rg@fbo-rg-gl_r8:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_texture_rg@multisample-formats 2 gl_arb_texture_rg-float:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat4x3-position-float_vec2_array3:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dvec3_array3-double_dmat2x3-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_double_array5-uint_uvec3_array3:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@ext_framebuffer_object@fbo-copyteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@ext_framebuffer_object@fbo-generatemipmap-npot:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_texture_compression_s3tc@getteximage-targets 2d s3tc:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@ext_transform_feedback@position-render-bufferbase:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@oes_texture_float@oes_texture_float:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_15876_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +13 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#456])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-tglb3/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-tglb2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-skl3/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-skl8/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111735])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-tglb2/igt@gem_ctx_shared@q-smoketest-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-tglb6/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111736])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-tglb6/igt@gem_exec_await@wide-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-tglb6/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#435])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-tglb2/igt@gem_exec_nop@basic-parallel.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-tglb7/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111606] / [fdo#111677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#463])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_exec_suspend@basic-s3-devices:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#460])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-tglb5/igt@gem_exec_suspend@basic-s3-devices.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-tglb1/igt@gem_exec_suspend@basic-s3-devices.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#644])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#435] / [i915#472])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-tglb2/igt@gem_sync@basic-store-each.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-tglb5/igt@gem_sync@basic-store-each.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#456] / [i915#460])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-tglb1/igt@gem_workarounds@suspend-resume-fd.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-tglb1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([fdo#112057])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-tglb7/igt@i915_selftest@live_requests.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-tglb6/igt@i915_selftest@live_requests.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#109])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-skl2/igt@kms_color@pipe-b-ctm-0-75.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-skl2/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#54]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#52] / [i915#54])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-skl5/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#79]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#79])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-hsw:          [PASS][37] -> [INCOMPLETE][38] ([i915#61])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-hsw5/igt@kms_flip@flip-vs-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-hsw2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#34])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#474] / [i915#667])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#49])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#53])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-skl3/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-skl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([fdo#108145] / [i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-skl:          [INCOMPLETE][53] ([i915#69]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-skl8/igt@gem_ctx_isolation@bcs0-s3.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-skl2/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@processes:
    - shard-apl:          [FAIL][55] ([i915#570]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-apl4/igt@gem_ctx_persistence@processes.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-apl7/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-tglb:         [FAIL][57] ([i915#679]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-tglb6/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-tglb1/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [INCOMPLETE][59] ([i915#435]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-tglb6/igt@gem_exec_nop@basic-sequential.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-tglb4/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][61] ([i915#530]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_wait@write-busy-bcs0:
    - shard-skl:          [DMESG-WARN][63] ([i915#109]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-skl3/igt@gem_wait@write-busy-bcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-skl8/igt@gem_wait@write-busy-bcs0.html

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - shard-hsw:          [DMESG-WARN][65] ([IGT#6]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-hsw2/igt@kms_cursor_crc@pipe-a-cursor-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:
    - shard-skl:          [FAIL][69] ([i915#54]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][71] ([i915#460]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-tglb4/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-apl4/igt@kms_flip@flip-vs-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-apl7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [FAIL][75] ([i915#49]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-tglb:         [INCOMPLETE][77] ([i915#474] / [i915#667]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [INCOMPLETE][79] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_lease@cursor_implicit_plane:
    - shard-snb:          [SKIP][81] ([fdo#109271]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-snb4/igt@kms_lease@cursor_implicit_plane.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-snb2/igt@kms_lease@cursor_implicit_plane.html

  * igt@perf@short-reads:
    - shard-apl:          [TIMEOUT][83] ([i915#51]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-apl3/igt@perf@short-reads.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-apl1/igt@perf@short-reads.html

  
#### Warnings ####

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][85] ([i915#832]) -> [FAIL][86] ([i915#818])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7619/shard-hsw7/igt@gem_tiled_blits@interruptible.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/shard-hsw4/igt@gem_tiled_blits@interruptible.html

  
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832


Participating hosts (9 -> 10)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7619 -> Patchwork_15876

  CI-20190529: 20190529
  CI_DRM_7619: 2dddcb8e66a017f20509e48cb49d5326e4eac742 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15876: f93d586bda88cef0d65909ffc6d5cfce9a37ed87 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
