Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05745176EA8
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 06:27:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57F0F6E4B3;
	Tue,  3 Mar 2020 05:27:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 58B986E4B3;
 Tue,  3 Mar 2020 05:27:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A0A9A0138;
 Tue,  3 Mar 2020 05:27:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 03 Mar 2020 05:27:29 -0000
Message-ID: <158321324927.15378.3996394643662616605@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302170218.16496-1-jani.nikula@intel.com>
In-Reply-To: <20200302170218.16496-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_fix_documentation_build_after_rename?=
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

Series: drm/i915: fix documentation build after rename
URL   : https://patchwork.freedesktop.org/series/74151/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8045_full -> Patchwork_16783_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8045_full and Patchwork_16783_full:

### New Piglit tests (75) ###

  * shaders@glsl-vs-raytrace-bug26691:
    - Statuses : 1 fail(s)
    - Exec time: [89.33] s

  * spec@!opengl 1.3@gl-1.3-texture-env:
    - Statuses : 1 fail(s)
    - Exec time: [22.35] s

  * spec@!opengl 2.0@tex3d-npot:
    - Statuses : 1 fail(s)
    - Exec time: [17.89] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 d=s=z32f_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.46] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 d=z32f_s8_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.46] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 ds=z32f_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.49] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 s=z24_s8_d=z32f_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.47] s

  * spec@ext_framebuffer_blit@fbo-copypix:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_framebuffer_blit@fbo-readdrawpix:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@ext_framebuffer_multisample@turn-on-off 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@ext_framebuffer_multisample@turn-on-off 4:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 d=z24_s8_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.45] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 ds=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.42] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 s=d=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.42] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 s=z24_s8_d=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.44] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture() 1dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.25] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture() 3d:
    - Statuses : 1 fail(s)
    - Exec time: [7.15] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture() cube:
    - Statuses : 1 fail(s)
    - Exec time: [0.98] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture(bias) 1d:
    - Statuses : 1 fail(s)
    - Exec time: [8.05] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture(bias) 1dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [2.10] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture(bias) 2d:
    - Statuses : 1 fail(s)
    - Exec time: [7.95] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture(bias) 3d:
    - Statuses : 1 fail(s)
    - Exec time: [2.04] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture(bias) cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.75] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj 1dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.33] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj(bias) 1d_projvec4:
    - Statuses : 1 fail(s)
    - Exec time: [2.11] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj(bias) 2d:
    - Statuses : 1 fail(s)
    - Exec time: [2.11] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj(bias) 2d_projvec4:
    - Statuses : 1 fail(s)
    - Exec time: [1.88] s

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:textureproj(bias) 3d:
    - Statuses : 1 fail(s)
    - Exec time: [1.94] s

  * spec@glsl-1.30@execution@fs-execution-ordering:
    - Statuses : 1 fail(s)
    - Exec time: [0.55] s

  * spec@glsl-1.30@execution@fs-texelfetch-2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() 1darrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.42] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() 2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.23] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() 2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.25] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() 2darrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.37] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 1d:
    - Statuses : 1 fail(s)
    - Exec time: [1.95] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 1darray:
    - Statuses : 1 fail(s)
    - Exec time: [2.10] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 1darrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [2.33] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 1dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [2.05] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 2d:
    - Statuses : 1 fail(s)
    - Exec time: [2.06] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 2darray:
    - Statuses : 1 fail(s)
    - Exec time: [2.13] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 2dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [2.20] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 3d:
    - Statuses : 1 fail(s)
    - Exec time: [2.19] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.79] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) cubeshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.82] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texturelod 1d:
    - Statuses : 1 fail(s)
    - Exec time: [1.63] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texturelod 1darray:
    - Statuses : 1 fail(s)
    - Exec time: [2.07] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texturelod 1darrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [2.12] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texturelod 2d:
    - Statuses : 1 fail(s)
    - Exec time: [2.05] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texturelod 2darray:
    - Statuses : 1 fail(s)
    - Exec time: [2.05] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texturelod 2dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [2.04] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texturelod cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [2.09] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texturelodoffset 1darrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureoffset 2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureproj 2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.12] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureproj 3d:
    - Statuses : 1 fail(s)
    - Exec time: [1.05] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureproj(bias) 2dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [2.07] s

  * spec@glsl-1.30@execution@texelfetch fs sampler1d 1-513:
    - Statuses : 1 fail(s)
    - Exec time: [7.56] s

  * spec@glsl-1.30@execution@texelfetch fs sampler1darray 1x281-501x281:
    - Statuses : 1 fail(s)
    - Exec time: [7.33] s

  * spec@glsl-1.30@execution@texelfetch fs sampler1darray 1x71-501x71:
    - Statuses : 1 fail(s)
    - Exec time: [7.11] s

  * spec@glsl-1.30@execution@texelfetch fs sampler2d 1x281-501x281:
    - Statuses : 1 fail(s)
    - Exec time: [16.46] s

  * spec@glsl-1.30@execution@texelfetch fs sampler2d 1x71-501x71:
    - Statuses : 1 fail(s)
    - Exec time: [10.14] s

  * spec@glsl-1.30@execution@texelfetch fs sampler2d 281x1-281x281:
    - Statuses : 1 fail(s)
    - Exec time: [7.53] s

  * spec@glsl-1.30@execution@texelfetch fs sampler2d 71x1-71x281:
    - Statuses : 1 fail(s)
    - Exec time: [5.03] s

  * spec@glsl-1.30@execution@texelfetch fs sampler2darray 1x129x9-98x129x9:
    - Statuses : 1 fail(s)
    - Exec time: [13.72] s

  * spec@glsl-1.30@execution@texelfetch fs sampler2darray 98x129x1-98x129x9:
    - Statuses : 1 fail(s)
    - Exec time: [0.92] s

  * spec@glsl-1.30@execution@texelfetch fs sampler2darray 98x1x9-98x129x9:
    - Statuses : 1 fail(s)
    - Exec time: [16.47] s

  * spec@glsl-1.30@execution@texelfetch fs sampler3d 1x129x9-98x129x9:
    - Statuses : 1 fail(s)
    - Exec time: [4.69] s

  * spec@glsl-1.30@execution@texelfetch fs sampler3d 98x1x9-98x129x9:
    - Statuses : 1 fail(s)
    - Exec time: [6.06] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-usampler2darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@glsl-1.30@execution@texelfetchoffset@fs-texelfetch-usampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-1.50@execution@texelfetch@gs-texelfetch-isampler2darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.50@execution@texelfetch@gs-texelfetch-isampler3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.50@execution@texelfetch@gs-texelfetch-sampler2darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@glsl-1.50@execution@texelfetch@gs-texelfetch-sampler3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.50@execution@texelfetchoffset@gs-texelfetch-isampler3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  

