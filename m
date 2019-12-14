Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B27311F0A5
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 08:04:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9F986E31E;
	Sat, 14 Dec 2019 07:04:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4EDCC6E530;
 Sat, 14 Dec 2019 07:04:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 465E1A0BCB;
 Sat, 14 Dec 2019 07:04:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Sat, 14 Dec 2019 07:04:33 -0000
Message-ID: <157630707325.13804.18376699192623841926@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213130228.29509-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191213130228.29509-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_second_DBuf_slice_for_ICL_and_TGL_=28rev8=29?=
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

Series: Enable second DBuf slice for ICL and TGL (rev8)
URL   : https://patchwork.freedesktop.org/series/70059/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7558_full -> Patchwork_15742_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15742_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15742_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15742_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-apl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15742/shard-apl8/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-skl:          [PASS][2] -> [DMESG-WARN][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7558/shard-skl5/igt@gen9_exec_parse@allowed-single.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15742/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * {igt@gen9_exec_parse@bb-chained}:
    - shard-iclb:         NOTRUN -> [SKIP][4] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15742/shard-iclb6/igt@gen9_exec_parse@bb-chained.html

  * {igt@gen9_exec_parse@bb-start-param}:
    - shard-tglb:         NOTRUN -> [SKIP][5] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15742/shard-tglb5/igt@gen9_exec_parse@bb-start-param.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler1darray (NEW):
    - pig-hsw-4770r:      NOTRUN -> [FAIL][6] +1321 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15742/pig-hsw-4770r/spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler1darray.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7558_full and Patchwork_15742_full:

