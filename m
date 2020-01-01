Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF3F12DF20
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 15:29:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3149489B84;
	Wed,  1 Jan 2020 14:29:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A4A0989B7B;
 Wed,  1 Jan 2020 14:29:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 93819A432F;
 Wed,  1 Jan 2020 14:29:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Jan 2020 14:29:48 -0000
Message-ID: <157788898857.5187.12864022815223439844@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200101121717.662220-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200101121717.662220-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm=3A_Export_drm=5Fcreate=5Ffile?=
 =?utf-8?b?X2Fub24oKQ==?=
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

Series: series starting with [1/2] drm: Export drm_create_file_anon()
URL   : https://patchwork.freedesktop.org/series/71543/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7662_full -> Patchwork_15965_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15965_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15965_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15965_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic-modeset-pipe-b:
    - shard-tglb:         [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb2/igt@kms_busy@basic-modeset-pipe-b.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb8/igt@kms_busy@basic-modeset-pipe-b.html
    - shard-snb:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-snb6/igt@kms_busy@basic-modeset-pipe-b.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-snb2/igt@kms_busy@basic-modeset-pipe-b.html
    - shard-skl:          [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl1/igt@kms_busy@basic-modeset-pipe-b.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-skl8/igt@kms_busy@basic-modeset-pipe-b.html
    - shard-kbl:          [PASS][7] -> [FAIL][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-kbl1/igt@kms_busy@basic-modeset-pipe-b.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-kbl6/igt@kms_busy@basic-modeset-pipe-b.html
    - shard-glk:          [PASS][9] -> [FAIL][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-glk7/igt@kms_busy@basic-modeset-pipe-b.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-glk6/igt@kms_busy@basic-modeset-pipe-b.html
    - shard-apl:          [PASS][11] -> [FAIL][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-apl4/igt@kms_busy@basic-modeset-pipe-b.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-apl6/igt@kms_busy@basic-modeset-pipe-b.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-top-edge:
    - shard-iclb:         [PASS][13] -> [FAIL][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb1/igt@kms_cursor_edge_walk@pipe-c-256x256-top-edge.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb6/igt@kms_cursor_edge_walk@pipe-c-256x256-top-edge.html
    - shard-hsw:          NOTRUN -> [FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-hsw2/igt@kms_cursor_edge_walk@pipe-c-256x256-top-edge.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7662_full and Patchwork_15965_full:

### New Piglit tests (11) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat2x4-position-double_dvec2_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-float_mat3_array3-double_dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@glsl-1.40@execution@built-in-functions@fs-inverse-mat2:
    - Statuses : 1 fail(s)
    - Exec time: [6.46] s

  * spec@glsl-1.40@execution@built-in-functions@fs-inverse-mat3:
    - Statuses : 1 fail(s)
    - Exec time: [6.46] s

  * spec@glsl-1.40@execution@built-in-functions@fs-inverse-mat4:
    - Statuses : 1 fail(s)
    - Exec time: [6.49] s

  * spec@glsl-1.40@execution@built-in-functions@vs-inverse-mat2:
    - Statuses : 1 fail(s)
    - Exec time: [6.45] s

  * spec@glsl-1.40@execution@built-in-functions@vs-inverse-mat3:
    - Statuses : 1 fail(s)
    - Exec time: [6.47] s

  * spec@glsl-4.00@execution@built-in-functions@vs-notequal-dvec3-dvec3:
    - Statuses : 1 fail(s)
    - Exec time: [5.75] s

  * spec@glsl-4.10@execution@vs_in@vs-input-uint_uvec2-double_double_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_mat2x3-position-double_dmat3:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-float_mat3-double_dmat4:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  

Known issues
------------

  Here are the changes found in Patchwork_15965_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb1/igt@gem_ctx_isolation@vcs1-clean.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb6/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#110841])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-promotion-bsd2:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#109276]) +11 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb2/igt@gem_ctx_shared@q-promotion-bsd2.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb8/igt@gem_ctx_shared@q-promotion-bsd2.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#469])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([fdo#111736])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb1/igt@gem_exec_await@wide-contexts.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb7/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [PASS][26] -> [INCOMPLETE][27] ([fdo#108838] / [i915#435])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb2/igt@gem_exec_create@forked.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb3/igt@gem_exec_create@forked.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#112146]) +5 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [PASS][30] -> [INCOMPLETE][31] ([fdo#111606] / [fdo#111677])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][32] -> [INCOMPLETE][33] ([i915#463])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [PASS][34] -> [INCOMPLETE][35] ([i915#707] / [i915#796])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb7/igt@gem_pipe_control_store_loop@reused-buffer.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb5/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [PASS][36] -> [INCOMPLETE][37] ([i915#69])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl2/igt@gem_workarounds@suspend-resume.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-skl1/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][38] -> [FAIL][39] ([i915#413])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb5/igt@i915_pm_rps@waitboost.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb4/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [PASS][40] -> [INCOMPLETE][41] ([i915#455])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb1/igt@i915_selftest@live_gt_timelines.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb6/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][42] -> [DMESG-WARN][43] ([i915#109])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl9/igt@kms_color@pipe-a-ctm-0-75.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-glk:          [PASS][44] -> [FAIL][45] ([i915#34])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglb:         [PASS][46] -> [FAIL][47] ([i915#49])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180]) +4 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([fdo#108145] / [i915#265])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][52] -> [FAIL][53] ([i915#173])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb4/igt@kms_psr@no_drrs.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#109441]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][56] -> [FAIL][57] ([i915#31])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-apl3/igt@kms_setmode@basic.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-apl4/igt@kms_setmode@basic.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([fdo#112080]) +6 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb8/igt@perf_pmu@init-busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@file:
    - shard-tglb:         [FAIL][60] ([i915#919]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb5/igt@gem_ctx_persistence@file.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb6/igt@gem_ctx_persistence@file.html
    - shard-skl:          [FAIL][62] ([i915#919]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl6/igt@gem_ctx_persistence@file.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-skl1/igt@gem_ctx_persistence@file.html
    - shard-apl:          [FAIL][64] ([i915#919]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-apl1/igt@gem_ctx_persistence@file.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-apl7/igt@gem_ctx_persistence@file.html
    - shard-glk:          [FAIL][66] ([i915#919]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-glk6/igt@gem_ctx_persistence@file.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-glk7/igt@gem_ctx_persistence@file.html
    - shard-kbl:          [FAIL][68] ([i915#919]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-kbl4/igt@gem_ctx_persistence@file.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-kbl1/igt@gem_ctx_persistence@file.html
    - shard-iclb:         [FAIL][70] ([i915#919]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb7/igt@gem_ctx_persistence@file.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb8/igt@gem_ctx_persistence@file.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-skl:          [FAIL][72] ([i915#918]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl5/igt@gem_ctx_persistence@smoketest.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-skl4/igt@gem_ctx_persistence@smoketest.html
    - shard-tglb:         [FAIL][74] ([i915#918]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb1/igt@gem_ctx_persistence@smoketest.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb1/igt@gem_ctx_persistence@smoketest.html
    - shard-kbl:          [FAIL][76] ([i915#918]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-kbl4/igt@gem_ctx_persistence@smoketest.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-kbl2/igt@gem_ctx_persistence@smoketest.html
    - shard-apl:          [FAIL][78] ([i915#918]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-apl3/igt@gem_ctx_persistence@smoketest.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-apl8/igt@gem_ctx_persistence@smoketest.html
    - shard-glk:          [FAIL][80] ([i915#918]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-glk6/igt@gem_ctx_persistence@smoketest.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-glk1/igt@gem_ctx_persistence@smoketest.html
    - shard-iclb:         [FAIL][82] ([i915#918]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb3/igt@gem_ctx_persistence@smoketest.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb2/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][84] ([fdo#109276] / [fdo#112080]) -> [PASS][85] +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb7/igt@gem_ctx_persistence@vcs1-queued.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][86] ([i915#82]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-snb1/igt@gem_eio@kms.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-snb7/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][88] ([fdo#110854]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb3/igt@gem_exec_balancer@smoke.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][90] ([i915#435]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb8/igt@gem_exec_nop@basic-series.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb7/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][92] ([i915#470]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb6/igt@gem_exec_parallel@fds.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb2/igt@gem_exec_parallel@fds.html

  * {igt@gem_exec_schedule@pi-userfault-bsd}:
    - shard-iclb:         [SKIP][94] ([i915#677]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd:
    - shard-iclb:         [SKIP][96] ([fdo#112146]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb2/igt@gem_exec_schedule@preempt-contexts-bsd.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb8/igt@gem_exec_schedule@preempt-contexts-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][98] ([fdo#109276]) -> [PASS][99] +10 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb7/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [INCOMPLETE][100] ([fdo#111606] / [fdo#111677]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-skl:          [DMESG-WARN][102] -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-skl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [FAIL][104] ([i915#520]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-snb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-snb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][106] ([i915#472] / [i915#707]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb7/igt@gem_sync@basic-each.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb2/igt@gem_sync@basic-each.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][108] ([i915#472]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb5/igt@gem_sync@basic-store-all.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb1/igt@gem_sync@basic-store-all.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][110] ([i915#435] / [i915#472]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb7/igt@gem_sync@basic-store-each.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb2/igt@gem_sync@basic-store-each.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][112] ([i915#180]) -> [PASS][113] +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-apl2/igt@i915_suspend@sysfs-reader.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-apl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [FAIL][114] ([i915#129]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl4/igt@kms_color@pipe-a-ctm-green-to-red.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-skl3/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-apl:          [FAIL][116] ([i915#54]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][118] ([i915#180]) -> [PASS][119] +6 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-skl:          [FAIL][120] ([i915#52] / [i915#54]) -> [PASS][121] +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [FAIL][122] ([i915#34]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl9/igt@kms_flip@plain-flip-fb-recreate.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-skl10/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][124] ([i915#49]) -> [PASS][125] +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-skl:          [FAIL][126] ([i915#49]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-skl:          [FAIL][128] ([i915#247]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl4/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-skl3/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][130] ([fdo#108145]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][132] ([fdo#109441]) -> [PASS][133] +4 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-tglb:         [FAIL][134] ([i915#31]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb5/igt@kms_setmode@basic.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb5/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][136] ([fdo#112080]) -> [PASS][137] +11 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb3/igt@perf_pmu@busy-check-all-vcs1.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-iclb2/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Warnings ####

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-tglb:         [TIMEOUT][138] ([i915#530]) -> [FAIL][139] ([i915#520])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb2/igt@gem_persistent_relocs@forked-thrashing.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-tglb2/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][140] ([i915#180]) -> [DMESG-WARN][141] ([i915#180] / [i915#391])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#391]: https://gitlab.freedesktop.org/drm/intel/issues/391
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#918]: https://gitlab.freedesktop.org/drm/intel/issues/918
  [i915#919]: https://gitlab.freedesktop.org/drm/intel/issues/919


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7662 -> Patchwork_15965

  CI-20190529: 20190529
  CI_DRM_7662: 44a89a2d9cc0e091fc1bb143aa5dcc0728d3ac90 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15965: 7e80db6ca3de2244d74369f2fd27985c8b9d04dc @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15965/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
