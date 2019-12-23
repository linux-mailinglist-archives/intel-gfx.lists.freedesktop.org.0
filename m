Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B45A412915F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 06:11:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28EBC6E152;
	Mon, 23 Dec 2019 05:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2297C6E123;
 Mon, 23 Dec 2019 05:11:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1A9B0A01BB;
 Mon, 23 Dec 2019 05:11:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rajat Jain" <rajatja@google.com>
Date: Mon, 23 Dec 2019 05:11:39 -0000
Message-ID: <157707789908.16937.10522896409912303678@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191220200353.252399-1-rajatja@google.com>
In-Reply-To: <20191220200353.252399-1-rajatja@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/3=5D_drm/i915=3A_Move_the_code_to_p?=
 =?utf-8?q?opulate_ACPI_device_ID_into_intel=5Facpi?=
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

Series: series starting with [v5,1/3] drm/i915: Move the code to populate ACPI device ID into intel_acpi
URL   : https://patchwork.freedesktop.org/series/71226/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7616_full -> Patchwork_15864_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_15864_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15864_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15864_full:

### IGT changes ###

#### Warnings ####

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][1], [FAIL][2]) ([i915#716]) -> [FAIL][3]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-apl3/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-apl4/igt@runner@aborted.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-apl2/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7616_full and Patchwork_15864_full:

### New Piglit tests (98) ###

  * shaders@glsl-fs-abs-02:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-32f_24_8_rev samples=8:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.2@getteximage-targets 3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.2@lodclamp-between:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 1.2@texwrap 3d proj:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.4@draw-batch:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 3.0@depth-cube-map:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 3.1@buffer-bindings:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 3.2@layered-rendering@clear-color-all-types cube_map_array mipmapped:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@!opengl 3.2@pointsprite-origin:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_color_buffer_float@gl_rgba16f-render-sanity-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_2d_array 32 16 15 11 12 0 5 7 12 14 8 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_rectangle 32 16 1 11 12 0 5 7 0 14 9 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 273 d=s=z32f_s8:
    - Statuses : 1 fail(s)
    - Exec time: [4.23] s

  * spec@arb_depth_texture@depth-level-clamp:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 585 d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_draw_buffers_blend@fbo-draw-buffers-blend:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_framebuffer_object@arb_framebuffer_object-depth-stencil-blit depth gl_depth_component24:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_framebuffer_object@fbo-generatemipmap-cubemap:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_framebuffer_object@framebuffer-blit-levels read rgba:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_gpu_shader5@execution@sampler_array_indexing@fs-struct-nonconst-sampler-nonconst:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_gpu_shader_fp64@execution@conversion@frag-conversion-explicit-dmat3-mat3:
    - Statuses : 1 fail(s)
    - Exec time: [5.88] s

  * spec@arb_gpu_shader_fp64@execution@conversion@frag-conversion-implicit-ivec4-dvec4:
    - Statuses : 1 fail(s)
    - Exec time: [5.94] s

  * spec@arb_gpu_shader_fp64@execution@conversion@vert-conversion-explicit-dvec2-uvec2:
    - Statuses : 1 fail(s)
    - Exec time: [5.91] s

  * spec@arb_gpu_shader_fp64@execution@conversion@vert-conversion-explicit-dvec4-bvec4:
    - Statuses : 1 fail(s)
    - Exec time: [5.86] s

  * spec@arb_gpu_shader_fp64@execution@conversion@vert-conversion-implicit-uint-double:
    - Statuses : 1 fail(s)
    - Exec time: [5.86] s

  * spec@arb_shader_texture_image_samples@texturesamples@vs-isampler2dms-4:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tcs-output-array-float-index-wr-before-barrier:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tcs-output-array-vec3-index-wr:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tcs-output-array-vec4-index-rd-after-barrier:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tcs-patch-output-array-vec2-index-wr:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tcs-patch-output-array-vec4-index-wr:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_tessellation_shader@execution@variable-indexing@tes-input-array-vec4-index-rd:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 8 7:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_texture_compression_bptc@bptc-float-modes:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_texture_cube_map@getteximage-targets cube:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_texture_cube_map_array@texturesize@tes-texturesize-usamplercubearray:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_texture_multisample@large-float-texture-array:
    - Statuses : 1 fail(s)
    - Exec time: [0.55] s

  * spec@arb_texture_multisample@texelfetch@2-fs-sampler2dmsarray:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_texture_multisample@texelfetch@6-fs-usampler2dms:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_texture_multisample@texelfetch@6-gs-isampler2dms:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_texture_multisample@texelfetch@6-vs-usampler2dms:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@arb_texture_multisample@texelfetch@8-fs-sampler2dms:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_texture_rectangle@tex-miplevel-selection gl2:texture() 2drectshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_texture_rectangle@tex-miplevel-selection gl2:textureproj 2drectshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_texture_rg@fbo-generatemipmap-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2-position-uint_uvec4_array3:
    - Statuses : 1 fail(s)
    - Exec time: [6.48] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2x4-uint_uint-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.39] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat3-double_dvec4-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.35] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat3x4-float_vec3-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.44] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dvec2-float_float:
    - Statuses : 1 fail(s)
    - Exec time: [6.39] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ubyte_uint-short_int-position-double_dmat4x2:
    - Statuses : 1 fail(s)
    - Exec time: [6.48] s

  * spec@arb_vertex_type_10f_11f_11f_rev@arb_vertex_type_10f_11f_11f_rev-draw-vertices:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_framebuffer_multisample@alpha-to-one-dual-src-blend 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@ext_framebuffer_multisample@blit-multiple-render-targets 6:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@ext_framebuffer_multisample@draw-buffers-alpha-to-coverage 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.26] s

  * spec@ext_framebuffer_multisample@int-draw-buffers-alpha-to-coverage 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.26] s

  * spec@ext_framebuffer_multisample@int-draw-buffers-alpha-to-one 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.26] s

  * spec@ext_framebuffer_object@fbo-stencil-gl_stencil_index16-drawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 273 d=s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 273 d=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@ext_packed_depth_stencil@fbo-depthstencil-gl_depth24_stencil8-copypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_packed_depth_stencil@fbo-depthstencil-gl_depth24_stencil8-drawpixels-32f_24_8_rev:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_packed_float@fbo-blending-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_packed_float@fbo-fast-clear:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@ext_packed_float@texwrap formats offset:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@ext_texture_compression_s3tc@getteximage-targets cube s3tc:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@ext_transform_feedback@order elements lines:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.10@execution@interpolation@interpolation-none-gl_backcolor-smooth-none:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.30@execution@clipping@vs-clip-distance-enables:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@glsl-1.30@execution@interpolation@interpolation-flat-gl_frontcolor-smooth-vertex:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@interpolation@interpolation-none-gl_backsecondarycolor-smooth-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@interpolation@interpolation-noperspective-gl_backsecondarycolor-smooth-none:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-1.30@execution@interpolation@interpolation-noperspective-gl_frontcolor-flat-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@glsl-1.30@execution@interpolation@interpolation-noperspective-gl_frontsecondarycolor-smooth-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@interpolation@interpolation-smooth-gl_backsecondarycolor-smooth-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-1.30@execution@interpolation@interpolation-smooth-gl_backsecondarycolor-smooth-none:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.30@execution@texelfetch fs sampler1darray 281x1-281x281:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.30@execution@texelfetch@vs-texelfetch-sampler1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.30@execution@texelfetch@vs-texelfetch-usampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.30@execution@texturesize@fs-texturesize-isampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.30@execution@texturesize@fs-texturesize-sampler3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.30@execution@texturesize@fs-texturesize-usampler2darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.30@execution@vs-texturelod-miplevels:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.40@execution@texturesize@fs-texturesize-sampler2darrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.50@execution@texturesize@gs-texturesize-sampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.50@execution@texturesize@gs-texturesize-usampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.50@execution@texturesize@tes-texturesize-sampler1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.50@execution@texturesize@tes-texturesize-sampler1dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.50@execution@texturesize@tes-texturesize-sampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@glsl-1.50@execution@texturesize@tes-texturesize-usamplercube:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.50@execution@variable-indexing@gs-input-array-vec4-index-rd:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@glsl-4.00@execution@built-in-functions@vs-equal-dvec2-dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-4.00@execution@built-in-functions@vs-greaterthan-dvec4-dvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-gt-int-int:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-le-int-int:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-lt-int-int-using-if:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  

