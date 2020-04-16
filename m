Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D41B1AC5E1
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 16:30:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E08F6E1B6;
	Thu, 16 Apr 2020 14:30:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D53FE6E09A;
 Thu, 16 Apr 2020 14:30:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CBD1EA0019;
 Thu, 16 Apr 2020 14:30:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 16 Apr 2020 14:30:48 -0000
Message-ID: <158704744880.20884.2263203070685616864@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415170318.16771-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200415170318.16771-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/selftests=3A_Exercise?=
 =?utf-8?q?_basic_RPS_interrupt_generation?=
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

Series: series starting with [CI,1/2] drm/i915/selftests: Exercise basic RPS interrupt generation
URL   : https://patchwork.freedesktop.org/series/75983/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8302_full -> Patchwork_17314_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17314_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17314_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17314_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ppgtt@blt-vs-render-ctx0:
    - shard-apl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl3/igt@gem_ppgtt@blt-vs-render-ctx0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-apl1/igt@gem_ppgtt@blt-vs-render-ctx0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17314_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl1/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-kbl4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         [PASS][5] -> [DMESG-FAIL][6] ([i915#1725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-tglb8/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-tglb7/igt@i915_selftest@live@gt_pm.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#54] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([IGT#5] / [i915#697])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([IGT#5])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#1188])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl3/igt@kms_hdr@bpc-switch.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#198])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_lease@page_flip_implicit_plane:
    - shard-snb:          [PASS][17] -> [SKIP][18] ([fdo#109271]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-snb1/igt@kms_lease@page_flip_implicit_plane.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-snb2/igt@kms_lease@page_flip_implicit_plane.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109642] / [fdo#111068])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-iclb4/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180] / [i915#93] / [i915#95])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@vcs0}:
    - shard-kbl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][29] ([i915#454]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-skl:          [FAIL][31] ([i915#54]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-apl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-snb:          [FAIL][37] ([i915#31]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-snb1/igt@kms_setmode@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-snb2/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][39] ([i915#1542]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-iclb6/igt@perf@blocking-parameterized.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-iclb2/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][41] ([i915#454]) -> [SKIP][42] ([i915#468])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-snb:          [SKIP][43] ([fdo#109271]) -> [INCOMPLETE][44] ([i915#82])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-snb1/igt@i915_pm_dc@dc6-psr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-snb1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-snb:          [INCOMPLETE][45] ([i915#82]) -> [SKIP][46] ([fdo#109271])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-snb4/igt@i915_pm_rpm@gem-idle.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/shard-snb2/igt@i915_pm_rpm@gem-idle.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1725]: https://gitlab.freedesktop.org/drm/intel/issues/1725
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8302 -> Patchwork_17314

  CI-20190529: 20190529
  CI_DRM_8302: e022648f1633f24b4ec326805f1de22209826519 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5591: f57b7fdbe8d04ce3edf0433a03c7d9d5c3d96680 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17314: 8f0a2624ce986e0756ec6cf5148ca50c29b2c14f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
