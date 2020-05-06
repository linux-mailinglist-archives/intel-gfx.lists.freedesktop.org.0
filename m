Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CEE1C6E52
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 12:25:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7475E6E84E;
	Wed,  6 May 2020 10:25:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A50196E84D;
 Wed,  6 May 2020 10:25:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D7C7A011B;
 Wed,  6 May 2020 10:25:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 06 May 2020 10:25:34 -0000
Message-ID: <158876073461.11896.6843400735663576611@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200505215214.9690-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200505215214.9690-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/14=5D_drm/i915=3A_Mark_concurrent_submi?=
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

Series: series starting with [01/14] drm/i915: Mark concurrent submissions with a weak-dependency
URL   : https://patchwork.freedesktop.org/series/76973/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8433_full -> Patchwork_17586_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17586_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17586_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17586_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gen7_exec_parse@basic-allocation:
    - shard-hsw:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-hsw7/igt@gen7_exec_parse@basic-allocation.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-hsw8/igt@gen7_exec_parse@basic-allocation.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-rotation:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-tglb5/igt@kms_plane_scaling@pipe-a-scaler-with-rotation.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-tglb6/igt@kms_plane_scaling@pipe-a-scaler-with-rotation.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_fence@syncobj-invalid-wait}:
    - shard-snb:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-snb6/igt@gem_exec_fence@syncobj-invalid-wait.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-snb6/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-tglb:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-tglb8/igt@gem_exec_fence@syncobj-invalid-wait.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-tglb1/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-skl:          [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-skl3/igt@gem_exec_fence@syncobj-invalid-wait.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-skl7/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-glk:          [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-glk7/igt@gem_exec_fence@syncobj-invalid-wait.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-glk5/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-apl:          [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-apl7/igt@gem_exec_fence@syncobj-invalid-wait.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-apl7/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-kbl:          [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-kbl7/igt@gem_exec_fence@syncobj-invalid-wait.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-kbl7/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-iclb:         [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-iclb8/igt@gem_exec_fence@syncobj-invalid-wait.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-iclb4/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-hsw:          [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-hsw6/igt@gem_exec_fence@syncobj-invalid-wait.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-hsw5/igt@gem_exec_fence@syncobj-invalid-wait.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8433_full and Patchwork_17586_full:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 8 pass(s)
    - Exec time: [0.03, 0.11] s

  

Known issues
------------

  Here are the changes found in Patchwork_17586_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109276])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-iclb7/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-kbl:          [PASS][25] -> [FAIL][26] ([i915#699] / [i915#93] / [i915#95])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-kbl4/igt@kms_flip_tiling@flip-changes-tiling.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-kbl4/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1188])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-iclb7/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#69])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [FAIL][33] ([i915#1528]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-skl4/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-skl2/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-tglb:         [SKIP][41] ([i915#668]) -> [PASS][42] +6 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-tglb6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-tglb1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][43] ([fdo#108145] / [i915#265]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][45] ([fdo#109441]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * {igt@perf@blocking-parameterized}:
    - shard-tglb:         [FAIL][47] ([i915#1542]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-tglb6/igt@perf@blocking-parameterized.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-tglb3/igt@perf@blocking-parameterized.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][49] ([i915#1542]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-hsw6/igt@perf@polling-parameterized.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-hsw5/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_rpm@pm-caching:
    - shard-snb:          [INCOMPLETE][51] ([i915#82]) -> [SKIP][52] ([fdo#109271])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-snb1/igt@i915_pm_rpm@pm-caching.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-snb5/igt@i915_pm_rpm@pm-caching.html

  * igt@i915_pm_rpm@sysfs-read:
    - shard-snb:          [SKIP][53] ([fdo#109271]) -> [INCOMPLETE][54] ([i915#82])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-snb2/igt@i915_pm_rpm@sysfs-read.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-snb6/igt@i915_pm_rpm@sysfs-read.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][55] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][56] ([i915#1319])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-apl7/igt@kms_content_protection@legacy.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-apl6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][57] ([fdo#110321]) -> [DMESG-FAIL][58] ([fdo#110321])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/shard-apl4/igt@kms_content_protection@srm.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/shard-apl3/igt@kms_content_protection@srm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#488]: https://gitlab.freedesktop.org/drm/intel/issues/488
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8433 -> Patchwork_17586

  CI-20190529: 20190529
  CI_DRM_8433: db68fed086f2ddcdc30e0d9ca5faaba5e55d0d01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5633: c8c2e5ed5cd8e4b7a69a903f3f1653612086abcc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17586: 9ac5d5912623123a8c73ccb3c80385c0348b4897 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17586/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
