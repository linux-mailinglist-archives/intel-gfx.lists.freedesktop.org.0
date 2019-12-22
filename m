Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF674128E42
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 14:41:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19B416E118;
	Sun, 22 Dec 2019 13:41:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 77F856E118;
 Sun, 22 Dec 2019 13:41:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6F9CAA0119;
 Sun, 22 Dec 2019 13:41:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Sun, 22 Dec 2019 13:41:18 -0000
Message-ID: <157702207843.8697.16685946770369035365@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191220152954.83276-1-jose.souza@intel.com>
In-Reply-To: <20191220152954.83276-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/7=5D_drm/i915=3A_Introduce_intel=5F?=
 =?utf-8?b?Y3J0Y19zdGF0ZV9hbGxvYygp?=
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

Series: series starting with [v5,1/7] drm/i915: Introduce intel_crtc_state_alloc()
URL   : https://patchwork.freedesktop.org/series/71221/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7614_full -> Patchwork_15861_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15861_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15861_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15861_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled.html

  
#### Warnings ####

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [INCOMPLETE][2] ([i915#82]) -> [DMESG-WARN][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-snb1/igt@i915_selftest@mock_requests.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-snb4/igt@i915_selftest@mock_requests.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][4], [FAIL][5]) ([i915#716]) -> [FAIL][6]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-apl4/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-apl8/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-apl8/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7614_full and Patchwork_15861_full:

### New Piglit tests (140) ###

  * shaders@glsl-kwin-blur-2:
    - Statuses : 1 fail(s)
    - Exec time: [6.32] s

  * spec@!opengl 1.0@gl-1.0-logicop:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@!opengl 1.0@gl-1.0-no-op-paths:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@!opengl 1.0@gl-1.0-readpixsanity:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@!opengl 1.0@gl-1.0-scissor-copypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.44] s

  * spec@!opengl 1.0@gl-1.0-scissor-many:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.0@gl-1.0-scissor-polygon:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@!opengl 1.0@gl-1.0-texgen:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.1@copytexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.1@depthfunc:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.1@depthstencil-default_fb-blit:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@depthstencil-default_fb-copypixels samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.1@depthstencil-default_fb-copypixels samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-24_8:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-24_8 samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-24_8 samples=8:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-32f_24_8_rev:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-32f_24_8_rev samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-32f_24_8_rev samples=8:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-float-and-ushort:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-float-and-ushort samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-float-and-ushort samples=6:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.1@depthstencil-default_fb-readpixels-24_8 samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.1@depthstencil-default_fb-readpixels-32f_24_8_rev:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@depthstencil-default_fb-readpixels-float-and-ushort:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@!opengl 1.1@depthstencil-default_fb-readpixels-float-and-ushort samples=8:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 1.1@gl-1.1-read-pixels-after-display-list:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@gl-1.1-xor:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.2@draw-elements-vs-inputs:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.2@getteximage-targets 3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.2@lodclamp-between:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 2.0@gl-2.0-edgeflag:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@!opengl 3.2@layered-rendering@gl-layer-cube-map:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@amd_shader_trinary_minmax@execution@built-in-functions@tcs-mid3-uint-uint-uint:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_arrays_of_arrays@execution@atomic_counters@vs-indirect-index:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_arrays_of_arrays@execution@sampler@fs-initializer-const-index:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_arrays_of_arrays@execution@sampler@fs-nested-struct-arrays-nonconst-nested-array:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_color_buffer_float@gl_rgba8_snorm-drawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_copy_image@arb_copy_image-simple --rb-to-tex:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d 32 1 1 gl_texture_cube_map 32 32 6 11 0 0 5 13 4 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d_array 32 1 12 gl_texture_2d 32 16 1 11 0 3 5 7 0 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_1d_array 32 1 16 11 2 0 5 0 7 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_2d_array 32 16 15 11 12 0 5 7 12 14 8 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_cube_map 32 32 6 11 5 0 5 9 2 14 7 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_rectangle 32 16 1 11 12 3 5 3 0 14 12 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 292 d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 585 d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_framebuffer_object@fbo-drawbuffers-none glblitframebuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_framebuffer_object@fbo-drawbuffers-none gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_gpu_shader5@execution@ubo_array_indexing@gs-two-arrays:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_gpu_shader_fp64@execution@built-in-functions@fs-lessthan-dvec3-dvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_gpu_shader_fp64@execution@built-in-functions@gs-greaterthan-dvec2-dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_gpu_shader_fp64@execution@built-in-functions@vs-greaterthanequal-dvec2-dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_pixel_buffer_object@pbo-drawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tcs-output-array-float-index-wr-before-barrier:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tcs-output-array-vec4-index-rd-after-barrier:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tes-both-input-array-vec3-index-rd:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 32 42 1 64 7:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 32 42 8 128 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_texture_cube_map_array@texturesize@fs-texturesize-samplercubearrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_texture_cube_map_array@texturesize@tes-texturesize-usamplercubearray:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_texture_multisample@texelfetch@4-vs-sampler2dmsarray:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_texture_multisample@texelfetch@6-fs-isampler2dms:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_texture_rg@fbo-generatemipmap-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_texture_rg@texwrap formats-float bordercolor:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2x3_array3-double_dvec2-position:
    - Statuses : 1 fail(s)
    - Exec time: [5.76] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2x4-double_dmat2-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.28] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat3-float_mat4x3-position:
    - Statuses : 1 fail(s)
    - Exec time: [5.71] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat3x2-double_dmat3x4-position:
    - Statuses : 1 fail(s)
    - Exec time: [5.87] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dvec4_array3-position-double_dvec4_array2:
    - Statuses : 1 fail(s)
    - Exec time: [5.70] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_vec2_array3-double_dvec4_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.58] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dvec4_array3-double_dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [6.33] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-float_mat3x4_array3-double_dmat4x2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-int_ivec2_array3-double_dmat3x4_array2:
    - Statuses : 1 fail(s)
    - Exec time: [6.53] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-uint_uvec4-double_dmat4x3:
    - Statuses : 1 fail(s)
    - Exec time: [6.15] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ubyte_uvec2-short_ivec2-double_dvec2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ubyte_uvec4-short_ivec4-double_dmat3-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.51] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-uint_uvec3_array3-position-double_dvec2_array2:
    - Statuses : 1 fail(s)
    - Exec time: [5.84] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-uint_uvec4-double_dmat2x3_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.62] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ushort_uvec3-position-double_dmat3:
    - Statuses : 1 fail(s)
    - Exec time: [6.55] s

  * spec@arb_vertex_buffer_object@pos-array:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_framebuffer_multisample@blit-multiple-render-targets 0:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@ext_framebuffer_multisample@blit-multiple-render-targets 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@ext_framebuffer_multisample@int-draw-buffers-alpha-to-one 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@ext_framebuffer_multisample@int-draw-buffers-alpha-to-one 4:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@ext_framebuffer_multisample@interpolation 0 centroid-edges:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@ext_framebuffer_multisample@interpolation 6 non-centroid-disabled:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_framebuffer_object@fbo-generatemipmap-npot:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 ds=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.50] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 273 d=s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_packed_depth_stencil@fbo-depthstencil-gl_depth24_stencil8-drawpixels-32f_24_8_rev:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@ext_packed_depth_stencil@texwrap formats offset:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@ext_texture_array@fbo-array:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@ext_texture_compression_s3tc@getteximage-targets cube s3tc:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@ext_transform_feedback@intervening-read output:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.10@execution@fs-frontfacing-ternary-neg-1.0-1.0:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.10@execution@interpolation@interpolation-none-gl_frontsecondarycolor-flat-fixed:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.10@execution@interpolation@interpolation-none-other-smooth-vertex:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@interpolation@interpolation-flat-gl_backcolor-smooth-vertex:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-1.30@execution@interpolation@interpolation-flat-other-smooth-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-1.30@execution@interpolation@interpolation-noperspective-gl_backcolor-smooth-fixed:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@glsl-1.30@execution@interpolation@interpolation-noperspective-gl_frontsecondarycolor-flat-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.30@execution@interpolation@interpolation-smooth-gl_backcolor-flat-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@glsl-1.30@execution@interpolation@interpolation-smooth-gl_frontcolor-flat-vertex:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@glsl-1.30@execution@switch@vs-uniform:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texturegradoffset 2drectshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@glsl-1.30@execution@texelfetch@vs-texelfetch-sampler1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.30@execution@texturesize@fs-texturesize-sampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.30@execution@texturesize@fs-texturesize-usampler2darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.30@execution@vs-texturelod-miplevels:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.40@execution@texturesize@fs-texturesize-isampler1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@glsl-1.40@execution@texturesize@fs-texturesize-isampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.40@execution@texturesize@fs-texturesize-isamplercube:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.50@execution@texturesize@gs-texturesize-usampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.50@execution@texturesize@tes-texturesize-sampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@glsl-1.50@execution@texturesize@tes-texturesize-usampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.50@execution@variable-indexing@gs-input-array-vec4-index-rd:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@glsl-4.00@execution@built-in-functions@fs-notequal-dvec2-dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-4.00@execution@built-in-functions@gs-lessthanequal-dvec2-dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x4-double_dmat2x4_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.02] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x4-int_ivec3-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.06] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat4x2-position-double_dmat4x3:
    - Statuses : 1 fail(s)
    - Exec time: [5.75] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dvec2-position-float_mat2:
    - Statuses : 1 fail(s)
    - Exec time: [5.74] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dvec3-position-int_ivec3:
    - Statuses : 1 fail(s)
    - Exec time: [6.01] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dvec3_array5-position-uint_uvec2:
    - Statuses : 1 fail(s)
    - Exec time: [5.72] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dvec4_array3-double_double_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [5.87] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_mat2x3-position-double_dmat3:
    - Statuses : 1 fail(s)
    - Exec time: [5.78] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_vec2_array3-double_dmat2-position:
    - Statuses : 1 fail(s)
    - Exec time: [5.93] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dvec3_array5-float_mat3x4:
    - Statuses : 1 fail(s)
    - Exec time: [5.78] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dvec4_array3-double_dmat3x2_array2:
    - Statuses : 1 fail(s)
    - Exec time: [5.78] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-float_mat2-double_dmat2x3:
    - Statuses : 1 fail(s)
    - Exec time: [6.07] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-uint_uvec3_array3-double_dmat3x4_array2:
    - Statuses : 1 fail(s)
    - Exec time: [6.05] s

  * spec@glsl-4.20@execution@vs_in@vs-input-ubyte_uint-position-short_int-double_dvec3:
    - Statuses : 1 fail(s)
    - Exec time: [5.73] s

  * spec@glsl-4.20@execution@vs_in@vs-input-uint_uvec3_array3-double_dmat2x3-position:
    - Statuses : 1 fail(s)
    - Exec time: [5.91] s

  * spec@glsl-4.30@execution@built-in-functions@cs-all-bvec4-using-if:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-4.30@execution@built-in-functions@cs-greaterthan-ivec2-ivec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-4.30@execution@built-in-functions@cs-greaterthan-ivec3-ivec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-eq-bvec3-bvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-lt-int-int-using-if:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-ne-bvec2-bvec2-using-if:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_15861_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#456])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-tglb1/igt@gem_ctx_isolation@vcs0-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-tglb1/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-persistence:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276] / [fdo#112080])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-iclb2/igt@gem_ctx_persistence@vcs1-persistence.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-iclb8/igt@gem_ctx_persistence@vcs1-persistence.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111735]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@suspend:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#460])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-tglb3/igt@gem_eio@suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-tglb2/igt@gem_eio@suspend.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#435])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-tglb4/igt@gem_exec_create@madvise.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-tglb4/igt@gem_exec_create@madvise.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109276]) +11 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-iclb2/igt@gem_exec_schedule@fifo-bsd1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-iclb6/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +8 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-tglb:         [PASS][21] -> [TIMEOUT][22] ([fdo#112126] / [i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-tglb9/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-tglb2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-hsw:          [PASS][23] -> [FAIL][24] ([i915#520])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#644])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [PASS][27] -> [FAIL][28] ([i915#644])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-apl2/igt@i915_suspend@debugfs-reader.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-apl8/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#109])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-skl6/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-skl2/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#54])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#456] / [i915#460]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled:
    - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#646] / [i915#667])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][39] -> [FAIL][40] ([i915#49])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-tglb:         [PASS][41] -> [DMESG-WARN][42] ([i915#766])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][43] -> [INCOMPLETE][44] ([fdo#103665])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([fdo#108145])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145] / [i915#265])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109642] / [fdo#111068])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-iclb6/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#112080]) +11 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-tglb:         [INCOMPLETE][57] ([i915#456]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7614/shard-tglb7/igt@gem_ctx_isolation@rcs0-s3.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/shard-tglb1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][59] ([fdo#109276] / [fdo#112080]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/dr

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15861/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
