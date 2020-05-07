Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5371C7FD0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 03:29:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A366E093;
	Thu,  7 May 2020 01:29:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9C3E16E08E;
 Thu,  7 May 2020 01:29:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8C8B3A47E1;
 Thu,  7 May 2020 01:29:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 07 May 2020 01:29:41 -0000
Message-ID: <158881498154.2191.10807320102599449590@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200506205920.24233-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200506205920.24233-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/15=5D_drm/i915=3A_Mark_concurrent_submi?=
 =?utf-8?q?ssions_with_a_weak-dependency?=
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

Series: series starting with [01/15] drm/i915: Mark concurrent submissions with a weak-dependency
URL   : https://patchwork.freedesktop.org/series/77008/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8438_full -> Patchwork_17594_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17594_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17594_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17594_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-iclb3/igt@gem_exec_whisper@basic-queues-forked-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-iclb8/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - shard-hsw:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-hsw7/igt@i915_pm_rpm@drm-resources-equal.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-hsw7/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@perf@oa-exponents:
    - shard-apl:          [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-apl1/igt@perf@oa-exponents.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-apl8/igt@perf@oa-exponents.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_fence@syncobj-invalid-wait}:
    - shard-snb:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-snb1/igt@gem_exec_fence@syncobj-invalid-wait.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-snb2/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-tglb:         [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-tglb1/igt@gem_exec_fence@syncobj-invalid-wait.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-tglb7/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-skl:          [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-skl4/igt@gem_exec_fence@syncobj-invalid-wait.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-skl4/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-glk:          [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-glk2/igt@gem_exec_fence@syncobj-invalid-wait.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-glk4/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-apl:          [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-apl1/igt@gem_exec_fence@syncobj-invalid-wait.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-apl1/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-kbl:          [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-kbl7/igt@gem_exec_fence@syncobj-invalid-wait.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-kbl6/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-iclb:         [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-iclb6/igt@gem_exec_fence@syncobj-invalid-wait.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-iclb1/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-hsw:          [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-hsw6/igt@gem_exec_fence@syncobj-invalid-wait.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-hsw1/igt@gem_exec_fence@syncobj-invalid-wait.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8438_full and Patchwork_17594_full:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 8 pass(s)
    - Exec time: [0.03, 0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_17594_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-kbl4/igt@gem_softpin@noreloc-s3.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-kbl7/igt@gem_softpin@noreloc-s3.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge:
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#70] / [i915#93] / [i915#95])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-kbl3/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-kbl4/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html

  * igt@kms_draw_crc@fill-fb:
    - shard-apl:          [PASS][29] -> [FAIL][30] ([i915#95])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-apl7/igt@kms_draw_crc@fill-fb.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-apl2/igt@kms_draw_crc@fill-fb.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#1188]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_lease@page_flip_implicit_plane:
    - shard-snb:          [PASS][33] -> [SKIP][34] ([fdo#109271]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-snb2/igt@kms_lease@page_flip_implicit_plane.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-snb1/igt@kms_lease@page_flip_implicit_plane.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109642] / [fdo#111068])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-iclb3/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-iclb2/igt@kms_psr@psr2_basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-iclb7/igt@kms_psr@psr2_basic.html

  * igt@perf@enable-disable:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#69]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-skl9/igt@perf@enable-disable.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-skl9/igt@perf@enable-disable.html
    - shard-apl:          [PASS][43] -> [INCOMPLETE][44] ([i915#95])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-apl3/igt@perf@enable-disable.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-apl6/igt@perf@enable-disable.html

  * igt@perf@oa-exponents:
    - shard-glk:          [PASS][45] -> [INCOMPLETE][46] ([i915#58] / [k.org#198133])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-glk4/igt@perf@oa-exponents.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-glk8/igt@perf@oa-exponents.html

  * igt@perf@stress-open-close:
    - shard-skl:          [PASS][47] -> [INCOMPLETE][48] ([i915#1356])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-skl4/igt@perf@stress-open-close.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-skl4/igt@perf@stress-open-close.html
    - shard-glk:          [PASS][49] -> [INCOMPLETE][50] ([i915#1356] / [i915#58] / [k.org#198133])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-glk2/igt@perf@stress-open-close.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-glk4/igt@perf@stress-open-close.html
    - shard-apl:          [PASS][51] -> [INCOMPLETE][52] ([i915#1356])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-apl1/igt@perf@stress-open-close.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-apl1/igt@perf@stress-open-close.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - shard-hsw:          [DMESG-WARN][53] ([i915#128]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-hsw1/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-hsw2/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * {igt@kms_flip@flip-vs-suspend@b-hdmi-a1}:
    - shard-hsw:          [INCOMPLETE][55] ([i915#61]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-hsw4/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-hsw1/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-iclb1/igt@kms_psr@psr2_primary_blt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][65] ([i915#468]) -> [FAIL][66] ([i915#454]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-tglb5/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@pm-tiling:
    - shard-snb:          [SKIP][67] ([fdo#109271]) -> [INCOMPLETE][68] ([i915#82])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-snb5/igt@i915_pm_rpm@pm-tiling.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-snb1/igt@i915_pm_rpm@pm-tiling.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][69] ([i915#1319]) -> [FAIL][70] ([fdo#110321] / [fdo#110336])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-apl3/igt@kms_content_protection@atomic-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][71] ([fdo#110321]) -> [TIMEOUT][72] ([i915#1319])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/shard-apl3/igt@kms_content_protection@srm.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/shard-apl6/igt@kms_content_protection@srm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1356]: https://gitlab.freedesktop.org/drm/intel/issues/1356
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8438 -> Patchwork_17594

  CI-20190529: 20190529
  CI_DRM_8438: 9463611ee93f4b254044b8b2467a1e81f942ad01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5635: e83abfca61d407d12eee4d25bb0e8686337a7791 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17594: 910c4873269efb99a9f1acb0b0973ef8e1f99b55 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
