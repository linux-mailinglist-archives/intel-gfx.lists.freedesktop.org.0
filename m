Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE2D303783
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 08:54:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F86E6E418;
	Tue, 26 Jan 2021 07:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E23D36E416;
 Tue, 26 Jan 2021 07:54:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DC835A0099;
 Tue, 26 Jan 2021 07:54:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Tue, 26 Jan 2021 07:54:16 -0000
Message-ID: <161164765687.9811.8218233511312631243@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210125224200.3146462-1-John.C.Harrison@Intel.com>
In-Reply-To: <20210125224200.3146462-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/uc=3A_Use_platform_specific_defaults_for_GuC/HuC_enabling?=
 =?utf-8?q?_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0305890806=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0305890806==
Content-Type: multipart/alternative;
 boundary="===============5202091695514879566=="

--===============5202091695514879566==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/uc: Use platform specific defaults for GuC/HuC enabling (rev2)
URL   : https://patchwork.freedesktop.org/series/86100/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9682_full -> Patchwork_19497_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19497_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@sysfs_clients@busy@vecs0}:
    - shard-glk:          [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-glk6/igt@sysfs_clients@busy@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-glk1/igt@sysfs_clients@busy@vecs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_19497_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#658])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-iclb2/igt@feature_discovery@psr2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-iclb8/igt@feature_discovery@psr2.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2846])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-kbl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#2842]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_params@no-vebox:
    - shard-glk:          NOTRUN -> [SKIP][13] ([fdo#109271]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-glk3/igt@gem_exec_params@no-vebox.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-iclb:         [PASS][14] -> [DMESG-WARN][15] ([i915#2803])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-iclb2/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-iclb4/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-glk:          [PASS][16] -> [DMESG-WARN][17] ([i915#118] / [i915#95])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-glk2/igt@gem_exec_whisper@basic-fds-forked-all.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-glk3/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][18] -> [FAIL][19] ([i915#2597])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-tglb8/igt@kms_async_flips@test-time-stamp.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-tglb1/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-75:
    - shard-glk:          NOTRUN -> [SKIP][20] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-glk3/igt@kms_color_chamelium@pipe-b-ctm-0-75.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-glk:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#2672])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-glk3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-glk:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#533])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-glk3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109642] / [fdo#111068] / [i915#658])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-iclb5/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [FAIL][27] ([i915#2842]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-glk:          [DMESG-WARN][29] ([i915#1610]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-glk6/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-glk3/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [FAIL][31] ([i915#2598]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][33] ([fdo#109441]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * {igt@sysfs_clients@sema-10@rcs0}:
    - shard-apl:          [SKIP][35] ([fdo#109271]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-apl8/igt@sysfs_clients@sema-10@rcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-apl7/igt@sysfs_clients@sema-10@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][37] ([i915#2684]) -> [WARN][38] ([i915#2681] / [i915#2684])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][39] ([i915#2681] / [i915#2684]) -> [WARN][40] ([i915#1804] / [i915#2684])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][41] ([i915#2920]) -> [SKIP][42] ([i915#658]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][43] ([i915#658]) -> [SKIP][44] ([i915#2920]) +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][45], [FAIL][46], [FAIL][47]) ([i915#2295]) -> ([FAIL][48], [FAIL][49], [FAIL][50]) ([i915#2295] / [i915#2505])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-kbl4/igt@runner@aborted.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-kbl7/igt@runner@aborted.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-kbl3/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-kbl2/igt@runner@aborted.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-kbl6/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-kbl4/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][51], [FAIL][52], [FAIL][53]) ([i915#2295] / [i915#2724]) -> ([FAIL][54], [FAIL][55], [FAIL][56], [FAIL][57]) ([i915#2295] / [i915#2426] / [i915#2724])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-iclb3/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-iclb7/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-iclb6/igt@runner@aborted.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-iclb4/igt@runner@aborted.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-iclb2/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-iclb6/igt@runner@aborted.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-iclb7/igt@runner@aborted.html
    - shard-glk:          ([FAIL][58], [FAIL][59], [FAIL][60], [FAIL][61]) ([i915#2295] / [i915#2426] / [k.org#202321]) -> ([FAIL][62], [FAIL][63], [FAIL][64]) ([i915#2295] / [k.org#202321])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-glk2/igt@runner@aborted.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-glk9/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-glk8/igt@runner@aborted.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-glk6/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-glk7/igt@runner@aborted.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-glk9/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-glk3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9682 -> Patchwork_19497

  CI-20190529: 20190529
  CI_DRM_9682: 35ee6d505b478462c04952da1a4fbc03991af114 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19497: 4c9b8d9213f61a51880612c720f74378f158139b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/index.html

--===============5202091695514879566==
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
<tr><td><b>Series:</b></td><td>drm/i915/uc: Use platform specific defaults =
for GuC/HuC enabling (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/86100/">https://patchwork.freedesktop.org/series/86100/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19497/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19497/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9682_full -&gt; Patchwork_19497_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19497_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@sysfs_clients@busy@vecs0}:<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-glk6/igt@sysfs_clients@busy@vecs0.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-gl=
k1/igt@sysfs_clients@busy@vecs0.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19497_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-icl=
b8/igt@feature_discovery@psr2.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-kbl6/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shar=
d-kbl4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
497/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/sha=
rd-kbl4/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/sh=
ard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19497/shard-glk3/igt@gem_exec_params@no-vebox.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-iclb2/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_194=
97/shard-iclb4/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#2803=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-glk2/igt@gem_exec_whisper@basic-fds-forked-all.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9497/shard-glk3/igt@gem_exec_whisper@basic-fds-forked-all.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#1=
18</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i91=
5#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-tglb8/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/=
shard-tglb1/igt@kms_async_flips@test-time-stamp.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#2597</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19497/shard-glk3/igt@kms_color_chamelium@pipe-b-ctm=
-0-75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19497/shard-glk3/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19497/shard-glk3/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-iclb=
5/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/s=
hard-iclb8/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 sim=
ilar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19497/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-glk6/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">=
i915#1610</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19497/shard-glk3/igt@gem_exec_schedule@u-fairslice@vcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2598">i915#2598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19497/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-=
interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19497/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@sema-10@rcs0}:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-apl8/igt@sysfs_clients@sema-10@rcs0.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1949=
7/shard-apl7/igt@sysfs_clients@sema-10@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19497/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19497/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#=
2684</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19497/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dm=
g-area-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area=
-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19497/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-=
dmg-area-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2920">i915#2920</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-kbl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9682/shard-kbl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; (<a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-kbl2/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19497/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-kbl4/=
igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-iclb7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9682/shard-iclb6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a>) -&gt; =
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/shard-=
iclb4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19497/shard-iclb2/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/s=
hard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19497/shard-iclb7/igt@runner@aborted.html"=
>FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295=
">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2724">i915#2724</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9682/shard-glk2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-glk9/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9682/shard-glk8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/shard-glk6/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2426">i915#2426</a> / <a href=3D"https://bugzilla.kernel.org/show_bug.=
cgi?id=3D202321">k.org#202321</a>) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19497/shard-glk7/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/s=
hard-glk9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19497/shard-glk3/igt@runner@aborted.html">F=
AIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">=
i915#2295</a> / <a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D20=
2321">k.org#202321</a>)</p>
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
<li>Linux: CI_DRM_9682 -&gt; Patchwork_19497</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9682: 35ee6d505b478462c04952da1a4fbc03991af114 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19497: 4c9b8d9213f61a51880612c720f74378f158139b @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============5202091695514879566==--

--===============0305890806==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0305890806==--
