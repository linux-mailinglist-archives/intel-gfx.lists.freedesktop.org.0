Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD15501F4C
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 01:50:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D03E210E2F8;
	Thu, 14 Apr 2022 23:50:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A7B1D10E213;
 Thu, 14 Apr 2022 23:50:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1BCCAADD7;
 Thu, 14 Apr 2022 23:50:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5103817909430945872=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 14 Apr 2022 23:50:22 -0000
Message-ID: <164998022262.1345.15782863327703238602@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220414210657.1785773-1-imre.deak@intel.com>
In-Reply-To: <20220414210657.1785773-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C01/18=5D_drm/i915=3A_Move_per-platfor?=
 =?utf-8?q?m_power_well_hooks_to_intel=5Fdisplay=5Fpower=5Fwell=2Ec?=
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

--===============5103817909430945872==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,01/18] drm/i915: Move per-platform power well hooks to intel_display_power_well.c
URL   : https://patchwork.freedesktop.org/series/102719/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11503 -> Patchwork_102719v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/index.html

Participating hosts (49 -> 45)
------------------------------

  Missing    (4): fi-kbl-soraka fi-bsw-cyan fi-icl-u2 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102719v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - {bat-dg2-8}:        [DMESG-WARN][1] ([i915#5193]) -> [DMESG-WARN][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/bat-dg2-8/igt@gem_exec_suspend@basic-s0@lmem0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/bat-dg2-8/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@gem_lmem_swapping@basic:
    - {bat-rpls-2}:       NOTRUN -> [FAIL][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/bat-rpls-2/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-ehl-2}:         [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-ehl-2/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/fi-ehl-2/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - {bat-dg2-9}:        [DMESG-WARN][6] ([i915#5193]) -> [DMESG-WARN][7] +4 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
Known issues
------------

  Here are the changes found in Patchwork_102719v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-n3050:       [PASS][8] -> [DMESG-FAIL][9] ([i915#2927] / [i915#3428])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html

  * igt@kms_psr@primary_page_flip:
    - fi-tgl-u2:          [PASS][10] -> [SKIP][11] ([i915#668]) +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-tgl-u2/igt@kms_psr@primary_page_flip.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/fi-tgl-u2/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][12] ([i915#5257])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][13] ([fdo#109271] / [i915#3428] / [i915#4312])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-6:          [FAIL][14] ([i915#4032]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/bat-dg1-6/igt@i915_pm_rps@basic-api.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/bat-dg1-6/igt@i915_pm_rps@basic-api.html

  * igt@i915_suspend@system-suspend-without-i915:
    - {fi-tgl-dsi}:       [DMESG-WARN][16] ([i915#1982]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-tgl-dsi/igt@i915_suspend@system-suspend-without-i915.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/fi-tgl-dsi/igt@i915_suspend@system-suspend-without-i915.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-u2:          [DMESG-WARN][18] ([i915#402]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-tgl-u2/igt@kms_busy@basic@flip.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/fi-tgl-u2/igt@kms_busy@basic@flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5193]: https://gitlab.freedesktop.org/drm/intel/issues/5193
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5329]: https://gitlab.freedesktop.org/drm/intel/issues/5329
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668


Build changes
-------------

  * Linux: CI_DRM_11503 -> Patchwork_102719v1

  CI-20190529: 20190529
  CI_DRM_11503: 000a595e443e99065d0ea00993a60eef24276e5f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6437: ea0144ed6ccb66b977f204b4d53b6062ed1cc8bc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102719v1: 000a595e443e99065d0ea00993a60eef24276e5f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a625a16fab17 drm/i915: Remove the XELPD specific AUX and DDI power domains
92b76ed6ceab drm/i915: Remove duplicate DDI/AUX power domain mappings
ac0adc30cda4 drm/i915: Remove the ICL specific TBT power domains
225c3b5206bf drm/i915: Remove the aliasing of power domain enum values
c702d1a0ff55 drm/i915: Sanitize the port -> DDI/AUX power domain mapping for each platform
159639939876 drm/i915: Sanitize the ADL-S power well definition
ddedb363d1a0 drm/i915: Simplify the DG1 power well descriptors
0821f4dbd749 drm/i915: Allow platforms to share power well descriptors
c4abee7bb33a drm/i915: Simplify power well definitions by adding power well instances
53e0bb63ce8d drm/i915: Convert the u64 power well domains mask to a bitmap
218e6faf3ce5 drm/i915: Convert the power well descriptor domain mask to an array of domains
8ec6e7e3fa12 drm/i915: Sanitize the power well names
aadf5d31e8cd drm/i915: Rename the power domain names to end with pipes/ports
559c2343691e drm/i915: Move the HSW power well flags to a common bitfield
a297d86467e6 drm/i915: Move the dg2 fixed_enable_delay power well param to a common bitfield
b660e526b23e drm/i915: Move the power domain->well mappings to intel_display_power_map.c
3bd5e1124cef drm/i915: Unexport the for_each_power_well() macros
a631555836f1 drm/i915: Move per-platform power well hooks to intel_display_power_well.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/index.html

--===============5103817909430945872==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,01/18] drm/i915: Move per-platform power well hooks to intel_display_power_well.c</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102719/">https://patchwork.freedesktop.org/series/102719/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11503 -&gt; Patchwork_102719v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/index.html</p>
<h2>Participating hosts (49 -&gt; 45)</h2>
<p>Missing    (4): fi-kbl-soraka fi-bsw-cyan fi-icl-u2 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102719v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/bat-dg2-8/igt@gem_exec_suspend@basic-s0@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5193">i915#5193</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/bat-dg2-8/igt@gem_exec_suspend@basic-s0@lmem0.html">DMESG-WARN</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/bat-rpls-2/igt@gem_lmem_swapping@basic.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-ehl-2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/fi-ehl-2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5193">i915#5193</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102719v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-tgl-u2/igt@kms_psr@primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/fi-tgl-u2/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/668">i915#668</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/bat-dg1-6/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4032">i915#4032</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/bat-dg1-6/igt@i915_pm_rps@basic-api.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@system-suspend-without-i915:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-tgl-dsi/igt@i915_suspend@system-suspend-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/fi-tgl-dsi/igt@i915_suspend@system-suspend-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-tgl-u2/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v1/fi-tgl-u2/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11503 -&gt; Patchwork_102719v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11503: 000a595e443e99065d0ea00993a60eef24276e5f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6437: ea0144ed6ccb66b977f204b4d53b6062ed1cc8bc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102719v1: 000a595e443e99065d0ea00993a60eef24276e5f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a625a16fab17 drm/i915: Remove the XELPD specific AUX and DDI power domains<br />
92b76ed6ceab drm/i915: Remove duplicate DDI/AUX power domain mappings<br />
ac0adc30cda4 drm/i915: Remove the ICL specific TBT power domains<br />
225c3b5206bf drm/i915: Remove the aliasing of power domain enum values<br />
c702d1a0ff55 drm/i915: Sanitize the port -&gt; DDI/AUX power domain mapping for each platform<br />
159639939876 drm/i915: Sanitize the ADL-S power well definition<br />
ddedb363d1a0 drm/i915: Simplify the DG1 power well descriptors<br />
0821f4dbd749 drm/i915: Allow platforms to share power well descriptors<br />
c4abee7bb33a drm/i915: Simplify power well definitions by adding power well instances<br />
53e0bb63ce8d drm/i915: Convert the u64 power well domains mask to a bitmap<br />
218e6faf3ce5 drm/i915: Convert the power well descriptor domain mask to an array of domains<br />
8ec6e7e3fa12 drm/i915: Sanitize the power well names<br />
aadf5d31e8cd drm/i915: Rename the power domain names to end with pipes/ports<br />
559c2343691e drm/i915: Move the HSW power well flags to a common bitfield<br />
a297d86467e6 drm/i915: Move the dg2 fixed_enable_delay power well param to a common bitfield<br />
b660e526b23e drm/i915: Move the power domain-&gt;well mappings to intel_display_power_map.c<br />
3bd5e1124cef drm/i915: Unexport the for_each_power_well() macros<br />
a631555836f1 drm/i915: Move per-platform power well hooks to intel_display_power_well.c</p>

</body>
</html>

--===============5103817909430945872==--
