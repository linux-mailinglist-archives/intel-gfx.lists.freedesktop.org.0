Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1773248D82C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 13:47:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D98C10E220;
	Thu, 13 Jan 2022 12:47:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 80DFD10E220;
 Thu, 13 Jan 2022 12:47:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6EFE5A0169;
 Thu, 13 Jan 2022 12:47:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1426444844787875036=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 13 Jan 2022 12:47:10 -0000
Message-ID: <164207803042.18999.12309857362654775372@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1642072583.git.jani.nikula@intel.com>
In-Reply-To: <cover.1642072583.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/opregion=3A_fixes_and_cleanups?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1426444844787875036==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/opregion: fixes and cleanups
URL   : https://patchwork.freedesktop.org/series/98836/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11077 -> Patchwork_21992
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21992 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21992, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/index.html

Participating hosts (43 -> 42)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (2): fi-bsw-cyan bat-jsl-2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21992:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       [PASS][1] -> [DMESG-WARN][2] +37 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-kbl-8809g/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-kbl-8809g/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [PASS][3] -> [DMESG-WARN][4] +37 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-guc:         [PASS][5] -> [DMESG-WARN][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@client:
    - fi-ivb-3770:        [PASS][7] -> [DMESG-WARN][8] +36 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-ivb-3770/igt@i915_selftest@live@client.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-ivb-3770/igt@i915_selftest@live@client.html
    - fi-rkl-guc:         [PASS][9] -> [DMESG-WARN][10] +37 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-rkl-guc/igt@i915_selftest@live@client.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-rkl-guc/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@dmabuf:
    - fi-cfl-8700k:       [PASS][11] -> [DMESG-WARN][12] +37 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html
    - fi-icl-u2:          [PASS][13] -> [DMESG-WARN][14] +37 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-icl-u2/igt@i915_selftest@live@dmabuf.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-icl-u2/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@gem:
    - fi-snb-2600:        [PASS][15] -> [DMESG-WARN][16] +36 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-snb-2600/igt@i915_selftest@live@gem.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-snb-2600/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gem_migrate:
    - fi-skl-guc:         [PASS][17] -> [DMESG-WARN][18] +37 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-skl-guc/igt@i915_selftest@live@gem_migrate.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-skl-guc/igt@i915_selftest@live@gem_migrate.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-rkl-11600:       [PASS][19] -> [DMESG-WARN][20] +37 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-rkl-11600/igt@i915_selftest@live@gt_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-rkl-11600/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-pnv-d510:        NOTRUN -> [DMESG-WARN][21] +36 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_mocs:
    - fi-tgl-1115g4:      [PASS][22] -> [DMESG-WARN][23] +36 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-skl-6700k2:      [PASS][24] -> [DMESG-WARN][25] +37 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@hangcheck:
    - fi-cml-u2:          [PASS][26] -> [DMESG-WARN][27] +37 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-cml-u2/igt@i915_selftest@live@hangcheck.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-cml-u2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@objects:
    - fi-snb-2520m:       [PASS][28] -> [DMESG-WARN][29] +36 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-snb-2520m/igt@i915_selftest@live@objects.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-snb-2520m/igt@i915_selftest@live@objects.html

  * igt@i915_selftest@live@requests:
    - fi-cfl-guc:         [PASS][30] -> [DMESG-WARN][31] +37 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-cfl-guc/igt@i915_selftest@live@requests.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-cfl-guc/igt@i915_selftest@live@requests.html
    - fi-hsw-4770:        [PASS][32] -> [DMESG-WARN][33] +37 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-hsw-4770/igt@i915_selftest@live@requests.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-hsw-4770/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7500u:       [PASS][34] -> [DMESG-WARN][35] +37 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@uncore:
    - fi-kbl-7567u:       [PASS][36] -> [DMESG-WARN][37] +37 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-kbl-7567u/igt@i915_selftest@live@uncore.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-kbl-7567u/igt@i915_selftest@live@uncore.html
    - fi-bdw-5557u:       NOTRUN -> [DMESG-WARN][38] +37 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-bdw-5557u/igt@i915_selftest@live@uncore.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_lrc:
    - {fi-jsl-1}:         [PASS][39] -> [DMESG-WARN][40] +37 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@migrate:
    - {fi-ehl-2}:         [PASS][41] -> [DMESG-WARN][42] +37 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-ehl-2/igt@i915_selftest@live@migrate.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-ehl-2/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@perf:
    - {fi-tgl-dsi}:       [PASS][43] -> [DMESG-WARN][44] +33 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-tgl-dsi/igt@i915_selftest@live@perf.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-tgl-dsi/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@uncore:
    - {bat-jsl-1}:        [PASS][45] -> [DMESG-WARN][46] +37 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/bat-jsl-1/igt@i915_selftest@live@uncore.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/bat-jsl-1/igt@i915_selftest@live@uncore.html

  
Known issues
------------

  Here are the changes found in Patchwork_21992 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][47] ([fdo#109271]) +31 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_flink_basic@bad-flink:
    - fi-skl-6600u:       NOTRUN -> [FAIL][48] ([i915#4547])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html

  * igt@i915_selftest@live@gem:
    - fi-kbl-8809g:       [PASS][49] -> [DMESG-WARN][50] ([i915#1888])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-kbl-8809g/igt@i915_selftest@live@gem.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-kbl-8809g/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [PASS][51] -> [DMESG-FAIL][52] ([i915#4494])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - fi-tgl-1115g4:      [PASS][53] -> [DMESG-WARN][54] ([i915#1888])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][55] -> [DMESG-FAIL][56] ([i915#4610])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][57] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][58] ([fdo#109271]) +57 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-blb-e6850:       NOTRUN -> [FAIL][59] ([fdo#109271] / [i915#2403] / [i915#2426] / [i915#4312])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-blb-e6850/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-skl-6600u:       [INCOMPLETE][60] ([i915#4547]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4610]: https://gitlab.freedesktop.org/drm/intel/issues/4610


Build changes
-------------

  * Linux: CI_DRM_11077 -> Patchwork_21992

  CI-20190529: 20190529
  CI_DRM_11077: dd14003838c5a80ce141b31f2659a056a40cd894 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6326: ec75f64fcbcf4aac58fbf1bf629e8f59b19db4ce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21992: 42015ca384642a0f738d947e139e65bce52c8a65 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

42015ca38464 drm/i915/opregion: debug log about Mailbox #2 for backlight
ce14222cfad0 drm/i915/opregion: handle SWSCI Mailbox #2 obsoletion
80f4e243d899 drm/i915/opregion: early exit from encoder notify if SWSCI isn't there
e97c1b58c9e7 drm/i915/opregion: abstract the check for valid swsci function
47685d212d83 drm/i915/opregion: check port number bounds for SWSCI display power state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/index.html

--===============1426444844787875036==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/opregion: fixes and cleanups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98836/">https://patchwork.freedesktop.org/series/98836/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11077 -&gt; Patchwork_21992</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21992 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21992, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (2): fi-bsw-cyan bat-jsl-2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21992:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-kbl-8809g/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-kbl-8809g/igt@i915_module_load@reload.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +37 similar issues</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-ivb-3770/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-ivb-3770/igt@i915_selftest@live@client.html">DMESG-WARN</a> +36 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-rkl-guc/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-rkl-guc/igt@i915_selftest@live@client.html">DMESG-WARN</a> +37 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html">DMESG-WARN</a> +37 similar issues</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-icl-u2/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-icl-u2/igt@i915_selftest@live@dmabuf.html">DMESG-WARN</a> +37 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-snb-2600/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-snb-2600/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_migrate:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-skl-guc/igt@i915_selftest@live@gem_migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-skl-guc/igt@i915_selftest@live@gem_migrate.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-rkl-11600/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-rkl-11600/igt@i915_selftest@live@gt_contexts.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-cml-u2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-cml-u2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-snb-2520m/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-snb-2520m/igt@i915_selftest@live@objects.html">DMESG-WARN</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-cfl-guc/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-cfl-guc/igt@i915_selftest@live@requests.html">DMESG-WARN</a> +37 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-hsw-4770/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-hsw-4770/igt@i915_selftest@live@requests.html">DMESG-WARN</a> +37 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-kbl-7567u/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-kbl-7567u/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +37 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-bdw-5557u/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +37 similar issues</p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-ehl-2/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-ehl-2/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-tgl-dsi/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-tgl-dsi/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/bat-jsl-1/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/bat-jsl-1/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21992 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-kbl-8809g/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-kbl-8809g/igt@i915_selftest@live@gem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4610">i915#4610</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3@smem:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11077/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21992/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11077 -&gt; Patchwork_21992</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11077: dd14003838c5a80ce141b31f2659a056a40cd894 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6326: ec75f64fcbcf4aac58fbf1bf629e8f59b19db4ce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21992: 42015ca384642a0f738d947e139e65bce52c8a65 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>42015ca38464 drm/i915/opregion: debug log about Mailbox #2 for backlight<br />
ce14222cfad0 drm/i915/opregion: handle SWSCI Mailbox #2 obsoletion<br />
80f4e243d899 drm/i915/opregion: early exit from encoder notify if SWSCI isn't there<br />
e97c1b58c9e7 drm/i915/opregion: abstract the check for valid swsci function<br />
47685d212d83 drm/i915/opregion: check port number bounds for SWSCI display power state</p>

</body>
</html>

--===============1426444844787875036==--
