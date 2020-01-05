Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D51B130960
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Jan 2020 19:16:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 817C689C1F;
	Sun,  5 Jan 2020 18:16:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7A7C189C16;
 Sun,  5 Jan 2020 18:16:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71AA4A00E6;
 Sun,  5 Jan 2020 18:16:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Sun, 05 Jan 2020 18:16:00 -0000
Message-ID: <157824816043.14736.17417587772489645950@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200105155120.96466-1-hdegoede@redhat.com>
In-Reply-To: <20200105155120.96466-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/connector=3A_Split_out_ori?=
 =?utf-8?q?entation_quirk_detection_=28v2=29?=
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

Series: series starting with [v2,1/2] drm/connector: Split out orientation quirk detection (v2)
URL   : https://patchwork.freedesktop.org/series/71637/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7680_full -> Patchwork_15995_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15995_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_schedule@pi-shared-iova-bsd2}:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb9/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-tglb5/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7680_full and Patchwork_15995_full:

### New Piglit tests (35) ###

  * shaders@glsl-fs-texture2d-masked-4:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * shaders@glsl-fs-vec4-indexing-temp-src-in-nested-loop-combined:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@!opengl 1.1@depthstencil-default_fb-blit samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-32f_24_8_rev:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@!opengl 1.1@depthstencil-default_fb-readpixels-24_8 samples=8:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 1.1@gl-1.2-texture-base-level:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.1@infinite-spot-light:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.1@texture-al:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@amd_shader_trinary_minmax@execution@built-in-functions@fs-max3-int-int-int:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@amd_shader_trinary_minmax@execution@built-in-functions@gs-mid3-ivec3-ivec3-ivec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@amd_shader_trinary_minmax@execution@built-in-functions@vs-max3-int-int-int:
    - Statuses : 1 fail(s)
    - Exec time: [6.11] s

  * spec@arb_arrays_of_arrays@execution@atomic_counters@vs-simple-inc-dec-read:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_arrays_of_arrays@execution@tessellation@tcs-tes-patch:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_compute_shader@execution@multiple-texture-reading:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d 32 1 1 gl_texture_rectangle 32 32 1 11 0 0 5 13 0 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_gpu_shader_fp64@execution@built-in-functions@gs-equal-dvec4-dvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_gpu_shader_fp64@execution@built-in-functions@gs-lessthan-dvec2-dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_gpu_shader_fp64@execution@built-in-functions@vs-greaterthan-dvec3-dvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_shader_subroutine@execution@two-subroutines-nested:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat4x2-position-double_dmat4x2:
    - Statuses : 1 fail(s)
    - Exec time: [6.07] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-byte_int-double_dvec3:
    - Statuses : 1 fail(s)
    - Exec time: [5.98] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dvec2_array3-double_dvec2_array2:
    - Statuses : 1 fail(s)
    - Exec time: [6.04] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ubyte_uvec2-short_ivec3-double_dmat2x4-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.01] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 d=z24_s8_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.50] s

  * spec@glsl-1.10@execution@interpolation@interpolation-none-other-smooth-none:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-1.10@execution@samplers@glsl-fs-shadow2d-bias:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-1.30@execution@interpolation@interpolation-noperspective-gl_backsecondarycolor-flat-distance:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-4.00@execution@built-in-functions@gs-greaterthan-dvec3-dvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_double_array3-double_dmat4x2_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.70] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_mat2-double_dmat3x4-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.66] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_mat2x4-position-double_dmat3x4:
    - Statuses : 1 fail(s)
    - Exec time: [6.66] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-uint_uvec4_array3-double_dmat4x2_array2:
    - Statuses : 1 fail(s)
    - Exec time: [6.64] s

  * spec@glsl-4.20@execution@vs_in@vs-input-uint_uvec3_array3-double_dmat4-position:
    - Statuses : 1 fail(s)
    - Exec time: [6.65] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-eq-mat3-mat3:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-ne-uvec3-uvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  

Known issues
------------

  Here are the changes found in Patchwork_15995_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#461])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111736])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb7/igt@gem_exec_balancer@nop.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-tglb6/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +12 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb4/igt@gem_exec_schedule@out-order-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-iclb6/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111606] / [fdo#111677])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb9/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-hsw:          [PASS][17] -> [INCOMPLETE][18] ([i915#530] / [i915#61])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-hsw5/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-hsw7/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-hsw:          [PASS][19] -> [FAIL][20] ([i915#520])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@i915_selftest@live_active:
    - shard-skl:          [PASS][21] -> [DMESG-FAIL][22] ([i915#666])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl8/igt@i915_selftest@live_active.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-skl3/igt@i915_selftest@live_active.html
    - shard-apl:          [PASS][23] -> [DMESG-FAIL][24] ([i915#666])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl3/igt@i915_selftest@live_active.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-apl1/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [PASS][25] -> [DMESG-FAIL][26] ([i915#725])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-hsw5/igt@i915_selftest@live_blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-hsw7/igt@i915_selftest@live_blt.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-apl2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#109]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl8/igt@kms_color@pipe-b-ctm-0-25.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-skl3/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#112080]) +8 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [fdo#112080]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-apl:          [FAIL][39] ([i915#679]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl4/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-apl7/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][41] ([fdo#111735]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb9/igt@gem_ctx_shared@q-smoketest-vebox.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-tglb8/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][43] ([i915#476]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb6/igt@gem_eio@kms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-tglb1/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][45] ([i915#232]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-snb6/igt@gem_eio@reset-stress.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-snb6/igt@gem_eio@reset-stress.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][47] ([i915#435]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb1/igt@gem_exec_nop@basic-series.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-tglb7/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][49] ([fdo#109276]) -> [PASS][50] +11 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +5 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-tglb:         [INCOMPLETE][53] ([fdo#111606] / [fdo#111677]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb3/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-tglb5/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-chain-vebox:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#111677]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-vebox.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-tglb1/igt@gem_exec_schedule@preempt-queue-chain-vebox.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][57] ([i915#707] / [i915#796]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb1/igt@gem_pipe_control_store_loop@reused-buffer.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-tglb7/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [INCOMPLETE][59] ([i915#455]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb1/igt@i915_selftest@live_gt_timelines.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-tglb6/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][61] ([i915#109]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-skl6/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][63] ([IGT#5]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [FAIL][65] ([i915#49]) -> [PASS][66] +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][67] ([fdo#108145]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][69] ([i915#31]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl2/igt@kms_setmode@basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-apl4/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][71] ([fdo#112080]) -> [PASS][72] +7 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb5/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-iclb4/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][73] ([fdo#109276] / [fdo#112080]) -> [FAIL][74] ([IGT#28])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][75] ([fdo#112080]) -> [SKIP][76] ([fdo#111912] / [fdo#112080])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-tglb1/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@kms_atomic_transition@6x-modeset-transitions:
    - shard-tglb:         [SKIP][77] ([fdo#112021]) -> [SKIP][78] ([fdo#112016] / [fdo#112021])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-tglb8/igt@kms_atomic_transition@6x-modeset-transitions.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][79] ([fdo#112016] / [fdo#112021]) -> [SKIP][80] ([fdo#112021])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb7/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-FAIL][81] ([i915#180] / [i915#54]) -> [FAIL][82] ([i915#54])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [INCOMPLETE][83] ([fdo#103665]) -> [DMESG-WARN][84] ([i915#180])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7680 -> Patchwork_15995

  CI-20190529: 20190529
  CI_DRM_7680: b70a5ffaee3192a3d21296a6d68f4a1b4f4cecd5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15995: 1aacf418cca861457c179e78114380132edc11bc @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
