Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B50E3EFB0C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 08:08:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02C756E408;
	Wed, 18 Aug 2021 06:08:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A5DF6E40D;
 Wed, 18 Aug 2021 06:08:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 482DAA8830;
 Wed, 18 Aug 2021 06:08:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0360836537603753202=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Aug 2021 06:08:22 -0000
Message-ID: <162926690229.16675.12621476001284707072@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210818050116.1116237-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20210818050116.1116237-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/adl=5Fs=3A_Update_ADL-S_PCI_IDs_=28rev3=29?=
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

--===============0360836537603753202==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/adl_s: Update ADL-S PCI IDs (rev3)
URL   : https://patchwork.freedesktop.org/series/93302/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10491 -> Patchwork_20842
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20842 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20842, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20842:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-tgl-1115g4/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20842 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][2] ([fdo#109315]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271]) +21 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][5] ([i915#1886] / [i915#2291])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#533])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@vgem_basic@unload:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-WARN][8] ([i915#1982])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-kbl-soraka/igt@vgem_basic@unload.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-rkl-guc:         [DMESG-WARN][9] ([i915#3925]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-ilk-650:         [DMESG-WARN][11] ([i915#164]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [INCOMPLETE][13] ([i915#155]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][15] ([i915#1888]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-dsi}:       [DMESG-FAIL][17] ([i915#1993]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-tgl-1115g4:      [SKIP][19] ([fdo#109315] / [i915#2575]) -> [SKIP][20] ([fdo#109315] / [i915#1887] / [i915#2575])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-tgl-1115g4/igt@amdgpu/amd_prime@i915-to-amd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-tgl-1115g4/igt@amdgpu/amd_prime@i915-to-amd.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#164]: https://gitlab.freedesktop.org/drm/intel/issues/164
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#1993]: https://gitlab.freedesktop.org/drm/intel/issues/1993
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3925]: https://gitlab.freedesktop.org/drm/intel/issues/3925
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (36 -> 34)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10491 -> Patchwork_20842

  CI-20190529: 20190529
  CI_DRM_10491: efa09f306ade4b8550404d7248ac743fc0cb2c7d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6177: f474644e7226dd319195ca03b3cde82ad10ac54c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20842: 5ac64316cf5518a00afa4b44b5782aa50cc43de2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5ac64316cf55 drm/i915/adl_s: Update ADL-S PCI IDs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/index.html

--===============0360836537603753202==
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
<tr><td><b>Series:</b></td><td>drm/i915/adl_s: Update ADL-S PCI IDs (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93302/">https://patchwork.freedesktop.org/series/93302/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10491 -&gt; Patchwork_20842</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20842 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20842, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20842:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20842 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +21 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-kbl-soraka/igt@vgem_basic@unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3925">i915#3925</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/164">i915#164</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1993">i915#1993</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@amdgpu/amd_prime@i915-to-amd:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-tgl-1115g4/igt@amdgpu/amd_prime@i915-to-amd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20842/fi-tgl-1115g4/igt@amdgpu/amd_prime@i915-to-amd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1887">i915#1887</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (36 -&gt; 34)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10491 -&gt; Patchwork_20842</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10491: efa09f306ade4b8550404d7248ac743fc0cb2c7d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6177: f474644e7226dd319195ca03b3cde82ad10ac54c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20842: 5ac64316cf5518a00afa4b44b5782aa50cc43de2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5ac64316cf55 drm/i915/adl_s: Update ADL-S PCI IDs</p>

</body>
</html>

--===============0360836537603753202==--
