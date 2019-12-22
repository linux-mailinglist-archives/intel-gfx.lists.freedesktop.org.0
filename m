Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC804128FCA
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 21:13:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6210F6E057;
	Sun, 22 Dec 2019 20:13:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 755646E057;
 Sun, 22 Dec 2019 20:13:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 449DEA0094;
 Sun, 22 Dec 2019 20:13:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Sun, 22 Dec 2019 20:13:33 -0000
Message-ID: <157704561325.8699.13813278429323941437@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191220171224.18107-1-ramalingam.c@intel.com>
In-Reply-To: <20191220171224.18107-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/lmem=3A_debugfs_for_LMEM_details_=28rev3=29?=
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

Series: drm/i915/lmem: debugfs for LMEM details (rev3)
URL   : https://patchwork.freedesktop.org/series/71211/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7615_full -> Patchwork_15862_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15862_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gen7_exec_parse@basic-offset}:
    - shard-hsw:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-hsw1/igt@gen7_exec_parse@basic-offset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-hsw7/igt@gen7_exec_parse@basic-offset.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7615_full and Patchwork_15862_full:

### New Piglit tests (147) ###

  * object namespace pollution@texture with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * object namespace pollution@texture with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.0@gl-1.0-readpixsanity:
    - Statuses : 1 fail(s)
    - Exec time: [4.99] s

  * spec@!opengl 1.0@gl-1.0-scissor-copypixels:
    - Statuses : 1 fail(s)
    - Exec time: [4.59] s

  * spec@!opengl 1.0@gl-1.0-scissor-polygon:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.0@gl-1.0-texgen:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@!opengl 1.1@copytexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.1@depthfunc:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@!opengl 1.1@depthstencil-default_fb-blit samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@!opengl 1.1@depthstencil-default_fb-clear:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.1@depthstencil-default_fb-clear samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.1@depthstencil-default_fb-copypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.1@depthstencil-default_fb-copypixels samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-24_8 samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-32f_24_8_rev samples=8:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.1@depthstencil-default_fb-readpixels-float-and-ushort samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.1@gl-1.1-read-pixels-after-display-list:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@!opengl 1.1@gl-1.1-xor:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.1@texwrap 1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 1.1@two-sided-lighting:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.2@draw-elements-vs-inputs:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.2@getteximage-targets 3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.2@texwrap 3d proj:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.4@draw-batch:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.4@tex-miplevel-selection:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 2.0@gl-2.0-edgeflag-immediate:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@!opengl 2.0@vertex-program-two-side enabled front:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@!opengl 2.0@vertex-program-two-side enabled front back2:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 2.0@vertex-program-two-side enabled front front2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 3.0@depth-cube-map:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@amd_shader_trinary_minmax@execution@built-in-functions@fs-min3-ivec2-ivec2-ivec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@amd_shader_trinary_minmax@execution@built-in-functions@vs-min3-int-int-int:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_clear_texture@arb_clear_texture-base-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_clear_texture@arb_clear_texture-srgb:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_compute_shader@execution@basic-ssbo:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d 32 1 1 gl_texture_rectangle 32 32 1 11 0 0 5 13 0 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_1d_array 32 1 16 11 2 0 5 0 7 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_2d_array 32 16 15 11 12 0 5 7 12 14 8 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_cube_map 32 32 6 11 5 0 5 9 2 14 7 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_1d_array 32 1 16 11 2 3 5 0 7 14 1 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_2d 32 16 1 11 12 3 5 7 0 14 9 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_rectangle 32 16 1 11 12 3 5 3 0 14 12 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_rectangle 32 16 1 11 12 13 5 7 0 14 6 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_rectangle 32 32 1 gl_texture_1d 32 1 1 11 23 0 5 0 0 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 d=z32f_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.28] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 292 d=z32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_depth_texture@depth-level-clamp:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_draw_buffers@fbo-mrt-new-bind:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_draw_elements_base_vertex@arb_draw_elements_base_vertex-bounds:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_framebuffer_object@fbo-drawbuffers-none gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_framebuffer_object@fbo-viewport:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_framebuffer_srgb@framebuffer-srgb:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@arb_map_buffer_range@map_buffer_range_test:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_pixel_buffer_object@pbo-teximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_separate_shader_objects@400 combinations by name:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tcs-output-array-vec3-index-wr:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tcs-output-array-vec4-index-wr:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tcs-patch-output-array-vec3-index-wr:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tes-both-input-array-vec2-index-rd:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tes-patch-input-array-vec4-index-rd:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_texture_compression_bptc@texwrap formats bordercolor:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_texture_cube_map_array@texturesize@gs-texturesize-samplercubearray:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_texture_cube_map_array@texturesize@vs-texturesize-isamplercubearray:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_texture_cube_map_array@texturesize@vs-texturesize-samplercubearray:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_texture_multisample@texelfetch@8-fs-isampler2dms:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_texture_rectangle@fbo-blit rect:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@arb_texture_rg@fbo-generatemipmap-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_texture_rg@fbo-rg-gl_rg8:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_texture_rg@multisample-formats 2 gl_arb_texture_rg-float:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2x4_array3-position-double_double:
    - Statuses : 1 fail(s)
    - Exec time: [6.28] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat4x2-float_float_array3-position:
    - Statuses : 1 fail(s)
    - Exec time: [5.67] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dvec3_array3-double_dmat2x4_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.31] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat2x3_array3-position-double_dvec3:
    - Statuses : 1 fail(s)
    - Exec time: [5.82] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_ivec3_array3-position-double_dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [5.80] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat4-double_dvec3:
    - Statuses : 1 fail(s)
    - Exec time: [5.74] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat4x3-int_ivec2_array3:
    - Statuses : 1 fail(s)
    - Exec time: [5.71] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-float_vec4_array3-double_dmat3x4:
    - Statuses : 1 fail(s)
    - Exec time: [6.12] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-ubyte_uvec2-short_ivec3-double_dmat3x2:
    - Statuses : 1 fail(s)
    - Exec time: [6.20] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-uint_uint_array3-double_dmat2x3_array2:
    - Statuses : 1 fail(s)
    - Exec time: [6.34] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ubyte_uvec2-short_ivec3-double_dmat3x2-position:
    - Statuses : 1 fail(s)
    - Exec time: [5.73] s

  * spec@arb_viewport_array@render-viewport-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@ext_framebuffer_multisample@alpha-to-one-dual-src-blend 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@ext_framebuffer_multisample@clear 6 color:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@ext_framebuffer_multisample@draw-buffers-alpha-to-coverage 4:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@ext_framebuffer_multisample@interpolation 0 centroid-edges:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@ext_framebuffer_multisample@sample-alpha-to-one 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@ext_framebuffer_object@fbo-generatemipmap-npot:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@ext_framebuffer_object@fbo-stencil-gl_stencil_index16-drawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 s=z24_s8_d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.35] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 s=z24_s8_d=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.53] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 273 ds=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_texture_array@fbo-generatemipmap-array s3tc_dxt1:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_texture_compression_s3tc@compressedteximage gl_compressed_rgba_s3tc_dxt1_ext:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@ext_texture_compression_s3tc@texwrap formats bordercolor:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@ext_transform_feedback2@draw-auto:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.10@execution@glsl-1.10-linear-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.10@execution@interpolation@interpolation-none-gl_backcolor-smooth-fixed:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@glsl-1.30@execution@fs-texturegrad-miplevels:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@interpolation@interpolation-smooth-gl_backsecondarycolor-smooth-fixed:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@interpolation@interpolation-smooth-gl_frontsecondarycolor-flat-fixed:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@isinf-and-isnan vs_fbo:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureoffset 2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-1.30@execution@texelfetch@vs-texelfetch-sampler1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.30@execution@texelfetchoffset@fs-texelfetch-usampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.30@execution@texturesize@fs-texturesize-isampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@glsl-1.30@execution@texturesize@fs-texturesize-sampler3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.30@execution@texturesize@fs-texturesize-usampler2darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.40@execution@texturesize@fs-texturesize-isampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.40@execution@texturesize@fs-texturesize-sampler1darrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.40@execution@texturesize@fs-texturesize-usampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.40@execution@texturesize@fs-texturesize-usampler3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@glsl-1.40@execution@texturesize@vs-texturesize-sampler2dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@glsl-1.40@execution@texturesize@vs-texturesize-usampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.50@execution@texturesize@gs-texturesize-samplercube:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@glsl-1.50@execution@texturesize@tes-texturesize-sampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.50@execution@texturesize@tes-texturesize-usampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat4x2-float_vec2_array3-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.10] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dvec2-position-double_dmat4x3:
    - Statuses : 1 fail(s)
    - Exec time: [5.91] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dvec4-double_dmat3x2_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [5.85] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_vec4-double_dmat3x2_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.12] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-byte_ivec4-double_dmat2x4:
    - Statuses : 1 fail(s)
    - Exec time: [5.89] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-ubyte_uvec2-short_ivec4-double_dmat2:
    - Statuses : 1 fail(s)
    - Exec time: [6.13] s

  * spec@glsl-4.20@execution@vs_in@vs-input-ubyte_uvec4-position-short_int-double_dmat4:
    - Statuses : 1 fail(s)
    - Exec time: [5.81] s

  * spec@glsl-4.20@execution@vs_in@vs-input-ubyte_uvec4-short_int-position-double_dmat2:
    - Statuses : 1 fail(s)
    - Exec time: [6.04] s

  * spec@glsl-4.20@execution@vs_in@vs-input-uint_uint_array3-double_dmat2x4-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.01] s

  * spec@glsl-4.30@execution@built-in-functions@cs-acos-float:
    - Statuses : 1 fail(s)
    - Exec time: [6.30] s

  * spec@glsl-4.30@execution@built-in-functions@cs-greaterthan-ivec3-ivec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-4.30@execution@built-in-functions@cs-lessthan-vec2-vec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-4.30@execution@built-in-functions@cs-notequal-ivec4-ivec4:
    - Statuses : 1 fail(s)
    - Exec time: [6.35] s

  * spec@glsl-4.30@execution@built-in-functions@cs-notequal-vec3-vec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-assign-lshift-uvec4-int:
    - Statuses : 1 fail(s)
    - Exec time: [5.99] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-assign-mod-ivec3-int:
    - Statuses : 1 fail(s)
    - Exec time: [6.30] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-assign-mod-uvec3-uint:
    - Statuses : 1 fail(s)
    - Exec time: [6.07] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-bitand-abs-not-int-int:
    - Statuses : 1 fail(s)
    - Exec time: [6.01] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-bitxor-not-int-ivec4:
    - Statuses : 1 fail(s)
    - Exec time: [6.03] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-eq-bvec3-bvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-eq-uvec2-uvec2-using-if:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-mod-uvec3-uvec3:
    - Statuses : 1 fail(s)
    - Exec time: [6.05] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-mult-mat2x3-vec2:
    - Statuses : 1 fail(s)
    - Exec time: [5.97] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-ne-bvec2-bvec2-using-if:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-ne-int-int-using-if:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-ne-mat2x3-mat2x3-using-if:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-ne-vec3-vec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-sub-ivec3-ivec3:
    - Statuses : 1 fail(s)
    - Exec time: [6.29] s

  * spec@nv_texture_barrier@arb_texture_barrier-texture-halves-ping-pong-operation-chain:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@oes_viewport_array@render-depthrange:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  

