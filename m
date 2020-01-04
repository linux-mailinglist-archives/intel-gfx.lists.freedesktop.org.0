Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7781512FF72
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Jan 2020 01:13:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E80476E393;
	Sat,  4 Jan 2020 00:13:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 43ABB6E388;
 Sat,  4 Jan 2020 00:13:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3AF3AA0114;
 Sat,  4 Jan 2020 00:13:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 04 Jan 2020 00:13:10 -0000
Message-ID: <157809679023.3249.13015201121071110779@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200103121505.1862904-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200103121505.1862904-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gem=3A_Extend_mmap_support?=
 =?utf-8?q?_for_lmem?=
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

Series: series starting with [1/2] drm/i915/gem: Extend mmap support for lmem
URL   : https://patchwork.freedesktop.org/series/71601/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7673_full -> Patchwork_15986_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15986_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@!opengl 1.5@vertex-buffer-offsets (NEW):
    - {pig-hsw-4770r}:    NOTRUN -> [WARN][1]
   [1]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_7673_full and Patchwork_15986_full:

### New Piglit tests (37) ###

  * shaders@glsl-vs-vec4-indexing-temp-dst-in-loop:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.1@depthstencil-default_fb-clear samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@!opengl 1.1@depthstencil-default_fb-readpixels-24_8:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@depthstencil-default_fb-readpixels-32f_24_8_rev samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.1@gl-1.1-xor-copypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@gl-1.2-texture-base-level:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@texture-al:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.5@vertex-buffer-offsets:
    - Statuses : 1 warn(s)
    - Exec time: [0.10] s

  * spec@amd_shader_trinary_minmax@execution@built-in-functions@fs-min3-int-int-int:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d 32 1 1 gl_texture_rectangle 32 32 1 11 0 0 5 13 0 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_depth_buffer_float@fbo-depth-gl_depth_component32f-tex1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_depth_buffer_float@fbo-stencil-gl_depth32f_stencil8-copypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_gpu_shader5@execution@sampler_array_indexing@gs-weird-uniforms:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_gpu_shader5@execution@sampler_array_indexing@vs-struct-nonconst:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_gpu_shader_fp64@execution@built-in-functions@fs-greaterthanequal-dvec4-dvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_gpu_shader_fp64@execution@glsl-uniform-initializer-3:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_pixel_buffer_object@pbo-drawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_shader_image_load_store@restrict:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat4x3-position-float_mat2_array3:
    - Statuses : 1 fail(s)
    - Exec time: [5.81] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_int-double_dmat3x2-position:
    - Statuses : 1 fail(s)
    - Exec time: [5.76] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_ivec3-double_dvec4-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dvec2-float_mat3:
    - Statuses : 1 fail(s)
    - Exec time: [5.64] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ushort_uvec4-double_dvec3-position:
    - Statuses : 1 fail(s)
    - Exec time: [5.52] s

  * spec@ext_texture_compression_s3tc@s3tc-targeted:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-1.10@execution@glsl-1.10-built-in-matrix-state:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@glsl-1.10@execution@glsl-render-after-bad-attach:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-1.10@execution@varying-packing@simple ivec4 arrays_of_arrays:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.30@execution@built-in-functions@fs-clamp-ivec2-int-int:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.30@execution@interpolation@interpolation-flat-gl_frontcolor-flat-fixed:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.00@execution@built-in-functions@fs-lessthan-dvec2-dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.00@execution@built-in-functions@gs-greaterthan-dvec3-dvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat4x3-position-double_dvec2_array2:
    - Statuses : 1 fail(s)
    - Exec time: [6.64] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_mat3-double_dvec3-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.61] s

  * spec@glsl-4.20@execution@vs_in@vs-input-int_ivec3-double_dmat3x4-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dmat2-uint_uvec2:
    - Statuses : 1 fail(s)
    - Exec time: [6.44] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dvec3_array5-int_ivec2_array3:
    - Statuses : 1 fail(s)
    - Exec time: [6.62] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-gt-float-float:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  

