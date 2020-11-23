Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2D32C158A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Nov 2020 21:23:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 513DA89F8E;
	Mon, 23 Nov 2020 20:23:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BAC6C89C0A;
 Mon, 23 Nov 2020 20:23:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1085A0BA8;
 Mon, 23 Nov 2020 20:23:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 23 Nov 2020 20:23:26 -0000
Message-ID: <160616300669.16917.13978452834354743470@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201123145551.13222-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201123145551.13222-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Record_the_plane_update_times_for_debugging_?=
 =?utf-8?b?KHJldjIp?=
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
Content-Type: multipart/mixed; boundary="===============0012157764=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0012157764==
Content-Type: multipart/alternative;
 boundary="===============1571012091773277782=="

--===============1571012091773277782==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Record the plane update times for debugging (rev2)
URL   : https://patchwork.freedesktop.org/series/84174/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9376_full -> Patchwork_18959_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18959_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_flip_tiling@flip-to-x-tiled@edp-1-pipe-c}:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-skl4/igt@kms_flip_tiling@flip-to-x-tiled@edp-1-pipe-c.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-skl1/igt@kms_flip_tiling@flip-to-x-tiled@edp-1-pipe-c.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9376_full and Patchwork_18959_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 175 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18959_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-glk8/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-glk2/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-glk:          [PASS][5] -> [INCOMPLETE][6] ([i915#2199] / [i915#2405])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-glk1/igt@gem_workarounds@suspend-resume-fd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-glk9/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#2346])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#79]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2598])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-kbl1/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-kbl6/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_universal_plane@universal-plane-pipe-c-functional:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#331])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-skl8/igt@kms_universal_plane@universal-plane-pipe-c-functional.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-skl9/igt@kms_universal_plane@universal-plane-pipe-c-functional.html
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#331])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-kbl2/igt@kms_universal_plane@universal-plane-pipe-c-functional.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-kbl2/igt@kms_universal_plane@universal-plane-pipe-c-functional.html
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#1635] / [i915#331])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-apl4/igt@kms_universal_plane@universal-plane-pipe-c-functional.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-apl7/igt@kms_universal_plane@universal-plane-pipe-c-functional.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-skl:          [DMESG-WARN][27] ([i915#1037] / [i915#1982]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-skl5/igt@gem_eio@in-flight-contexts-10ms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-skl4/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@i915_module_load@reload:
    - shard-iclb:         [DMESG-WARN][29] ([i915#1982]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-iclb1/igt@i915_module_load@reload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-iclb7/igt@i915_module_load@reload.html

  * {igt@kms_async_flips@alternate-sync-async-flip}:
    - shard-skl:          [FAIL][31] ([i915#2521]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html

  * {igt@kms_async_flips@test-time-stamp}:
    - shard-tglb:         [FAIL][33] ([i915#2597]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-tglb1/igt@kms_async_flips@test-time-stamp.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-tglb3/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36] +60 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-skl3/igt@kms_color@pipe-b-ctm-negative.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-skl8/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [FAIL][37] ([i915#54]) -> [PASS][38] +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][39] ([i915#79]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][41] ([i915#2122]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * {igt@kms_flip_tiling@flip-to-x-tiled@dp-1-pipe-a}:
    - shard-kbl:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-kbl3/igt@kms_flip_tiling@flip-to-x-tiled@dp-1-pipe-a.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-kbl4/igt@kms_flip_tiling@flip-to-x-tiled@dp-1-pipe-a.html

  * igt@kms_lease@page_flip_implicit_plane:
    - shard-apl:          [DMESG-WARN][45] ([i915#1635] / [i915#1982]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-apl4/igt@kms_lease@page_flip_implicit_plane.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-apl7/igt@kms_lease@page_flip_implicit_plane.html

  * igt@kms_rmfb@rmfb-ioctl:
    - shard-glk:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-glk8/igt@kms_rmfb@rmfb-ioctl.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-glk4/igt@kms_rmfb@rmfb-ioctl.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:
    - shard-tglb:         [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-tglb1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-tglb3/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][51] ([i915#1542]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-skl7/igt@perf@blocking.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-skl8/igt@perf@blocking.html

  
#### Warnings ####

  * igt@gem_workarounds@suspend-resume:
    - shard-glk:          [INCOMPLETE][53] ([i915#2635]) -> [DMESG-WARN][54] ([i915#2635])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-glk7/igt@gem_workarounds@suspend-resume.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-glk2/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][55] ([i915#1804]) -> [FAIL][56] ([i915#2680])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [DMESG-FAIL][57] ([fdo#108145] / [i915#1635] / [i915#1982]) -> [FAIL][58] ([fdo#108145] / [i915#1635] / [i915#265])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
    - shard-skl:          [DMESG-FAIL][59] ([fdo#108145] / [i915#1982]) -> [FAIL][60] ([fdo#108145] / [i915#265])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@runner@aborted:
    - shard-glk:          ([FAIL][61], [FAIL][62]) ([i915#2295] / [i915#483] / [k.org#202321]) -> ([FAIL][63], [FAIL][64]) ([i915#2295] / [k.org#202321])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-glk7/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-glk9/igt@runner@aborted.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-glk1/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-glk2/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][65], [FAIL][66], [FAIL][67]) ([i915#1602] / [i915#1814] / [i915#2295] / [i915#2426]) -> ([FAIL][68], [FAIL][69]) ([i915#1602] / [i915#2295])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-tglb7/igt@runner@aborted.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-tglb6/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-tglb2/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-tglb1/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-tglb8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2199]: https://gitlab.freedesktop.org/drm/intel/issues/2199
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#2635]: https://gitlab.freedesktop.org/drm/intel/issues/2635
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2680]: https://gitlab.freedesktop.org/drm/intel/issues/2680
  [i915#331]: https://gitlab.freedesktop.org/drm/intel/issues/331
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9376 -> Patchwork_18959

  CI-20190529: 20190529
  CI_DRM_9376: d08ea807a6466f311fe921872bc18cfc384ae281 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5865: 76b7d1ecf6a3c0a5a538146bb055d0eb5fe232d0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18959: 38fb4e810247fd191cdd433426981245e7d3c5df @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/index.html

--===============1571012091773277782==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/display: Record the plane update ti=
mes for debugging (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84174/">https://patchwork.freedesktop.org/series/84174/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18959/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18959/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9376_full -&gt; Patchwork_18959_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18959_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_flip_tiling@flip-to-x-tiled@edp-1-pipe-c}:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-skl4/igt@kms_flip_tiling@flip-to-x-tiled@edp-1-pipe-c.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18959/shard-skl1/igt@kms_flip_tiling@flip-to-x-tiled@edp-1-pipe-c.htm=
l">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9376_full and Patchwork_18=
959_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 175 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18959_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-glk8/igt@gem_exec_whisper@basic-contexts-priority-all.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18959/shard-glk2/igt@gem_exec_whisper@basic-contexts-priority-all.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/118">i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-glk1/igt@gem_workarounds@suspend-resume-fd.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959=
/shard-glk9/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2199">i915#2199</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#24=
05</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18959/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">=
i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18959/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#=
2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18959/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/79">i915#79</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18959/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i915#25=
98</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-kbl1/igt@kms_flip@flip-vs-suspend@b-dp1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/sh=
ard-kbl6/igt@kms_flip@flip-vs-suspend@b-dp1.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18959/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/s=
hard-iclb7/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-c-functional:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9376/shard-skl8/igt@kms_universal_plane@universal-plane-pipe-c-funct=
ional.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18959/shard-skl9/igt@kms_universal_plane@universal-plane-pipe=
-c-functional.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/331">i915#331</a>)</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9376/shard-kbl2/igt@kms_universal_plane@universal-plane-pipe-c-funct=
ional.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18959/shard-kbl2/igt@kms_universal_plane@universal-plane-pipe=
-c-functional.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/331">i915#331</a>)</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9376/shard-apl4/igt@kms_universal_plane@universal-plane-pipe-c-funct=
ional.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18959/shard-apl7/igt@kms_universal_plane@universal-plane-pipe=
-c-functional.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/331">i915#331</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-skl5/igt@gem_eio@in-flight-contexts-10ms.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1037">i91=
5#1037</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198=
2">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18959/shard-skl4/igt@gem_eio@in-flight-contexts-10ms.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-iclb1/igt@i915_module_load@reload.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
959/shard-iclb7/igt@i915_module_load@reload.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@alternate-sync-async-flip}:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521"=
>i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18959/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@test-time-stamp}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-tglb1/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#259=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18959/shard-tglb3/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-negative:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-skl3/igt@kms_color@pipe-b-ctm-negative.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#=
1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18959/shard-skl8/igt@kms_color@pipe-b-ctm-negative.html">PASS</a> +60 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18959/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.htm=
l">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915=
#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18959/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18959/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-i=
nterruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_flip_tiling@flip-to-x-tiled@dp-1-pipe-a}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-kbl3/igt@kms_flip_tiling@flip-to-x-tiled@dp-1-pipe-a.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18959/shard-kbl4/igt@kms_flip_tiling@flip-to-x-tiled@dp-1-=
pipe-a.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_lease@page_flip_implicit_plane:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-apl4/igt@kms_lease@page_flip_implicit_plane.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">=
i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18959/shard-apl7/igt@kms_lease@page_flip_implicit_plane.html"=
>PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rmfb@rmfb-ioctl:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-glk8/igt@kms_rmfb@rmfb-ioctl.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/s=
hard-glk4/igt@kms_rmfb@rmfb-ioctl.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-tglb1/igt@kms_universal_plane@universal-plane-gen9-featu=
res-pipe-b.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_18959/shard-tglb3/igt@kms_universal_plane@un=
iversal-plane-gen9-features-pipe-b.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-skl7/igt@perf@blocking.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-skl8/ig=
t@perf@blocking.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-glk7/igt@gem_workarounds@suspend-resume.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2635">i915=
#2635</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18959/shard-glk2/igt@gem_workarounds@suspend-resume.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2635">i915#26=
35</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8959/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2680">i915#2680</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9376/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">D=
MESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
8145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_18959/shard-apl3/igt@kms_plane_alpha_blend@pipe-=
a-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1635">i915#1635</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/265">i915#265</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9376/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">D=
MESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
8145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18959/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alph=
a-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/265">i915#265</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-glk7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-glk9/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/483">i915#483</a> / <a href=3D"https://bugzilla.kernel.org/show_b=
ug.cgi?id=3D202321">k.org#202321</a>) -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_18959/shard-glk1/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1895=
9/shard-glk2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://b=
ugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9376/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9376/shard-tglb6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9376/shard-tglb2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18959/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_18959/shard-tglb8/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2295">i915#2295</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9376 -&gt; Patchwork_18959</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9376: d08ea807a6466f311fe921872bc18cfc384ae281 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5865: 76b7d1ecf6a3c0a5a538146bb055d0eb5fe232d0 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18959: 38fb4e810247fd191cdd433426981245e7d3c5df @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1571012091773277782==--

--===============0012157764==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0012157764==--
