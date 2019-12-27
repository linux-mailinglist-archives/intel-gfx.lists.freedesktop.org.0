Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4C412BA9C
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 19:23:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D9956E461;
	Fri, 27 Dec 2019 18:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B262A6E11B;
 Fri, 27 Dec 2019 18:23:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A7320A011A;
 Fri, 27 Dec 2019 18:23:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Fri, 27 Dec 2019 18:23:08 -0000
Message-ID: <157747098865.27189.9122891510732041495@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191227095629.1796-1-vandita.kulkarni@intel.com>
In-Reply-To: <20191227095629.1796-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_support_for_mipi_dsi_cmd_mode_=28rev3=29?=
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

Series: Add support for mipi dsi cmd mode (rev3)
URL   : https://patchwork.freedesktop.org/series/69290/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7642_full -> Patchwork_15931_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15931_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15931_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15931_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:
    - shard-iclb:         [PASS][1] -> [DMESG-FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-iclb5/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-iclb4/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7642_full and Patchwork_15931_full:

### New Piglit tests (43) ###

  * spec@!opengl 2.0@vertex-program-two-side back front2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@!opengl 2.0@vertex-program-two-side back front2 back2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@!opengl 2.0@vertex-program-two-side front:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@!opengl 3.2@layered-rendering@clear-color-all-types 3d single_level:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@amd_shader_trinary_minmax@execution@built-in-functions@fs-min3-int-int-int:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_arrays_of_arrays@execution@image_store@basic-imagestore-non-const-uniform-index:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_1d_array 32 1 16 11 2 0 5 0 7 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 d=z32f_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@arb_es2_compatibility@fbo-clear-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_gpu_shader_fp64@execution@built-in-functions@gs-lessthanequal-dvec4-dvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_gpu_shader_fp64@execution@built-in-functions@vs-lessthan-dvec2-dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_pixel_buffer_object@pbo-teximage-tiling-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_shader_texture_image_samples@texturesamples@fs-isampler2dms-8:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 32 1 8 64 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_texture_cube_map_array@texturesize@fs-texturesize-samplercubearray:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_texture_multisample@texelfetch@4-fs-usampler2dms:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2x4_array3-position-double_double_array2:
    - Statuses : 1 fail(s)
    - Exec time: [6.06] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat2-position-double_dmat2:
    - Statuses : 1 fail(s)
    - Exec time: [6.18] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-ubyte_uint-short_ivec2-double_dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [6.19] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-uint_uint_array3-double_dmat2x4-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.11] s

  * spec@ext_framebuffer_multisample@draw-buffers-alpha-to-coverage 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@ext_framebuffer_multisample@draw-buffers-alpha-to-one 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@ext_framebuffer_multisample@sample-alpha-to-one 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-1.10@execution@built-in-functions@fs-op-selection-bool-bvec4-bvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-1.10@execution@interpolation@interpolation-none-gl_backsecondarycolor-flat-vertex:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@clipping@vs-clip-distance-out-param:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@interpolation@interpolation-flat-gl_frontsecondarycolor-flat-fixed:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.30@execution@interpolation@interpolation-flat-other-smooth-fixed:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.30@execution@interpolation@interpolation-noperspective-gl_backcolor-flat-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@glsl-1.30@execution@interpolation@interpolation-noperspective-gl_backsecondarycolor-flat-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-1.30@execution@interpolation@interpolation-noperspective-gl_backsecondarycolor-flat-fixed:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.30@execution@interpolation@interpolation-noperspective-gl_backsecondarycolor-flat-none:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-1.30@execution@interpolation@interpolation-noperspective-gl_frontcolor-flat-vertex:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@interpolation@interpolation-smooth-gl_backsecondarycolor-flat-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.00@execution@built-in-functions@gs-lessthanequal-dvec2-dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-4.00@execution@built-in-functions@gs-lessthanequal-dvec3-dvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-4.00@execution@built-in-functions@vs-greaterthan-dvec3-dvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-4.30@execution@built-in-functions@cs-min-uint-uint:
    - Statuses : 1 fail(s)
    - Exec time: [5.83] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-assign-lshift-ivec4-uint:
    - Statuses : 1 fail(s)
    - Exec time: [5.78] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-bitor-neg-ivec4-int:
    - Statuses : 1 fail(s)
    - Exec time: [5.83] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-bitxor-neg-abs-int-ivec2:
    - Statuses : 1 fail(s)
    - Exec time: [5.78] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-eq-float-float-using-if:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-mult-float-mat2:
    - Statuses : 1 fail(s)
    - Exec time: [5.74] s

  

