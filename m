Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D99C8AA5A1
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 01:07:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99CD810F1BA;
	Thu, 18 Apr 2024 23:07:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C49CB10F149;
 Thu, 18 Apr 2024 23:07:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4946596006651945890=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915=3A_Convert_intel?=
 =?utf-8?q?=5Fruntime=5Fpm=5Fget=5Fnoresume_towards_raw_wakeref?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Apr 2024 23:07:51 -0000
Message-ID: <171348167180.1501116.7306524191470473813@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240418221320.66644-1-rodrigo.vivi@intel.com>
In-Reply-To: <20240418221320.66644-1-rodrigo.vivi@intel.com>
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

--===============4946596006651945890==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Convert intel_runtime_pm_get_noresume towards raw wakeref
URL   : https://patchwork.freedesktop.org/series/132625/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14607 -> Patchwork_132625v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_132625v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_132625v1, please notify your bug team (&quot;I915-ci-infra@lists.freedesktop.org&quot;) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/index.html

Participating hosts (37 -> 38)
------------------------------

  Additional (5): bat-kbl-2 fi-glk-j4005 fi-elk-e7500 fi-kbl-8809g bat-jsl-1 
  Missing    (4): bat-mtlp-8 bat-dg1-7 bat-atsm-1 fi-apl-guc 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_132625v1:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - bat-dg2-11:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-dg2-11/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-dg2-11/igt@core_auth@basic-auth.html
    - bat-arls-1:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-arls-1/igt@core_auth@basic-auth.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-arls-1/igt@core_auth@basic-auth.html
    - fi-glk-j4005:       NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/fi-glk-j4005/igt@core_auth@basic-auth.html

  * igt@debugfs_test@read_all_entries:
    - bat-jsl-3:          [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-jsl-3/igt@debugfs_test@read_all_entries.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-jsl-3/igt@debugfs_test@read_all_entries.html

  * igt@fbdev@eof:
    - bat-adls-6:         [PASS][8] -> [ABORT][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-adls-6/igt@fbdev@eof.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-adls-6/igt@fbdev@eof.html

  * igt@i915_module_load@load:
    - bat-jsl-1:          NOTRUN -> [INCOMPLETE][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-jsl-1/igt@i915_module_load@load.html
    - fi-rkl-11600:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/fi-rkl-11600/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/fi-rkl-11600/igt@i915_module_load@load.html
    - bat-dg2-13:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-dg2-13/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-dg2-13/igt@i915_module_load@load.html
    - bat-dg2-9:          [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-dg2-9/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-dg2-9/igt@i915_module_load@load.html

  
#### Warnings ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adlp-6:         [SKIP][17] ([i915#9318]) -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-adlp-6/igt@debugfs_test@basic-hwmon.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-adlp-6/igt@debugfs_test@basic-hwmon.html

  * igt@i915_module_load@load:
    - bat-adlm-1:         [INCOMPLETE][19] ([i915#10875]) -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-adlm-1/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-adlm-1/igt@i915_module_load@load.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@fbdev@eof:
    - {bat-rpls-4}:       [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-rpls-4/igt@fbdev@eof.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-rpls-4/igt@fbdev@eof.html

  
Known issues
------------

  Here are the changes found in Patchwork_132625v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - fi-bsw-n3050:       [PASS][23] -> [ABORT][24] ([i915#10875])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/fi-bsw-n3050/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/fi-bsw-n3050/igt@i915_module_load@load.html
    - fi-pnv-d510:        [PASS][25] -> [ABORT][26] ([i915#10875])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/fi-pnv-d510/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/fi-pnv-d510/igt@i915_module_load@load.html
    - fi-kbl-7567u:       [PASS][27] -> [INCOMPLETE][28] ([i915#10875])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/fi-kbl-7567u/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/fi-kbl-7567u/igt@i915_module_load@load.html
    - fi-kbl-8809g:       NOTRUN -> [ABORT][29] ([i915#10875])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/fi-kbl-8809g/igt@i915_module_load@load.html
    - bat-dg2-14:         [PASS][30] -> [INCOMPLETE][31] ([i915#10875])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-dg2-14/igt@i915_module_load@load.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-dg2-14/igt@i915_module_load@load.html
    - fi-elk-e7500:       NOTRUN -> [INCOMPLETE][32] ([i915#10311])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/fi-elk-e7500/igt@i915_module_load@load.html
    - fi-bsw-nick:        [PASS][33] -> [INCOMPLETE][34] ([i915#10311])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/fi-bsw-nick/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/fi-bsw-nick/igt@i915_module_load@load.html
    - bat-kbl-2:          NOTRUN -> [INCOMPLETE][35] ([i915#10877])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-kbl-2/igt@i915_module_load@load.html
    - bat-arls-3:         [PASS][36] -> [ABORT][37] ([i915#10875])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-arls-3/igt@i915_module_load@load.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-arls-3/igt@i915_module_load@load.html
    - bat-adlp-11:        [PASS][38] -> [ABORT][39] ([i915#10875])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-adlp-11/igt@i915_module_load@load.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-adlp-11/igt@i915_module_load@load.html
    - bat-arls-2:         [PASS][40] -> [ABORT][41] ([i915#10875])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-arls-2/igt@i915_module_load@load.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-arls-2/igt@i915_module_load@load.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-dg2-8:          [INCOMPLETE][42] ([i915#10877]) -> [INCOMPLETE][43] ([i915#10875] / [i915#10877])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-dg2-8/igt@i915_module_load@load.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-dg2-8/igt@i915_module_load@load.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10311]: https://gitlab.freedesktop.org/drm/intel/issues/10311
  [i915#10875]: https://gitlab.freedesktop.org/drm/intel/issues/10875
  [i915#10877]: https://gitlab.freedesktop.org/drm/intel/issues/10877
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318


Build changes
-------------

  * Linux: CI_DRM_14607 -> Patchwork_132625v1

  CI-20190529: 20190529
  CI_DRM_14607: cabe88f47c1f688f4493de88acc532bf584efe3c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7813: 66841b7d9024447be4f4f5449aaf4f021e6323e5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_132625v1: cabe88f47c1f688f4493de88acc532bf584efe3c @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/index.html

--===============4946596006651945890==
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
<tr><td><b>Series:</b></td><td>drm/i915: Convert intel_runtime_pm_get_noresume towards raw wakeref</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132625/">https://patchwork.freedesktop.org/series/132625/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14607 -&gt; Patchwork_132625v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_132625v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_132625v1, please notify your bug team (&quot;I915-ci-infra@lists.freedesktop.org&quot;) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/index.html</p>
<h2>Participating hosts (37 -&gt; 38)</h2>
<p>Additional (5): bat-kbl-2 fi-glk-j4005 fi-elk-e7500 fi-kbl-8809g bat-jsl-1 <br />
  Missing    (4): bat-mtlp-8 bat-dg1-7 bat-atsm-1 fi-apl-guc </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_132625v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-dg2-11/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-dg2-11/igt@core_auth@basic-auth.html">ABORT</a></li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-arls-1/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-arls-1/igt@core_auth@basic-auth.html">ABORT</a></li>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/fi-glk-j4005/igt@core_auth@basic-auth.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-jsl-3/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-jsl-3/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-adls-6/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-adls-6/igt@fbdev@eof.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-jsl-1/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/fi-rkl-11600/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-dg2-13/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-dg2-13/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-dg2-9/igt@i915_module_load@load.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-adlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-adlp-6/igt@debugfs_test@basic-hwmon.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-adlm-1/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-adlm-1/igt@i915_module_load@load.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@fbdev@eof:<ul>
<li>{bat-rpls-4}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-rpls-4/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-rpls-4/igt@fbdev@eof.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132625v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/fi-bsw-n3050/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/fi-bsw-n3050/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/fi-pnv-d510/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/fi-kbl-7567u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/fi-kbl-7567u/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/fi-kbl-8809g/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-dg2-14/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-dg2-14/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/fi-elk-e7500/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10311">i915#10311</a>)</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/fi-bsw-nick/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/fi-bsw-nick/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10311">i915#10311</a>)</li>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-kbl-2/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10877">i915#10877</a>)</li>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-arls-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-arls-3/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-adlp-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-arls-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-arls-2/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14607/bat-dg2-8/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10877">i915#10877</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132625v1/bat-dg2-8/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10877">i915#10877</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14607 -&gt; Patchwork_132625v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14607: cabe88f47c1f688f4493de88acc532bf584efe3c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7813: 66841b7d9024447be4f4f5449aaf4f021e6323e5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_132625v1: cabe88f47c1f688f4493de88acc532bf584efe3c @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4946596006651945890==--