Known issues
------------

  Here are the changes found in Patchwork_15864_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [PASS][4] -> [INCOMPLETE][5] ([i915#435])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb7/igt@gem_exec_create@madvise.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb6/igt@gem_exec_create@madvise.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([i915#476])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb4/igt@gem_exec_parallel@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb6/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@vcs1:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([fdo#111593])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb5/igt@gem_exec_parallel@vcs1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb1/igt@gem_exec_parallel@vcs1.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([i915#707])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd2.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([i915#456] / [i915#472])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb2/igt@gem_exec_suspend@basic-s0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb3/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] ([i915#472] / [i915#707])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb1/igt@gem_sync@basic-each.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb2/igt@gem_sync@basic-each.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][16] -> [DMESG-WARN][17] ([i915#180]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([i915#456] / [i915#460]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [PASS][20] -> [DMESG-WARN][21] ([i915#109])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-skl5/igt@kms_color@pipe-a-ctm-0-25.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-skl5/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#54]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +3 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [PASS][26] -> [DMESG-WARN][27] ([i915#766])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-tglb:         [PASS][28] -> [INCOMPLETE][29] ([i915#474] / [i915#667])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-tglb:         [PASS][30] -> [FAIL][31] ([i915#49])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-iclb:         [PASS][32] -> [INCOMPLETE][33] ([i915#123] / [i915#140]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-iclb4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-iclb4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#109441]) +4 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf@short-reads:
    - shard-apl:          [PASS][36] -> [TIMEOUT][37] ([i915#51])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-apl4/igt@perf@short-reads.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-apl2/igt@perf@short-reads.html

  
#### Possible fixes ####

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][38] ([i915#435]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb9/igt@gem_exec_nop@basic-series.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb1/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_parallel@vcs0:
    - shard-tglb:         [INCOMPLETE][40] ([fdo#111593]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb1/igt@gem_exec_parallel@vcs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb4/igt@gem_exec_parallel@vcs0.html

  * igt@gem_exec_schedule@preempt-queue-chain-render:
    - shard-tglb:         [INCOMPLETE][42] ([fdo#111606] / [fdo#111677]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-render.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb7/igt@gem_exec_schedule@preempt-queue-chain-render.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-tglb:         [TIMEOUT][44] ([fdo#112126] / [i915#530]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb5/igt@gem_persistent_relocs@forked-thrashing.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb6/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][46] ([i915#180]) -> [PASS][47] +4 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-apl8/igt@gem_softpin@noreloc-s3.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-apl8/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [INCOMPLETE][48] ([i915#472] / [i915#707]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb4/igt@gem_sync@basic-many-each.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb4/igt@gem_sync@basic-many-each.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][50] ([i915#435] / [i915#472]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb3/igt@gem_sync@basic-store-each.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb7/igt@gem_sync@basic-store-each.html

  * igt@gem_workarounds@suspend-resume:
    - shard-tglb:         [INCOMPLETE][52] ([i915#456] / [i915#460]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb1/igt@gem_workarounds@suspend-resume.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb7/igt@gem_workarounds@suspend-resume.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-kbl:          [DMESG-WARN][54] ([i915#716]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-kbl2/igt@gen9_exec_parse@allowed-all.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-kbl6/igt@gen9_exec_parse@allowed-all.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][56] ([i915#716]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-apl3/igt@gen9_exec_parse@allowed-single.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-apl3/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-hsw:          [DMESG-WARN][58] ([IGT#6]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-hsw1/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [FAIL][60] ([i915#54]) -> [PASS][61] +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][62] ([i915#72]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-glk4/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-glk4/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - shard-skl:          [INCOMPLETE][64] ([i915#646]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-skl5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-tglb:         [INCOMPLETE][66] ([i915#667]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb2/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb2/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-untiled:
    - shard-kbl:          [INCOMPLETE][68] ([fdo#103665] / [i915#667]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-kbl4/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][70] ([i915#79]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [FAIL][72] ([i915#49]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][74] ([i915#180]) -> [PASS][75] +3 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [INCOMPLETE][76] ([i915#435] / [i915#667]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [INCOMPLETE][78] ([fdo#103665]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][80] ([fdo#109441]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-iclb4/igt@kms_psr@psr2_sprite_blt.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:
    - shard-tglb:         [INCOMPLETE][82] ([i915#460]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb5/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb9/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc5-dpms:
    - shard-snb:          [INCOMPLETE][84] ([i915#82]) -> [SKIP][85] ([fdo#109271])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-snb1/igt@i915_pm_dc@dc5-dpms.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-snb2/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][86] ([i915#468]) -> [FAIL][87] ([i915#454])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@mock_requests:
    - shard-skl:          [INCOMPLETE][88] ([fdo#112156] / [i915#198] / [i915#873]) -> [INCOMPLETE][89] ([i915#198] / [i915#873])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-skl10/igt@i915_selftest@mock_requests.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/shard-skl4/igt@i915_selftest@mock_requests.html
    - shard-tglb:         [DMESG-WARN][90] ([i915#873]) -> [INCOMPLETE][91] ([i915#873])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/shard-tglb1/igt@i915_selftest@mock_requests.html
   [91]: https://intel-gfx-ci.01.org/tre

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15864/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
