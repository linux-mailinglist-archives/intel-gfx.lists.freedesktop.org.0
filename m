Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 484CD12DD4A
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 03:00:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C12BB6E2AF;
	Wed,  1 Jan 2020 02:00:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AA26F6E2A8;
 Wed,  1 Jan 2020 02:00:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1168A0003;
 Wed,  1 Jan 2020 02:00:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 01 Jan 2020 02:00:22 -0000
Message-ID: <157784402262.5188.1636634438885296783@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191226174636.244584-1-matthew.d.roper@intel.com>
In-Reply-To: <20191226174636.244584-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_Wa=5F1407352427=3Aicl=2Cehl_=28rev4=29?=
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

Series: drm/i915: Add Wa_1407352427:icl,ehl (rev4)
URL   : https://patchwork.freedesktop.org/series/71403/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7659_full -> Patchwork_15958_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15958_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_schedule@pi-common-bsd1}:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb1/igt@gem_exec_schedule@pi-common-bsd1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-tglb5/igt@gem_exec_schedule@pi-common-bsd1.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@ext_framebuffer_multisample_blit_scaled@blit-scaled samples=8 with gl_texture_2d_multisample_array (NEW):
    - {pig-hsw-4770r}:    NOTRUN -> [WARN][3]
   [3]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_7659_full and Patchwork_15958_full:

