Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2D43F49DA
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 13:33:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BFAB89A88;
	Mon, 23 Aug 2021 11:33:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 24978899D4;
 Mon, 23 Aug 2021 11:33:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D653A66C8;
 Mon, 23 Aug 2021 11:33:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7480819430643409054=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Aug 2021 11:33:16 -0000
Message-ID: <162971839609.1911.6110767402125300958@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210818050116.1116237-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20210818050116.1116237-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/adl=5Fs=3A_Update_ADL-S_PCI_IDs_=28rev4=29?=
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

--===============7480819430643409054==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/adl_s: Update ADL-S PCI IDs (rev4)
URL   : https://patchwork.freedesktop.org/series/93302/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10506 -> Patchwork_20872
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/index.html

Known issues
------------

  Here are the changes found in Patchwork_20872 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-kbl-8809g:       [PASS][2] -> [DMESG-WARN][3] ([i915#3848])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10506/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-rkl-11600:       [PASS][5] -> [SKIP][6] ([fdo#109308])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10506/fi-rkl-11600/igt@i915_pm_rpm@basic-pci-d3-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-rkl-11600/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][7] ([i915#1886] / [i915#2291])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [PASS][8] -> [DMESG-FAIL][9] ([i915#3928])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10506/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][10] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#533])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][12] ([i915#180] / [i915#3363])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-kbl-8809g/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][13] ([i915#3928])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-rkl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-tgl-1115g4:      [DMESG-WARN][14] ([i915#4002]) -> [PASS][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10506/fi-tgl-1115g4/igt@i915_module_load@reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-tgl-1115g4/igt@i915_module_load@reload.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-1115g4:      [DMESG-WARN][16] ([i915#4002]) -> [DMESG-WARN][17] ([i915#1982] / [i915#4002])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10506/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-tgl-1115g4:      [SKIP][18] ([fdo#111827] / [i915#1385]) -> [SKIP][19] ([fdo#111827])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10506/fi-tgl-1115g4/igt@kms_chamelium@dp-hpd-fast.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-tgl-1115g4/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_psr@primary_page_flip:
    - fi-tgl-1115g4:      [SKIP][20] ([i915#1072]) -> [SKIP][21] ([i915#1072] / [i915#1385])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10506/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1385]: https://gitlab.freedesktop.org/drm/intel/issues/1385
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3848]: https://gitlab.freedesktop.org/drm/intel/issues/3848
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928
  [i915#4002]: https://gitlab.freedesktop.org/drm/intel/issues/4002
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (38 -> 34)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-jsl-1 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10506 -> Patchwork_20872

  CI-20190529: 20190529
  CI_DRM_10506: d6681095a2aa987fa64c6d0ed991674745589c06 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6181: e7a9ab2f21a67b1ab3f4093ec0bd775647308ba6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20872: 0ff5e258c4f7416c7292efa964839ca8b7f7b18f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0ff5e258c4f7 drm/i915/adl_s: Update ADL-S PCI IDs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/index.html

--===============7480819430643409054==
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
<tr><td><b>Series:</b></td><td>drm/i915/adl_s: Update ADL-S PCI IDs (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93302/">https://patchwork.freedesktop.org/series/93302/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10506 -&gt; Patchwork_20872</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20872 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10506/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3848">i915#3848</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10506/fi-rkl-11600/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-rkl-11600/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109308">fdo#109308</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10506/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10506/fi-tgl-1115g4/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-tgl-1115g4/igt@i915_module_load@reload.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10506/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10506/fi-tgl-1115g4/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1385">i915#1385</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-tgl-1115g4/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10506/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20872/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1385">i915#1385</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (38 -&gt; 34)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-jsl-1 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10506 -&gt; Patchwork_20872</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10506: d6681095a2aa987fa64c6d0ed991674745589c06 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6181: e7a9ab2f21a67b1ab3f4093ec0bd775647308ba6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20872: 0ff5e258c4f7416c7292efa964839ca8b7f7b18f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0ff5e258c4f7 drm/i915/adl_s: Update ADL-S PCI IDs</p>

</body>
</html>

--===============7480819430643409054==--
