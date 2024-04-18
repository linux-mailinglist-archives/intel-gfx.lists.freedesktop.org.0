Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9358AA3ED
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 22:16:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95AC5113FAD;
	Thu, 18 Apr 2024 20:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3510C113FAD;
 Thu, 18 Apr 2024 20:16:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8172958120276313062=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_series_starting_with_=5B1/3?=
 =?utf-8?q?=5D_drm/i915=3A_Refactor_confusing_=5F=5Fintel=5Fgt=5Freset=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Apr 2024 20:16:43 -0000
Message-ID: <171347140321.1502081.803461303069420158@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240418171055.31371-1-nirmoy.das@intel.com>
In-Reply-To: <20240418171055.31371-1-nirmoy.das@intel.com>
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

--===============8172958120276313062==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915: Refactor confusing __intel_gt_reset()
URL   : https://patchwork.freedesktop.org/series/132616/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14606 -> Patchwork_132616v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_132616v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_132616v1, please notify your bug team (&quot;I915-ci-infra@lists.freedesktop.org&quot;) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/index.html

Participating hosts (39 -> 36)
------------------------------

  Additional (2): bat-adlm-1 fi-kbl-8809g 
  Missing    (5): fi-kbl-7567u bat-dg1-7 fi-glk-j4005 fi-elk-e7500 bat-dg2-11 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_132616v1:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - bat-atsm-1:         NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-atsm-1/igt@debugfs_test@read_all_entries.html

  * igt@kms_busy@basic@modeset:
    - fi-ilk-650:         [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/fi-ilk-650/igt@kms_busy@basic@modeset.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/fi-ilk-650/igt@kms_busy@basic@modeset.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@basic@flip:
    - {bat-mtlp-9}:       [PASS][4] -> [ABORT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-mtlp-9/igt@kms_busy@basic@flip.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-mtlp-9/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - {bat-mtlp-9}:       [PASS][6] -> [DMESG-WARN][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-mtlp-9/igt@kms_busy@basic@modeset.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-mtlp-9/igt@kms_busy@basic@modeset.html

  
Known issues
------------

  Here are the changes found in Patchwork_132616v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/fi-kbl-8809g/igt@debugfs_test@basic-hwmon.html
    - bat-adlm-1:         NOTRUN -> [SKIP][9] ([i915#3826])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-adlm-1/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@eof:
    - bat-adlm-1:         NOTRUN -> [SKIP][10] ([i915#2582]) +3 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-adlm-1/igt@fbdev@eof.html

  * igt@fbdev@info:
    - bat-adlm-1:         NOTRUN -> [SKIP][11] ([i915#1849] / [i915#2582])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-adlm-1/igt@fbdev@info.html

  * igt@gem_close_race@basic-threads:
    - fi-kbl-8809g:       NOTRUN -> [ABORT][12] ([i915#10875])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/fi-kbl-8809g/igt@gem_close_race@basic-threads.html
    - bat-adlm-1:         NOTRUN -> [DMESG-WARN][13] ([i915#10875])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-adlm-1/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@load:
    - bat-dg2-13:         [PASS][14] -> [INCOMPLETE][15] ([i915#10875])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-dg2-13/igt@i915_module_load@load.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-dg2-13/igt@i915_module_load@load.html
    - bat-dg2-8:          [PASS][16] -> [INCOMPLETE][17] ([i915#10877])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-dg2-8/igt@i915_module_load@load.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-dg2-8/igt@i915_module_load@load.html

  * igt@kms_busy@basic@modeset:
    - fi-cfl-guc:         [PASS][18] -> [INCOMPLETE][19] ([i915#10056])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/fi-cfl-guc/igt@kms_busy@basic@modeset.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/fi-cfl-guc/igt@kms_busy@basic@modeset.html
    - bat-mtlp-8:         [PASS][20] -> [DMESG-WARN][21] ([i915#10875])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-mtlp-8/igt@kms_busy@basic@modeset.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-mtlp-8/igt@kms_busy@basic@modeset.html
    - bat-adls-6:         [PASS][22] -> [ABORT][23] ([i915#10875])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-adls-6/igt@kms_busy@basic@modeset.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-adls-6/igt@kms_busy@basic@modeset.html

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - bat-jsl-1:          [PASS][24] -> [INCOMPLETE][25] ([i915#10876])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-process:
    - bat-dg2-9:          [INCOMPLETE][26] ([i915#10875]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-dg2-9/igt@gem_close_race@basic-process.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-dg2-9/igt@gem_close_race@basic-process.html

  * igt@i915_module_load@load:
    - bat-atsm-1:         [INCOMPLETE][28] ([i915#10875]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-atsm-1/igt@i915_module_load@load.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-atsm-1/igt@i915_module_load@load.html

  * igt@kms_busy@basic@modeset:
    - fi-bsw-n3050:       [DMESG-WARN][30] ([i915#10875]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/fi-bsw-n3050/igt@kms_busy@basic@modeset.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/fi-bsw-n3050/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10056]: https://gitlab.freedesktop.org/drm/intel/issues/10056
  [i915#10875]: https://gitlab.freedesktop.org/drm/intel/issues/10875
  [i915#10876]: https://gitlab.freedesktop.org/drm/intel/issues/10876
  [i915#10877]: https://gitlab.freedesktop.org/drm/intel/issues/10877
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826


Build changes
-------------

  * Linux: CI_DRM_14606 -> Patchwork_132616v1

  CI-20190529: 20190529
  CI_DRM_14606: 121bb3cb2e7ce2d6f5c35cea84c6ae308cf1da0a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7813: 66841b7d9024447be4f4f5449aaf4f021e6323e5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_132616v1: 121bb3cb2e7ce2d6f5c35cea84c6ae308cf1da0a @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/index.html

--===============8172958120276313062==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915: Refactor confusing __intel_gt_reset()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132616/">https://patchwork.freedesktop.org/series/132616/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14606 -&gt; Patchwork_132616v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_132616v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_132616v1, please notify your bug team (&quot;I915-ci-infra@lists.freedesktop.org&quot;) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/index.html</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Additional (2): bat-adlm-1 fi-kbl-8809g <br />
  Missing    (5): fi-kbl-7567u bat-dg1-7 fi-glk-j4005 fi-elk-e7500 bat-dg2-11 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_132616v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-atsm-1/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/fi-ilk-650/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/fi-ilk-650/igt@kms_busy@basic@modeset.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-mtlp-9/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-mtlp-9/igt@kms_busy@basic@flip.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-mtlp-9/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-mtlp-9/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132616v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/fi-kbl-8809g/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-adlm-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3826">i915#3826</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-adlm-1/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-adlm-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/fi-kbl-8809g/igt@gem_close_race@basic-threads.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-adlm-1/igt@gem_close_race@basic-threads.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-dg2-13/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-dg2-13/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-dg2-8/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10877">i915#10877</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/fi-cfl-guc/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/fi-cfl-guc/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10056">i915#10056</a>)</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-mtlp-8/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-mtlp-8/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-adls-6/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-adls-6/igt@kms_busy@basic@modeset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10876">i915#10876</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-dg2-9/igt@gem_close_race@basic-process.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-dg2-9/igt@gem_close_race@basic-process.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/bat-atsm-1/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/bat-atsm-1/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14606/fi-bsw-n3050/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132616v1/fi-bsw-n3050/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14606 -&gt; Patchwork_132616v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14606: 121bb3cb2e7ce2d6f5c35cea84c6ae308cf1da0a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7813: 66841b7d9024447be4f4f5449aaf4f021e6323e5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_132616v1: 121bb3cb2e7ce2d6f5c35cea84c6ae308cf1da0a @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8172958120276313062==--
