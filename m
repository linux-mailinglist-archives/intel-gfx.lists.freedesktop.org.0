Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F2A12863F
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 01:58:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 104B26ECDF;
	Sat, 21 Dec 2019 00:58:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0FAD16E15C;
 Sat, 21 Dec 2019 00:58:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07F4DA47DC;
 Sat, 21 Dec 2019 00:58:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 21 Dec 2019 00:58:18 -0000
Message-ID: <157688989800.32687.2697216712896747494@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191219221344.161523-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191219221344.161523-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Add_breadcrumb_retire_to_physical_engine?=
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

Series: drm/i915/gt: Add breadcrumb retire to physical engine
URL   : https://patchwork.freedesktop.org/series/71191/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7610_full -> Patchwork_15850_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7610_full and Patchwork_15850_full:

### New Piglit tests (123) ###

  * shaders@glsl-fs-asin:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * shaders@glsl-fs-log:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * shaders@glsl-fs-textureenvcolor-statechange:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.1@copytexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.1@depthfunc:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.1@depthstencil-default_fb-copypixels samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-24_8:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-24_8 samples=8:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-32f_24_8_rev:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-32f_24_8_rev samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-float-and-ushort samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@depthstencil-default_fb-readpixels-float-and-ushort:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 1.1@draw-arrays-colormaterial:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.1@gl-1.1-xor:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.1@two-sided-lighting:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.1@user-clip:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 1.2@draw-elements-vs-inputs:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.4@tex-miplevel-selection:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.5@draw-elements:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 3.2@layered-rendering@gl-layer-cube-map:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@3dfx_texture_compression_fxt1@compressedteximage gl_compressed_rgb_fxt1_3dfx:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@amd_shader_trinary_minmax@execution@built-in-functions@vs-mid3-int-int-int:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_color_buffer_float@gl_rgba16f-render-sanity:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_color_buffer_float@gl_rgba16f-render-sanity-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@arb_color_buffer_float@gl_rgba32f-drawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_color_buffer_float@gl_rgba32f-probepixel:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_color_buffer_float@gl_rgba8_snorm-drawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_color_buffer_float@mixed-mrt:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_2d_array 32 16 15 11 12 0 5 7 12 14 8 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_cube_map 32 32 6 11 5 0 5 9 2 14 7 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_rectangle 32 16 1 11 12 13 5 7 0 14 9 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_rectangle 32 16 1 11 12 3 5 3 0 14 12 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 292 d=z32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_depth_buffer_float@fbo-clear-formats stencil:
    - Statuses : 1 fail(s)
    - Exec time: [0.47] s

  * spec@arb_depth_buffer_float@texwrap formats offset:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_depth_texture@depth-level-clamp:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 585 d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_depth_texture@fbo-clear-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_fragment_program@fp-lit-mask:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_fragment_program@sparse-samplers:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_framebuffer_object@fbo-drawbuffers-none glcolormaskindexed:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_framebuffer_object@mixed-buffer-sizes:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_framebuffer_srgb@framebuffer-srgb:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_separate_shader_objects@400 combinations by name:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_shader_atomic_counters@unique-id:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_shader_image_load_store@dead-fragments:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tcs-output-array-float-index-wr-before-barrier:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tcs-output-array-vec2-index-wr:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tcs-output-array-vec2-index-wr-before-barrier:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tcs-patch-output-array-vec4-index-wr:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tes-input-array-vec4-index-rd:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 8 3:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_texture_compression_bptc@texwrap formats bordercolor:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_texture_cube_map@getteximage-targets cube:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_texture_cube_map_array@texturesize@fs-texturesize-isamplercubearray:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_texture_multisample@large-float-texture-array:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@arb_texture_multisample@texelfetch@4-fs-sampler2dmsarray:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_texture_multisample@texelfetch@4-vs-isampler2dms:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_texture_multisample@texelfetch@4-vs-sampler2dmsarray:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_texture_multisample@texelfetch@6-fs-isampler2dms:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@arb_texture_multisample@texelfetch@8-gs-isampler2dms:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_texture_rg@fbo-rg-gl_rg16:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_texture_rg@texwrap formats-int bordercolor:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_transform_feedback_overflow_query@arb_transform_feedback_overflow_query-basic:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_viewport_array@render-viewport:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_viewport_array@render-viewport-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@ext_framebuffer_blit@fbo-copypix:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@ext_framebuffer_multisample@alpha-to-coverage-no-draw-buffer-zero 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@ext_framebuffer_multisample@alpha-to-coverage-no-draw-buffer-zero 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@ext_framebuffer_multisample@draw-buffers-alpha-to-coverage 4:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@ext_framebuffer_multisample@draw-buffers-alpha-to-coverage 6:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@ext_framebuffer_multisample@draw-buffers-alpha-to-coverage 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@ext_framebuffer_multisample@draw-buffers-alpha-to-one 4:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@ext_framebuffer_multisample@int-draw-buffers-alpha-to-coverage 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@ext_framebuffer_multisample@int-draw-buffers-alpha-to-one 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@ext_framebuffer_multisample@interpolation 0 non-centroid-disabled:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@ext_framebuffer_multisample@interpolation 4 non-centroid-deriv:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@ext_framebuffer_multisample@interpolation 4 non-centroid-deriv-disabled:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@ext_framebuffer_object@ext_framebuffer_object-mipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_framebuffer_object@fbo-drawbuffers-fragcolor:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 d=s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.47] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 s=d=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.46] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 s=z24_s8_d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@ext_polygon_offset_clamp@ext_polygon_offset_clamp-draw:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_texture_compression_s3tc@compressedteximage gl_compressed_rgba_s3tc_dxt1_ext:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@ext_texture_integer@multisample-formats 4 gl_ext_texture_integer:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@ext_transform_feedback@order elements lines:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.10@execution@built-in-functions@vs-op-ne-bvec4-bvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.10@execution@samplers@in-parameter:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-1.30@execution@interpolation@interpolation-none-gl_frontsecondarycolor-smooth-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@interpolation@interpolation-noperspective-gl_backsecondarycolor-smooth-none:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@interpolation@interpolation-smooth-gl_frontcolor-flat-none:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@interpolation@interpolation-smooth-gl_frontsecondarycolor-smooth-vertex:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-sampler3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-1.30@execution@texelfetchoffset@fs-texelfetch-usampler1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.30@execution@texturesize@fs-texturesize-isampler1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.30@execution@texturesize@fs-texturesize-sampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.30@execution@texturesize@fs-texturesize-sampler3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-1.30@execution@texturesize@fs-texturesize-usampler2darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-1.40@execution@texturesize@fs-texturesize-isampler1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.40@execution@texturesize@fs-texturesize-sampler1darrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-1.40@execution@texturesize@fs-texturesize-usampler1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.40@execution@texturesize@fs-texturesize-usamplercube:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.50@execution@texelfetch@gs-texelfetch-usampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.50@execution@texturesize@gs-texturesize-sampler2darrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.50@execution@texturesize@tes-texturesize-isampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.50@execution@variable-indexing@gs-input-array-vec4-index-rd:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@glsl-4.00@execution@built-in-functions@fs-equal-dvec2-dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_mat3x4_array3-double_dmat3x2_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.46] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_vec2_array3-position-double_dmat3x2:
    - Statuses : 1 fail(s)
    - Exec time: [6.56] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dmat3x4-float_mat2x3:
    - Statuses : 1 fail(s)
    - Exec time: [6.52] s

  * spec@glsl-4.20@execution@vs_in@vs-input-uint_uvec3-double_dmat4x2_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.41] s

  * spec@glsl-4.30@execution@built-in-functions@cs-greaterthan-ivec4-ivec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-4.30@execution@built-in-functions@cs-greaterthanequal-vec4-vec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.30@execution@built-in-functions@cs-lessthan-vec3-vec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-4.30@execution@built-in-functions@cs-notequal-uvec3-uvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-eq-ivec3-ivec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-eq-uint-uint-using-if:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-gt-int-int:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-ne-mat3-mat3:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-selection-bool-bool-bool:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-selection-bool-bvec3-bvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  

