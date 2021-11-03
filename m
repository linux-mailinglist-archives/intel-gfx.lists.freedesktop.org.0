Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 112C9443B3C
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 03:16:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A93573A0E;
	Wed,  3 Nov 2021 02:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E5D1C73A0E;
 Wed,  3 Nov 2021 02:16:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DC7C9A00A0;
 Wed,  3 Nov 2021 02:16:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5754625420436620103=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 03 Nov 2021 02:16:42 -0000
Message-ID: <163590580286.11278.13067637281447506289@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211102222511.534310-1-matthew.d.roper@intel.com>
In-Reply-To: <20211102222511.534310-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_Initial_workarounds_for_Xe=5FHP_SDV_and_DG2?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5754625420436620103==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915: Initial workarounds for Xe_HP SDV and DG2
URL   : https://patchwork.freedesktop.org/series/96513/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10830_full -> Patchwork_21509_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21509_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21509_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-snb-2600 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21509_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_gpu_shader_fp64@execution@built-in-functions@fs-abs-dvec3 (NEW):
    - pig-snb-2600:       NOTRUN -> [FAIL][1] +25298 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21509/pig-snb-2600/spec@arb_gpu_shader_fp64@execution@built-in-functions@fs-abs-dvec3.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10830_full and Patchwork_21509_full:

