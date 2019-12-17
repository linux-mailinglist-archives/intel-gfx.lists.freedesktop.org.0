Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87550123054
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 16:30:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8237B6E14E;
	Tue, 17 Dec 2019 15:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ECAF089D4D;
 Tue, 17 Dec 2019 15:29:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E4118A00C7;
 Tue, 17 Dec 2019 15:29:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhenyu Wang" <zhenyuw@linux.intel.com>
Date: Tue, 17 Dec 2019 15:29:59 -0000
Message-ID: <157659659992.21846.8130354555072490349@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191217071354.20006-1-zhenyuw@linux.intel.com>
In-Reply-To: <20191217071354.20006-1-zhenyuw@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_vGPU_kernel_context_kmemleak?=
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

Series: drm/i915: Fix vGPU kernel context kmemleak
URL   : https://patchwork.freedesktop.org/series/71027/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7578_full -> Patchwork_15807_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15807_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-1-int-2drect (NEW):
    - {pig-hsw-4770r}:    NOTRUN -> [FAIL][1] +67 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/pig-hsw-4770r/spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-1-int-2drect.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7578_full and Patchwork_15807_full:

### New Piglit tests (68) ###

  * spec@arb_gpu_shader5@texturegather@vs-r-0-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.58] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-uint-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.70] s

  * spec@arb_gpu_shader5@texturegather@vs-r-0-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.61] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.69] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.77] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.42] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.73] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.79] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.80] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.53] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.63] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.77] s

  * spec@arb_gpu_shader5@texturegather@vs-rgba-0-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.74] s

  * spec@arb_gpu_shader5@texturegather@vs-rgba-0-int-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.76] s

  * spec@arb_gpu_shader5@texturegather@vs-rgba-0-int-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.62] s

  * spec@arb_gpu_shader5@texturegather@vs-rgba-1-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.70] s

  * spec@arb_gpu_shader5@texturegather@vs-rgba-1-int-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.89] s

  * spec@arb_gpu_shader5@texturegather@vs-rgba-1-int-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.72] s

  * spec@arb_gpu_shader5@texturegather@vs-rgba-2-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.70] s

  * spec@arb_gpu_shader5@texturegather@vs-rgba-2-int-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.69] s

  * spec@arb_gpu_shader5@texturegather@vs-rgba-2-int-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.73] s

  * spec@arb_gpu_shader5@texturegather@vs-rgba-3-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.78] s

  * spec@arb_gpu_shader5@texturegather@vs-rgba-3-int-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.59] s

  * spec@arb_gpu_shader5@texturegather@vs-rgba-3-int-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.67] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-r-0-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [6.97] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-r-0-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [6.96] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-r-0-uint-2drect-const:
    - Statuses : 1 fail(s)
    - Exec time: [7.07] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rg-0-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [7.06] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rg-0-uint-2d-const:
    - Statuses : 1 fail(s)
    - Exec time: [7.27] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rg-1-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [6.98] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rg-1-uint-2d-const:
    - Statuses : 1 fail(s)
    - Exec time: [7.22] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-0-int-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [10.29] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-0-int-2darray-const:
    - Statuses : 1 fail(s)
    - Exec time: [10.94] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-0-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [7.01] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-0-int-2drect-const:
    - Statuses : 1 fail(s)
    - Exec time: [7.01] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-1-int-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [10.52] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-1-int-2darray-const:
    - Statuses : 1 fail(s)
    - Exec time: [10.39] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-1-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [6.97] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-1-int-2drect-const:
    - Statuses : 1 fail(s)
    - Exec time: [7.06] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-2-int-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [7.11] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-2-int-2darray-const:
    - Statuses : 1 fail(s)
    - Exec time: [7.09] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-2-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [6.85] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-2-int-2drect-const:
    - Statuses : 1 fail(s)
    - Exec time: [7.16] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-3-int-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [7.18] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-3-int-2darray-const:
    - Statuses : 1 fail(s)
    - Exec time: [6.91] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-3-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [7.34] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-3-int-2drect-const:
    - Statuses : 1 fail(s)
    - Exec time: [7.31] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-r-0-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [7.08] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rg-0-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [7.04] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rg-1-uint-2d:
    - Statuses : 1 fail(s)
    - Exec time: [6.87] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-0-int-2d:
    - Statuses : 1 fail(s)
    - Exec time: [10.53] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-0-int-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [7.05] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-0-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [7.11] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-1-int-2d:
    - Statuses : 1 fail(s)
    - Exec time: [10.61] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-1-int-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [6.99] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-1-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [7.14] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-2-int-2d:
    - Statuses : 1 fail(s)
    - Exec time: [10.59] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-2-int-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [7.05] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-2-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [7.06] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-3-int-2d:
    - Statuses : 1 fail(s)
    - Exec time: [10.52] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-3-int-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [7.02] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-3-int-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [6.66] s

  * spec@arb_occlusion_query@occlusion_query_meta_fragments:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dvec3-position-float_mat3x4_array3:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 292 s=z24_s8_d=z24:
    - Statuses : 1 fail(s)
    - Exec time: [5.54] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat4-position-double_dmat3x2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-eq-mat4x3-mat4x3-using-if:
    - Statuses : 1 fail(s)
    - Exec time: [5.65] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-eq-vec4-vec4:
    - Statuses : 1 fail(s)
    - Exec time: [5.62] s

  

