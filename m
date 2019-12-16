Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DA4121B03
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 21:43:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 253766E889;
	Mon, 16 Dec 2019 20:43:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A93BF6E889;
 Mon, 16 Dec 2019 20:43:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9F815A363B;
 Mon, 16 Dec 2019 20:43:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 16 Dec 2019 20:43:38 -0000
Message-ID: <157652901864.5613.6581894871076144340@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213001511.678070-1-matthew.d.roper@intel.com>
In-Reply-To: <20191213001511.678070-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQVVY?=
 =?utf-8?q?_power_well_fixes_=28rev4=29?=
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

Series: AUX power well fixes (rev4)
URL   : https://patchwork.freedesktop.org/series/70857/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7554_full -> Patchwork_15737_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15737_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15737_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15737_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf_pmu@busy-vecs0:
    - shard-skl:          [PASS][1] -> ([INCOMPLETE][2], [PASS][3])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-skl9/igt@perf_pmu@busy-vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15737/shard-skl8/igt@perf_pmu@busy-vecs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15737/shard-skl3/igt@perf_pmu@busy-vecs0.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler1darray (NEW):
    - {pig-hsw-4770r}:    NOTRUN -> [FAIL][4] +907 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15737/pig-hsw-4770r/spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler1darray.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7554_full and Patchwork_15737_full:

### New Piglit tests (916) ###

  * hiz@hiz-depth-read-fbo-d24-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * object namespace pollution@texture with glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * object namespace pollution@texture with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * object namespace pollution@texture with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.25] s

  * spec@!opengl 1.1@teximage-colors gl_alpha:
    - Statuses : 1 fail(s)
    - Exec time: [0.25] s

  * spec@!opengl 1.1@teximage-colors gl_alpha12:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_alpha16:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_alpha4:
    - Statuses : 1 fail(s)
    - Exec time: [0.39] s

  * spec@!opengl 1.1@teximage-colors gl_alpha8:
    - Statuses : 1 fail(s)
    - Exec time: [0.34] s

  * spec@!opengl 1.1@teximage-colors gl_luminance:
    - Statuses : 1 fail(s)
    - Exec time: [0.32] s

  * spec@!opengl 1.1@teximage-colors gl_luminance12:
    - Statuses : 1 fail(s)
    - Exec time: [0.35] s

  * spec@!opengl 1.1@teximage-colors gl_luminance12_alpha12:
    - Statuses : 1 fail(s)
    - Exec time: [0.32] s

  * spec@!opengl 1.1@teximage-colors gl_luminance12_alpha4:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_luminance16:
    - Statuses : 1 fail(s)
    - Exec time: [0.28] s

  * spec@!opengl 1.1@teximage-colors gl_luminance16_alpha16:
    - Statuses : 1 fail(s)
    - Exec time: [0.28] s

  * spec@!opengl 1.1@teximage-colors gl_luminance4:
    - Statuses : 1 fail(s)
    - Exec time: [0.36] s

  * spec@!opengl 1.1@teximage-colors gl_luminance4_alpha4:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_luminance6_alpha2:
    - Statuses : 1 fail(s)
    - Exec time: [0.35] s

  * spec@!opengl 1.1@teximage-colors gl_luminance8:
    - Statuses : 1 fail(s)
    - Exec time: [0.34] s

  * spec@!opengl 1.1@teximage-colors gl_luminance8_alpha8:
    - Statuses : 1 fail(s)
    - Exec time: [0.36] s

  * spec@!opengl 1.1@teximage-colors gl_luminance_alpha:
    - Statuses : 1 fail(s)
    - Exec time: [0.34] s

  * spec@!opengl 1.1@teximage-colors gl_rgb10_a2:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_rgb16_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [5.20] s

  * spec@!opengl 1.1@teximage-colors gl_rgb16f:
    - Statuses : 1 fail(s)
    - Exec time: [5.18] s

  * spec@!opengl 1.1@teximage-colors gl_rgb32f:
    - Statuses : 1 fail(s)
    - Exec time: [5.21] s

  * spec@!opengl 1.1@teximage-colors gl_rgb5_a1:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@!opengl 1.1@teximage-colors gl_rgba:
    - Statuses : 1 fail(s)
    - Exec time: [5.15] s

  * spec@!opengl 1.1@teximage-colors gl_rgba12:
    - Statuses : 1 fail(s)
    - Exec time: [0.34] s

  * spec@!opengl 1.1@teximage-colors gl_rgba16:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@!opengl 1.1@teximage-colors gl_rgba16_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.26] s

  * spec@!opengl 1.1@teximage-colors gl_rgba2:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_rgba32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.25] s

  * spec@!opengl 1.1@teximage-colors gl_rgba4:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.1@teximage-colors gl_rgba8:
    - Statuses : 1 fail(s)
    - Exec time: [0.27] s

  * spec@!opengl 1.1@teximage-colors gl_rgba8_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_sluminance8:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.1@teximage-colors gl_sluminance8_alpha8:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_srgb8_alpha8:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.2@copyteximage 3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.32] s

  * spec@!opengl 1.2@getteximage-targets 3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.2@levelclamp:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@!opengl 1.2@lodclamp:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@!opengl 1.2@tex3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.2@texture-packed-formats:
    - Statuses : 1 fail(s)
    - Exec time: [2.27] s

  * spec@!opengl 1.2@texwrap 3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.2@texwrap 3d proj:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.4@gl-1.4-dlist-multidrawarrays:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.4@gl-1.4-polygon-offset:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 1.4@tex-miplevel-selection-lod:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@!opengl 1.4@tex-miplevel-selection-lod-bias:
    - Statuses : 1 fail(s)
    - Exec time: [1.06] s

  * spec@!opengl 1.5@depth-tex-compare:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@!opengl 1.5@draw-vertices:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@!opengl 1.5@draw-vertices-user:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@!opengl 2.0@attribs:
    - Statuses : 1 fail(s)
    - Exec time: [0.63] s

  * spec@!opengl 2.0@depth-tex-modes-glsl:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@!opengl 2.0@gl-2.0-two-sided-stencil:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 2.0@max-samplers:
    - Statuses : 1 fail(s)
    - Exec time: [0.46] s

  * spec@!opengl 2.0@max-samplers border:
    - Statuses : 1 fail(s)
    - Exec time: [0.46] s

  * spec@!opengl 2.0@stencil-twoside:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@!opengl 2.0@tex3d-npot:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@!opengl 2.1@pbo:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@!opengl 3.0@attribs:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@!opengl 3.0@bound-resource-limits:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@!opengl 3.0@clearbuffer-depth:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@!opengl 3.0@clearbuffer-depth-stencil:
    - Statuses : 1 fail(s)
    - Exec time: [0.25] s

  * spec@!opengl 3.0@clearbuffer-display-lists:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 3.0@clearbuffer-mixed-format:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 3.0@clearbuffer-stencil:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 3.0@gl-3.0-texture-integer:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 3.0@render-integer:
    - Statuses : 1 fail(s)
    - Exec time: [0.25] s

  * spec@!opengl 3.0@sampler-cube-shadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@!opengl 3.2@coord-replace-doesnt-eliminate-frag-tex-coords:
    - Statuses : 1 fail(s)
    - Exec time: [0.50] s

  * spec@!opengl 3.2@layered-rendering@clear-color-all-types 1d_array single_level:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 3.2@layered-rendering@clear-color-all-types cube_map mipmapped:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 3.2@layered-rendering@clear-color-all-types cube_map single_level:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 3.2@layered-rendering@framebuffertexture:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 3.2@layered-rendering@gl-layer-render-clipped:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@!opengl 3.2@layered-rendering@gl-layer-render-storage:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@3dfx_texture_compression_fxt1@fxt1-teximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_arrays_of_arrays@execution@atomic_counters@vs-indirect-index:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_base_instance@arb_base_instance-drawarrays:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_blend_func_extended@arb_blend_func_extended-fbo-extended-blend:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_blend_func_extended@arb_blend_func_extended-fbo-extended-blend-explicit:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_blend_func_extended@arb_blend_func_extended-fbo-extended-blend-explicit_gles3:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@arb_blend_func_extended@arb_blend_func_extended-fbo-extended-blend_gles3:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_clip_control@arb_clip_control-viewport:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_color_buffer_float@gl_rgba16f-probepixel:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_color_buffer_float@gl_rgba16f-render:
    - Statuses : 1 fail(s)
    - Exec time: [0.70] s

  * spec@arb_color_buffer_float@gl_rgba16f-render-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.74] s

  * spec@arb_color_buffer_float@gl_rgba16f-render-sanity-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@arb_color_buffer_float@gl_rgba32f-drawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_color_buffer_float@gl_rgba32f-probepixel:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_color_buffer_float@gl_rgba32f-render:
    - Statuses : 1 fail(s)
    - Exec time: [0.64] s

  * spec@arb_color_buffer_float@gl_rgba32f-render-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.63] s

  * spec@arb_color_buffer_float@gl_rgba32f-render-sanity:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_color_buffer_float@gl_rgba8-render:
    - Statuses : 1 fail(s)
    - Exec time: [0.65] s

  * spec@arb_color_buffer_float@gl_rgba8-render-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.67] s

  * spec@arb_color_buffer_float@gl_rgba8-render-sanity-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_color_buffer_float@gl_rgba8_snorm-render:
    - Statuses : 1 fail(s)
    - Exec time: [0.72] s

  * spec@arb_color_buffer_float@gl_rgba8_snorm-render-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.80] s

  * spec@arb_color_buffer_float@gl_rgba8_snorm-render-sanity:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_color_buffer_float@gl_rgba8_snorm-render-sanity-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_compute_shader@render-and-compute:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_copy_buffer@overlap:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_copy_buffer@targets:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_copy_image@arb_copy_image-format-swizzle:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@arb_copy_image@arb_copy_image-formats --samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [1.53] s

  * spec@arb_copy_image@arb_copy_image-formats --samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [1.58] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d 32 1 1 gl_texture_cube_map 32 32 6 11 0 0 5 13 4 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d_array 32 1 12 gl_texture_2d_array 32 16 18 11 0 3 5 9 7 14 1 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d_array 32 1 12 gl_texture_3d 32 16 18 11 0 3 5 9 2 14 1 7:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d_array 32 1 12 gl_texture_cube_map_array 32 32 18 11 0 3 5 17 2 14 1 7:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_2d_array 32 16 15 11 12 0 5 7 12 14 8 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_2d_array 32 16 15 11 12 5 5 7 2 14 9 9:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_3d 32 16 18 11 5 2 5 9 7 14 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_cube_map 32 32 6 11 5 1 5 9 2 14 7 3:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_cube_map_array 32 32 18 11 5 2 5 9 7 14 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_1d 32 1 1 11 23 7 5 0 0 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_2d 32 16 1 11 12 13 5 7 0 14 7 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_2d_array 32 16 15 11 12 5 5 3 2 14 13 9:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_3d 32 16 18 11 5 2 5 9 7 14 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_cube_map_array 16 16 18 11 5 2 5 9 7 5 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_rectangle 32 16 1 11 12 13 5 7 0 14 9 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_1d_array 32 1 16 11 2 3 5 0 7 14 1 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_cube_map_array 32 32 18 11 5 1 5 9 9 14 7 5:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_1d 32 1 1 11 23 7 5 0 0 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_2d_array 32 16 15 11 12 5 5 1 2 14 15 9:
    - Statuses : 1 fail(s)
    - Exec time: [0.25] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_3d 32 16 18 11 5 2 5 9 7 14 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_cube_map_array 16 16 18 11 5 2 5 9 7 5 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_rectangle 32 16 1 11 12 13 5 7 0 14 6 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_copy_image@arb_copy_image-texview:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 d=z32f_s8_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.50] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 273 d=z32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 273 d=z32f_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 273 d=z32f_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 273 s=z24_s8_d=z32f_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 292 d=z32f_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 292 s=z24_s8_d=z32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 585 d=z32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 585 d=z32f_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_depth_buffer_float@fbo-clear-formats stencil:
    - Statuses : 1 fail(s)
    - Exec time: [0.44] s

  * spec@arb_depth_texture@depth-tex-modes:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 1024 d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 146 d=z16:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 273 d=z16:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 273 d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 292 d=z16:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 292 d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 585 d=z16:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 585 d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_depth_texture@fbo-depth-gl_depth_component16-copypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_depth_texture@texdepth:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@arb_direct_state_access@copytexturesubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_direct_state_access@getcompressedtextureimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_direct_state_access@gettextureimage-targets:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_draw_elements_base_vertex@arb_draw_elements_base_vertex-drawelements:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_draw_elements_base_vertex@arb_draw_elements_base_vertex-drawelements-instanced:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_draw_elements_base_vertex@arb_draw_elements_base_vertex-drawelements-user_varrays:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@arb_draw_elements_base_vertex@arb_draw_elements_base_vertex-negative-index:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_explicit_attrib_location@overlapping-locations-input-attribs shader:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@arb_fragment_program@fp-lit-src-equals-dst:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_fragment_program@fp-long-alu:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_fragment_program@sparse-samplers:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_framebuffer_no_attachments@arb_framebuffer_no_attachments-query:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_framebuffer_object@fbo-blit-stretch:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@arb_framebuffer_object@fbo-generatemipmap-3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_framebuffer_object@fbo-generatemipmap-3d rgb9_e5:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_framebuffer_object@fbo-generatemipmap-cubemap rgb9_e5:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@arb_framebuffer_object@fbo-mipmap-copypix:
    - Statuses : 1 fail(s)
    - Exec time: [0.39] s

  * spec@arb_framebuffer_srgb@fbo-fast-clear:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_get_texture_sub_image@arb_get_texture_sub_image-get:
    - Statuses : 1 fail(s)
    - Exec time: [0.68] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-float-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.62] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-float-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.58] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-float-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.66] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-float-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.66] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-float-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.67] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-int-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.75] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-int-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.67] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.75] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-int-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.65] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-int-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.67] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.66] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-uint-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.67] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.64] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-unorm-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.77] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-unorm-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.80] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-unorm-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.72] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-unorm-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.57] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-unorm-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.70] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-float-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.76] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-float-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.72] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-float-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.73] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-float-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.76] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-float-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.67] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-int-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.72] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-int-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.66] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.57] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-int-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.78] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-int-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.72] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.64] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.69] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.68] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.81] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-unorm-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.83] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-unorm-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.67] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-unorm-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.65] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-unorm-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.62] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-unorm-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.67] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-float-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.69] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-float-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.71] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-float-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.66] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-float-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.69] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-float-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.61] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-int-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.60] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.70] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-int-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.61] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-int-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.65] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.69] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.71] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.64] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.77] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.63] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-unorm-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.67] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-unorm-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.73] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-unorm-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.75] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-unorm-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.61] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-unorm-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.62] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-float-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.50] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-float-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.59] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-float-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.72] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-float-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.63] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-int-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.60] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.59] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-int-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.76] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-unorm-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.69] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-unorm-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.66] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-unorm-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.64] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-unorm-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.70] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-unorm-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.60] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-float-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.61] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-float-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.76] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-1-float-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.68] s

  * spec@arb_gpu_s

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15737/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