### New Piglit tests (24855) ###

  * fast_color_clear@all-colors:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * fast_color_clear@fast-slow-clear-interaction:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * fast_color_clear@fcc-blit-between-clears:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * fast_color_clear@fcc-read-after-clear blit rb:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * fast_color_clear@fcc-read-after-clear blit tex:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * fast_color_clear@fcc-read-after-clear copy rb:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * fast_color_clear@fcc-read-after-clear copy tex:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * fast_color_clear@fcc-read-after-clear read_pixels rb:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * fast_color_clear@fcc-read-after-clear read_pixels tex:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * fast_color_clear@fcc-read-after-clear sample tex:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * fast_color_clear@fcc-read-to-pbo-after-clear:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * fast_color_clear@non-redundant-clear:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * fast_color_clear@redundant-clear:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-depth-read-fbo-d24-s0:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-depth-read-fbo-d24-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * hiz@hiz-depth-read-fbo-d24s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-depth-read-window-stencil0:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-depth-read-window-stencil1:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-depth-stencil-test-fbo-d0-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-depth-stencil-test-fbo-d24-s0:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-depth-stencil-test-fbo-d24-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * hiz@hiz-depth-stencil-test-fbo-d24s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * hiz@hiz-depth-test-fbo-d24-s0:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-depth-test-fbo-d24-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-depth-test-fbo-d24s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-depth-test-window-stencil0:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * hiz@hiz-depth-test-window-stencil1:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-stencil-read-fbo-d0-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-stencil-read-fbo-d24-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * hiz@hiz-stencil-read-fbo-d24s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * hiz@hiz-stencil-read-window-depth0:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-stencil-read-window-depth1:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * hiz@hiz-stencil-test-fbo-d0-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-stencil-test-fbo-d24-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * hiz@hiz-stencil-test-fbo-d24s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-stencil-test-window-depth0:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-stencil-test-window-depth1:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@buffer with glbitmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@buffer with glblitframebuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@buffer with glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@buffer with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@buffer with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@buffer with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@buffer with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@buffer with gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * object namespace pollution@buffer with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@buffer with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@buffer with glgetteximage-compressed:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@buffer with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@framebuffer with glbitmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@framebuffer with glblitframebuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@framebuffer with glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * object namespace pollution@framebuffer with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@framebuffer with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@framebuffer with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@framebuffer with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@framebuffer with gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@framebuffer with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * object namespace pollution@framebuffer with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * object namespace pollution@framebuffer with glgetteximage-compressed:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@framebuffer with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@program with glbitmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@program with glblitframebuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@program with glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * object namespace pollution@program with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@program with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@program with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@program with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@program with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@program with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@program with glgetteximage-compressed:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@program with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@renderbuffer with glbitmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@renderbuffer with glblitframebuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@renderbuffer with glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@renderbuffer with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@renderbuffer with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@renderbuffer with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@renderbuffer with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@renderbuffer with gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@renderbuffer with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@renderbuffer with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@texture with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@texture with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@texture with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@texture with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@texture with gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@texture with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@texture with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@texture with glgetteximage-compressed:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@texture with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@vertex-array with glbitmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@vertex-array with glblitframebuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@vertex-array with glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * object namespace pollution@vertex-array with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@vertex-array with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@vertex-array with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@vertex-array with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@vertex-array with gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@vertex-array with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * object namespace pollution@vertex-array with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@vertex-array with glgetteximage-compressed:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@vertex-array with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * security@initialized-fbo:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * security@initialized-vbo:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@activeprogram-bad-program:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * shaders@activeprogram-get:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * shaders@attribute0:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@complex-loop-analysis-bug:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@createshaderprogram-attached-shaders:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@createshaderprogram-bad-type:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * shaders@dead-code-break-interaction:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@dependency-hints@exp2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@fragcoord_w:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@getuniform-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * shaders@getuniform-02:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@getuniform-03:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl link two programs, global initializer:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-algebraic-add-add-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-add-add-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-add-add-3:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-add-add-4:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-algebraic-add-sub-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-algebraic-add-sub-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-add-zero:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-add-zero-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-div-one:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-div-one-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-algebraic-logicand-false:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-algebraic-logicand-false-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-logicand-true:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-logicand-true-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-algebraic-logicor-false:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-logicor-false-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-logicor-true:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-algebraic-logicor-true-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-logicxor-false:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-algebraic-logicxor-true:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-mul-mul-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-mul-one:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-mul-one-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-mul-zero:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-algebraic-neg-neg:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-not-equals:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

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
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-rcp-sqrt:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-rcp-sqrt-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-algebraic-sub-sub-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-sub-zero:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-sub-zero-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-sub-zero-3:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-algebraic-sub-zero-4:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-arb-fragment-coord-conventions:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * shaders@glsl-array-bounds-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-array-bounds-02:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

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
    - Exec time: [0.05] s

  * shaders@glsl-array-bounds-08:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-array-bounds-09:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-array-bounds-10:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-array-bounds-11:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-array-bounds-12:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-array-bounds-13:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-array-compare:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-array-compare-02:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-array-length:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-array-uniform:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-array-uniform-length:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-array-varying-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-bindattriblocation:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-bug-22603:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-cache-fallback-shader-source:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * shaders@glsl-clamp-vertex-color:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-complex-subscript:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-abs:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-acos:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

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
    - Exec time: [0.07] s

  * shaders@glsl-const-builtin-clamp:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-cos:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-cosh:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-cross:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-const-builtin-degrees:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-const-builtin-derivatives:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-const-builtin-dot:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-const-builtin-equal:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-equal-bool:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * shaders@glsl-const-builtin-exp:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-exp2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-faceforward:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-floor:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-fract:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-greaterthan:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-greaterthanequal:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-inversesqrt:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-length:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-const-builtin-lessthan:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-lessthanequal:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-const-builtin-log:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-log2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-matrixcompmult:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-max:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-min:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-mix:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-mod:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-normalize:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-not:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-outerproduct:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-pow:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-const-builtin-radians:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-reflect:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-refract:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-sign:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-sin:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-builtin-smoothstep:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-const-builtin-sqrt:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-step:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-tan:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-builtin-transpose:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-const-folding-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-initializer-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-const-initializer-02:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-const-initializer-03:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-constant-folding-call-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-copy-propagation-if-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-copy-propagation-if-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-copy-propagation-if-3:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-copy-propagation-loop-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-copy-propagation-loop-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-copy-propagation-self-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-copy-propagation-self-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-copy-propagation-vector-indexing:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-cos:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * shaders@glsl-deadcode-call:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-deadcode-self-assign:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-deadcode-varying:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-derivs:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-derivs-abs:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-derivs-abs-sign:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-derivs-sign:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-derivs-swizzle:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-derivs-varyings:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-dlist-getattriblocation:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-empty-vs-no-fs:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-floating-constant-120:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-abs-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-fs-abs-02:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-abs-03:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-fs-abs-04:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-fs-abs-neg:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-fs-abs-neg-with-intermediate:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-fs-add-masked:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-all-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-fs-all-02:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-fs-any:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-array-redeclaration:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-asin:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-atan-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-fs-atan-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-fs-atan-3:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-bit-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-bit-02:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-fs-bug25902:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * shaders@glsl-fs-ceil:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-fs-clamp-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-fs-clamp-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-fs-clamp-3:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-clamp-4:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-fs-clamp-5:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-color-matrix:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * shaders@glsl-fs-conditional-output-write:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-continue-in-switch-in-do-while:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-fs-continue-inside-do-while:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-fs-convolution-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-convolution-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-copy-propagation-texcoords-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-fs-copy-propagation-texcoords-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-fs-cross:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-fs-cross-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-fs-cross-3:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-fs-discard-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-fs-discard-02:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * shaders@glsl-fs-discard-03:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-fs-discard-04:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-fs-dot-vec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-fs-dot-vec2-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21509/index.html