Known issues
------------

  Here are the changes found in Patchwork_15862_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-iclb4/igt@gem_ctx_isolation@vcs1-clean.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-iclb6/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_isolation@vcs1-s3:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#456])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb4/igt@gem_ctx_isolation@vcs1-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-tglb3/igt@gem_ctx_isolation@vcs1-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-apl1/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-apl7/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111735])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb5/igt@gem_ctx_shared@q-smoketest-vebox.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-tglb3/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112080]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-iclb6/igt@gem_exec_schedule@wide-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-apl2/igt@gem_exec_suspend@basic-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-apl4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#470] / [i915#475])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb5/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-tglb6/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#69])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-skl2/igt@gem_softpin@noreloc-s3.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-skl2/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#454])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#456] / [i915#460]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#72])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-glk1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-glk2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#435] / [i915#456] / [i915#460])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-tglb2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@modeset-vs-vblank-race-interruptible:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#407])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-glk2/igt@kms_flip@modeset-vs-vblank-race-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-glk1/igt@kms_flip@modeset-vs-vblank-race-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#49]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +8 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#648] / [i915#667])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145] / [i915#265])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-iclb4/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@perf@short-reads:
    - shard-apl:          [PASS][41] -> [TIMEOUT][42] ([i915#51])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-apl2/igt@perf@short-reads.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-apl6/igt@perf@short-reads.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109276]) +7 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-tglb:         [FAIL][45] ([i915#570]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb1/igt@gem_ctx_persistence@processes.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-tglb2/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][47] ([i915#461]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][49] ([fdo#111735]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][51] ([i915#476]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb9/igt@gem_exec_parallel@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-tglb5/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][55] ([fdo#109276]) -> [PASS][56] +12 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-tglb:         [INCOMPLETE][57] ([i915#530]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-tglb6/igt@gem_persistent_relocs@forked-thrashing.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-tglb7/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][59] ([i915#644]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/shard-glk2/igt@gem_ppgtt@flin

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15862/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
