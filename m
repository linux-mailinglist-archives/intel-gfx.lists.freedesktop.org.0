Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B2E40FE2C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 18:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 093196EE4D;
	Fri, 17 Sep 2021 16:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 782776EE4D;
 Fri, 17 Sep 2021 16:52:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 627BBA01BB;
 Fri, 17 Sep 2021 16:52:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1739908030287643616=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 16:52:19 -0000
Message-ID: <163189753937.809.13036875267140354450@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210917161407.812335-1-matthew.d.roper@intel.com>
In-Reply-To: <20210917161407.812335-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ2hl?=
 =?utf-8?q?ck_SFC_fusing_on_Xe=5FHP?=
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

--===============1739908030287643616==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Check SFC fusing on Xe_HP
URL   : https://patchwork.freedesktop.org/series/94808/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10604 -> Patchwork_21085
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21085 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21085, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21085:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@engines@fds:
    - fi-tgl-u2:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-tgl-u2/igt@gem_exec_parallel@engines@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-u2/igt@gem_exec_parallel@engines@fds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {fi-ehl-2}:         [INCOMPLETE][3] ([i915#4136]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-ehl-2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-ehl-2/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_21085 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-sdma:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][5] ([fdo#109271]) +17 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-cfl-8109u/igt@amdgpu/amd_basic@cs-sdma.html

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - fi-icl-u2:          NOTRUN -> [SKIP][6] ([fdo#109315]) +17 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html

  * igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
    - fi-cfl-8700k:       NOTRUN -> [SKIP][7] ([fdo#109271]) +17 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-cfl-8700k/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-cfl-guc:         [PASS][8] -> [INCOMPLETE][9] ([i915#4130])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-tgl-1115g4:      NOTRUN -> [INCOMPLETE][10] ([i915#4130])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
    - fi-rkl-11600:       [PASS][11] -> [INCOMPLETE][12] ([i915#4130])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html
    - fi-skl-guc:         [PASS][13] -> [INCOMPLETE][14] ([i915#4130])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7567u:       [PASS][15] -> [INCOMPLETE][16] ([i915#4130])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][17] ([i915#2190])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@reload:
    - fi-skl-6700k2:      NOTRUN -> [INCOMPLETE][18] ([i915#4130])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-skl-6700k2/igt@i915_module_load@reload.html
    - fi-kbl-guc:         [PASS][19] -> [INCOMPLETE][20] ([i915#4130] / [i915#4139])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-kbl-guc/igt@i915_module_load@reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-kbl-guc/igt@i915_module_load@reload.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][21] ([i915#1155])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][22] ([fdo#111827]) +8 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][23] ([i915#4103]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][24] ([fdo#109285])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][25] ([i915#1072]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][26] ([i915#3301])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][27] ([i915#1602] / [i915#2722])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][28] ([i915#2426] / [i915#3363])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-skl-6700k2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-skl-6700k2:      [INCOMPLETE][29] ([i915#4130]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8109u:       [INCOMPLETE][31] ([i915#4130]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [INCOMPLETE][33] ([i915#4130] / [i915#4136]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-icl-u2/igt@i915_module_load@reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-icl-u2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8700k:       [INCOMPLETE][35] -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       [INCOMPLETE][37] -> [INCOMPLETE][38] ([i915#4130])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-kbl-8809g/igt@i915_module_load@reload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-kbl-8809g/igt@i915_module_load@reload.html
    - fi-cml-u2:          [INCOMPLETE][39] ([i915#4130] / [i915#4136]) -> [INCOMPLETE][40] ([i915#4130])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-cml-u2/igt@i915_module_load@reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-cml-u2/igt@i915_module_load@reload.html
    - fi-kbl-soraka:      [INCOMPLETE][41] ([i915#4130] / [i915#4136]) -> [INCOMPLETE][42] ([i915#4130])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-kbl-soraka/igt@i915_module_load@reload.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-kbl-soraka/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
  [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136
  [i915#4139]: https://gitlab.freedesktop.org/drm/intel/issues/4139


Participating hosts (38 -> 33)
------------------------------

  Additional (1): fi-tgl-1115g4 
  Missing    (6): fi-ilk-m540 bat-dg1-6 fi-hsw-4200u fi-ctg-p8600 bat-jsl-2 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10604 -> Patchwork_21085

  CI-20190529: 20190529
  CI_DRM_10604: febea2142ec3332a63b3a0afaee75163207e7060 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6211: 7b275b3eb17ddf6e7c5b7b9ba359b7f5345a5311 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21085: c53175225625da3539f539ec9b02d80752c0291b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c53175225625 drm/i915: Check SFC fusing before recording/dumping SFC_DONE
bd29d3b3912d drm/i915/xehp: Check new fuse bits for SFC availability

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/index.html

--===============1739908030287643616==
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
<tr><td><b>Series:</b></td><td>Check SFC fusing on Xe_HP</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94808/">https://patchwork.freedesktop.org/series/94808/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10604 -&gt; Patchwork_21085</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21085 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21085, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21085:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_parallel@engines@fds:<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-tgl-u2/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-u2/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-ehl-2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-ehl-2/igt@i915_module_load@reload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21085 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-sdma:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-cfl-8109u/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-gfx0:</p>
<ul>
<li>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-cfl-8700k/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-skl-6700k2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-kbl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-kbl-guc/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4139">i915#4139</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
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
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-icl-u2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-icl-u2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-kbl-8809g/igt@i915_module_load@reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-kbl-8809g/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-cml-u2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-cml-u2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-kbl-soraka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21085/fi-kbl-soraka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 33)</h2>
<p>Additional (1): fi-tgl-1115g4 <br />
  Missing    (6): fi-ilk-m540 bat-dg1-6 fi-hsw-4200u fi-ctg-p8600 bat-jsl-2 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10604 -&gt; Patchwork_21085</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10604: febea2142ec3332a63b3a0afaee75163207e7060 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6211: 7b275b3eb17ddf6e7c5b7b9ba359b7f5345a5311 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21085: c53175225625da3539f539ec9b02d80752c0291b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c53175225625 drm/i915: Check SFC fusing before recording/dumping SFC_DONE<br />
bd29d3b3912d drm/i915/xehp: Check new fuse bits for SFC availability</p>

</body>
</html>

--===============1739908030287643616==--
