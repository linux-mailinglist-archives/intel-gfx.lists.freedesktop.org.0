Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB2C130129
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Jan 2020 07:14:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F35906E3B0;
	Sat,  4 Jan 2020 06:14:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3DAAC6E3AE;
 Sat,  4 Jan 2020 06:14:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35186A432F;
 Sat,  4 Jan 2020 06:14:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ma Feng" <mafeng.ma@huawei.com>
Date: Sat, 04 Jan 2020 06:14:14 -0000
Message-ID: <157811845418.3249.10492432773018956959@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1578013959-31486-1-git-send-email-mafeng.ma@huawei.com>
In-Reply-To: <1578013959-31486-1-git-send-email-mafeng.ma@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?es_coccicheck_warnings?=
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

Series: Fixes coccicheck warnings
URL   : https://patchwork.freedesktop.org/series/71610/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7674_full -> Patchwork_15990_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15990_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15990_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15990_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_fb@linear-8bpp-rotate-180:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb9/igt@kms_big_fb@linear-8bpp-rotate-180.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb9/igt@kms_big_fb@linear-8bpp-rotate-180.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7674_full and Patchwork_15990_full:

### New Piglit tests (37) ###

  * spec@!opengl 2.0@vertex-program-two-side enabled back front2:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@!opengl 2.0@vertex-program-two-side enabled back front2 back2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@amd_shader_trinary_minmax@execution@built-in-functions@fs-max3-int-int-int:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@amd_shader_trinary_minmax@execution@built-in-functions@fs-min3-int-int-int:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_fragment_program@fp-fragment-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_gpu_shader5@execution@built-in-functions@fs-texturegatheroffset-uniform-array-offset:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_gpu_shader5@execution@sampler_array_indexing@vs-weird-uniforms:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 32 1 1 128 4:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_texture_multisample@texelfetch@6-gs-usampler2dms:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_texture_query_lod@execution@fs-texturequerylod-nearest-biased:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_texture_rg@fbo-rg-gl_rg16:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2-int_ivec2_array3-position:
    - Statuses : 1 fail(s)
    - Exec time: [5.79] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat4x2-position-double_dvec2_array2:
    - Statuses : 1 fail(s)
    - Exec time: [6.31] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_ivec2_array3-position-double_dmat2x3:
    - Statuses : 1 fail(s)
    - Exec time: [5.74] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_ivec4-position-double_dmat2x4_array2:
    - Statuses : 1 fail(s)
    - Exec time: [5.96] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat3x4-int_ivec2:
    - Statuses : 1 fail(s)
    - Exec time: [6.21] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat4x2-int_int:
    - Statuses : 1 fail(s)
    - Exec time: [6.03] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-float_mat3x4_array3-double_dmat3x2_array2:
    - Statuses : 1 fail(s)
    - Exec time: [6.23] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-float_mat4x3-double_dmat2:
    - Statuses : 1 fail(s)
    - Exec time: [6.06] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ubyte_uvec3-position-short_int-double_dmat4x3:
    - Statuses : 1 fail(s)
    - Exec time: [6.31] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-uint_uvec2-double_dmat3x2-position:
    - Statuses : 1 fail(s)
    - Exec time: [5.76] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-uint_uvec4_array3-double_dvec3_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.28] s

  * spec@glsl-1.10@execution@interpolation@interpolation-none-other-smooth-fixed:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-1.10@execution@interpolation@interpolation-none-other-smooth-none:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@interpolation@interpolation-none-gl_frontcolor-flat-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-1.30@execution@interpolation@interpolation-noperspective-gl_backsecondarycolor-smooth-vertex:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-1.30@execution@interpolation@interpolation-smooth-gl_frontcolor-flat-fixed:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@glsl-1.30@execution@interpolation@interpolation-smooth-gl_frontsecondarycolor-smooth-none:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-4.20@execution@vs_in@vs-input-uint_uvec2-position-double_dvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-4.30@execution@built-in-functions@cs-faceforward-vec3-vec3-vec3:
    - Statuses : 1 fail(s)
    - Exec time: [6.12] s

  * spec@glsl-4.30@execution@built-in-functions@cs-min-uvec3-uint:
    - Statuses : 1 fail(s)
    - Exec time: [6.16] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-assign-mod-uint-uint:
    - Statuses : 1 fail(s)
    - Exec time: [6.22] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-bitand-not-ivec3-ivec3:
    - Statuses : 1 fail(s)
    - Exec time: [6.18] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-div-mat2x3-float:
    - Statuses : 1 fail(s)
    - Exec time: [6.08] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-eq-bool-bool:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-eq-mat4x3-mat4x3-using-if:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-neg-mat2:
    - Statuses : 1 fail(s)
    - Exec time: [6.12] s

  