Known issues
------------

  Here are the changes found in Patchwork_15850_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([fdo#111735])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb8/igt@gem_ctx_shared@q-smoketest-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-tglb9/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_parallel@vecs0:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111736])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb3/igt@gem_exec_parallel@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-tglb4/igt@gem_exec_parallel@vecs0.html

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#435])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb9/igt@gem_exec_reuse@single.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-tglb7/igt@gem_exec_reuse@single.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb3/igt@gem_exec_schedule@in-order-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd1:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111606] / [fdo#111677]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#456] / [i915#472])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb1/igt@gem_exec_suspend@basic-s0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-tglb5/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-kbl2/igt@gem_exec_suspend@basic-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-kbl4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#644])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#470] / [i915#472])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb2/igt@gem_sync@basic-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-tglb6/igt@gem_sync@basic-all.html

  * igt@gem_wait@await-rcs0:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#109])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl2/igt@gem_wait@await-rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-skl4/igt@gem_wait@await-rcs0.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [PASS][25] -> [DMESG-WARN][26] ([i915#118] / [i915#95])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-glk3/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#300])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#54]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#646] / [i915#667])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#474] / [i915#667])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-tglb:         [PASS][37] -> [DMESG-WARN][38] ([i915#766])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][39] -> [FAIL][40] ([i915#49]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#123] / [i915#667])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-tglb:         [PASS][43] -> [DMESG-FAIL][44] ([i915#402])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-tglb2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [PASS][47] -> [DMESG-WARN][48] ([i915#402])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb9/igt@kms_psr@psr2_suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-tglb7/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - shard-tglb:         [PASS][49] -> [INCOMPLETE][50] ([i915#460])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb4/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-tglb4/igt@kms_vblank@pipe-d-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#112080]) +6 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb2/igt@perf_pmu@busy-vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-iclb5/igt@perf_pmu@busy-vcs1.html

  * igt@prime_busy@after-bsd2:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109276]) +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb2/igt@prime_busy@after-bsd2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-iclb5/igt@prime_busy@after-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-tglb:         [INCOMPLETE][57] ([i915#456]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb4/igt@gem_ctx_isolation@vcs0-s3.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-tglb2/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][59] ([fdo#109276] / [fdo#112080]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb6/igt@gem_ctx_isolation@vcs1-none.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-iclb2/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-apl:          [FAIL][61] ([i915#679]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-apl3/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-apl2/igt@gem_ctx_persistence@vcs0-mixed-process.html
    - shard-skl:          [FAIL][63] ([i915#679]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl5/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-skl6/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][65] ([fdo#110854]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][67] ([i915#435]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb6/igt@gem_exec_create@madvise.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-tglb7/igt@gem_exec_create@madvise.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][69] ([fdo#112080]) -> [PASS][70] +13 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][71] ([fdo#109276]) -> [PASS][72] +18 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html

  * {igt@gem_exec_schedule@pi-shared-iova-bsd}:
    - shard-iclb:         [SKIP][73] ([i915#677]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][75] ([fdo#112146]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][77] ([i915#707]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd2.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-tglb2/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [INCOMPLETE][79] ([i915#472] / [i915#707]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb5/igt@gem_sync@basic-many-each.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/shard-tglb3/igt@gem_sync@basic-many-each.html

  * igt@gem_wait@basic-busy-all:
    - shard-skl:          [DMESG-WARN][81] ([i915#109]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/dr

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15850/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
