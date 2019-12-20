Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BDE12839E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 22:06:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A8936E14B;
	Fri, 20 Dec 2019 21:06:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9597E6E14B;
 Fri, 20 Dec 2019 21:06:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8BD93A0118;
 Fri, 20 Dec 2019 21:06:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Abdiel Janulgue" <abdiel.janulgue@linux.intel.com>
Date: Fri, 20 Dec 2019 21:06:35 -0000
Message-ID: <157687599554.9211.15244732482057794861@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191219112122.4892-1-abdiel.janulgue@linux.intel.com>
In-Reply-To: <20191219112122.4892-1-abdiel.janulgue@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_allow_prefaulting_disco?=
 =?utf-8?q?ntiguous_objects_in_remap=5Fio=5Fmapping=28=29?=
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

Series: series starting with [1/3] drm/i915: allow prefaulting discontiguous objects in remap_io_mapping()
URL   : https://patchwork.freedesktop.org/series/71163/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7607_full -> Patchwork_15841_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7607_full and Patchwork_15841_full:

### New Piglit tests (321) ###

  * hiz@hiz-depth-read-fbo-d24-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * hiz@hiz-depth-read-window-stencil1:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-32f_24_8_rev samples=8:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.1@teximage-colors gl_alpha:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@!opengl 1.1@teximage-colors gl_alpha12:
    - Statuses : 1 fail(s)
    - Exec time: [0.32] s

  * spec@!opengl 1.1@teximage-colors gl_alpha16:
    - Statuses : 1 fail(s)
    - Exec time: [0.35] s

  * spec@!opengl 1.1@teximage-colors gl_alpha4:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.1@teximage-colors gl_alpha8:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_luminance:
    - Statuses : 1 fail(s)
    - Exec time: [0.32] s

  * spec@!opengl 1.1@teximage-colors gl_luminance12:
    - Statuses : 1 fail(s)
    - Exec time: [0.37] s

  * spec@!opengl 1.1@teximage-colors gl_luminance12_alpha12:
    - Statuses : 1 fail(s)
    - Exec time: [0.34] s

  * spec@!opengl 1.1@teximage-colors gl_luminance12_alpha4:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_luminance16:
    - Statuses : 1 fail(s)
    - Exec time: [0.37] s

  * spec@!opengl 1.1@teximage-colors gl_luminance16_alpha16:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_luminance4:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_luminance4_alpha4:
    - Statuses : 1 fail(s)
    - Exec time: [0.36] s

  * spec@!opengl 1.1@teximage-colors gl_luminance6_alpha2:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.1@teximage-colors gl_luminance8:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.1@teximage-colors gl_luminance8_alpha8:
    - Statuses : 1 fail(s)
    - Exec time: [0.34] s

  * spec@!opengl 1.1@teximage-colors gl_luminance_alpha:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.1@teximage-colors gl_r11f_g11f_b10f:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@!opengl 1.1@teximage-colors gl_r16:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@!opengl 1.1@teximage-colors gl_r16_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.36] s

  * spec@!opengl 1.1@teximage-colors gl_r16f:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_r32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.1@teximage-colors gl_r3_g3_b2:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_r8:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_r8_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_red:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.1@teximage-colors gl_rg:
    - Statuses : 1 fail(s)
    - Exec time: [0.34] s

  * spec@!opengl 1.1@teximage-colors gl_rg16:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@!opengl 1.1@teximage-colors gl_rg16_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.28] s

  * spec@!opengl 1.1@teximage-colors gl_rg16f:
    - Statuses : 1 fail(s)
    - Exec time: [0.27] s

  * spec@!opengl 1.1@teximage-colors gl_rg32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_rg8:
    - Statuses : 1 fail(s)
    - Exec time: [0.34] s

  * spec@!opengl 1.1@teximage-colors gl_rg8_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@!opengl 1.1@teximage-colors gl_rgb:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_rgb10:
    - Statuses : 1 fail(s)
    - Exec time: [0.28] s

  * spec@!opengl 1.1@teximage-colors gl_rgb10_a2:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_rgb12:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_rgb16:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.1@teximage-colors gl_rgb16_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.1@teximage-colors gl_rgb16f:
    - Statuses : 1 fail(s)
    - Exec time: [0.32] s

  * spec@!opengl 1.1@teximage-colors gl_rgb32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.35] s

  * spec@!opengl 1.1@teximage-colors gl_rgb4:
    - Statuses : 1 fail(s)
    - Exec time: [0.32] s

  * spec@!opengl 1.1@teximage-colors gl_rgb5:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@!opengl 1.1@teximage-colors gl_rgb5_a1:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_rgb8:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@!opengl 1.1@teximage-colors gl_rgb8_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_rgb9_e5:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_rgba:
    - Statuses : 1 fail(s)
    - Exec time: [0.28] s

  * spec@!opengl 1.1@teximage-colors gl_rgba12:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@!opengl 1.1@teximage-colors gl_rgba16:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_rgba16_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.34] s

  * spec@!opengl 1.1@teximage-colors gl_rgba2:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.1@teximage-colors gl_rgba32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.1@teximage-colors gl_rgba4:
    - Statuses : 1 fail(s)
    - Exec time: [0.32] s

  * spec@!opengl 1.1@teximage-colors gl_rgba8:
    - Statuses : 1 fail(s)
    - Exec time: [0.28] s

  * spec@!opengl 1.1@teximage-colors gl_rgba8_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.1@teximage-colors gl_sluminance8:
    - Statuses : 1 fail(s)
    - Exec time: [0.37] s

  * spec@!opengl 1.1@teximage-colors gl_sluminance8_alpha8:
    - Statuses : 1 fail(s)
    - Exec time: [0.40] s

  * spec@!opengl 1.1@teximage-colors gl_srgb8:
    - Statuses : 1 fail(s)
    - Exec time: [0.36] s

  * spec@!opengl 1.1@teximage-colors gl_srgb8_alpha8:
    - Statuses : 1 fail(s)
    - Exec time: [0.40] s

  * spec@!opengl 1.1@texsubimage-unpack:
    - Statuses : 1 fail(s)
    - Exec time: [9.91] s

  * spec@!opengl 1.1@texwrap formats:
    - Statuses : 1 fail(s)
    - Exec time: [5.61] s

  * spec@!opengl 1.1@texwrap formats bordercolor:
    - Statuses : 1 fail(s)
    - Exec time: [5.40] s

  * spec@!opengl 1.1@texwrap formats bordercolor-swizzled:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@!opengl 1.1@texwrap formats offset:
    - Statuses : 1 fail(s)
    - Exec time: [5.62] s

  * spec@!opengl 1.2@copyteximage 3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.35] s

  * spec@!opengl 1.2@getteximage-targets 3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.2@levelclamp:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@!opengl 1.2@lodclamp:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@!opengl 1.2@mipmap-setup:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.2@tex3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.2@texture-packed-formats:
    - Statuses : 1 fail(s)
    - Exec time: [2.13] s

  * spec@!opengl 1.2@texwrap 3d proj:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.4@gl-1.4-dlist-multidrawarrays:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.4@gl-1.4-polygon-offset:
    - Statuses : 1 fail(s)
    - Exec time: [0.69] s

  * spec@!opengl 1.4@stencil-wrap:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 1.4@tex-miplevel-selection-lod:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@!opengl 1.4@tex-miplevel-selection-lod-bias:
    - Statuses : 1 fail(s)
    - Exec time: [1.07] s

  * spec@!opengl 1.5@depth-tex-compare:
    - Statuses : 1 fail(s)
    - Exec time: [0.27] s

  * spec@!opengl 1.5@draw-elements:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.5@draw-vertices:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.5@draw-vertices-user:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@!opengl 2.0@attribs:
    - Statuses : 1 fail(s)
    - Exec time: [0.63] s

  * spec@!opengl 2.0@gl-2.0-two-sided-stencil:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 2.0@gl-2.0-vertex-attr-0:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 2.0@max-samplers:
    - Statuses : 1 fail(s)
    - Exec time: [0.46] s

  * spec@!opengl 2.0@max-samplers border:
    - Statuses : 1 fail(s)
    - Exec time: [0.42] s

  * spec@!opengl 2.0@stencil-twoside:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 2.0@tex3d-npot:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 2.1@pbo:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@!opengl 3.0@attribs:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@!opengl 3.0@clearbuffer-depth:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@!opengl 3.0@clearbuffer-depth-stencil:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@!opengl 3.0@clearbuffer-mixed-format:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 3.0@clearbuffer-stencil:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@!opengl 3.0@gl-3.0-texture-integer:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 3.0@render-integer:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@!opengl 3.0@sampler-cube-shadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 3.2@coord-replace-doesnt-eliminate-frag-tex-coords:
    - Statuses : 1 fail(s)
    - Exec time: [0.54] s

  * spec@!opengl 3.2@layered-rendering@framebuffertexture:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 3.2@layered-rendering@gl-layer-cube-map:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@!opengl 3.2@layered-rendering@gl-layer-render:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@3dfx_texture_compression_fxt1@fxt1-teximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 d=z32f_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 146 ds=z32f_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 273 d=z32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 273 s=z24_s8_d=z32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 292 s=z24_s8_d=z32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 585 d=z32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 585 d=z32f_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_depth_texture@depth-tex-modes:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 1024 d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 273 d=z16:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 292 d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 585 d=z16:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 585 d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_depth_texture@texdepth:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_explicit_attrib_location@overlapping-locations-input-attribs api:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@arb_framebuffer_object@fbo-blit-stretch:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-float-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.76] s

  * spec@arb_point_sprite@arb_point_sprite-checkerboard:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_provoking_vertex@arb-provoking-vertex-render:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@arb_separate_shader_objects@400 combinations by location:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_separate_shader_objects@400 combinations by name:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_texture_cube_map@cubemap:
    - Statuses : 1 fail(s)
    - Exec time: [0.73] s

  * spec@arb_texture_cube_map_array@arb_texture_cube_map_array-fbo-cubemap-array:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_texture_multisample@arb_texture_multisample-texelfetch 4:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@arb_texture_multisample@large-float-texture-array-fp16:
    - Statuses : 1 fail(s)
    - Exec time: [0.57] s

  * spec@arb_texture_multisample@texelfetch@4-vs-sampler2dmsarray:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_texture_multisample@texelfetch@6-fs-isampler2dmsarray:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_texture_multisample@texelfetch@6-fs-sampler2dmsarray:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_texture_multisample@texelfetch@6-gs-isampler2dms:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_texture_multisample@texelfetch@8-fs-sampler2dmsarray:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_texture_multisample@texelfetch@8-gs-usampler2dms:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_texture_multisample@texelfetch@8-vs-isampler2dms:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_texture_multisample@texelfetch@8-vs-sampler2dmsarray:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_texture_rectangle@copyteximage rect:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_texture_rectangle@copyteximage rect samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_texture_rectangle@copyteximage rect samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_texture_rectangle@copyteximage rect samples=8:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_texture_rectangle@texrect-many:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_texture_rg@rg-draw-pixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_texture_storage@texture-storage:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_framebuffer_blit@fbo-readdrawpix:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@ext_framebuffer_multisample@turn-on-off 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@ext_framebuffer_multisample@turn-on-off 4:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@ext_framebuffer_multisample@turn-on-off 6:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@ext_framebuffer_multisample@turn-on-off 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 s=z24_s8_d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 146 d=z24_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 273 s=z24_s8_d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 292 s=z24_s8_d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 585 d=z24_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 585 s=z24_s8_d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@ext_texture_array@array-texture:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@ext_texture_array@copyteximage 1d_array:
    - Statuses : 1 fail(s)
    - Exec time: [1.10] s

  * spec@ext_texture_array@copyteximage 1d_array samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [1.13] s

  * spec@ext_texture_array@copyteximage 1d_array samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [1.07] s

  * spec@ext_texture_array@copyteximage 1d_array samples=6:
    - Statuses : 1 fail(s)
    - Exec time: [1.07] s

  * spec@ext_texture_array@copyteximage 1d_array samples=8:
    - Statuses : 1 fail(s)
    - Exec time: [1.06] s

  * spec@ext_texture_array@copyteximage 2d_array:
    - Statuses : 1 fail(s)
    - Exec time: [0.43] s

  * spec@ext_texture_array@copyteximage 2d_array samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [0.50] s

  * spec@ext_texture_array@copyteximage 2d_array samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.46] s

  * spec@ext_texture_array@copyteximage 2d_array samples=6:
    - Statuses : 1 fail(s)
    - Exec time: [0.45] s

  * spec@ext_texture_array@copyteximage 2d_array samples=8:
    - Statuses : 1 fail(s)
    - Exec time: [0.50] s

  * spec@ext_transform_feedback2@draw-auto:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@ext_transform_feedback@tessellation line_loop flat_last:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.10@execution@clipping@clip-plane-transformation clipvert_pos:
    - Statuses : 1 fail(s)
    - Exec time: [0.57] s

  * spec@glsl-1.10@execution@clipping@clip-plane-transformation fixed:
    - Statuses : 1 fail(s)
    - Exec time: [0.38] s

  * spec@glsl-1.10@execution@clipping@clip-plane-transformation pos_clipvert:
    - Statuses : 1 fail(s)
    - Exec time: [0.53] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture() 1d:
    - Statuses : 1 fail(s)
    - Exec time: [1.16] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture() 1dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.45] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture() 2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.19] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture() 2dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.54] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture() 3d:
    - Statuses : 1 fail(s)
    - Exec time: [1.14] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture() cube:
    - Statuses : 1 fail(s)
    - Exec time: [0.97] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture(bias) 1d:
    - Statuses : 1 fail(s)
    - Exec time: [1.94] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture(bias) 1dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [2.01] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture(bias) 2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.95] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture(bias) 2dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.96] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture(bias) 3d:
    - Statuses : 1 fail(s)
    - Exec time: [1.98] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture(bias) cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.54] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj 1d:
    - Statuses : 1 fail(s)
    - Exec time: [1.17] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj 1d_projvec4:
    - Statuses : 1 fail(s)
    - Exec time: [1.14] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj 1dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.39] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj 2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.21] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj 2d_projvec4:
    - Statuses : 1 fail(s)
    - Exec time: [1.15] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj 2dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.40] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj 3d:
    - Statuses : 1 fail(s)
    - Exec time: [1.17] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj(bias) 1d:
    - Statuses : 1 fail(s)
    - Exec time: [2.02] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj(bias) 1d_projvec4:
    - Statuses : 1 fail(s)
    - Exec time: [1.99] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj(bias) 1dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.87] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj(bias) 2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.87] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj(bias) 2d_projvec4:
    - Statuses : 1 fail(s)
    - Exec time: [1.94] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj(bias) 2dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.67] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj(bias) 3d:
    - Statuses : 1 fail(s)
    - Exec time: [1.92] s

  * spec@glsl-1.30@execution@isinf-and-isnan fs_fbo:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@glsl-1.30@execution@isinf-and-isnan vs_xfb:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texturegradoffset 1dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texturegradoffset 2dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texturelodoffset 1dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texturelodoffset 2dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureoffset 1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureoffset 2dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureoffset(bias) 1darrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureoffset(bias) 1dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureprojgradoffset 1d_projvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureprojgradoffset 2d_projvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureprojgradoffset 3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureprojlodoffset 1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureprojlodoffset 2d_projvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureprojlodoffset 2dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureprojoffset 1d_projvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureprojoffset 1dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureprojoffset 2dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@texelfetch fs sampler1d 1-513:
    - Statuses : 1 fail(s)
    - Exec time: [9.66] s

  * spec@glsl-1.30@execution@texelfetch fs sampler1darray 1x281-501x281:
    - Statuses : 1 fail(s)
    - Exec time: [9.69] s

  * spec@glsl-1.30@execution@texelfetch fs sampler1darray 1x71-501x71:
    - Statuses : 1 fail(s)
    - Exec time: [9.48] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler2darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler2darray-swizzle:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-sampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-sampler2darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-usampler1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-usampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-usampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-usampler2darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-usampler3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.30@execution@texelfetch@vs-texelfetch-isampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-1.30@execution@texelfetch@vs-texelfetch-isampler2darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-1.30@execution@texelfetch@vs-texelfetch-isampler2darray-swizzle:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@texelfetch@vs-texelfetch-isampler3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@texelfetch@vs-texelfetch-sampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@texelfetch@vs-texelfetch-sampler2darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-1.30@execution@texelfetch@vs-texelfetch-sampler2darray-swizzle:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@texelfetch@vs-texelfetch-sampler3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-1.30@execution@texelfetch@vs-texelfetch-usampler2darray-swizzle:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-1.30@execution@texelfetch@vs-texelfetch-usampler3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.30@execution@texelfetchoffset@fs-texelfetch-isampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.30@execution@texelfetchoffset@fs-texelfetch-sampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@texelfetchoffset@fs-texelfetch-sampler2darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-1.30@execution@texelfetchoffset@fs-texelfetch-sampler3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@texelfetchoffset@fs-texelfetch-usampler1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.30@execution@texelfetchoffset@fs-texelfetch-usampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-1.30@execution@texelfetchoffset@fs-texelfetch-usampler2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-1.30@execution@texelfetchoffset@fs-texelfetch-usampler3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-1.30@execution@texelfetchoffset@vs-texelfetch-isampler1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@texelfetchoffset@vs-texelfetch-isampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@glsl-1.30@execution@texelfetchoffset@vs-texelfetch-isampler2darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-1.30@execution@texelfetchoffset@vs-texelfetch-isampler3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@texelfetchoffset@vs-texelfetch-sampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@texelfetchoffset@vs-texelfetch-sampler2darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@texelfetchoffset@vs-texelfetch-sampler3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15841/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
