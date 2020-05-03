Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E5D1C2954
	for <lists+intel-gfx@lfdr.de>; Sun,  3 May 2020 03:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6946E1B8;
	Sun,  3 May 2020 01:39:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E02AF6E1B1;
 Sun,  3 May 2020 01:39:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D26A7A47DA;
 Sun,  3 May 2020 01:39:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 03 May 2020 01:39:24 -0000
Message-ID: <158846996482.21035.3534042277363523418@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200502192823.17553-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200502192823.17553-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Implement_legacy_MI=5FSTORE=5FDATA=5FIMM?=
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

Series: drm/i915/gem: Implement legacy MI_STORE_DATA_IMM
URL   : https://patchwork.freedesktop.org/series/76866/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8412_full -> Patchwork_17555_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17555_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17555_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17555_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@full:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-iclb5/igt@gem_exec_balancer@full.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-iclb3/igt@gem_exec_balancer@full.html

  * igt@gem_exec_balancer@full-pulse:
    - shard-kbl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-kbl1/igt@gem_exec_balancer@full-pulse.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-kbl1/igt@gem_exec_balancer@full-pulse.html

  * igt@perf_pmu@all-busy-check-all:
    - shard-apl:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-apl8/igt@perf_pmu@all-busy-check-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-apl6/igt@perf_pmu@all-busy-check-all.html

  * igt@perf_pmu@frequency-idle:
    - shard-skl:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-skl7/igt@perf_pmu@frequency-idle.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-skl10/igt@perf_pmu@frequency-idle.html

  
#### Warnings ####

  * igt@gem_exec_balancer@full-late-pulse:
    - shard-skl:          [FAIL][9] ([i915#1469]) -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-skl5/igt@gem_exec_balancer@full-late-pulse.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-skl7/igt@gem_exec_balancer@full-late-pulse.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@perf_pmu@most-busy-check-all@vcs1}:
    - shard-iclb:         NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-iclb4/igt@perf_pmu@most-busy-check-all@vcs1.html

  * {igt@perf_pmu@most-busy-check-all@vecs0}:
    - shard-iclb:         [PASS][12] -> [FAIL][13] +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-iclb3/igt@perf_pmu@most-busy-check-all@vecs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-iclb4/igt@perf_pmu@most-busy-check-all@vecs0.html

  * {igt@perf_pmu@most-busy-idle-check-all@vecs0}:
    - shard-hsw:          [PASS][14] -> [FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-hsw4/igt@perf_pmu@most-busy-idle-check-all@vecs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-hsw4/igt@perf_pmu@most-busy-idle-check-all@vecs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17555_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [PASS][16] -> [INCOMPLETE][17] ([i915#69])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-skl1/igt@i915_pm_backlight@fade_with_suspend.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-skl8/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][18] -> [DMESG-WARN][19] ([i915#180]) +4 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-kbl2/igt@i915_suspend@forcewake.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-kbl3/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#54])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][22] -> [FAIL][23] ([i915#57])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][24] -> [SKIP][25] ([fdo#109349])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#1188])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([fdo#108145] / [i915#265])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109441]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@bonded-cork:
    - shard-tglb:         [FAIL][34] -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-tglb8/igt@gem_exec_balancer@bonded-cork.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-tglb3/igt@gem_exec_balancer@bonded-cork.html

  * igt@gem_exec_balancer@full-late-pulse:
    - shard-kbl:          [FAIL][36] -> [PASS][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-kbl7/igt@gem_exec_balancer@full-late-pulse.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-kbl3/igt@gem_exec_balancer@full-late-pulse.html
    - shard-iclb:         [FAIL][38] -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-iclb1/igt@gem_exec_balancer@full-late-pulse.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-iclb4/igt@gem_exec_balancer@full-late-pulse.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][40] ([i915#180]) -> [PASS][41] +6 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][42] ([i915#72]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-glk4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-glk8/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-glk:          [FAIL][44] ([i915#52] / [i915#54]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * {igt@kms_flip@flip-vs-suspend@a-edp1}:
    - shard-skl:          [INCOMPLETE][46] ([i915#198]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-skl9/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-skl5/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b-frame-sequence:
    - shard-skl:          [FAIL][48] ([i915#53]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-skl4/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b-frame-sequence.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-skl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][50] ([i915#180]) -> [PASS][51] +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][52] ([fdo#108145] / [i915#265]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][54] ([fdo#109441]) -> [PASS][55] +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-wait-busy-hang:
    - shard-hsw:          [INCOMPLETE][56] ([i915#61]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-hsw4/igt@kms_vblank@pipe-a-wait-busy-hang.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-hsw1/igt@kms_vblank@pipe-a-wait-busy-hang.html

  * igt@perf_pmu@all-busy-check-all:
    - shard-snb:          [FAIL][58] -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-snb1/igt@perf_pmu@all-busy-check-all.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-snb1/igt@perf_pmu@all-busy-check-all.html

  * {igt@perf_pmu@most-busy-idle-check-all@rcs0}:
    - shard-glk:          [FAIL][60] -> [PASS][61] +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-glk6/igt@perf_pmu@most-busy-idle-check-all@rcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-glk9/igt@perf_pmu@most-busy-idle-check-all@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          [INCOMPLETE][62] ([i915#198]) -> [FAIL][63] ([i915#454])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-skl5/igt@i915_pm_dc@dc6-dpms.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-skl4/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][64] ([i915#608]) -> [SKIP][65] ([fdo#109642] / [fdo#111068])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8412/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/shard-iclb3/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1469]: https://gitlab.freedesktop.org/drm/intel/issues/1469
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8412 -> Patchwork_17555

  CI-20190529: 20190529
  CI_DRM_8412: 7afbc0e12802c5f9297d3b7769f94c89465b30ae @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5626: f27fdfff026276ac75c69e487c929a843f66f6ca @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17555: 09b6a76effc3f2ab2cceb3b84f68e910f9e35c1e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17555/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
