Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E70681CAA90
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 14:27:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D1B16E202;
	Fri,  8 May 2020 12:27:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A5BC16E1D8;
 Fri,  8 May 2020 12:27:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9EFADA0BC6;
 Fri,  8 May 2020 12:27:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 08 May 2020 12:27:00 -0000
Message-ID: <158894082061.22724.11561490552523309303@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200508092933.738-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200508092933.738-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/9=5D_drm/i915=3A_Ignore_submit-fences_on?=
 =?utf-8?q?_the_same_timeline?=
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

Series: series starting with [1/9] drm/i915: Ignore submit-fences on the same timeline
URL   : https://patchwork.freedesktop.org/series/77072/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8450_full -> Patchwork_17609_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17609_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_fence@syncobj-invalid-wait}:
    - shard-snb:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-snb6/igt@gem_exec_fence@syncobj-invalid-wait.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-snb5/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-tglb:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-tglb2/igt@gem_exec_fence@syncobj-invalid-wait.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-tglb8/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-skl:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-skl10/igt@gem_exec_fence@syncobj-invalid-wait.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-skl2/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-glk:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-glk6/igt@gem_exec_fence@syncobj-invalid-wait.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-glk5/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-kbl:          [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-kbl2/igt@gem_exec_fence@syncobj-invalid-wait.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-kbl3/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-iclb:         [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-iclb4/igt@gem_exec_fence@syncobj-invalid-wait.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-iclb6/igt@gem_exec_fence@syncobj-invalid-wait.html
    - shard-hsw:          [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-hsw5/igt@gem_exec_fence@syncobj-invalid-wait.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-hsw6/igt@gem_exec_fence@syncobj-invalid-wait.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8450_full and Patchwork_17609_full:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 8 pass(s)
    - Exec time: [0.03, 0.11] s

  

Known issues
------------

  Here are the changes found in Patchwork_17609_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-iclb3/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#648] / [i915#69])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145] / [i915#265]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-iclb3/igt@kms_psr@psr2_no_drrs.html

  * igt@perf@enable-disable:
    - shard-glk:          [PASS][25] -> [INCOMPLETE][26] ([i915#58] / [k.org#198133])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-glk9/igt@perf@enable-disable.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-glk7/igt@perf@enable-disable.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [INCOMPLETE][27] ([i915#1630]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-apl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * {igt@gem_ctx_isolation@preservation-s3@vcs0}:
    - shard-kbl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-snb:          [SKIP][31] ([fdo#109271]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-snb6/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-snb5/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][33] ([fdo#108145] / [i915#265]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][35] ([i915#1542]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-hsw8/igt@perf@blocking-parameterized.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-hsw5/igt@perf@blocking-parameterized.html

  * igt@perf@stress-open-close:
    - shard-tglb:         [INCOMPLETE][37] ([i915#1356]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-tglb1/igt@perf@stress-open-close.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-tglb1/igt@perf@stress-open-close.html
    - shard-iclb:         [INCOMPLETE][39] ([i915#1356]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-iclb5/igt@perf@stress-open-close.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-iclb8/igt@perf@stress-open-close.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][41] ([i915#468]) -> [FAIL][42] ([i915#454])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-apl:          [FAIL][43] ([i915#49]) -> [FAIL][44] ([i915#49] / [i915#95])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          [FAIL][45] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][46] ([fdo#108145] / [i915#265])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1356]: https://gitlab.freedesktop.org/drm/intel/issues/1356
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1630]: https://gitlab.freedesktop.org/drm/intel/issues/1630
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1823]: https://gitlab.freedesktop.org/drm/intel/issues/1823
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8450 -> Patchwork_17609

  CI-20190529: 20190529
  CI_DRM_8450: 4c642c074acca27a763a00be28132b6f40bc361c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5640: 5efb4a1c9cc944eff129cae7794951ae617bca17 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17609: 96dc49eecf667ccb1418bcfac0bc189412868acb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
