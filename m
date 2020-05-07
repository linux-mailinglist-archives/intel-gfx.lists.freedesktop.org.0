Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C691C8B52
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 14:49:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5CAD6E982;
	Thu,  7 May 2020 12:49:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 78AB56E97D;
 Thu,  7 May 2020 12:49:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71DFCA47E1;
 Thu,  7 May 2020 12:49:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 07 May 2020 12:49:48 -0000
Message-ID: <158885578843.2188.6342730409280372668@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200507082124.1673-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200507082124.1673-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Mark_concurrent_submiss?=
 =?utf-8?q?ions_with_a_weak-dependency_=28rev2=29?=
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

Series: series starting with [1/3] drm/i915: Mark concurrent submissions with a weak-dependency (rev2)
URL   : https://patchwork.freedesktop.org/series/77024/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8441_full -> Patchwork_17598_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17598_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17598_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17598_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip_event_leak:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-kbl2/igt@kms_flip_event_leak.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-kbl3/igt@kms_flip_event_leak.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8441_full and Patchwork_17598_full:

### New IGT tests (4) ###

  * igt@gem_exec_fence@submit@bcs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.01, 0.05] s

  * igt@gem_exec_fence@submit@vcs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.01, 0.05] s

  * igt@gem_exec_fence@submit@vcs1:
    - Statuses : 3 pass(s)
    - Exec time: [0.01] s

  * igt@gem_exec_fence@submit@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.01, 0.05] s

  

Known issues
------------

  Here are the changes found in Patchwork_17598_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1436] / [i915#716])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-kbl1/igt@gen9_exec_parse@allowed-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-kbl2/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-kbl3/igt@i915_suspend@forcewake.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-kbl1/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#1188])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#69])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#31])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-kbl6/igt@kms_setmode@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-kbl7/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][19] ([i915#69]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl9/igt@gem_eio@in-flight-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-skl2/igt@gem_eio@in-flight-suspend.html

  * {igt@gem_exec_fence@submit@rcs0}:
    - shard-tglb:         [INCOMPLETE][21] ([i915#1841]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-tglb8/igt@gem_exec_fence@submit@rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-tglb1/igt@gem_exec_fence@submit@rcs0.html
    - shard-kbl:          [INCOMPLETE][23] ([i915#1841]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-kbl6/igt@gem_exec_fence@submit@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-kbl7/igt@gem_exec_fence@submit@rcs0.html
    - shard-skl:          [INCOMPLETE][25] ([i915#1841]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl5/igt@gem_exec_fence@submit@rcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-skl6/igt@gem_exec_fence@submit@rcs0.html
    - shard-glk:          [INCOMPLETE][27] ([i915#1841] / [i915#58] / [k.org#198133]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-glk6/igt@gem_exec_fence@submit@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-glk6/igt@gem_exec_fence@submit@rcs0.html
    - shard-iclb:         [INCOMPLETE][29] ([i915#1841]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-iclb7/igt@gem_exec_fence@submit@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-iclb1/igt@gem_exec_fence@submit@rcs0.html
    - shard-apl:          [INCOMPLETE][31] ([i915#1841]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-apl6/igt@gem_exec_fence@submit@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-apl1/igt@gem_exec_fence@submit@rcs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][33] ([i915#716]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl5/igt@gen9_exec_parse@allowed-single.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-skl9/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
    - shard-skl:          [FAIL][37] ([i915#54]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][39] ([i915#300]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic:
    - shard-glk:          [FAIL][41] ([i915#67]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-glk5/igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-glk9/igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1}:
    - shard-apl:          [FAIL][43] ([i915#79]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][47] ([fdo#108145] / [i915#265]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-glk:          [FAIL][49] ([i915#899]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-none.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-iclb4/igt@kms_psr@psr2_dpms.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-iclb2/igt@kms_psr@psr2_dpms.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][53] ([i915#468]) -> [FAIL][54] ([i915#454])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][55] ([i915#1515]) -> [WARN][56] ([i915#1515])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][57] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][58] ([i915#1319])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-apl8/igt@kms_content_protection@legacy.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-apl2/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][59] ([i915#1319]) -> [FAIL][60] ([fdo#110321])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-apl4/igt@kms_content_protection@lic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-apl6/igt@kms_content_protection@lic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [FAIL][61] ([i915#93] / [i915#95]) -> [DMESG-FAIL][62] ([i915#180] / [i915#95])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8441/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1841]: https://gitlab.freedesktop.org/drm/intel/issues/1841
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#67]: https://gitlab.freedesktop.org/drm/intel/issues/67
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8441 -> Patchwork_17598

  CI-20190529: 20190529
  CI_DRM_8441: 6c0ee41a7c3201ef2a89800234803a95f65989be @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5637: fdc33f7e1adc5bb6a1ba88b6233aaf224174d75a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17598: 183fe789671fbe6252b0474dc63a6cca25c998cc @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17598/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