--===============5754625420436620103==
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
<tr><td><b>Series:</b></td><td>i915: Initial workarounds for Xe_HP SDV and DG2</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96513/">https://patchwork.freedesktop.org/series/96513/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21509/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21509/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10830_full -&gt; Patchwork_21509_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21509_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21509_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): pig-snb-2600 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21509_full:</p>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@arb_gpu_shader_fp64@execution@built-in-functions@fs-abs-dvec3 (NEW):<ul>
<li>pig-snb-2600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21509/pig-snb-2600/spec@arb_gpu_shader_fp64@execution@built-in-functions@fs-abs-dvec3.html">FAIL</a> +25298 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10830_full and Patchwork_21509_full:</p>
<h3>New Piglit tests (24855)</h3>
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
<li>Exec time: [0.06] s</li>
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
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-after-clear blit tex:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-after-clear read_pixels rb:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-after-clear read_pixels tex:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
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
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@non-redundant-clear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@redundant-clear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-read-fbo-d24-s0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-read-fbo-d24-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
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
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-read-window-stencil1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
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
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-stencil-test-fbo-d24s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-test-fbo-d24-s0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-test-fbo-d24-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-test-window-stencil1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-read-fbo-d0-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-read-fbo-d24-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-read-fbo-d24s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-read-window-depth0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
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
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-test-fbo-d24-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-test-fbo-d24s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-test-window-depth0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-test-window-depth1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glclear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glcleartexsubimage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glcopyimagesubdata:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
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
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glgeneratemipmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glclear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.08] s</li>
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
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glcopytexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
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
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.08] s</li>
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
<li>Exec time: [0.04] s</li>
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
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glclear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glcleartexsubimage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glcopyimagesubdata:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glgeneratemipmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glgetteximage-compressed:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with gltexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
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
<li>Exec time: [0.06] s</li>
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
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glcopyimagesubdata:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glcopypixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glgeneratemipmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glcleartexsubimage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glcopyimagesubdata:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glcopypixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glbitmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glblitframebuffer:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glclear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glcleartexsubimage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>security@initialized-fbo:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>security@initialized-vbo:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@activeprogram-bad-program:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>shaders@activeprogram-get:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.08] s</li>
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
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@createshaderprogram-bad-type:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>shaders@dead-code-break-interaction:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
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
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@getuniform-01:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>shaders@getuniform-02:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@getuniform-03:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl link two programs, global initializer:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-add-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-add-4:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-sub-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-sub-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-zero:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicand-false:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicand-false-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicand-true:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicand-true-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicor-false:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicor-false-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicor-true:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicor-true-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicxor-false:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicxor-true:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
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
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-mul-zero:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-neg-neg:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-not-equals:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-rcp-sqrt:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-rcp-sqrt-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-sub-sub-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
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
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-sub-zero-3:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-sub-zero-4:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-02:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
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
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-08:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-09:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-10:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-11:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-12:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-bounds-13:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
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
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-length:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-uniform:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-uniform-length:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-array-varying-01:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-cache-fallback-shader-source:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-clamp-vertex-color:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-complex-subscript:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-abs:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-acos:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
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
<li>Exec time: [0.07] s</li>
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
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-cross:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-degrees:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-derivatives:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-distance:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-dot:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-equal:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-equal-bool:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-exp:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
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
<li>Exec time: [0.06] s</li>
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
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-length:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-lessthan:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-lessthanequal:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-log:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-log2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-min:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-mix:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
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
<li>Exec time: [0.06] s</li>
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
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-pow:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-radians:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-reflect:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-refract:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-sign:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
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
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-builtin-sqrt:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
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
<li>Exec time: [0.04] s</li>
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
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-initializer-01:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-initializer-02:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-const-initializer-03:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
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
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-copy-propagation-if-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-copy-propagation-if-3:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-copy-propagation-loop-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
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
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-copy-propagation-vector-indexing:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-cos:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-deadcode-call:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-deadcode-self-assign:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-deadcode-varying:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
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
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-derivs-abs-sign:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-derivs-sign:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-derivs-swizzle:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-derivs-varyings:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-dlist-getattriblocation:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-empty-vs-no-fs:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
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
<li>Exec time: [0.04] s</li>
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
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-abs-neg:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-abs-neg-with-intermediate:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
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
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-all-02:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-any:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-array-redeclaration:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-asin:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-atan-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-atan-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-atan-3:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-bit-01:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-bit-02:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-bug25902:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-ceil:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-clamp-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-clamp-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-clamp-3:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-clamp-4:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-clamp-5:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-color-matrix:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-conditional-output-write:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-continue-in-switch-in-do-while:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-continue-inside-do-while:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-convolution-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-convolution-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-copy-propagation-texcoords-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-copy-propagation-texcoords-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-cross:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-cross-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-cross-3:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-discard-01:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-discard-02:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-discard-03:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-discard-04:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-dot-vec2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-fs-dot-vec2-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-</p>
</li>
</ul>

</body>
</html>

--===============5754625420436620103==--