Known issues
------------

  Here are the changes found in Patchwork_15990_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111735]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb2/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#461])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#476])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb8/igt@gem_eio@kms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb8/igt@gem_eio@kms.html

  * igt@gem_exec_parallel@vcs1:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111593])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb3/igt@gem_exec_parallel@vcs1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb8/igt@gem_exec_parallel@vcs1.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb5/igt@gem_exec_schedule@preempt-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-iclb1/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd1:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111606] / [fdo#111677]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb5/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109276]) +16 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb2/igt@gem_exec_schedule@promotion-bsd1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-iclb7/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible:
    - shard-apl:          [PASS][19] -> [FAIL][20] ([i915#520])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-apl7/igt@gem_persistent_relocs@forked-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-apl7/igt@gem_persistent_relocs@forked-interruptible.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#413])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb6/igt@i915_pm_rps@waitboost.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-iclb3/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb2/igt@i915_selftest@live_requests.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb8/igt@i915_selftest@live_requests.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#109])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#52] / [i915#54]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [PASS][29] -> [FAIL][30] ([i915#49]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#49])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#247])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl7/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-skl2/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#112080]) +8 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-iclb7/igt@perf_pmu@init-busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][43] ([fdo#112080]) -> [PASS][44] +9 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_busy@close-race:
    - shard-tglb:         [INCOMPLETE][45] ([i915#435]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb5/igt@gem_busy@close-race.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb1/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +6 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
    - shard-iclb:         [DMESG-WARN][49] ([fdo#111764]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb5/igt@gem_ctx_isolation@rcs0-s3.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-iclb1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][51] ([fdo#109276] / [fdo#112080]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb3/igt@gem_ctx_isolation@vcs1-none.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-iclb2/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][53] ([fdo#111735]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-snb:          [TIMEOUT][55] ([fdo#111518]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-snb4/igt@gem_eio@in-flight-contexts-10ms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-snb5/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [INCOMPLETE][57] ([i915#469]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [INCOMPLETE][59] ([fdo#111736]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb6/igt@gem_exec_balancer@nop.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb3/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +17 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-chain-render:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111606] / [fdo#111677]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-render.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb1/igt@gem_exec_schedule@preempt-queue-chain-render.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2:
    - shard-tglb:         [INCOMPLETE][65] ([fdo#111677]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html

  * igt@gem_exec_schedule@promotion-bsd:
    - shard-iclb:         [SKIP][67] ([fdo#112146]) -> [PASS][68] +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb1/igt@gem_exec_schedule@promotion-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-iclb5/igt@gem_exec_schedule@promotion-bsd.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-glk:          [DMESG-WARN][69] ([i915#716]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][71] ([i915#454]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][73] ([i915#109]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][77] ([IGT#5]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         [FAIL][79] ([i915#49]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [INCOMPLETE][81] ([fdo#103665]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][83] ([fdo#108145] / [i915#265]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][85] ([fdo#109441]) -> [PASS][86] +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][87] ([IGT#28]) -> [SKIP][88] ([fdo#109276] / [fdo#112080])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][89] ([fdo#112080]) -> [SKIP][90] ([fdo#111912] / [fdo#112080])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb5/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@gem_ctx_isolation@vcs2-reset:
    - shard-tglb:         [SKIP][91] ([fdo#111912] / [fdo#112080]) -> [SKIP][92] ([fdo#112080])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb3/igt@gem_ctx_isolation@vcs2-reset.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb9/igt@gem_ctx_isolation@vcs2-reset.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][93] ([i915#454]) -> [SKIP][94] ([i915#468])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][95] ([i915#725]) -> [DMESG-FAIL][96] ([i915#553] / [i915#725])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-hsw7/igt@i915_selftest@live_blt.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-hsw2/igt@i915_selftest@live_blt.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][97] ([fdo#112021]) -> [SKIP][98] ([fdo#112016] / [fdo#112021]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/shard-tglb5/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111518]: https://bugs.freedesktop.org/show_bug.cgi?id=111518
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7674 -> Patchwork_15990

  CI-20190529: 20190529
  CI_DRM_7674: 6cdc2db5a5641dd00f47fcc80b83bb8adb777797 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15990: 046a316c510f924c9ec1aba9ea1e9d7df57c619e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15990/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
