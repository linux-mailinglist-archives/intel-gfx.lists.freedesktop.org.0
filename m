Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74037121EFE
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 00:34:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12FB66E8F3;
	Mon, 16 Dec 2019 23:34:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 304286E8F2;
 Mon, 16 Dec 2019 23:34:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 259B0A363B;
 Mon, 16 Dec 2019 23:34:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Mon, 16 Dec 2019 23:34:18 -0000
Message-ID: <157653925812.5613.14759455842057074228@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216120735.1091873-1-hdegoede@redhat.com>
In-Reply-To: <20191216120735.1091873-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Deal_with_inverted_brightness_on_Thundersoft_TST178_ta?=
 =?utf-8?q?blets?=
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

Series: drm/i915: Deal with inverted brightness on Thundersoft TST178 tablets
URL   : https://patchwork.freedesktop.org/series/70978/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7574_full -> Patchwork_15790_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15790_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler1darray (NEW):
    - {pig-hsw-4770r}:    NOTRUN -> [FAIL][1] +1009 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15790/pig-hsw-4770r/spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler1darray.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7574_full and Patchwork_15790_full:

### New Piglit tests (1011) ###

  * hiz@hiz-depth-read-window-stencil1:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * object namespace pollution@texture with gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * object namespace pollution@texture with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.25] s

  * object namespace pollution@texture with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * object namespace pollution@texture with glgetteximage-compressed:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * shaders@glsl-fs-texturecube-2:
    - Statuses : 1 fail(s)
    - Exec time: [8.85] s

  * shaders@glsl-vs-vec4-indexing-temp-src-in-nested-loop-inner:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.0@gl-1.0-readpixsanity:
    - Statuses : 1 fail(s)
    - Exec time: [6.49] s

  * spec@!opengl 1.0@gl-1.0-scissor-copypixels:
    - Statuses : 1 fail(s)
    - Exec time: [6.21] s

  * spec@!opengl 1.0@gl-1.0-scissor-many:
    - Statuses : 1 fail(s)
    - Exec time: [0.28] s

  * spec@!opengl 1.0@gl-1.0-texgen:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@!opengl 1.1@copyteximage 1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.1@copyteximage 2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@!opengl 1.1@copytexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.1@depthfunc:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 1.1@depthstencil-default_fb-blit samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.1@depthstencil-default_fb-clear samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.1@depthstencil-default_fb-copypixels samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@!opengl 1.1@depthstencil-default_fb-copypixels samples=8:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-24_8 samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-24_8 samples=8:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-32f_24_8_rev samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-32f_24_8_rev samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-float-and-ushort samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-float-and-ushort samples=6:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-float-and-ushort samples=8:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.1@depthstencil-default_fb-readpixels-24_8 samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.1@depthstencil-default_fb-readpixels-32f_24_8_rev samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@!opengl 1.1@depthstencil-default_fb-readpixels-32f_24_8_rev samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.1@draw-copypixels-sync:
    - Statuses : 1 fail(s)
    - Exec time: [4.05] s

  * spec@!opengl 1.1@draw-pixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.95] s

  * spec@!opengl 1.1@getteximage-depth:
    - Statuses : 1 fail(s)
    - Exec time: [0.53] s

  * spec@!opengl 1.1@getteximage-formats:
    - Statuses : 1 fail(s)
    - Exec time: [3.76] s

  * spec@!opengl 1.1@getteximage-luminance:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@gl-1.3-alpha_to_coverage_nop:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.1@line-flat-clip-color:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@point-line-no-cull:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.1@polygon-mode:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.1@polygon-mode-facing:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@!opengl 1.1@polygon-mode-offset:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@!opengl 1.1@polygon-offset:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.1@readpix-z:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@!opengl 1.1@stencil-drawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@!opengl 1.1@texgen:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@teximage-colors gl_alpha:
    - Statuses : 1 fail(s)
    - Exec time: [0.28] s

  * spec@!opengl 1.1@teximage-colors gl_alpha12:
    - Statuses : 1 fail(s)
    - Exec time: [0.35] s

  * spec@!opengl 1.1@teximage-colors gl_alpha16:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@!opengl 1.1@teximage-colors gl_alpha4:
    - Statuses : 1 fail(s)
    - Exec time: [0.34] s

  * spec@!opengl 1.1@teximage-colors gl_alpha8:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_luminance:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_luminance12:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_luminance12_alpha12:
    - Statuses : 1 fail(s)
    - Exec time: [0.36] s

  * spec@!opengl 1.1@teximage-colors gl_luminance12_alpha4:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.1@teximage-colors gl_luminance16:
    - Statuses : 1 fail(s)
    - Exec time: [0.35] s

  * spec@!opengl 1.1@teximage-colors gl_luminance16_alpha16:
    - Statuses : 1 fail(s)
    - Exec time: [0.35] s

  * spec@!opengl 1.1@teximage-colors gl_luminance4:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_luminance4_alpha4:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_luminance6_alpha2:
    - Statuses : 1 fail(s)
    - Exec time: [0.27] s

  * spec@!opengl 1.1@teximage-colors gl_luminance8:
    - Statuses : 1 fail(s)
    - Exec time: [0.32] s

  * spec@!opengl 1.1@teximage-colors gl_luminance8_alpha8:
    - Statuses : 1 fail(s)
    - Exec time: [0.36] s

  * spec@!opengl 1.1@teximage-colors gl_luminance_alpha:
    - Statuses : 1 fail(s)
    - Exec time: [0.32] s

  * spec@!opengl 1.1@teximage-colors gl_r11f_g11f_b10f:
    - Statuses : 1 fail(s)
    - Exec time: [0.27] s

  * spec@!opengl 1.1@teximage-colors gl_r16:
    - Statuses : 1 fail(s)
    - Exec time: [0.34] s

  * spec@!opengl 1.1@teximage-colors gl_r16_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.32] s

  * spec@!opengl 1.1@teximage-colors gl_r16f:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_r32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.36] s

  * spec@!opengl 1.1@teximage-colors gl_r3_g3_b2:
    - Statuses : 1 fail(s)
    - Exec time: [0.32] s

  * spec@!opengl 1.1@teximage-colors gl_r8:
    - Statuses : 1 fail(s)
    - Exec time: [0.38] s

  * spec@!opengl 1.1@teximage-colors gl_r8_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.1@teximage-colors gl_red:
    - Statuses : 1 fail(s)
    - Exec time: [0.37] s

  * spec@!opengl 1.1@teximage-colors gl_rg:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@!opengl 1.1@teximage-colors gl_rg16:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_rg16_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.34] s

  * spec@!opengl 1.1@teximage-colors gl_rg16f:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_rg32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.37] s

  * spec@!opengl 1.1@teximage-colors gl_rg8:
    - Statuses : 1 fail(s)
    - Exec time: [0.26] s

  * spec@!opengl 1.1@teximage-colors gl_rg8_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.34] s

  * spec@!opengl 1.1@teximage-colors gl_rgb:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_rgb10:
    - Statuses : 1 fail(s)
    - Exec time: [0.32] s

  * spec@!opengl 1.1@teximage-colors gl_rgb10_a2:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@!opengl 1.1@teximage-colors gl_rgb12:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@!opengl 1.1@teximage-colors gl_rgb16:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_rgb16_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.34] s

  * spec@!opengl 1.1@teximage-colors gl_rgb16f:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_rgb32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@!opengl 1.1@teximage-colors gl_rgb4:
    - Statuses : 1 fail(s)
    - Exec time: [0.34] s

  * spec@!opengl 1.1@teximage-colors gl_rgb5:
    - Statuses : 1 fail(s)
    - Exec time: [0.35] s

  * spec@!opengl 1.1@teximage-colors gl_rgb5_a1:
    - Statuses : 1 fail(s)
    - Exec time: [0.35] s

  * spec@!opengl 1.1@teximage-colors gl_rgb8:
    - Statuses : 1 fail(s)
    - Exec time: [0.27] s

  * spec@!opengl 1.1@teximage-colors gl_rgb8_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.32] s

  * spec@!opengl 1.1@teximage-colors gl_rgb9_e5:
    - Statuses : 1 fail(s)
    - Exec time: [0.27] s

  * spec@!opengl 1.1@teximage-colors gl_rgba:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_rgba12:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_rgba16:
    - Statuses : 1 fail(s)
    - Exec time: [0.28] s

  * spec@!opengl 1.1@teximage-colors gl_rgba16_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_rgba2:
    - Statuses : 1 fail(s)
    - Exec time: [0.25] s

  * spec@!opengl 1.1@teximage-colors gl_rgba32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@!opengl 1.1@teximage-colors gl_rgba4:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.1@teximage-colors gl_rgba8:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.1@teximage-colors gl_rgba8_snorm:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@!opengl 1.1@teximage-colors gl_sluminance8:
    - Statuses : 1 fail(s)
    - Exec time: [0.34] s

  * spec@!opengl 1.1@teximage-colors gl_sluminance8_alpha8:
    - Statuses : 1 fail(s)
    - Exec time: [0.38] s

  * spec@!opengl 1.1@teximage-colors gl_srgb8:
    - Statuses : 1 fail(s)
    - Exec time: [0.38] s

  * spec@!opengl 1.1@teximage-colors gl_srgb8_alpha8:
    - Statuses : 1 fail(s)
    - Exec time: [0.32] s

  * spec@!opengl 1.1@texredefine:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 1.1@texsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [3.94] s

  * spec@!opengl 1.1@texsubimage-unpack:
    - Statuses : 1 fail(s)
    - Exec time: [2.69] s

  * spec@!opengl 1.1@texwrap formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@!opengl 1.1@texwrap formats bordercolor:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@!opengl 1.1@texwrap formats bordercolor-swizzled:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@!opengl 1.1@texwrap formats offset:
    - Statuses : 1 fail(s)
    - Exec time: [0.35] s

  * spec@!opengl 1.1@two-sided-lighting:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.1@varray-disabled:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.2@copyteximage 3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@!opengl 1.2@levelclamp:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@!opengl 1.2@lodclamp:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@!opengl 1.2@mipmap-setup:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 1.2@tex3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.2@texture-packed-formats:
    - Statuses : 1 fail(s)
    - Exec time: [2.57] s

  * spec@!opengl 1.2@texwrap 3d proj:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.4@draw-batch:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.4@gl-1.4-polygon-offset:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 1.4@tex-miplevel-selection-lod:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@!opengl 1.4@tex-miplevel-selection-lod-bias:
    - Statuses : 1 fail(s)
    - Exec time: [1.22] s

  * spec@!opengl 1.5@depth-tex-compare:
    - Statuses : 1 fail(s)
    - Exec time: [0.26] s

  * spec@!opengl 1.5@draw-vertices:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@!opengl 1.5@draw-vertices-user:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 2.0@attribs:
    - Statuses : 1 fail(s)
    - Exec time: [0.68] s

  * spec@!opengl 2.0@depth-tex-modes-glsl:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@!opengl 2.0@gl-2.0-two-sided-stencil:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 2.0@max-samplers border:
    - Statuses : 1 fail(s)
    - Exec time: [0.44] s

  * spec@!opengl 2.0@tex3d-npot:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 2.1@pbo:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@!opengl 3.0@attribs:
    - Statuses : 1 fail(s)
    - Exec time: [0.25] s

  * spec@!opengl 3.0@clearbuffer-depth:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@!opengl 3.0@clearbuffer-depth-stencil:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@!opengl 3.0@clearbuffer-stencil:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@!opengl 3.0@gl-3.0-texture-integer:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 3.0@render-integer:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@!opengl 3.0@sampler-cube-shadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 3.2@coord-replace-doesnt-eliminate-frag-tex-coords:
    - Statuses : 1 fail(s)
    - Exec time: [0.55] s

  * spec@!opengl 3.2@layered-rendering@clear-color-all-types cube_map_array mipmapped:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@!opengl 3.2@layered-rendering@gl-layer-render:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@!opengl 3.2@layered-rendering@gl-layer-render-clipped:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 3.2@layered-rendering@gl-layer-render-storage:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@3dfx_texture_compression_fxt1@compressedteximage gl_compressed_rgba_fxt1_3dfx:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@3dfx_texture_compression_fxt1@fxt1-teximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@amd_shader_trinary_minmax@execution@built-in-functions@fs-mid3-uint-uint-uint:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@amd_shader_trinary_minmax@execution@built-in-functions@fs-min3-int-int-int:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_base_instance@arb_base_instance-drawarrays:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_blend_func_extended@arb_blend_func_extended-fbo-extended-blend:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@arb_blend_func_extended@arb_blend_func_extended-fbo-extended-blend-explicit:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@arb_blend_func_extended@arb_blend_func_extended-fbo-extended-blend-explicit_gles3:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_blend_func_extended@arb_blend_func_extended-fbo-extended-blend_gles3:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_clip_control@arb_clip_control-clip-control:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@arb_color_buffer_float@gl_rgba16f-drawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_color_buffer_float@gl_rgba16f-probepixel:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_color_buffer_float@gl_rgba16f-render:
    - Statuses : 1 fail(s)
    - Exec time: [0.80] s

  * spec@arb_color_buffer_float@gl_rgba16f-render-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.73] s

  * spec@arb_color_buffer_float@gl_rgba16f-render-sanity:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_color_buffer_float@gl_rgba16f-render-sanity-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_color_buffer_float@gl_rgba32f-drawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_color_buffer_float@gl_rgba32f-render:
    - Statuses : 1 fail(s)
    - Exec time: [0.69] s

  * spec@arb_color_buffer_float@gl_rgba32f-render-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.64] s

  * spec@arb_color_buffer_float@gl_rgba32f-render-sanity:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_color_buffer_float@gl_rgba32f-render-sanity-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@arb_color_buffer_float@gl_rgba8-render:
    - Statuses : 1 fail(s)
    - Exec time: [0.66] s

  * spec@arb_color_buffer_float@gl_rgba8-render-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.64] s

  * spec@arb_color_buffer_float@gl_rgba8_snorm-drawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_color_buffer_float@gl_rgba8_snorm-render:
    - Statuses : 1 fail(s)
    - Exec time: [0.78] s

  * spec@arb_color_buffer_float@gl_rgba8_snorm-render-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.76] s

  * spec@arb_color_buffer_float@gl_rgba8_snorm-render-sanity:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_color_buffer_float@gl_rgba8_snorm-render-sanity-fog:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_compute_shader@render-and-compute:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_copy_buffer@overlap:
    - Statuses : 1 fail(s)
    - Exec time: [0.26] s

  * spec@arb_copy_image@arb_copy_image-format-swizzle:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@arb_copy_image@arb_copy_image-formats --samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [1.75] s

  * spec@arb_copy_image@arb_copy_image-formats --samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [1.77] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d_array 32 1 12 gl_texture_2d_array 32 16 18 11 0 3 5 9 7 14 1 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d_array 32 1 12 gl_texture_3d 32 16 18 11 0 3 5 9 2 14 1 7:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d_array 32 1 12 gl_texture_cube_map 32 32 6 11 0 3 5 17 2 14 1 3:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d_array 32 1 12 gl_texture_cube_map_array 32 32 18 11 0 3 5 17 2 14 1 7:
    - Statuses : 1 fail(s)
    - Exec time: [0.28] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_1d_array 32 1 16 11 2 0 5 0 7 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_2d 32 16 1 11 12 0 5 7 0 14 9 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d 32 32 1 gl_texture_3d 32 16 18 11 5 0 5 9 7 14 7 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_1d_array 32 1 16 11 2 5 5 0 7 14 1 7:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_2d_array 32 16 15 11 12 5 5 7 2 14 9 9:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_3d 32 16 18 11 5 2 5 9 7 14 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.43] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_cube_map 32 32 6 11 5 1 5 9 2 14 7 3:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_cube_map_array 32 32 18 11 5 2 5 9 7 14 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_2d_array 32 32 15 gl_texture_rectangle 32 16 1 11 12 13 5 7 0 14 7 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_2d_array 32 16 15 11 12 5 5 3 2 14 13 9:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_3d 32 16 18 11 5 2 5 9 7 14 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_cube_map_array 16 16 18 11 5 2 5 9 7 5 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_rectangle 32 16 1 11 12 13 5 7 0 14 9 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_2d 32 16 1 11 12 3 5 7 0 14 9 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_2d_array 32 16 15 11 12 1 5 3 2 14 11 4:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_3d 32 16 18 11 5 0 5 9 7 14 7 4:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_cube_map 32 32 6 11 5 1 5 9 2 14 7 3:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_cube_map_array 32 32 18 11 5 1 5 9 9 14 7 5:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map 32 32 6 gl_texture_rectangle 32 16 1 11 12 3 5 3 0 14 12 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_1d 32 1 1 11 23 7 5 0 0 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_1d_array 32 1 16 11 2 5 5 0 7 14 1 7:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_2d_array 32 16 15 11 12 5 5 1 2 14 15 9:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_3d 32 16 18 11 5 2 5 9 7 14 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [0.42] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_cube_map_array 32 32 18 gl_texture_cube_map 16 16 6 11 5 1 5 9 2 5 7 3:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_rectangle 32 32 1 gl_texture_2d_array 32 16 15 11 12 0 5 7 12 14 8 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_rectangle 32 32 1 gl_texture_3d 32 16 18 11 5 0 5 9 7 14 7 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_rectangle 32 32 1 gl_texture_cube_map_array 32 32 18 11 5 0 5 9 7 14 7 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 s=z24_s8_d=z32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 146 s=z24_s8_d=z32f:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 273 d=z32f_s8_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 273 d=z32f_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 292 d=z32f_s=z24_s8:
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
    - Exec time: [0.16] s

  * spec@arb_depth_buffer_float@fbo-stencil-gl_depth32f_stencil8-drawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_depth_texture@depth-level-clamp:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_depth_texture@depth-tex-modes:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 1024 d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 585 d=z16:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_depth_texture@depthstencil-render-miplevels 585 d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_depth_texture@fbo-depth-gl_depth_component16-tex1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_depth_texture@fbo-depth-gl_depth_component24-tex1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_depth_texture@texdepth:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_depth_texture@texwrap formats offset:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_direct_state_access@getcompressedtextureimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@arb_direct_state_access@gettextureimage-targets:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@arb_direct_state_access@textures-storage:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_draw_elements_base_vertex@arb_draw_elements_base_vertex-drawelements-instanced:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_draw_elements_base_vertex@arb_draw_elements_base_vertex-drawelements-user_varrays:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@arb_draw_elements_base_vertex@arb_draw_elements_base_vertex-negative-index:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_fragment_program@sparse-samplers:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_framebuffer_object@fbo-blit-stretch:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@arb_framebuffer_object@fbo-drawbuffers-none gl_fragcolor:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_framebuffer_object@fbo-drawbuffers-none glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_framebuffer_object@fbo-drawbuffers-none glclearbuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_framebuffer_object@fbo-generatemipmap-3d rgb9_e5:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@arb_framebuffer_object@fbo-generatemipmap-cubemap rgb9_e5:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_framebuffer_object@fbo-mipmap-copypix:
    - Statuses : 1 fail(s)
    - Exec time: [0.42] s

  * spec@arb_framebuffer_object@fbo-viewport:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_get_texture_sub_image@arb_get_texture_sub_image-get:
    - Statuses : 1 fail(s)
    - Exec time: [0.64] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-float-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.68] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-float-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.68] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-float-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.72] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-float-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.55] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-float-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.60] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-int-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.72] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-int-2darray:
    - Statuses

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15790/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
