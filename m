Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D41E91251FB
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 20:37:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7D516EA5F;
	Wed, 18 Dec 2019 19:37:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B5C8D6EA5F;
 Wed, 18 Dec 2019 19:37:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ADC02A0075;
 Wed, 18 Dec 2019 19:37:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 18 Dec 2019 19:37:46 -0000
Message-ID: <157669786668.8354.4369085363730393533@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191218014208.7916-1-lucas.demarchi@intel.com>
In-Reply-To: <20191218014208.7916-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZGlz?=
 =?utf-8?q?play=3A_prefer_3-letter_acronym?=
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

Series: display: prefer 3-letter acronym
URL   : https://patchwork.freedesktop.org/series/71079/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7591_full -> Patchwork_15822_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15822_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@ext_texture_compression_s3tc@fbo-generatemipmap-formats (NEW):
    - {pig-hsw-4770r}:    NOTRUN -> [FAIL][1] +51 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/pig-hsw-4770r/spec@ext_texture_compression_s3tc@fbo-generatemipmap-formats.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7591_full and Patchwork_15822_full:

### New Piglit tests (52) ###

  * spec@arb_copy_buffer@overlap:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d_array 32 1 12 gl_texture_2d_array 32 16 18 11 0 3 5 9 7 14 1 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d_array 32 1 12 gl_texture_3d 32 16 18 11 0 3 5 9 2 14 1 7:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d_array 32 1 12 gl_texture_cube_map_array 32 32 18 11 0 3 5 17 2 14 1 7:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_2d_array 32 16 15 11 12 0 5 7 12 14 8 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_3d 32 16 18 11 5 0 5 9 7 14 7 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_rectangle 32 16 1 11 12 0 5 7 0 14 9 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_1d 32 1 1 11 23 7 5 0 0 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_1d_array 32 1 16 11 2 5 5 0 7 14 1 7:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_2d_array 32 16 15 11 12 5 5 7 2 14 9 9:
    - Statuses : 1 fail(s)
    - Exec time: [0.27] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_3d 32 16 18 11 5 2 5 9 7 14 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_cube_map 32 32 6 11 5 1 5 9 2 14 7 3:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_cube_map_array 32 32 18 11 5 2 5 9 7 14 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_2d_array 32 16 15 11 12 1 5 3 2 14 11 4:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_3d 32 16 18 11 5 0 5 9 7 14 7 4:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_cube_map 32 32 6 11 5 1 5 9 2 14 7 3:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_cube_map_array 32 32 18 11 5 1 5 9 9 14 7 5:
    - Statuses : 1 fail(s)
    - Exec time: [0.28] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_1d 32 1 1 11 23 7 5 0 0 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_1d_array 32 1 16 11 2 5 5 0 7 14 1 7:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_2d 32 16 1 11 12 13 5 7 0 14 8 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-unorm-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.71] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-2-unorm-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.69] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rg-0-float-2d:
    - Statuses : 1 fail(s)
    - Exec time: [7.34] s

  * spec@arb_texture_cube_map_array@fbo-generatemipmap-cubemap array:
    - Statuses : 1 fail(s)
    - Exec time: [0.70] s

  * spec@arb_texture_cube_map_array@texturesize@fs-texturesize-isamplercubearray:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_texture_cube_map_array@texturesize@tes-texturesize-isamplercubearray:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_texture_cube_map_array@texturesize@vs-texturesize-samplercubearray:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_texture_float@multisample-formats 2 gl_arb_texture_float:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@arb_texture_rg@fbo-clear-formats-float:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_texture_rg@multisample-formats 4 gl_arb_texture_rg:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@arb_texture_rg@multisample-formats 6 gl_arb_texture_rg:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_texture_rg@multisample-formats 8 gl_arb_texture_rg:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@arb_texture_rg@texwrap formats-float bordercolor:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_ivec3-position-double_dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@ext_packed_float@texwrap formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@ext_texture_array@fbo-depth-array depth-clear:
    - Statuses : 1 fail(s)
    - Exec time: [26.74] s

  * spec@ext_texture_array@fbo-depth-array depth-draw:
    - Statuses : 1 fail(s)
    - Exec time: [21.70] s

  * spec@ext_texture_array@fbo-depth-array depth-layered-clear:
    - Statuses : 1 fail(s)
    - Exec time: [21.61] s

  * spec@ext_texture_array@fbo-depth-array fs-writes-depth:
    - Statuses : 1 fail(s)
    - Exec time: [22.18] s

  * spec@ext_texture_array@fbo-depth-array stencil-clear:
    - Statuses : 1 fail(s)
    - Exec time: [16.33] s

  * spec@ext_texture_compression_rgtc@texwrap formats bordercolor:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_texture_compression_s3tc@compressedteximage gl_compressed_rgba_s3tc_dxt1_ext:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@ext_texture_compression_s3tc@fbo-generatemipmap-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@ext_texture_compression_s3tc@getteximage-targets cube_array s3tc:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@ext_texture_compression_s3tc@texwrap formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@ext_texture_swizzle@ext_texture_swizzle-swizzle:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@ext_transform_feedback@order elements triangles:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@ext_transform_feedback@position-readback-bufferoffset-discard:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.50@execution@texelfetchoffset@gs-texelfetch-sampler1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dvec4_array5-uint_uvec4_array3-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-4.20@execution@vs_in@vs-input-uint_uvec2-position-double_dvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@nv_conditional_render@generatemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  

