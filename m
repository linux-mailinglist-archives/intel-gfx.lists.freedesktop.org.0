Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E99141C2857
	for <lists+intel-gfx@lfdr.de>; Sat,  2 May 2020 23:14:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56C016E0A6;
	Sat,  2 May 2020 21:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9E1376E082;
 Sat,  2 May 2020 21:14:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 74985A0138;
 Sat,  2 May 2020 21:14:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Sat, 02 May 2020 21:14:31 -0000
Message-ID: <158845407144.4999.16765292587763670579@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200502171413.9133-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200502171413.9133-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgcGVy?=
 =?utf-8?q?f/core=3A_Only_copy-to-user_after_completely_unlocking_all_lock?=
 =?utf-8?b?cywgdjMuIChyZXYzKQ==?=
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

Series: perf/core: Only copy-to-user after completely unlocking all locks, v3. (rev3)
URL   : https://patchwork.freedesktop.org/series/76325/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8411_full -> Patchwork_17553_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17553_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17553_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17553_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@full-late:
    - shard-skl:          [PASS][1] -> [FAIL][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-skl8/igt@gem_exec_balancer@full-late.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-skl5/igt@gem_exec_balancer@full-late.html
    - shard-tglb:         [PASS][3] -> [FAIL][4] +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-tglb2/igt@gem_exec_balancer@full-late.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-tglb8/igt@gem_exec_balancer@full-late.html
    - shard-glk:          [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-glk1/igt@gem_exec_balancer@full-late.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-glk7/igt@gem_exec_balancer@full-late.html

  * igt@perf_pmu@all-busy-check-all:
    - shard-kbl:          [PASS][7] -> [FAIL][8] +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-kbl7/igt@perf_pmu@all-busy-check-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-kbl3/igt@perf_pmu@all-busy-check-all.html

  * igt@perf_pmu@frequency:
    - shard-iclb:         [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-iclb3/igt@perf_pmu@frequency.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-iclb2/igt@perf_pmu@frequency.html
    - shard-apl:          [PASS][11] -> [FAIL][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-apl6/igt@perf_pmu@frequency.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-apl6/igt@perf_pmu@frequency.html
    - shard-hsw:          [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-hsw7/igt@perf_pmu@frequency.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-hsw2/igt@perf_pmu@frequency.html
    - shard-snb:          [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-snb4/igt@perf_pmu@frequency.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-snb6/igt@perf_pmu@frequency.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@perf_pmu@busy-check-all@vcs0}:
    - shard-glk:          [PASS][17] -> [FAIL][18] +15 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-glk9/igt@perf_pmu@busy-check-all@vcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-glk7/igt@perf_pmu@busy-check-all@vcs0.html

  * {igt@perf_pmu@busy-idle-check-all@rcs0}:
    - shard-skl:          [PASS][19] -> [FAIL][20] +23 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-skl8/igt@perf_pmu@busy-idle-check-all@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-skl5/igt@perf_pmu@busy-idle-check-all@rcs0.html
    - shard-tglb:         [PASS][21] -> [FAIL][22] +35 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-tglb2/igt@perf_pmu@busy-idle-check-all@rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-tglb8/igt@perf_pmu@busy-idle-check-all@rcs0.html

  * {igt@perf_pmu@busy-idle-check-all@vcs0}:
    - shard-apl:          [PASS][23] -> [FAIL][24] +23 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-apl7/igt@perf_pmu@busy-idle-check-all@vcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-apl3/igt@perf_pmu@busy-idle-check-all@vcs0.html

  * {igt@perf_pmu@busy-idle-no-semaphores@vecs0}:
    - shard-kbl:          [PASS][25] -> [FAIL][26] +35 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-kbl2/igt@perf_pmu@busy-idle-no-semaphores@vecs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-kbl6/igt@perf_pmu@busy-idle-no-semaphores@vecs0.html

  * {igt@perf_pmu@busy-no-semaphores@bcs0}:
    - shard-hsw:          [PASS][27] -> [FAIL][28] +19 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-hsw1/igt@perf_pmu@busy-no-semaphores@bcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-hsw2/igt@perf_pmu@busy-no-semaphores@bcs0.html
    - shard-glk:          NOTRUN -> [FAIL][29] +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-glk6/igt@perf_pmu@busy-no-semaphores@bcs0.html

  * {igt@perf_pmu@idle-no-semaphores@vcs0}:
    - shard-snb:          [PASS][30] -> [FAIL][31] +10 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-snb4/igt@perf_pmu@idle-no-semaphores@vcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-snb2/igt@perf_pmu@idle-no-semaphores@vcs0.html

  * {igt@perf_pmu@most-busy-check-all@vcs1}:
    - shard-iclb:         NOTRUN -> [FAIL][32] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-iclb1/igt@perf_pmu@most-busy-check-all@vcs1.html

  * {igt@perf_pmu@semaphore-busy@bcs0}:
    - shard-iclb:         [PASS][33] -> [FAIL][34] +27 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-iclb2/igt@perf_pmu@semaphore-busy@bcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-iclb8/igt@perf_pmu@semaphore-busy@bcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17553_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#1528])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-skl2/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-apl7/igt@gem_workarounds@suspend-resume.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-apl4/igt@gem_workarounds@suspend-resume.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][39] -> [INCOMPLETE][40] ([i915#69])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-skl3/igt@i915_suspend@forcewake.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-skl3/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_legacy@all-pipes-torture-bo:
    - shard-snb:          [PASS][41] -> [DMESG-WARN][42] ([i915#128])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-snb1/igt@kms_cursor_legacy@all-pipes-torture-bo.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-snb2/igt@kms_cursor_legacy@all-pipes-torture-bo.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109349])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180]) +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-c-accuracy-idle:
    - shard-glk:          [PASS][49] -> [FAIL][50] ([i915#43])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-glk8/igt@kms_vblank@pipe-c-accuracy-idle.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-glk9/igt@kms_vblank@pipe-c-accuracy-idle.html

  
#### Possible fixes ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][51] ([fdo#109276]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-iclb3/igt@gem_exec_params@invalid-bsd-ring.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][53] ([i915#716]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-apl7/igt@gen9_exec_parse@allowed-all.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-apl3/igt@gen9_exec_parse@allowed-all.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +8 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][57] ([i915#180] / [i915#95]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-apl8/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-skl8/igt@kms_hdr@bpc-switch.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][63] ([fdo#109642] / [fdo#111068]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-iclb3/igt@kms_psr2_su@frontbuffer.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +4 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][67] ([i915#658]) -> [SKIP][68] ([i915#588])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][69] ([i915#454]) -> [SKIP][70] ([i915#468])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          [FAIL][71] ([fdo#108145] / [i915#265]) -> [FAIL][72] ([fdo#108145] / [i915#265] / [i915#95])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][73] ([i915#608]) -> [SKIP][74] ([fdo#109642] / [fdo#111068])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/shard-iclb8/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8411 -> Patchwork_17553

  CI-20190529: 20190529
  CI_DRM_8411: b0821be4cf1a8ede85f8b93d4d28e0332f6fb334 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5626: f27fdfff026276ac75c69e487c929a843f66f6ca @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17553: 9cb5cee2dd0e976d529dfefbaa3e1b65eeef128f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17553/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