Known issues
------------

  Here are the changes found in Patchwork_15807_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb1/igt@gem_ctx_isolation@vcs1-none.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-iclb3/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [PASS][4] -> [INCOMPLETE][5] ([fdo#111736])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb7/igt@gem_exec_await@wide-contexts.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb6/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([fdo#111593])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb4/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@deep-render:
    - shard-iclb:         [PASS][8] -> [INCOMPLETE][9] ([i915#140])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb6/igt@gem_exec_schedule@deep-render.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-iclb7/igt@gem_exec_schedule@deep-render.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#109276]) +7 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb4/igt@gem_exec_schedule@fifo-bsd1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-iclb5/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][12] -> [FAIL][13] ([i915#644])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-skl:          [PASS][14] -> [FAIL][15] ([i915#644])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-skl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][16] -> [DMESG-WARN][17] ([i915#180]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl7/igt@gem_softpin@noreloc-s3.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([i915#472])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb9/igt@gem_sync@basic-store-all.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb6/igt@gem_sync@basic-store-all.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-apl:          [PASS][20] -> [INCOMPLETE][21] ([fdo#103927])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl1/igt@gem_userptr_blits@sync-unmap-after-close.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-apl7/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#456] / [i915#460])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb9/igt@gem_workarounds@suspend-resume-fd.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][24] -> [FAIL][25] ([i915#454])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][26] -> [DMESG-WARN][27] ([i915#747])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl5/igt@i915_selftest@mock_sanitycheck.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-skl1/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#54]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:
    - shard-hsw:          [PASS][30] -> [DMESG-WARN][31] ([IGT#6]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-hsw1/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][32] -> [DMESG-WARN][33] ([i915#109]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-skl3/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#79])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
    - shard-tglb:         [PASS][38] -> [INCOMPLETE][39] ([i915#456] / [i915#460] / [i915#474])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [PASS][40] -> [FAIL][41] ([i915#49])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-kbl:          [PASS][42] -> [INCOMPLETE][43] ([fdo#103665] / [i915#648] / [i915#667])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-kbl7/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-kbl4/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][44] -> [INCOMPLETE][45] ([i915#69])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][46] -> [SKIP][47] ([fdo#109441]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][48] -> [FAIL][49] ([i915#31])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl8/igt@kms_setmode@basic.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-apl4/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#112080]) +6 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb2/igt@perf_pmu@busy-vcs1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-iclb3/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [INCOMPLETE][52] ([i915#435]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@gem_busy@close-race.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb8/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-tglb:         [INCOMPLETE][54] ([i915#456]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb5/igt@gem_ctx_isolation@bcs0-s3.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb5/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-apl:          [FAIL][56] ([i915#679]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl3/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-apl2/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][58] ([fdo#111735]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@banned:
    - shard-tglb:         [INCOMPLETE][60] ([i915#476]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@gem_eio@banned.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb8/igt@gem_eio@banned.html

  * igt@gem_eio@suspend:
    - shard-tglb:         [INCOMPLETE][62] ([i915#460]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb2/igt@gem_eio@suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb3/igt@gem_eio@suspend.html

  * igt@gem_exec_reloc@basic-wc-active:
    - shard-skl:          [DMESG-WARN][64] ([i915#109]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl8/igt@gem_exec_reloc@basic-wc-active.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-skl6/igt@gem_exec_reloc@basic-wc-active.html

  * {igt@gem_exec_schedule@pi-common-bsd1}:
    - shard-iclb:         [SKIP][66] ([fdo#109276]) -> [PASS][67] +10 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd1.html

  * {igt@gem_exec_schedule@pi-distinct-iova-bsd}:
    - shard-iclb:         [SKIP][68] ([i915#677]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
    - shard-tglb:         [INCOMPLETE][70] ([fdo#111677]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][72] ([fdo#112146]) -> [PASS][73] +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][74] ([i915#707]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb2/igt@gem_exec_schedule@smoketest-bsd2.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb1/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][76] ([i915#472] / [i915#707]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb9/igt@gem_sync@basic-each.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb1/igt@gem_sync@basic-each.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][78] ([i915#716]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl7/igt@gen9_exec_parse@allowed-single.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-apl1/igt@gen9_exec_parse@allowed-single.html
    - shard-skl:          [DMESG-WARN][80] ([i915#716]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl6/igt@gen9_exec_parse@allowed-single.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][82] ([i915#180]) -> [PASS][83] +3 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-skl:          [FAIL][84] ([i915#54]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-hsw:          [DMESG-WARN][86] ([IGT#6]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-hsw1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][88] ([i915#456] / [i915#460]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][90] ([i915#79]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [FAIL][92] ([i915#79]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][94] ([i915#221]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl4/igt@kms_flip@flip-vs-suspend.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-skl3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [FAIL][96] ([i915#49]) -> [PASS][97] +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-iclb:         [DMESG-WARN][98] ([fdo#111764]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb2/igt@kms_frontbuffer_tracking@psr-suspend.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-iclb3/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-iclb:         [INCOMPLETE][100] ([i915#140] / [i915#246]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-iclb2/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][102] ([i915#180]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][104] ([fdo#109441]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb3/igt@kms_psr@psr2_primary_blt.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][106] ([fdo#112080]) -> [PASS][107] +3 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][108] ([i915#818]) -> [FAIL][109] ([i915#832])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-hsw7/igt@gem_tiled_blits@normal.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-hsw1/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][110] ([i915#454]) -> [SKIP][111] ([i915#468])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_atomic_transition@6x-modeset-transitions:
    - shard-tglb:         [SKIP][112] ([fdo#112021]) -> [SKIP][113] ([fdo#112016] / [fdo#112021])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-tglb6/igt@kms_atomic_transition@6x-modeset-transitions.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][114] ([i915#648]) -> [INCOMPLETE][115] ([i915#648] / [i915#667])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl5/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/shard-skl10/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][116] ([fdo#112347] / [i915#648] / [i915#667]) -> [INCOMPLETE][117] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl7/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [117]: https://intel-gfx

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15807/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