Known issues
------------

  Here are the changes found in Patchwork_15986_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [PASS][2] -> [FAIL][3] ([i915#679]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl1/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-skl5/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#109276] / [fdo#112080])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb4/igt@gem_ctx_persistence@vcs1-cleanup.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-iclb3/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [PASS][6] -> [FAIL][7] ([i915#490])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-snb5/igt@gem_eio@in-flight-contexts-1us.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-snb5/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#112146]) +7 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb7/igt@gem_exec_async@concurrent-writes-bsd.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_basic@basic-vcs1:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#112080]) +7 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb4/igt@gem_exec_basic@basic-vcs1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-iclb3/igt@gem_exec_basic@basic-vcs1.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([i915#435])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb7/igt@gem_exec_nop@basic-series.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-tglb5/igt@gem_exec_nop@basic-series.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] ([i915#472] / [i915#707])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb7/igt@gem_sync@basic-each.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-tglb8/igt@gem_sync@basic-each.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][16] -> [FAIL][17] ([i915#454])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [PASS][18] -> [DMESG-WARN][19] ([i915#109])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl9/igt@kms_color@pipe-a-ctm-0-25.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-skl1/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][20] -> [DMESG-WARN][21] ([i915#180]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][22] -> [INCOMPLETE][23] ([i915#69])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#46])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][26] -> [FAIL][27] ([i915#49]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([fdo#108145])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@enable-race-vcs1:
    - shard-tglb:         [PASS][32] -> [INCOMPLETE][33] ([i915#435] / [i915#923])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb2/igt@perf_pmu@enable-race-vcs1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-tglb9/igt@perf_pmu@enable-race-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#109276]) +22 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-iclb7/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-iclb:         [DMESG-WARN][36] ([fdo#111764]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb1/igt@gem_ctx_isolation@rcs0-s3.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-iclb6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][38] ([fdo#109276] / [fdo#112080]) -> [PASS][39] +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb5/igt@gem_ctx_isolation@vcs1-none.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-iclb4/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][40] ([fdo#111735]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][42] ([i915#82]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-snb7/igt@gem_eio@kms.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-snb6/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@smoke:
    - shard-tglb:         [INCOMPLETE][44] ([fdo#111593]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb1/igt@gem_exec_balancer@smoke.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-tglb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][46] ([i915#470]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb8/igt@gem_exec_parallel@fds.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-tglb7/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [INCOMPLETE][48] ([fdo#111606] / [fdo#111677]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [SKIP][50] ([fdo#112146]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-iclb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_linear_blits@interruptible:
    - shard-glk:          [DMESG-WARN][52] ([i915#667]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-glk7/igt@gem_linear_blits@interruptible.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-glk1/igt@gem_linear_blits@interruptible.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][54] ([i915#530]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-iclb1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][56] ([i915#435] / [i915#472]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb3/igt@gem_sync@basic-store-each.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-tglb1/igt@gem_sync@basic-store-each.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-skl:          [DMESG-WARN][58] ([i915#716]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl6/igt@gen9_exec_parse@allowed-single.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-skl9/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-apl:          [FAIL][60] ([i915#54]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][62] ([IGT#5]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-skl:          [FAIL][64] ([i915#52] / [i915#54]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][66] ([i915#221]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl1/igt@kms_flip@flip-vs-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-skl7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][68] ([i915#180]) -> [PASS][69] +4 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-skl:          [FAIL][70] ([i915#49]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][72] ([i915#180]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-skl:          [FAIL][74] ([i915#247]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl3/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-skl8/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][76] ([fdo#108145]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][78] ([fdo#108145] / [i915#265]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][80] ([fdo#109441]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb7/igt@kms_psr@psr2_primary_blt.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [DMESG-WARN][82] ([i915#402]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb1/igt@kms_psr@psr2_suspend.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-tglb9/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][84] ([i915#31]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl9/igt@kms_setmode@basic.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-skl1/igt@kms_setmode@basic.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][86] ([fdo#112080]) -> [PASS][87] +9 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb7/igt@perf_pmu@init-busy-vcs1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][88] ([fdo#109276]) -> [PASS][89] +13 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][90] ([fdo#109276] / [fdo#112080]) -> [FAIL][91] ([IGT#28])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_ctx_isolation@vcs2-reset:
    - shard-tglb:         [SKIP][92] ([fdo#112080]) -> [SKIP][93] ([fdo#111912] / [fdo#112080]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb9/igt@gem_ctx_isolation@vcs2-reset.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/shard-tglb6/igt@gem_ctx_isolation@vcs2-reset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#923]: https://gitlab.freedesktop.org/drm/intel/issues/923


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7673 -> Patchwork_15986

  CI-20190529: 20190529
  CI_DRM_7673: 6e3335ed7b56aaf9d55ddf51cddea4d844dc3a78 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15986: e550fd5b9f6cf15f7f0b869ba29ae4e61b2d7c54 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