### New Piglit tests (1010) ###

  * hiz@hiz-depth-read-window-stencil1:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * object namespace pollution@texture with glbitmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * object namespace pollution@texture with glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * object namespace pollution@texture with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * shaders@glsl-fs-floor:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * shaders@glsl-fs-texture2dproj-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.2@copyteximage 3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.32] s

  * spec@!opengl 1.2@getteximage-targets 3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@!opengl 1.2@levelclamp:
    - Statuses : 1 fail(s)
    - Exec time: [4.79] s

  * spec@!opengl 1.2@lodclamp:
    - Statuses : 1 fail(s)
    - Exec time: [4.74] s

  * spec@!opengl 1.2@mipmap-setup:
    - Statuses : 1 fail(s)
    - Exec time: [4.53] s

  * spec@!opengl 1.2@tex3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.27] s

  * spec@!opengl 1.2@texture-packed-formats:
    - Statuses : 1 fail(s)
    - Exec time: [2.37] s

  * spec@!opengl 1.3@tex-border-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 1.4@draw-batch:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 1.4@gl-1.4-dlist-multidrawarrays:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.4@gl-1.4-polygon-offset:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 1.4@tex-miplevel-selection-lod:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@!opengl 1.4@tex-miplevel-selection-lod-bias:
    - Statuses : 1 fail(s)
    - Exec time: [1.13] s

  * spec@!opengl 1.5@depth-tex-compare:
    - Statuses : 1 fail(s)
    - Exec time: [0.28] s

  * spec@!opengl 1.5@draw-vertices:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@!opengl 1.5@draw-vertices-user:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@!opengl 2.0@attribs:
    - Statuses : 1 fail(s)
    - Exec time: [0.68] s

  * spec@!opengl 2.0@depth-tex-modes-glsl:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 2.0@gl-2.0-two-sided-stencil:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 2.0@max-samplers:
    - Statuses : 1 fail(s)
    - Exec time: [0.53] s

  * spec@!opengl 2.0@max-samplers border:
    - Statuses : 1 fail(s)
    - Exec time: [0.45] s

  * spec@!opengl 2.0@stencil-twoside:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@!opengl 2.0@tex3d-npot:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 2.0@vertex-program-two-side enabled front back back2:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 2.0@vertex-program-two-side enabled front front2 back2:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 2.1@pbo:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@!opengl 3.0@attribs:
    - Statuses : 1 fail(s)
    - Exec time: [0.25] s

  * spec@!opengl 3.0@clearbuffer-depth:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 3.0@clearbuffer-depth-stencil:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@!opengl 3.0@clearbuffer-display-lists:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 3.0@clearbuffer-mixed-format:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 3.0@clearbuffer-stencil:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@!opengl 3.0@gl-3.0-texture-integer:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 3.0@render-integer:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@!opengl 3.0@sampler-cube-shadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 3.2@coord-replace-doesnt-eliminate-frag-tex-coords:
    - Statuses : 1 fail(s)
    - Exec time: [0.56] s

  * spec@!opengl 3.2@layered-rendering@clear-color-all-types cube_map_array mipmapped:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 3.2@layered-rendering@framebuffertexture:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 3.2@layered-rendering@gl-layer:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 3.2@layered-rendering@gl-layer-cube-map:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 3.2@layered-rendering@gl-layer-render:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 3.2@layered-rendering@gl-layer-render-clipped:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@3dfx_texture_compression_fxt1@compressedteximage gl_compressed_rgba_fxt1_3dfx:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@3dfx_texture_compression_fxt1@fbo-generatemipmap-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@3dfx_texture_compression_fxt1@fxt1-teximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@amd_shader_trinary_minmax@execution@built-in-functions@fs-mid3-ivec2-ivec2-ivec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@amd_shader_trinary_minmax@execution@built-in-functions@fs-min3-int-int-int:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_arrays_of_arrays@execution@sampler@fs-initializer-const-index:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_base_instance@arb_base_instance-drawarrays:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_blend_func_extended@arb_blend_func_extended-fbo-extended-blend:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_blend_func_extended@arb_blend_func_extended-fbo-extended-blend-explicit:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_blend_func_extended@arb_blend_func_extended-fbo-extended-blend-explicit_gles3:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_blend_func_extended@arb_blend_func_extended-fbo-extended-blend_gles3:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_clear_texture@arb_clear_texture-base-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_clip_control@arb_clip_control-clip-control:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@arb_clip_control@arb_clip_control-depth-precision:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_clip_control@arb_clip_control-viewport:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_color_buffer_float@gl_rgba16f-render:
    - Statuses : 1 fail(s)
    - Exec time: [0.71] s

  * spec@arb_color_buffer_float@gl_rgba16f-render-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.76] s

  * spec@arb_color_buffer_float@gl_rgba16f-render-sanity:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_color_buffer_float@gl_rgba16f-render-sanity-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_color_buffer_float@gl_rgba32f-render:
    - Statuses : 1 fail(s)
    - Exec time: [0.64] s

  * spec@arb_color_buffer_float@gl_rgba32f-render-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.65] s

  * spec@arb_color_buffer_float@gl_rgba32f-render-sanity:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_color_buffer_float@gl_rgba8-render:
    - Statuses : 1 fail(s)
    - Exec time: [0.52] s

  * spec@arb_color_buffer_float@gl_rgba8-render-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.74] s

  * spec@arb_color_buffer_float@gl_rgba8-render-sanity:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_color_buffer_float@gl_rgba8-render-sanity-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_color_buffer_float@gl_rgba8_snorm-probepixel:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_color_buffer_float@gl_rgba8_snorm-render:
    - Statuses : 1 fail(s)
    - Exec time: [0.81] s

  * spec@arb_color_buffer_float@gl_rgba8_snorm-render-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.77] s

  * spec@arb_color_buffer_float@gl_rgba8_snorm-render-sanity:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_color_buffer_float@gl_rgba8_snorm-render-sanity-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_color_buffer_float@mixed-mrt:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_compute_shader@render-and-compute:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_copy_buffer@overlap:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_copy_image@arb_copy_image-format-swizzle:
    - Statuses : 1 fail(s)
    - Exec time: [0.26] s

  * spec@arb_copy_image@arb_copy_image-formats --samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [1.44] s

  * spec@arb_copy_image@arb_copy_image-formats --samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [1.45] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d_array 32 1 12 gl_texture_2d_array 32 16 18 11 0 3 5 9 7 14 1 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d_array 32 1 12 gl_texture_3d 32 16 18 11 0 3 5 9 2 14 1 7:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d_array 32 1 12 gl_texture_cube_map 32 32 6 11 0 3 5 17 2 14 1 3:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d_array 32 1 12 gl_texture_cube_map_array 32 32 18 11 0 3 5 17 2 14 1 7:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_1d_array 32 1 16 11 2 0 5 0 7 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_2d 32 16 1 11 12 0 5 7 0 14 9 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_3d 32 16 18 11 5 0 5 9 7 14 7 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_2d_array 32 16 15 11 12 5 5 7 2 14 9 9:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_3d 32 16 18 11 5 2 5 9 7 14 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_cube_map_array 32 32 18 11 5 2 5 9 7 14 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.28] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_1d 32 1 1 11 23 7 5 0 0 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_1d_array 32 1 16 11 2 5 5 0 7 14 1 7:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_2d 32 16 1 11 12 13 5 7 0 14 7 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_2d_array 32 16 15 11 12 5 5 3 2 14 13 9:
    - Statuses : 1 fail(s)
    - Exec time: [0.28] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_3d 32 16 18 11 5 2 5 9 7 14 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_cube_map_array 16 16 18 11 5 2 5 9 7 5 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.46] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_1d 32 1 1 11 23 3 5 0 0 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_2d_array 32 16 15 11 12 1 5 3 2 14 11 4:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_3d 32 16 18 11 5 0 5 9 7 14 7 4:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_cube_map_array 32 32 18 11 5 1 5 9 9 14 7 5:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_1d 32 1 1 11 23 7 5 0 0 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_1d_array 32 1 16 11 2 5 5 0 7 14 1 7:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_2d_array 32 16 15 11 12 5 5 1 2 14 15 9:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_3d 32 16 18 11 5 2 5 9 7 14 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_cube_map 16 16 6 11 5 1 5 9 2 5 7 3:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_cube_map_array 16 16 18 11 5 2 5 9 7 5 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_rectangle 32 32 1 gl_texture_rectangle 32 16 1 11 12 0 5 7 0 14 9 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 d=s=z32f_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.48] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 s=d=z32f_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.49] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 146 d=z32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 146 d=z32f_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 273 d=z32f_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 273 s=z24_s8_d=z32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 292 s=z24_s8_d=z32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 585 d=z32f_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 585 s=z24_s8_d=z32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_depth_buffer_float@fbo-clear-formats stencil:
    - Statuses : 1 fail(s)
    - Exec time: [0.44] s

  * spec@arb_depth_buffer_float@texwrap formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_depth_texture@depth-tex-modes:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 1024 d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 146 d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 273 d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 292 d=z16:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 292 d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 585 d=z16:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_depth_texture@texdepth:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_depth_texture@texwrap formats offset:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_direct_state_access@gettextureimage-targets:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_direct_state_access@textures-storage:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_draw_elements_base_vertex@arb_draw_elements_base_vertex-drawelements:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_draw_elements_base_vertex@arb_draw_elements_base_vertex-drawelements-instanced:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_draw_elements_base_vertex@arb_draw_elements_base_vertex-drawelements-user_varrays:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@arb_fragment_program@fp-long-alu:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_framebuffer_object@fbo-blit-stretch:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@arb_framebuffer_object@fbo-drawbuffers-none glblendfunci:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_framebuffer_object@fbo-drawbuffers-none glblitframebuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_framebuffer_object@fbo-drawbuffers-none use_frag_out:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_framebuffer_object@fbo-generatemipmap-3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@arb_framebuffer_object@fbo-mipmap-copypix:
    - Statuses : 1 fail(s)
    - Exec time: [0.45] s

  * spec@arb_framebuffer_srgb@framebuffer-srgb:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_get_texture_sub_image@arb_get_texture_sub_image-get:
    - Statuses : 1 fail(s)
    - Exec time: [0.70] s

  * spec@arb_gpu_shader5@execution@ubo_array_indexing@vs-array-nonconst:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-float-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.67] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-float-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.52] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-float-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.71] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-float-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.58] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-float-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.69] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-int-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.57] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-int-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.61] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.62] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-int-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.65] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-int-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.74] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.57] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-uint-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.80] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.71] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-unorm-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.38] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-unorm-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.70] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-unorm-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.65] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-unorm-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.65] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-unorm-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.71] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-float-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.76] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-float-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.70] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-float-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.68] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-float-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.53] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-float-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.65] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-int-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.63] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-int-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.64] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.65] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-int-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.70] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-int-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.70] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.50] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.67] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.77] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.63] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-unorm-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.66] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-unorm-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.65] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-unorm-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.67] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-unorm-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.56] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-unorm-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.66] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-float-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.72] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-float-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.74] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-float-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.70] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-float-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.64] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-float-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.60] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-int-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.69] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.64] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-int-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.55] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-int-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.64] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.74] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.76] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.57] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.79] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.68] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-unorm-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.66] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-unorm-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.76] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-unorm-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.56] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-unorm-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.65] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-unorm-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.70] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-float-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.73] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-float-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.70] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-float-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.62] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-float-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.62] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-int-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.66] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.78] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-int-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.64] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.61] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-uint-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.75] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.68] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-uint-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.69] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-uint-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.74] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-unorm-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.64] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-unorm-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.64] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-unorm-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.64] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-unorm-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.68] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-unorm-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.68] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-float-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.59] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-float-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.72] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-float-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.79] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-int-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.66] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.50] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.78] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-uint-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.75] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.69] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-uint-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.67] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-uint-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.68] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-unorm-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.62] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-unorm-2darray:
    - Statuses : 1 fail(s)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15742/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
