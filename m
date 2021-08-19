Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C623F172C
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 12:19:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B72F86E8A4;
	Thu, 19 Aug 2021 10:19:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E22E76E8A3;
 Thu, 19 Aug 2021 10:19:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB983AADDA;
 Thu, 19 Aug 2021 10:19:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0841913756246263498=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Aug 2021 10:19:24 -0000
Message-ID: <162936836487.11706.9142913431792359773@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210819093419.295636-1-matthew.auld@intel.com>
In-Reply-To: <20210819093419.295636-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/buddy=3A_add_some_pre?=
 =?utf-8?q?tty_printing?=
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

--===============0841913756246263498==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915/buddy: add some pretty printing
URL   : https://patchwork.freedesktop.org/series/93819/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10498 -> Patchwork_20853
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/index.html

Known issues
------------

  Here are the changes found in Patchwork_20853 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [PASS][1] -> [DMESG-FAIL][2] ([i915#3928])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][3] ([i915#3928])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/fi-rkl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-tgl-1115g4:      [DMESG-WARN][4] ([i915#4002]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-1115g4/igt@i915_module_load@reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/fi-tgl-1115g4/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gtt:
    - {fi-tgl-dsi}:       [DMESG-WARN][6] -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-dsi/igt@i915_selftest@live@gtt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/fi-tgl-dsi/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@perf:
    - {fi-tgl-dsi}:       [DMESG-WARN][8] ([i915#2867]) -> [PASS][9] +6 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-dsi/igt@i915_selftest@live@perf.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/fi-tgl-dsi/igt@i915_selftest@live@perf.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-1115g4:      [DMESG-WARN][10] ([i915#4002]) -> [DMESG-FAIL][11] ([i915#1888])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@module-reload:
    - fi-tgl-1115g4:      [INCOMPLETE][12] -> [INCOMPLETE][13] ([i915#1385])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html

  * igt@kms_psr@primary_page_flip:
    - fi-tgl-1115g4:      [SKIP][14] ([i915#1072]) -> [SKIP][15] ([i915#1072] / [i915#1385])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1385]: https://gitlab.freedesktop.org/drm/intel/issues/1385
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928
  [i915#4002]: https://gitlab.freedesktop.org/drm/intel/issues/4002


Participating hosts (35 -> 34)
------------------------------

  Missing    (1): fi-bsw-cyan 


Build changes
-------------

  * Linux: CI_DRM_10498 -> Patchwork_20853

  CI-20190529: 20190529
  CI_DRM_10498: b66f2ed13db3f8f7bcf616cea0e59ebe8728b131 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6178: 146260200f9a6d4536e48a195e2ab49a07d4f0c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20853: fa9e94eff7ca7b08e89ecc38f18d1faa67f89951 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fa9e94eff7ca drm/i915/debugfs: hook up ttm_resource_manager_debug
1e4418171eeb drm/i915/buddy: add some pretty printing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/index.html

--===============0841913756246263498==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915/buddy: add some pretty printing</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93819/">https://patchwork.freedesktop.org/series/93819/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10498 -&gt; Patchwork_20853</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20853 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-1115g4/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/fi-tgl-1115g4/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-dsi/igt@i915_selftest@live@gtt.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/fi-tgl-dsi/igt@i915_selftest@live@gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-dsi/igt@i915_selftest@live@perf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/fi-tgl-dsi/igt@i915_selftest@live@perf.html">PASS</a> +6 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1385">i915#1385</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1385">i915#1385</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Missing    (1): fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10498 -&gt; Patchwork_20853</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10498: b66f2ed13db3f8f7bcf616cea0e59ebe8728b131 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6178: 146260200f9a6d4536e48a195e2ab49a07d4f0c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20853: fa9e94eff7ca7b08e89ecc38f18d1faa67f89951 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fa9e94eff7ca drm/i915/debugfs: hook up ttm_resource_manager_debug<br />
1e4418171eeb drm/i915/buddy: add some pretty printing</p>

</body>
</html>

--===============0841913756246263498==--
