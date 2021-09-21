Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B278C413C8A
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 23:34:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71C616E82C;
	Tue, 21 Sep 2021 21:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 756886E82C;
 Tue, 21 Sep 2021 21:34:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6B019AADD5;
 Tue, 21 Sep 2021 21:34:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2946320622765878548=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 21:34:04 -0000
Message-ID: <163226004443.15887.7622106739906491153@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210921152517.803-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210921152517.803-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/fbc=3A_Rework_CFB_stride/size_calculations_=28rev4=29?=
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

--===============2946320622765878548==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/fbc: Rework CFB stride/size calculations (rev4)
URL   : https://patchwork.freedesktop.org/series/92163/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10621 -> Patchwork_21119
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21119 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21119, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21119:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_21119 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271]) +23 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@sync-compute0:
    - fi-kbl-r:           NOTRUN -> [SKIP][4] ([fdo#109271]) +17 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-cfl-guc:         [PASS][5] -> [INCOMPLETE][6] ([i915#4130] / [i915#4136])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-tgl-1115g4:      NOTRUN -> [INCOMPLETE][7] ([i915#4130])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8700k:       [PASS][8] -> [INCOMPLETE][9] ([i915#4130] / [i915#4136])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
    - fi-icl-u2:          [PASS][10] -> [INCOMPLETE][11] ([i915#4130] / [i915#4136])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
    - fi-bdw-5557u:       NOTRUN -> [WARN][12] ([i915#3718])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][13] ([i915#2190])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@reload:
    - fi-snb-2520m:       [PASS][14] -> [INCOMPLETE][15] ([i915#4179])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-snb-2520m/igt@i915_module_load@reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-snb-2520m/igt@i915_module_load@reload.html
    - fi-skl-6600u:       [PASS][16] -> [INCOMPLETE][17] ([i915#4130] / [i915#4136])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-skl-6600u/igt@i915_module_load@reload.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-ivb-3770:        [PASS][18] -> [INCOMPLETE][19] ([i915#4179])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-ivb-3770/igt@i915_module_load@reload.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-ivb-3770/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [PASS][20] -> [INCOMPLETE][21] ([i915#4136])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-bsw-kefka/igt@i915_module_load@reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-bsw-kefka/igt@i915_module_load@reload.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][22] ([i915#1155])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@module-reload:
    - fi-snb-2600:        NOTRUN -> [SKIP][23] ([fdo#109271])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-snb-2600/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        NOTRUN -> [INCOMPLETE][24] ([i915#3921])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][25] ([fdo#111827]) +8 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][26] ([i915#4103]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][27] ([fdo#109285])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][28] ([i915#1072]) +3 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][29] ([i915#3301])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][30] ([i915#2722] / [i915#3363])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-kbl-8809g/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][31] ([i915#2426])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-snb-2520m/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][32] ([i915#2426])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-ivb-3770/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][33] ([i915#1602] / [i915#2722])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-kbl-r:           [INCOMPLETE][34] ([i915#4130] / [i915#4136]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-r/igt@i915_module_load@reload.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-kbl-r/igt@i915_module_load@reload.html
    - fi-snb-2600:        [INCOMPLETE][36] ([i915#4179]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-snb-2600/igt@i915_module_load@reload.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-snb-2600/igt@i915_module_load@reload.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-7500u:       [INCOMPLETE][38] ([i915#4130]) -> [INCOMPLETE][39] ([i915#4130] / [i915#4136])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-glk-dsi:         [INCOMPLETE][40] ([i915#4130] / [i915#4136]) -> [INCOMPLETE][41] ([i915#4136])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-glk-dsi/igt@i915_module_load@reload.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-glk-dsi/igt@i915_module_load@reload.html
    - fi-icl-y:           [INCOMPLETE][42] ([i915#4130] / [i915#4136]) -> [INCOMPLETE][43] ([i915#4136])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-icl-y/igt@i915_module_load@reload.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-icl-y/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
  [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136
  [i915#4179]: https://gitlab.freedesktop.org/drm/intel/issues/4179


Participating hosts (34 -> 31)
------------------------------

  Additional (1): fi-tgl-1115g4 
  Missing    (4): fi-bdw-samus fi-bsw-cyan bat-jsl-1 bat-dg1-6 


Build changes
-------------

  * Linux: CI_DRM_10621 -> Patchwork_21119

  CI-20190529: 20190529
  CI_DRM_10621: a24155d542614740119089c115fc777a0fa27587 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21119: 49f6a8772d0f8b3a2aa1f975023bc2f16b09260f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

49f6a8772d0f drm/i915/fbc: Allow higher compression limits on FBC1
30f6fa72f24b drm/i915/fbc: Implement Wa_16011863758 for icl+
7acb248ac141 drm/i915/fbc: Align FBC segments to 512B on glk+
f67286dc68d7 drm/i915/fbc: Rework cfb stride/size calculations

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/index.html

--===============2946320622765878548==
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
<tr><td><b>Series:</b></td><td>drm/i915/fbc: Rework CFB stride/size calculations (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92163/">https://patchwork.freedesktop.org/series/92163/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10621 -&gt; Patchwork_21119</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21119 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21119, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21119:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_chamelium@common-hpd-after-suspend:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21119 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-compute0:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-snb-2520m/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-snb-2520m/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-skl-6600u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-skl-6600u/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-ivb-3770/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-ivb-3770/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-bsw-kefka/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-bsw-kefka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-snb-2600/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-r/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-kbl-r/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-snb-2600/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-snb-2600/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-glk-dsi/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-glk-dsi/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-icl-y/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21119/fi-icl-y/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (34 -&gt; 31)</h2>
<p>Additional (1): fi-tgl-1115g4 <br />
  Missing    (4): fi-bdw-samus fi-bsw-cyan bat-jsl-1 bat-dg1-6 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10621 -&gt; Patchwork_21119</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10621: a24155d542614740119089c115fc777a0fa27587 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21119: 49f6a8772d0f8b3a2aa1f975023bc2f16b09260f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>49f6a8772d0f drm/i915/fbc: Allow higher compression limits on FBC1<br />
30f6fa72f24b drm/i915/fbc: Implement Wa_16011863758 for icl+<br />
7acb248ac141 drm/i915/fbc: Align FBC segments to 512B on glk+<br />
f67286dc68d7 drm/i915/fbc: Rework cfb stride/size calculations</p>

</body>
</html>

--===============2946320622765878548==--