Known issues
------------

  Here are the changes found in Patchwork_15822_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [PASS][2] -> [DMESG-WARN][3] ([i915#180])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-tglb:         [PASS][4] -> [INCOMPLETE][5] ([i915#456])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb6/igt@gem_ctx_isolation@vcs0-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb3/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-apl:          [PASS][6] -> [FAIL][7] ([i915#679])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-apl1/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-apl1/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-iclb5/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@exec-shared-gtt-bsd1:
    - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#616])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb9/igt@gem_ctx_shared@exec-shared-gtt-bsd1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb6/igt@gem_ctx_shared@exec-shared-gtt-bsd1.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#110841])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112146]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-iclb8/igt@gem_exec_async@concurrent-writes-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-iclb4/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_parallel@vecs0:
    - shard-tglb:         [PASS][16] -> [INCOMPLETE][17] ([fdo#111736])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb7/igt@gem_exec_parallel@vecs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb4/igt@gem_exec_parallel@vecs0.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#109276]) +4 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-iclb2/igt@gem_exec_schedule@fifo-bsd1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-iclb5/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-chain-render:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([fdo#111606] / [fdo#111677])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb5/igt@gem_exec_schedule@preempt-queue-chain-render.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-render.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-tglb:         [PASS][22] -> [TIMEOUT][23] ([fdo#112126] / [i915#530])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb3/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb2/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-snb:          [PASS][24] -> [DMESG-WARN][25] ([fdo#111870])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-snb7/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#454])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [PASS][28] -> [INCOMPLETE][29] ([i915#455])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb7/igt@i915_selftest@live_gt_timelines.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb1/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +4 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-kbl3/igt@i915_suspend@forcewake.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-kbl2/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#54]) +5 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][34] -> [FAIL][35] ([i915#49])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
    - shard-kbl:          [PASS][36] -> [INCOMPLETE][37] ([fdo#103665] / [i915#667])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [PASS][38] -> [INCOMPLETE][39] ([i915#667])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
    - shard-iclb:         [PASS][40] -> [INCOMPLETE][41] ([i915#123] / [i915#140])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-iclb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-iclb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-c:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#53])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-skl9/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-kbl:          [PASS][44] -> [INCOMPLETE][45] ([fdo#103665] / [i915#435] / [i915#648] / [i915#667])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-kbl1/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-kbl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([fdo#108145] / [i915#265])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([fdo#108145]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-tglb:         [PASS][50] -> [FAIL][51] ([fdo#111842] / [i915#608])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb3/igt@kms_psr2_su@frontbuffer.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([fdo#109441])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-iclb3/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][54] -> [FAIL][55] ([i915#31])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-apl8/igt@kms_setmode@basic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-apl7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][56] -> [INCOMPLETE][57] ([i915#456] / [i915#460]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf@oa-exponents:
    - shard-tglb:         [PASS][58] -> [FAIL][59] ([i915#84])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb3/igt@perf@oa-exponents.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb6/igt@perf@oa-exponents.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][60] -> [SKIP][61] ([fdo#112080]) +4 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-iclb2/igt@perf_pmu@busy-vcs1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-iclb5/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][62] ([fdo#111593]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb6/igt@gem_exec_gttfill@basic.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb1/igt@gem_exec_gttfill@basic.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][64] ([i915#677]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-blt:
    - shard-tglb:         [INCOMPLETE][66] ([fdo#111677]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb6/igt@gem_exec_schedule@preempt-queue-blt.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb5/igt@gem_exec_schedule@preempt-queue-blt.html

  * igt@gem_exec_schedule@preempt-self-bsd:
    - shard-iclb:         [SKIP][68] ([fdo#112146]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-iclb4/igt@gem_exec_schedule@preempt-self-bsd.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-iclb8/igt@gem_exec_schedule@preempt-self-bsd.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][70] ([i915#707]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb4/igt@gem_exec_schedule@smoketest-vebox.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb7/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_flink_race@flink_name:
    - shard-iclb:         [INCOMPLETE][72] ([i915#140]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-iclb7/igt@gem_flink_race@flink_name.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-iclb1/igt@gem_flink_race@flink_name.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-iclb:         [TIMEOUT][74] ([i915#530]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-iclb8/igt@gem_persistent_relocs@forked-thrashing.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-iclb5/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][76] ([i915#435] / [i915#472]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb9/igt@gem_sync@basic-store-each.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb9/igt@gem_sync@basic-store-each.html

  * igt@gem_userptr_blits@sync-unmap:
    - shard-snb:          [DMESG-WARN][78] ([fdo#111870]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-snb6/igt@gem_userptr_blits@sync-unmap.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-snb4/igt@gem_userptr_blits@sync-unmap.html

  * igt@gem_wait@write-busy-vcs1:
    - shard-iclb:         [SKIP][80] ([fdo#112080]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-iclb8/igt@gem_wait@write-busy-vcs1.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-iclb1/igt@gem_wait@write-busy-vcs1.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][82] ([i915#180]) -> [PASS][83] +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-apl4/igt@gem_workarounds@suspend-resume.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-apl2/igt@gem_workarounds@suspend-resume.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][84] ([i915#180]) -> [PASS][85] +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-glk:          [DMESG-WARN][86] ([i915#716]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-glk4/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [DMESG-WARN][88] ([i915#747]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-skl2/igt@i915_selftest@mock_sanitycheck.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-skl1/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-tglb:         [DMESG-WARN][90] ([i915#851]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb2/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - shard-skl:          [FAIL][92] ([i915#54]) -> [PASS][93] +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - shard-tglb:         [INCOMPLETE][94] ([i915#667]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][96] ([i915#79]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-tglb:         [INCOMPLETE][98] ([i915#456] / [i915#460] / [i915#516]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb9/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [FAIL][100] ([i915#49]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-kbl:          [INCOMPLETE][102] ([fdo#103665] / [i915#648] / [i915#667]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-kbl2/igt@kms_plane@pixel-format-pipe-a-planes.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-kbl2/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-tglb:         [INCOMPLETE][104] ([i915#456] / [i915#460]) -> [PASS][105] +2 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-tglb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-tglb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][106] ([fdo#109441]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-iclb4/igt@kms_psr@psr2_primary_mmap_gtt.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-snb:          [SKIP][108] ([fdo#109271]) -> [PASS][109] +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-snb5/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-snb6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][110] ([fdo#109276]) -> [PASS][111] +6 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][112] ([fdo#109276] / [fdo#112080]) -> [FAIL][113] ([IGT#28])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111842]: https://bugs.freedesktop.org/show_bug.cgi?id=111842
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#1121

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
