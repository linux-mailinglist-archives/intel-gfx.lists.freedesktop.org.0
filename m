Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D31D2D1767
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 18:21:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A86706E899;
	Mon,  7 Dec 2020 17:21:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A80F26E854;
 Mon,  7 Dec 2020 17:21:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D530AA912;
 Mon,  7 Dec 2020 17:21:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 07 Dec 2020 17:21:17 -0000
Message-ID: <160736167761.8720.8004757662669775128@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201207130201.8492-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201207130201.8492-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Improve_error_reporting_for_igt=5Fmock=5Fmax?=
 =?utf-8?b?X3NlZ21lbnQgKHJldjIp?=
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
Content-Type: multipart/mixed; boundary="===============1138513699=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1138513699==
Content-Type: multipart/alternative;
 boundary="===============3778989788732954726=="

--===============3778989788732954726==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Improve error reporting for igt_mock_max_segment (rev2)
URL   : https://patchwork.freedesktop.org/series/84641/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9453_full -> Patchwork_19075_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19075_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19075_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19075_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-c:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-skl5/igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-c.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-skl7/igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-c.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9453_full and Patchwork_19075_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 200 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19075_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][3] -> [INCOMPLETE][4] ([i915#1436])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-glk7/igt@gen9_exec_parse@allowed-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#2122])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145] / [i915#265]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109642] / [fdo#111068])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-iclb6/igt@kms_psr2_su@page_flip.html

  * igt@sysfs_heartbeat_interval@mixed@bcs0:
    - shard-kbl:          [PASS][15] -> [INCOMPLETE][16] ([i915#1731])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-kbl3/igt@sysfs_heartbeat_interval@mixed@bcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-kbl3/igt@sysfs_heartbeat_interval@mixed@bcs0.html

  
#### Possible fixes ####

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [INCOMPLETE][17] ([i915#2295]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][19] ([i915#1436] / [i915#716]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [DMESG-FAIL][21] ([i915#2291] / [i915#541]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-skl9/igt@i915_selftest@live@gt_heartbeat.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-skl10/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-skl:          [FAIL][23] ([i915#54]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [FAIL][25] ([i915#96]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][27] ([i915#2346] / [i915#533]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][29] ([i915#2122]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [FAIL][31] ([i915#2598]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][33] ([i915#79]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-iclb:         [INCOMPLETE][35] ([i915#1373]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-iclb3/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-iclb8/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
    - shard-skl:          [FAIL][37] ([i915#49]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-skl10/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][39] ([fdo#108145] / [i915#265]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-iclb8/igt@kms_psr@psr2_cursor_render.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][43] ([i915#146] / [i915#198]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [DMESG-WARN][45] ([i915#1436] / [i915#1602] / [i915#1887] / [i915#2411]) -> [INCOMPLETE][46] ([i915#1602] / [i915#2411] / [i915#456])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-tglb7/igt@gem_exec_suspend@basic-s0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-tglb3/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][47] ([i915#2684]) -> [WARN][48] ([i915#2681] / [i915#2684])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][49] ([i915#1226]) -> [SKIP][50] ([fdo#109349])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][51] ([i915#2295] / [i915#2722]) -> [FAIL][52] ([i915#2295] / [i915#2722] / [i915#483])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-kbl7/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-kbl6/igt@runner@aborted.html
    - shard-iclb:         [FAIL][53] ([i915#2295] / [i915#2722]) -> [FAIL][54] ([i915#2295] / [i915#2722] / [i915#483])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-iclb3/igt@runner@aborted.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-iclb1/igt@runner@aborted.html
    - shard-glk:          ([FAIL][55], [FAIL][56]) ([i915#2295] / [i915#2722] / [k.org#202321]) -> ([FAIL][57], [FAIL][58], [FAIL][59]) ([i915#2295] / [i915#2722] / [i915#483] / [k.org#202321])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-glk6/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-glk7/igt@runner@aborted.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-glk2/igt@runner@aborted.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-glk3/igt@runner@aborted.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-glk3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][60], [FAIL][61], [FAIL][62]) ([i915#1436] / [i915#2029] / [i915#2295] / [i915#2722] / [i915#483]) -> [FAIL][63] ([i915#2295] / [i915#2722] / [i915#483])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-skl3/igt@runner@aborted.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-skl4/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-skl3/igt@runner@aborted.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-skl9/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9453 -> Patchwork_19075

  CI-20190529: 20190529
  CI_DRM_9453: 52e2ca46b7e2aa62c0509bce0be189d2f5a7325f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5883: 02244f60c98b4e4106b1099ade3439b159ac848e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19075: ce3956bde786d896f93a805cd80ea0d5f06b983f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/index.html

--===============3778989788732954726==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Improve error reporting =
for igt_mock_max_segment (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84641/">https://patchwork.freedesktop.org/series/84641/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19075/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19075/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9453_full -&gt; Patchwork_19075_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19075_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19075_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19075_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-c:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-skl5/igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-c.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19075/shard-skl7/igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-c.html">F=
AIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9453_full and Patchwork_19=
075_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 200 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19075_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-glk7/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard=
-glk3/igt@gen9_exec_parse@allowed-all.html">INCOMPLETE</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-sk=
l1/igt@kms_color@pipe-a-ctm-0-5.html">DMESG-WARN</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19075/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19075/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19075/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-iclb=
6/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@bcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-kbl3/igt@sysfs_heartbeat_interval@mixed@bcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_190=
75/shard-kbl3/igt@sysfs_heartbeat_interval@mixed@bcs0.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731=
</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-apl4/igt@gem_workarounds@suspend-resume-context.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/22=
95">i915#2295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19075/shard-apl4/igt@gem_workarounds@suspend-resume-context.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915=
#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716"=
>i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19075/shard-skl1/igt@gen9_exec_parse@allowed-single.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-skl9/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2291">i91=
5#2291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/541=
">i915#541</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19075/shard-skl10/igt@i915_selftest@live@gt_heartbeat.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19075/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/96">i915#96</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19075/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-at=
omic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2346">i915#2346</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/533">i915#533</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-skl5/igt@kms_cursor_legacy@=
flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi=
-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19075/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check@ab-h=
dmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2598">i915#2598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19075/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-=
interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915=
#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19075/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-iclb3/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1373">i9=
15#1373</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19075/shard-iclb8/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-skl10/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-=
gtt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/49">i915#49</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19075/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb565-draw=
-mmap-gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19075/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage=
-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-iclb8/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_190=
75/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/146">i915#146</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/198">i915#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19075/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-su=
spend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-tglb7/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#143=
6</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1602">i9=
15#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
87">i915#1887</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2411">i915#2411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19075/shard-tglb3/igt@gem_exec_suspend@basic-s0.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/160=
2">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2411">i915#2411</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/456">i915#456</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19075/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i9=
15#1226</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19075/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109349">fdo#1093=
49</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9453/shard-kbl7/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-k=
bl6/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9453/shard-iclb3/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-=
iclb1/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-glk6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-glk7/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2722">i915#2722</a> / <a href=3D"https://bugzilla.kernel.org/show=
_bug.cgi?id=3D202321">k.org#202321</a>) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_19075/shard-glk2/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
075/shard-glk3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19075/shard-glk3/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/483">i915#483</a> / <a href=3D"https://bugzilla.kernel.org/show_=
bug.cgi?id=3D202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9453/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/shard-skl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9453/shard-skl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#4=
83</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19075/shard-skl9/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9453 -&gt; Patchwork_19075</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9453: 52e2ca46b7e2aa62c0509bce0be189d2f5a7325f @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5883: 02244f60c98b4e4106b1099ade3439b159ac848e @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19075: ce3956bde786d896f93a805cd80ea0d5f06b983f @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3778989788732954726==--

--===============1138513699==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1138513699==--
