Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD55611F1E9
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 14:13:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9371F6E286;
	Sat, 14 Dec 2019 13:13:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FB216E071;
 Sat, 14 Dec 2019 13:13:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E657A0073;
 Sat, 14 Dec 2019 13:13:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Sat, 14 Dec 2019 13:13:44 -0000
Message-ID: <157632922422.13805.8531141304000259101@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213141231.7330-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191213141231.7330-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmVm?=
 =?utf-8?q?actor_Gen11+_SAGV_support_=28rev14=29?=
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

Series: Refactor Gen11+ SAGV support (rev14)
URL   : https://patchwork.freedesktop.org/series/68028/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7560_full -> Patchwork_15747_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15747_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15747_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15747_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gen7_exec_parse@cmd-crossing-page}:
    - shard-tglb:         NOTRUN -> [SKIP][3] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-tglb4/igt@gen7_exec_parse@cmd-crossing-page.html

  * {igt@gen9_exec_parse@batch-zero-length}:
    - shard-iclb:         NOTRUN -> [SKIP][4] +7 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-iclb2/igt@gen9_exec_parse@batch-zero-length.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_gpu_shader5@texturegather@vs-rgba-3-float-cubearray (NEW):
    - pig-hsw-4770r:      NOTRUN -> [FAIL][5] +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/pig-hsw-4770r/spec@arb_gpu_shader5@texturegather@vs-rgba-3-float-cubearray.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7560_full and Patchwork_15747_full:

### New Piglit tests (6) ###

  * spec@arb_es2_compatibility@fbo-blending-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_gpu_shader5@texturegather@vs-rgba-3-float-cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [1.92] s

  * spec@arb_sample_shading@builtin-gl-sample-mask-simple 6:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_sample_shading@builtin-gl-sample-mask-simple 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * spec@arb_sampler_objects@gl_ext_texture_srgb_decode:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dvec4-int_ivec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  

Known issues
------------

  Here are the changes found in Patchwork_15747_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-persistence:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-iclb2/igt@gem_ctx_persistence@vcs1-persistence.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-iclb6/igt@gem_ctx_persistence@vcs1-persistence.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([i915#476])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-tglb5/igt@gem_eio@kms.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-tglb9/igt@gem_eio@kms.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([fdo#111593])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-tglb2/igt@gem_exec_gttfill@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-tglb6/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([i915#707])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-tglb7/igt@gem_exec_schedule@smoketest-bsd2.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-tglb9/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-tglb:         [PASS][14] -> [TIMEOUT][15] ([i915#530])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-tglb8/igt@gem_persistent_relocs@forked-thrashing.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-tglb2/igt@gem_persistent_relocs@forked-thrashing.html
    - shard-snb:          [PASS][16] -> [FAIL][17] ([i915#520])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-snb6/igt@gem_persistent_relocs@forked-thrashing.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-snb7/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([i915#707] / [i915#796])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-tglb9/igt@gem_pipe_control_store_loop@reused-buffer.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-tglb8/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#644])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][22] -> [FAIL][23] ([i915#644])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-snb:          [PASS][24] -> [DMESG-WARN][25] ([fdo#111870])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-snb6/igt@gem_userptr_blits@dmabuf-unsync.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-snb7/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-snb:          [PASS][26] -> [DMESG-WARN][27] ([i915#747])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-snb1/igt@i915_selftest@mock_sanitycheck.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-snb2/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#54]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([IGT#5])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang-interruptible:
    - shard-hsw:          [PASS][32] -> [DMESG-WARN][33] ([i915#44])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-hsw1/igt@kms_flip@2x-flip-vs-panning-vs-hang-interruptible.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-hsw5/igt@kms_flip@2x-flip-vs-panning-vs-hang-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][34] -> [FAIL][35] ([i915#79])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][36] -> [FAIL][37] ([i915#49])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - shard-snb:          [PASS][38] -> [SKIP][39] ([fdo#109271])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-snb5/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-snb5/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][40] -> [DMESG-WARN][41] ([i915#180]) +6 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-kbl:          [PASS][42] -> [INCOMPLETE][43] ([fdo#103665] / [i915#648] / [i915#667])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-kbl7/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-kbl7/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-kbl:          [PASS][44] -> [INCOMPLETE][45] ([fdo#103665] / [i915#435] / [i915#648] / [i915#667])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-kbl3/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-kbl2/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][46] -> [INCOMPLETE][47] ([i915#69])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([fdo#108145])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([fdo#108145] / [i915#265])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([fdo#109441])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-iclb6/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][54] -> [FAIL][55] ([i915#31])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-apl7/igt@kms_setmode@basic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-apl1/igt@kms_setmode@basic.html
    - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#31])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-glk2/igt@kms_setmode@basic.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-glk4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-tglb:         [PASS][58] -> [INCOMPLETE][59] ([i915#456] / [i915#460]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-tglb6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-tglb1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][60] -> [SKIP][61] ([fdo#112080])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-iclb8/igt@perf_pmu@busy-check-all-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][62] -> [SKIP][63] ([fdo#109276]) +5 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_eio@suspend:
    - shard-tglb:         [INCOMPLETE][64] ([i915#460]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-tglb4/igt@gem_eio@suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-tglb2/igt@gem_eio@suspend.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][66] ([i915#470]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-tglb6/igt@gem_exec_parallel@contexts.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-tglb5/igt@gem_exec_parallel@contexts.html

  * {igt@gem_exec_schedule@pi-shared-iova-bsd2}:
    - shard-iclb:         [SKIP][68] ([fdo#109276]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [SKIP][70] ([fdo#112146]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd1:
    - shard-tglb:         [INCOMPLETE][72] ([fdo#111606] / [fdo#111677]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-iclb:         [INCOMPLETE][74] ([i915#140]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-iclb2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-iclb6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [FAIL][76] ([i915#520]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-iclb:         [TIMEOUT][78] ([i915#530]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-iclb3/igt@gem_persistent_relocs@forked-thrashing.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-iclb2/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][80] ([i915#644]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-skl5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][82] ([i915#180]) -> [PASS][83] +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-kbl:          [DMESG-WARN][84] ([i915#747]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-kbl7/igt@i915_selftest@mock_sanitycheck.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-kbl7/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [FAIL][86] ([i915#54]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][88] ([i915#221]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-skl7/igt@kms_flip@flip-vs-suspend.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-skl10/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [FAIL][90] ([i915#49]) -> [PASS][91] +2 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [INCOMPLETE][92] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-skl:          [FAIL][94] ([i915#49]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][96] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-skl2/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][98] ([i915#180]) -> [PASS][99] +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][100] ([fdo#112080]) -> [SKIP][101] ([fdo#111912] / [fdo#112080])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-tglb1/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [INCOMPLETE][102] ([i915#456] / [i915#460]) -> [DMESG-WARN][103] ([i915#402])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-tglb7/igt@kms_psr@psr2_suspend.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-tglb5/igt@kms_psr@psr2_suspend.html

  * igt@runner@aborted:
    - shard-iclb:         ([FAIL][104], [FAIL][105]) ([fdo#111093]) -> [FAIL][106] ([fdo#111093] / [i915#209])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-iclb3/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/shard-iclb2/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/shard-iclb1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111093]: https://bugs.freedesktop.org/show_bug.cgi?id=111093
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#209]: https://gitlab.freedesktop.org/drm/intel/issues/209
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7560 -> Patchwork_15747

  CI-20190529: 20190529
  CI_DRM_7560: c093691eb61cb4680e44a339660e9443e728ef67 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15747: 8a5a4b77d79a39af6fa4dd0d60b4bcb05f46d242 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