Known issues
------------

  Here are the changes found in Patchwork_16783_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][1] -> [FAIL][2] ([i915#1277])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-tglb5/igt@gem_exec_balancer@hang.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-tglb5/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +12 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-iclb5/igt@gem_exec_schedule@deep-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-iclb2/igt@gem_exec_schedule@deep-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [i915#677]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +16 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#183])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-apl1/igt@gem_tiled_swapping@non-threaded.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-apl6/igt@gem_tiled_swapping@non-threaded.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#716])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-skl2/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +7 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([IGT#5])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#34])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#69])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#899])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109642] / [fdo#111068])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-iclb7/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#31])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-apl6/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-apl1/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][35] ([fdo#112080]) -> [PASS][36] +17 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-kbl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-kbl7/igt@gem_ctx_isolation@bcs0-s3.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-kbl4/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [FAIL][39] ([i915#679]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-skl2/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-skl2/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [INCOMPLETE][41] ([i915#1197] / [i915#1239]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-skl2/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-skl2/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][43] ([fdo#109276] / [i915#677]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-iclb5/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][45] ([i915#677]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +26 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-iclb5/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-iclb2/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#112146]) -> [PASS][50] +8 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][51] ([i915#644]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [INCOMPLETE][53] ([i915#69]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-skl7/igt@i915_pm_backlight@fade_with_suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-skl6/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [INCOMPLETE][55] ([fdo#103665]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][57] ([i915#79]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-apl8/igt@kms_flip@flip-vs-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-apl4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][61] ([i915#123] / [i915#69]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][63] ([i915#1188]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-skl5/igt@kms_hdr@bpc-switch.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][65] ([fdo#108145]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][67] ([fdo#108145] / [i915#265]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][69] ([fdo#109642] / [fdo#111068]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-iclb5/igt@kms_psr2_su@page_flip.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][71] ([i915#173]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-iclb1/igt@kms_psr@no_drrs.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-iclb4/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8045/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8045 -> Patchwork_16783

  CI-20190529: 20190529
  CI_DRM_8045: 20933db717e6e793af836173de3d3011171e19b5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5483: 1707153df224ffb6333c6c660a792b7f334eb3d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16783: 7cc5baf860ff948b55a94c9b1bab958ee08106aa @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16783/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
