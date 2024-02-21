Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC15985CE09
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 03:31:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2CAE10E5DB;
	Wed, 21 Feb 2024 02:31:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B8AF10E5DB;
 Wed, 21 Feb 2024 02:31:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6052992613167826372=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Bigjoiner_refactoring_=28re?=
 =?utf-8?q?v7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Feb 2024 02:31:28 -0000
Message-ID: <170848268804.132386.7613408173450440474@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240220220918.8310-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240220220918.8310-1-stanislav.lisovskiy@intel.com>
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

--===============6052992613167826372==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Bigjoiner refactoring (rev7)
URL   : https://patchwork.freedesktop.org/series/128311/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14305 -> Patchwork_128311v7
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_128311v7 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_128311v7, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/index.html

Participating hosts (40 -> 39)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_128311v7:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-jsl-1:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-jsl-1/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-jsl-1/igt@i915_module_load@load.html
    - bat-adlp-6:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-adlp-6/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-adlp-6/igt@i915_module_load@load.html
    - fi-rkl-11600:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-rkl-11600/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-rkl-11600/igt@i915_module_load@load.html
    - fi-apl-guc:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-apl-guc/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-apl-guc/igt@i915_module_load@load.html
    - bat-dg1-7:          [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg1-7/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-dg1-7/igt@i915_module_load@load.html
    - bat-jsl-3:          [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-jsl-3/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-jsl-3/igt@i915_module_load@load.html
    - fi-glk-j4005:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-glk-j4005/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-glk-j4005/igt@i915_module_load@load.html
    - bat-adlp-9:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-adlp-9/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-adlp-9/igt@i915_module_load@load.html
    - fi-skl-guc:         [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-skl-guc/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-skl-guc/igt@i915_module_load@load.html
    - bat-dg2-11:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-11/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-dg2-11/igt@i915_module_load@load.html
    - fi-kbl-7567u:       [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-kbl-7567u/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-kbl-7567u/igt@i915_module_load@load.html
    - bat-adln-1:         [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-adln-1/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-adln-1/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-cfl-8700k/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-cfl-8700k/igt@i915_module_load@load.html
    - bat-rplp-1:         [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-rplp-1/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-rplp-1/igt@i915_module_load@load.html
    - fi-tgl-1115g4:      [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-tgl-1115g4/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-tgl-1115g4/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-cfl-guc/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-cfl-guc/igt@i915_module_load@load.html
    - bat-dg2-9:          [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-9/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-dg2-9/igt@i915_module_load@load.html
    - fi-cfl-8109u:       [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-cfl-8109u/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-cfl-8109u/igt@i915_module_load@load.html
    - bat-mtlp-8:         [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-mtlp-8/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-mtlp-8/igt@i915_module_load@load.html
    - bat-dg2-8:          [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-8/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-dg2-8/igt@i915_module_load@load.html

  * igt@kms_busy@basic@flip:
    - fi-skl-6600u:       [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-skl-6600u/igt@kms_busy@basic@flip.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-skl-6600u/igt@kms_busy@basic@flip.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-guc:         [PASS][43] -> [ABORT][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_force_connector_basic@force-edid:
    - bat-kbl-2:          [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-kbl-2/igt@kms_force_connector_basic@force-edid.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-kbl-2/igt@kms_force_connector_basic@force-edid.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-dg2-13}:       [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-13/igt@i915_module_load@load.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-dg2-13/igt@i915_module_load@load.html
    - {bat-dg2-14}:       [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-14/igt@i915_module_load@load.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-dg2-14/igt@i915_module_load@load.html
    - {bat-adls-6}:       [PASS][51] -> [ABORT][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-adls-6/igt@i915_module_load@load.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-adls-6/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_128311v7 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10244]: https://gitlab.freedesktop.org/drm/intel/issues/10244


Build changes
-------------

  * Linux: CI_DRM_14305 -> Patchwork_128311v7

  CI-20190529: 20190529
  CI_DRM_14305: 4b8a238dee9c18201f3652695414587cd2ef6d8f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7718: 40e8b9122853f455c84afcfa56469a6bc9a0d564 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_128311v7: 4b8a238dee9c18201f3652695414587cd2ef6d8f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

97f86c53ae70 drm/i915: Fix bigjoiner case for DP2.0
529cdae39573 Start separating pipe vs transcoder set logic for bigjoiner during modeset
1155e530cc5e drm/i915/bigjoiner: Refactor bigjoiner state readout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/index.html

--===============6052992613167826372==
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
<tr><td><b>Series:</b></td><td>Bigjoiner refactoring (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128311/">https://patchwork.freedesktop.org/series/128311/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14305 -&gt; Patchwork_128311v7</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_128311v7 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_128311v7, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/index.html</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_128311v7:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-jsl-1/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-adlp-6/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-rkl-11600/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-apl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-apl-guc/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg1-7/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-dg1-7/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-jsl-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-jsl-3/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-glk-j4005/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-glk-j4005/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-adlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-adlp-9/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-skl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-skl-guc/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-dg2-11/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-kbl-7567u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-kbl-7567u/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-adln-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-adln-1/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-cfl-8700k/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-rplp-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-rplp-1/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-tgl-1115g4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-tgl-1115g4/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-cfl-guc/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-dg2-9/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-cfl-8109u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-cfl-8109u/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-mtlp-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-mtlp-8/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-dg2-8/igt@i915_module_load@load.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-skl-6600u/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-skl-6600u/igt@kms_busy@basic@flip.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-kbl-2/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-kbl-2/igt@kms_force_connector_basic@force-edid.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-13/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-dg2-13/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-14/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-dg2-14/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-adls-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v7/bat-adls-6/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128311v7 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14305 -&gt; Patchwork_128311v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14305: 4b8a238dee9c18201f3652695414587cd2ef6d8f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7718: 40e8b9122853f455c84afcfa56469a6bc9a0d564 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_128311v7: 4b8a238dee9c18201f3652695414587cd2ef6d8f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>97f86c53ae70 drm/i915: Fix bigjoiner case for DP2.0<br />
529cdae39573 Start separating pipe vs transcoder set logic for bigjoiner during modeset<br />
1155e530cc5e drm/i915/bigjoiner: Refactor bigjoiner state readout</p>

</body>
</html>

--===============6052992613167826372==--