### New Piglit tests (47) ###

  * shaders@glsl-derivs-abs:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * shaders@glsl-uniform-struct:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@depthstencil-default_fb-blit samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.1@depthstencil-default_fb-clear samples=8:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@depthstencil-default_fb-readpixels-24_8 samples=8:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@!opengl 1.1@depthstencil-default_fb-readpixels-float-and-ushort samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.1@depthstencil-default_fb-readpixels-float-and-ushort samples=8:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 1.1@fragment-center:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 1.1@gl-1.1-read-pixels-after-display-list:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.1@gl-1.1-xor-copypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.1@infinite-spot-light:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@line-aa-width:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.1@texture-al:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@arb_arrays_of_arrays@execution@ubo@fs-nonconst:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 d=z32f_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@arb_depth_buffer_float@fbo-clear-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_texture_multisample@large-float-texture-fp16:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@arb_texture_multisample@texelfetch@4-fs-isampler2dms:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@ext_framebuffer_multisample@blit-multiple-render-targets 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@ext_framebuffer_multisample_blit_scaled@blit-scaled samples=8 with gl_texture_2d_multisample_array:
    - Statuses : 1 warn(s)
    - Exec time: [0.17] s

  * spec@glsl-1.10@execution@built-in-functions@fs-op-selection-bool-bvec4-bvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.30@execution@fs-texturelod-miplevels-biased:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-1.30@execution@interpolation@interpolation-flat-gl_backcolor-flat-vertex:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.30@execution@interpolation@interpolation-none-other-flat-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.30@execution@interpolation@interpolation-noperspective-gl_backsecondarycolor-flat-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-1.30@execution@interpolation@interpolation-smooth-gl_frontcolor-smooth-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.50@execution@variable-indexing@vs-output-array-float-index-wr-before-gs:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@glsl-4.00@execution@built-in-functions@fs-notequal-dvec4-dvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-4.00@execution@built-in-functions@gs-greaterthanequal-dvec4-dvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-4.10@execution@vs_in@vs-input-position-int_ivec4_array3-double_double_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2-int_ivec4_array3-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.59] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2_array5-float_mat2x3-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.64] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3-position-double_dvec4_array2:
    - Statuses : 1 fail(s)
    - Exec time: [6.49] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dvec3-position-float_vec3_array3:
    - Statuses : 1 fail(s)
    - Exec time: [6.67] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dvec4_array5-position-float_mat2x3:
    - Statuses : 1 fail(s)
    - Exec time: [6.62] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_mat2x4_array3-position-double_dmat2x3:
    - Statuses : 1 fail(s)
    - Exec time: [6.65] s

  * spec@glsl-4.20@execution@vs_in@vs-input-int_int-position-double_dmat4:
    - Statuses : 1 fail(s)
    - Exec time: [6.70] s

  * spec@glsl-4.20@execution@vs_in@vs-input-int_ivec2-position-double_dmat3_array2:
    - Statuses : 1 fail(s)
    - Exec time: [6.68] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dmat4x2-float_float:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dvec3_array5-float_vec3_array3:
    - Statuses : 1 fail(s)
    - Exec time: [6.56] s

  * spec@glsl-4.30@execution@built-in-functions@cs-lessthan-vec3-vec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-4.30@execution@built-in-functions@cs-lessthanequal-uvec4-uvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-eq-mat4x3-mat4x3:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-ge-float-float:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-ge-uint-uint:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-ne-ivec2-ivec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@oes_viewport_array@scissor-check:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_15958_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#112080]) +12 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_create@basic-files:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([fdo#111735])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb5/igt@gem_ctx_create@basic-files.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-tglb6/igt@gem_ctx_create@basic-files.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [PASS][8] -> [FAIL][9] ([i915#679])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl6/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-skl8/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#109276] / [fdo#112080])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([i915#534])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb5/igt@gem_eio@in-flight-contexts-10ms.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-tglb5/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#110854])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [PASS][16] -> [INCOMPLETE][17] ([i915#435])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb7/igt@gem_exec_create@madvise.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-tglb3/igt@gem_exec_create@madvise.html

  * igt@gem_exec_schedule@preempt-other-bsd:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#112146]) +3 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb6/igt@gem_exec_schedule@preempt-other-bsd.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-iclb4/igt@gem_exec_schedule@preempt-other-bsd.html

  * igt@gem_exec_schedule@smoketest-blt:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([i915#470]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb2/igt@gem_exec_schedule@smoketest-blt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-tglb3/igt@gem_exec_schedule@smoketest-blt.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#470] / [i915#472])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb2/igt@gem_sync@basic-all.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-tglb7/igt@gem_sync@basic-all.html

  * igt@i915_selftest@live_gt_mocs:
    - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([fdo#112346])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb6/igt@i915_selftest@live_gt_mocs.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-tglb8/igt@i915_selftest@live_gt_mocs.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:
    - shard-glk:          [PASS][26] -> [FAIL][27] ([i915#54])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-glk6/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-xtiled:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#52] / [i915#54]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-xtiled.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-xtiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][30] -> [INCOMPLETE][31] ([i915#69])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#79])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][34] -> [DMESG-WARN][35] ([i915#180]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][36] -> [FAIL][37] ([i915#49])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([fdo#108145])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109441]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][42] -> [DMESG-WARN][43] ([i915#180]) +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_vgem@wait-bsd2:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109276]) +13 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb2/igt@prime_vgem@wait-bsd2.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-iclb7/igt@prime_vgem@wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][46] ([fdo#109276] / [fdo#112080]) -> [PASS][47] +3 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb8/igt@gem_ctx_isolation@vcs1-none.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-iclb4/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-tglb:         [FAIL][48] ([i915#679]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb7/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-tglb1/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [FAIL][50] ([i915#679]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl1/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-skl8/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][52] ([i915#461]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-tglb8/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][54] ([fdo#111735]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb2/igt@gem_ctx_shared@q-smoketest-vebox.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-tglb1/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][56] ([fdo#109276]) -> [PASS][57] +11 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][58] ([i915#677]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][60] ([fdo#112146]) -> [PASS][61] +4 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-tglb:         [INCOMPLETE][62] ([fdo#111606] / [fdo#111677]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][64] ([i915#716]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-apl6/igt@gen9_exec_parse@allowed-single.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-apl8/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][66] ([i915#413]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb8/igt@i915_pm_rps@reset.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-iclb4/igt@i915_pm_rps@reset.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-skl:          [FAIL][68] ([i915#54]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][70] ([i915#79]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][72] ([i915#49]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-skl:          [FAIL][74] ([i915#49]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [DMESG-WARN][76] ([i915#180]) -> [PASS][77] +3 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][78] ([i915#180]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][80] ([fdo#108145]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][82] ([fdo#108145] / [i915#265]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][84] ([fdo#109642] / [fdo#111068]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb8/igt@kms_psr2_su@page_flip.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][86] ([fdo#109441]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb6/igt@kms_psr@psr2_no_drrs.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@perf@oa-exponents:
    - shard-glk:          [FAIL][88] ([i915#84]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-glk5/igt@perf@oa-exponents.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-glk8/igt@perf@oa-exponents.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][90] ([fdo#112080]) -> [PASS][91] +7 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb8/igt@perf_pmu@busy-vcs1.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-iclb2/igt@perf_pmu@busy-vcs1.html

  * igt@perf_pmu@most-busy-idle-check-all-rcs0:
    - shard-tglb:         [INCOMPLETE][92] -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb5/igt@perf_pmu@most-busy-idle-check-all-rcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-tglb8/igt@perf_pmu@most-busy-idle-check-all-rcs0.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][94] ([IGT#28]) -> [SKIP][95] ([fdo#109276] / [fdo#112080])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][96] ([fdo#107724]) -> [SKIP][97] ([fdo#109349])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112346]: https://bugs.freedesktop.org/show_bug.cgi?id=112346
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7659 -> Patchwork_15958

  CI-20190529: 20190529
  CI_DRM_7659: bc7f03590ed801bb911de587835ff9547ae63fbc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5356: 62146738c68abfa7497b023a049163932f5a9aa0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15958: 6c29c9ffce2b1f70a4092de9514083d6a8c3a6b1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