Known issues
------------

  Here are the changes found in Patchwork_15931_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-skl5/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-skl9/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@i915_pm_rpm@pm-caching:
    - shard-iclb:         [PASS][5] -> [INCOMPLETE][6] ([i915#140] / [i915#189])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-iclb7/igt@i915_pm_rpm@pm-caching.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-iclb7/igt@i915_pm_rpm@pm-caching.html

  * igt@i915_selftest@mock_requests:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#198])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-skl4/igt@i915_selftest@mock_requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-skl3/igt@i915_selftest@mock_requests.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-kbl3/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-kbl2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:
    - shard-iclb:         [PASS][11] -> [INCOMPLETE][12] ([i915#140]) +25 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#52] / [i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-skl10/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-iclb:         [PASS][19] -> [INCOMPLETE][20] ([i915#123] / [i915#140]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-iclb6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-iclb8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][27] -> [INCOMPLETE][28] ([i915#140] / [i915#249])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-iclb2/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-iclb2/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-iclb:         [PASS][29] -> [INCOMPLETE][30] ([fdo#110026] / [i915#140])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-iclb6/igt@kms_rotation_crc@sprite-rotation-270.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-iclb8/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_universal_plane@universal-plane-pipe-a-functional:
    - shard-snb:          [PASS][31] -> [SKIP][32] ([fdo#109271])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-snb4/igt@kms_universal_plane@universal-plane-pipe-a-functional.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-snb2/igt@kms_universal_plane@universal-plane-pipe-a-functional.html

  * igt@prime_busy@after-bsd2:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109276])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-iclb2/igt@prime_busy@after-bsd2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-iclb6/igt@prime_busy@after-bsd2.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][35] -> [INCOMPLETE][36] ([i915#61])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-hsw7/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Possible fixes ####

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-apl:          [TIMEOUT][37] ([i915#530]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [FAIL][39] ([i915#520]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-snb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-snb6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][41] ([i915#644]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-skl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-skl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][43] ([i915#716]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-apl6/igt@gen9_exec_parse@allowed-single.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-apl6/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][45] ([i915#109]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-skl2/igt@kms_color@pipe-a-ctm-0-5.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [FAIL][47] ([i915#54]) -> [PASS][48] +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][49] ([IGT#5]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [FAIL][51] ([i915#34]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-skl3/igt@kms_flip@plain-flip-fb-recreate.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-skl5/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip_tiling@flip-to-yf-tiled:
    - shard-skl:          [FAIL][53] ([fdo#107931] / [i915#167]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-skl1/igt@kms_flip_tiling@flip-to-yf-tiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-skl6/igt@kms_flip_tiling@flip-to-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +5 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence:
    - shard-snb:          [SKIP][57] ([fdo#109271]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-snb7/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-snb4/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +5 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][61] ([i915#31]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-kbl2/igt@kms_setmode@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-kbl7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][63] ([i915#444]) -> [INCOMPLETE][64] ([i915#82])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-snb6/igt@gem_eio@kms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-snb2/igt@gem_eio@kms.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][65] ([i915#818]) -> [FAIL][66] ([i915#832])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@kms_color@pipe-b-degamma:
    - shard-iclb:         [FAIL][67] ([i915#71]) -> [INCOMPLETE][68] ([i915#140])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/shard-iclb4/igt@kms_color@pipe-b-degamma.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/shard-iclb8/igt@kms_color@pipe-b-degamma.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#107931]: https://bugs.freedesktop.org/show_bug.cgi?id=107931
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#110026]: https://bugs.freedesktop.org/show_bug.cgi?id=110026
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#167]: https://gitlab.freedesktop.org/drm/intel/issues/167
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#249]: https://gitlab.freedesktop.org/drm/intel/issues/249
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7642 -> Patchwork_15931

  CI-20190529: 20190529
  CI_DRM_7642: c040b352eb9c72e9a6a8dc830245b2ae8089a54e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15931: 9b54c292b6d72a6bd3e1fc9121d0563351ef0b24 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15931/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
