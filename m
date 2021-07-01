Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 548E13B8C12
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 04:21:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 534936E986;
	Thu,  1 Jul 2021 02:21:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A68596E12B;
 Thu,  1 Jul 2021 02:21:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 95984A73C7;
 Thu,  1 Jul 2021 02:21:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Werner Sembach" <wse@tuxedocomputers.com>
Date: Thu, 01 Jul 2021 02:21:16 -0000
Message-ID: <162510607658.15055.2312264860272878112@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210630151018.330354-1-wse@tuxedocomputers.com>
In-Reply-To: <20210630151018.330354-1-wse@tuxedocomputers.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgTmV3?=
 =?utf-8?q?_uAPI_drm_properties_for_color_management_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1126157985=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1126157985==
Content-Type: multipart/alternative;
 boundary="===============5260945742880185440=="

--===============5260945742880185440==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: New uAPI drm properties for color management (rev3)
URL   : https://patchwork.freedesktop.org/series/91523/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10295_full -> Patchwork_20496_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20496_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20496_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20496_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_properties@get_properties-sanity-atomic:
    - shard-kbl:          NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/shard-kbl2/igt@kms_properties@get_properties-sanity-atomic.html

  * igt@kms_properties@get_properties-sanity-non-atomic:
    - shard-apl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-apl8/igt@kms_properties@get_properties-sanity-non-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/shard-apl2/igt@kms_properties@get_properties-sanity-non-atomic.html
    - shard-iclb:         [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-iclb7/igt@kms_properties@get_properties-sanity-non-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/shard-iclb2/igt@kms_properties@get_properties-sanity-non-atomic.html
    - shard-kbl:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-kbl3/igt@kms_properties@get_properties-sanity-non-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/shard-kbl7/igt@kms_properties@get_properties-sanity-non-atomic.html
    - shard-tglb:         [PASS][9] -> [FAIL][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-tglb2/igt@kms_properties@get_properties-sanity-non-atomic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/shard-tglb2/igt@kms_properties@get_properties-sanity-non-atomic.html
    - shard-skl:          [PASS][11] -> [FAIL][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-skl6/igt@kms_properties@get_properties-sanity-non-atomic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/shard-skl8/igt@kms_properties@get_properties-sanity-non-atomic.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_texture_gather@texturegatheroffset@vs-rgb-blue-int-2darray (NEW):
    - pig-snb-2600:       NOTRUN -> [FAIL][13] +15851 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/pig-snb-2600/spec@arb_texture_gather@texturegatheroffset@vs-rgb-blue-int-2darray.html

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x3_array5-position-uint_uvec3 (NEW):
    - pig-snb-2600:       NOTRUN -> [INCOMPLETE][14] +7 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/pig-snb-2600/spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x3_array5-position-uint_uvec3.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10295_full and Patchwork_20496_full:

### New Piglit tests (15713) ###

  * fast_color_clear@all-colors:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * fast_color_clear@fast-slow-clear-interaction:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * fast_color_clear@fcc-blit-between-clears:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * fast_color_clear@fcc-read-after-clear blit rb:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * fast_color_clear@fcc-read-after-clear blit tex:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * fast_color_clear@fcc-read-after-clear copy rb:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * fast_color_clear@fcc-read-after-clear copy tex:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * fast_color_clear@fcc-read-after-clear read_pixels rb:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * fast_color_clear@fcc-read-after-clear read_pixels tex:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * fast_color_clear@fcc-read-after-clear sample tex:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * fast_color_clear@fcc-read-to-pbo-after-clear:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * fast_color_clear@non-redundant-clear:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * fast_color_clear@redundant-clear:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-depth-read-fbo-d24-s0:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-depth-read-fbo-d24-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-depth-read-fbo-d24s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-depth-read-window-stencil0:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-depth-read-window-stencil1:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * hiz@hiz-depth-stencil-test-fbo-d0-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-depth-stencil-test-fbo-d24-s0:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-depth-stencil-test-fbo-d24-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-depth-stencil-test-fbo-d24s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * hiz@hiz-depth-test-fbo-d24-s0:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * hiz@hiz-depth-test-fbo-d24-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * hiz@hiz-depth-test-fbo-d24s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-depth-test-window-stencil0:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-depth-test-window-stencil1:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * hiz@hiz-stencil-read-fbo-d0-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * hiz@hiz-stencil-read-fbo-d24-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-stencil-read-fbo-d24s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * hiz@hiz-stencil-read-window-depth0:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-stencil-read-window-depth1:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * hiz@hiz-stencil-test-fbo-d0-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * hiz@hiz-stencil-test-fbo-d24-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-stencil-test-fbo-d24s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-stencil-test-window-depth0:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * hiz@hiz-stencil-test-window-depth1:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@buffer with glbitmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@buffer with glblitframebuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@buffer with glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@buffer with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@buffer with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * object namespace pollution@buffer with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@buffer with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@buffer with gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@buffer with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@buffer with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@buffer with glgetteximage-compressed:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@buffer with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@framebuffer with glbitmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@framebuffer with glblitframebuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@framebuffer with glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@framebuffer with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@framebuffer with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@framebuffer with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@framebuffer with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@framebuffer with gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@framebuffer with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@framebuffer with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@framebuffer with glgetteximage-compressed:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@framebuffer with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@program with glbitmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@program with glblitframebuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@program with glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@program with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@program with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@program with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@program with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@program with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@program with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@program with glgetteximage-compressed:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@program with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@renderbuffer with glbitmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@renderbuffer with glblitframebuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@renderbuffer with glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@renderbuffer with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@renderbuffer with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * object namespace pollution@renderbuffer with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@renderbuffer with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@renderbuffer with gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@renderbuffer with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@renderbuffer with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@texture with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@texture with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@texture with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@texture with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@texture with gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@texture with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@texture with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@texture with glgetteximage-compressed:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@texture with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@vertex-array with glbitmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@vertex-array with glblitframebuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@vertex-array with glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@vertex-array with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@vertex-array with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@vertex-array with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@vertex-array with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@vertex-array with gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@vertex-array with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@vertex-array with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@vertex-array with glgetteximage-compressed:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@vertex-array with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * security@initialized-fbo:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * security@initialized-texmemory:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * security@initialized-vbo:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@activeprogram-bad-program:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@activeprogram-get:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@attribute0:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@complex-loop-analysis-bug:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@createshaderprogram-attached-shaders:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@createshaderprogram-bad-type:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@dead-code-break-interaction:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@dependency-hints@exp2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@fragcoord_w:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@getuniform-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@getuniform-02:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@getuniform-03:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl link two programs, global initializer:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * shaders@glsl-algebraic-add-add-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-algebraic-add-add-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-add-add-3:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-algebraic-add-add-4:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-add-sub-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-add-sub-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-algebraic-add-zero:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-add-zero-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-div-one:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-div-one-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-logicand-false:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-logicand-false-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-logicand-true:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-logicand-true-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-logicor-false:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-logicor-false-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-logicor-true:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-logicor-true-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-algebraic-logicxor-false:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-logicxor-true:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-mul-mul-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-mul-one:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-mul-one-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * shaders@glsl-algebraic-mul-zero:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-algebraic-neg-neg:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-algebraic-not-equals:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-not-notequals:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-pow-two:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-rcp-rcp:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-rcp-rsq:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-algebraic-rcp-sqrt:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-rcp-sqrt-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-sub-sub-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-sub-zero:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-sub-zero-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-sub-zero-3:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-algebraic-sub-zero-4:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-arb-fragment-coord-conventions:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * shaders@glsl-array-bounds-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-array-bounds-02:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-array-bounds-03:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-array-bounds-04:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-array-bounds-05:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-array-bounds-06:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-array-bounds-07:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-array-bounds-08:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-array-bounds-09:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-array-bounds-10:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-array-bounds-11:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-array-bounds-12:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-array-bounds-13:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-array-compare:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-array-compare-02:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-array-length:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-array-uniform:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-array-uniform-length:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-array-varying-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-bindattriblocation:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-bug-22603:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-cache-fallback-shader-source:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-clamp-vertex-color:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-complex-subscript:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-const-builtin-abs:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-acos:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-all:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-any:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-asin:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-atan:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-ceil:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-clamp:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-cos:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-cosh:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-cross:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-degrees:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-derivatives:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-dot:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-equal:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-equal-bool:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-exp:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-const-builtin-exp2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-faceforward:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-floor:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-fract:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-greaterthan:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-greaterthanequal:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-inversesqrt:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-length:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-lessthan:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-lessthanequal:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-log:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-log2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-matrixcompmult:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-max:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-min:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-mix:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-mod:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-normalize:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-not:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-outerproduct:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-pow:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-radians:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-reflect:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-refract:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-sign:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-sin:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-smoothstep:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-sqrt:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-step:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-tan:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-transpose:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-folding-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-initializer-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-initializer-02:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-initializer-03:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-constant-folding-call-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-copy-propagation-if-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-copy-propagation-if-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-copy-propagation-if-3:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-copy-propagation-loop-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-copy-propagation-loop-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-copy-propagation-self-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-copy-propagation-self-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-copy-propagation-vector-indexing:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-cos:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-deadcode-call:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-deadcode-self-assign:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-deadcode-varying:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-derivs:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-derivs-abs:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-derivs-abs-sign:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-derivs-sign:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-derivs-swizzle:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-derivs-varyings:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-dlist-getattriblocation:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * shaders@glsl-empty-vs-no-fs:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * shaders@glsl-floating-constant-120:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-abs-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-fs-abs-02:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-fs-abs-03:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-fs-abs-04:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-abs-neg:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-fs-abs-neg-with-intermediate:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-add-masked:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-all-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-fs-all-02:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-any:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-fs-array-redeclaration:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-fs-asin:
    - Statuses : 1 fail(s)
    - Exec time

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/index.html

--===============5260945742880185440==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>New uAPI drm properties for color management (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91523/">https://patchwork.freedesktop.org/series/91523/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10295_full -&gt; Patchwork_20496_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20496_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20496_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20496_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@get_properties-sanity-atomic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/shard-kbl2/igt@kms_properties@get_properties-sanity-atomic.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@get_properties-sanity-non-atomic:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-apl8/igt@kms_properties@get_properties-sanity-non-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/shard-apl2/igt@kms_properties@get_properties-sanity-non-atomic.html">FAIL</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-iclb7/igt@kms_properties@get_properties-sanity-non-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/shard-iclb2/igt@kms_properties@get_properties-sanity-non-atomic.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-kbl3/igt@kms_properties@get_properties-sanity-non-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/shard-kbl7/igt@kms_properties@get_properties-sanity-non-atomic.html">FAIL</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-tglb2/igt@kms_properties@get_properties-sanity-non-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/shard-tglb2/igt@kms_properties@get_properties-sanity-non-atomic.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/shard-skl6/igt@kms_properties@get_properties-sanity-non-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/shard-skl8/igt@kms_properties@get_properties-sanity-non-atomic.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>spec@arb_texture_gather@texturegatheroffset@vs-rgb-blue-int-2darray (NEW):</p>
<ul>
<li>pig-snb-2600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/pig-snb-2600/spec@arb_texture_gather@texturegatheroffset@vs-rgb-blue-int-2darray.html">FAIL</a> +15851 similar issues</li>
</ul>
</li>
<li>
<p>spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x3_array5-position-uint_uvec3 (NEW):</p>
<ul>
<li>pig-snb-2600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/pig-snb-2600/spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x3_array5-position-uint_uvec3.html">INCOMPLETE</a> +7 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10295_full and Patchwork_20496_full:</p>
<h3>New Piglit tests (15713)</h3>
<ul>
<li>
<p>fast_color_clear@all-colors:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fast-slow-clear-interaction:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-blit-between-clears:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-after-clear blit rb:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-after-clear blit tex:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-after-clear copy rb:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-after-clear copy tex:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-after-clear read_pixels rb:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-after-clear read_pixels tex:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-after-clear sample tex:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-to-pbo-after-clear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@non-redundant-clear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@redundant-clear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-read-fbo-d24-s0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-read-fbo-d24-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-read-fbo-d24s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-read-window-stencil0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-read-window-stencil1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-stencil-test-fbo-d0-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-stencil-test-fbo-d24-s0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-stencil-test-fbo-d24-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-stencil-test-fbo-d24s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-test-fbo-d24-s0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-test-fbo-d24-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-test-fbo-d24s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-test-window-stencil0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-test-window-stencil1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-read-fbo-d0-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-read-fbo-d24-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-read-fbo-d24s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-read-window-depth0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-read-window-depth1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-test-fbo-d0-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-test-fbo-d24-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-test-fbo-d24s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-test-window-depth0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-test-window-depth1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glbitmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glblitframebuffer:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glclear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glcleartexsubimage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glcopyimagesubdata:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glcopypixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glcopytexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with gldrawpixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glgeneratemipmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glgetteximage-compressed:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with gltexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glbitmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glblitframebuffer:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glclear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glcleartexsubimage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glcopyimagesubdata:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glcopypixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glcopytexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with gldrawpixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glgeneratemipmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glgetteximage-compressed:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with gltexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glbitmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glblitframebuffer:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glclear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glcleartexsubimage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glcopyimagesubdata:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glcopypixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glcopytexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glgeneratemipmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glgetteximage-compressed:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with gltexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glbitmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glblitframebuffer:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glclear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glcleartexsubimage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glcopyimagesubdata:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glcopypixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glcopytexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with gldrawpixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glgeneratemipmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glcleartexsubimage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glcopyimagesubdata:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glcopypixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glcopytexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with gldrawpixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glgeneratemipmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glgetteximage-compressed:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with gltexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glbitmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glblitframebuffer:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glclear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glcleartexsubimage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glcopyimagesubdata:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glcopypixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glcopytexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with gldrawpixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glgeneratemipmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glgetteximage-compressed:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with gltexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>security@initialized-fbo:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>security@initialized-texmemory:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>security@initialized-vbo:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@activeprogram-bad-program:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@activeprogram-get:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@attribute0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@complex-loop-analysis-bug:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@createshaderprogram-attached-shaders:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@createshaderprogram-bad-type:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@dead-code-break-interaction:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@dependency-hints@exp2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@fragcoord_w:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@getuniform-01:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@getuniform-02:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@getuniform-03:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl link two programs, global initializer:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-add-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-add-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-add-3:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-add-4:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-sub-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-sub-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-zero:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-zero-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-div-one:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-div-one-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicand-false:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicand-false-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicand-true:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicand-true-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicor-false:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicor-false-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicor-true:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicor-true-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicxor-false:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicxor-true:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-mul-mul-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-mul-one:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-mul-one-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-mul-zero:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-neg-neg:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-not-equals:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-not-notequals:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-pow-two:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-rcp-rcp:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-rcp-rsq:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-rcp-sqrt:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-rcp-sqrt-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-sub-sub-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-sub-zero:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-sub-zero-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-sub-zero-3:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-sub-zero-4:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-arb-fragment-coord-conventions:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-01:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-02:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-03:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-04:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-05:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-06:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-07:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-08:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-09:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-10:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-11:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-12:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-13:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-compare:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-compare-02:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-length:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-uniform:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-uniform-length:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-varying-01:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-bindattriblocation:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-bug-22603:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-cache-fallback-shader-source:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-clamp-vertex-color:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-complex-subscript:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-abs:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-acos:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-all:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-any:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-asin:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-atan:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-ceil:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-clamp:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-cos:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-cosh:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-cross:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-degrees:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-derivatives:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-distance:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-dot:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-equal:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-equal-bool:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-exp:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-exp2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-faceforward:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-floor:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-fract:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-greaterthan:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-greaterthanequal:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-inversesqrt:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-length:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-lessthan:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-lessthanequal:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-log:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-log2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-matrixcompmult:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-max:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-min:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-mix:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-mod:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-normalize:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-not:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-outerproduct:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-pow:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-radians:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-reflect:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-refract:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-sign:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-sin:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-smoothstep:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-sqrt:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-step:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-tan:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-transpose:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-folding-01:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-initializer-01:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-initializer-02:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-initializer-03:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-constant-folding-call-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-copy-propagation-if-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-copy-propagation-if-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-copy-propagation-if-3:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-copy-propagation-loop-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-copy-propagation-loop-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-copy-propagation-self-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-copy-propagation-self-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-copy-propagation-vector-indexing:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-cos:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-deadcode-call:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-deadcode-self-assign:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-deadcode-varying:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-derivs:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-derivs-abs:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-derivs-abs-sign:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-derivs-sign:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-derivs-swizzle:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-derivs-varyings:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-dlist-getattriblocation:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-empty-vs-no-fs:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-floating-constant-120:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-abs-01:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-abs-02:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-abs-03:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-abs-04:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-abs-neg:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-abs-neg-with-intermediate:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-add-masked:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-all-01:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-all-02:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-any:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-array-redeclaration:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-asin:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5260945742880185440==--

--===============1126157985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1126157985==--
