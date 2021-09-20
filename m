Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3110412657
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Sep 2021 20:55:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 769466E7D3;
	Mon, 20 Sep 2021 18:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B62B16E7D0;
 Mon, 20 Sep 2021 18:55:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD34EA008A;
 Mon, 20 Sep 2021 18:55:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5519533313059693049=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Sep 2021 18:55:52 -0000
Message-ID: <163216415267.25898.15152670433636880830@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210917161407.812335-1-matthew.d.roper@intel.com>
In-Reply-To: <20210917161407.812335-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ2hl?=
 =?utf-8?q?ck_SFC_fusing_on_Xe=5FHP_=28rev4=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5519533313059693049==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Check SFC fusing on Xe_HP (rev4)
URL   : https://patchwork.freedesktop.org/series/94808/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10613 -> Patchwork_21099
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21099 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21099, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21099:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - fi-snb-2520m:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-snb-2520m/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-snb-2520m/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-bsw-kefka/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bsw-kefka/igt@i915_module_load@reload.html
    - fi-bsw-nick:        [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-bsw-nick/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bsw-nick/igt@i915_module_load@reload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {fi-jsl-1}:         [INCOMPLETE][7] ([i915#4130]) -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-jsl-1/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-jsl-1/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_21099 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][9] ([fdo#109271]) +27 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_basic@userptr:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][10] ([fdo#109271]) +17 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bxt-dsi/igt@amdgpu/amd_basic@userptr.html

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - fi-icl-u2:          NOTRUN -> [SKIP][11] ([fdo#109315]) +17 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-rkl-11600:       NOTRUN -> [SKIP][12] ([fdo#109315]) +17 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-rkl-11600/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-1115g4:      NOTRUN -> [INCOMPLETE][13] ([i915#4130])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7567u:       [PASS][14] -> [INCOMPLETE][15] ([i915#4130])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
    - fi-bdw-5557u:       NOTRUN -> [WARN][16] ([i915#3718])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][17] ([i915#1888])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][18] ([i915#2190])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@reload:
    - fi-rkl-guc:         [PASS][19] -> [DMESG-WARN][20] ([i915#4136])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-rkl-guc/igt@i915_module_load@reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-rkl-guc/igt@i915_module_load@reload.html
    - fi-cfl-8109u:       NOTRUN -> [INCOMPLETE][21] ([i915#4136])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-cfl-8109u/igt@i915_module_load@reload.html
    - fi-icl-y:           [PASS][22] -> [INCOMPLETE][23] ([i915#4130])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-icl-y/igt@i915_module_load@reload.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-icl-y/igt@i915_module_load@reload.html
    - fi-kbl-7500u:       NOTRUN -> [INCOMPLETE][24] ([i915#4130])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-kbl-7500u/igt@i915_module_load@reload.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][25] ([i915#1155])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@module-reload:
    - fi-snb-2600:        NOTRUN -> [SKIP][26] ([fdo#109271])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-snb-2600/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        NOTRUN -> [INCOMPLETE][27] ([i915#3921])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][28] ([fdo#111827]) +8 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][30] ([i915#4103]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][31] ([fdo#109285])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][32] ([i915#1072]) +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][33] ([i915#3301])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][34] ([i915#3690])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][35] ([i915#3690])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bsw-nick/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][36] ([i915#2426])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-snb-2520m/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][37] ([i915#2426] / [i915#3363])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-kbl-7500u/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][38] ([i915#1602] / [i915#2722])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-7500u:       [INCOMPLETE][39] ([i915#4130]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8109u:       [INCOMPLETE][41] ([i915#4130]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [INCOMPLETE][43] ([i915#4130]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-icl-u2/igt@i915_module_load@reload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-icl-u2/igt@i915_module_load@reload.html
    - fi-snb-2600:        [INCOMPLETE][45] -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-snb-2600/igt@i915_module_load@reload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-snb-2600/igt@i915_module_load@reload.html
    - fi-rkl-11600:       [INCOMPLETE][47] ([i915#4136]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-rkl-11600/igt@i915_module_load@reload.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-rkl-11600/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-rkl-guc:         [SKIP][49] ([fdo#109308]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@vgem_basic@unload:
    - fi-bxt-dsi:         [INCOMPLETE][51] -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-bxt-dsi/igt@vgem_basic@unload.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bxt-dsi/igt@vgem_basic@unload.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [INCOMPLETE][53] -> [INCOMPLETE][54] ([i915#4136])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-kbl-soraka/igt@i915_module_load@reload.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-kbl-soraka/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
  [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136


Participating hosts (37 -> 33)
------------------------------

  Additional (1): fi-tgl-1115g4 
  Missing    (5): bat-dg1-6 fi-bsw-cyan fi-ctg-p8600 bat-jsl-1 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10613 -> Patchwork_21099

  CI-20190529: 20190529
  CI_DRM_10613: 6c1bed68f9286bb83d50c4ab62a1b7d02c752ed5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6213: e9ae59cb8b4f1e7bc61a9261f33fc7e52ae06c65 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21099: 10de77b247a47d134895c4e994daf2dcf8e35f2b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

10de77b247a4 drm/i915: Check SFC fusing before recording/dumping SFC_DONE
c4cb55d67665 drm/i915/xehp: Check new fuse bits for SFC availability

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/index.html

--===============5519533313059693049==
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
<tr><td><b>Series:</b></td><td>Check SFC fusing on Xe_HP (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94808/">https://patchwork.freedesktop.org/series/94808/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10613 -&gt; Patchwork_21099</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21099 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21099, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21099:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-snb-2520m/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-snb-2520m/igt@i915_module_load@reload.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-bsw-kefka/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bsw-kefka/igt@i915_module_load@reload.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-bsw-nick/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bsw-nick/igt@i915_module_load@reload.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-jsl-1/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-jsl-1/igt@i915_module_load@reload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21099 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@userptr:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bxt-dsi/igt@amdgpu/amd_basic@userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-rkl-11600/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-rkl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-rkl-guc/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-cfl-8109u/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-icl-y/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-icl-y/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-kbl-7500u/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-snb-2600/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-icl-u2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-icl-u2/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-snb-2600/igt@i915_module_load@reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-snb-2600/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-rkl-11600/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-rkl-11600/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109308">fdo#109308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-bxt-dsi/igt@vgem_basic@unload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-bxt-dsi/igt@vgem_basic@unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/fi-kbl-soraka/igt@i915_module_load@reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/fi-kbl-soraka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 33)</h2>
<p>Additional (1): fi-tgl-1115g4 <br />
  Missing    (5): bat-dg1-6 fi-bsw-cyan fi-ctg-p8600 bat-jsl-1 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10613 -&gt; Patchwork_21099</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10613: 6c1bed68f9286bb83d50c4ab62a1b7d02c752ed5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6213: e9ae59cb8b4f1e7bc61a9261f33fc7e52ae06c65 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21099: 10de77b247a47d134895c4e994daf2dcf8e35f2b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>10de77b247a4 drm/i915: Check SFC fusing before recording/dumping SFC_DONE<br />
c4cb55d67665 drm/i915/xehp: Check new fuse bits for SFC availability</p>

</body>
</html>

--===============5519533313059693049==--
