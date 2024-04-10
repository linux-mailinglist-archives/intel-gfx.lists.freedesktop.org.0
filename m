Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E27089EE62
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 11:15:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1BA010E97D;
	Wed, 10 Apr 2024 09:15:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A925910E990;
 Wed, 10 Apr 2024 09:15:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5291048184103145657=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915=3A_Implement_Audio?=
 =?utf-8?q?_WA=5F14020863754?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Apr 2024 09:15:07 -0000
Message-ID: <171274050769.1319992.8612757526451454624@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240410081159.915205-1-uma.shankar@intel.com>
In-Reply-To: <20240410081159.915205-1-uma.shankar@intel.com>
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

--===============5291048184103145657==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Implement Audio WA_14020863754
URL   : https://patchwork.freedesktop.org/series/132255/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14552 -> Patchwork_132255v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_132255v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_132255v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/index.html

Participating hosts (37 -> 36)
------------------------------

  Additional (2): bat-kbl-2 fi-rkl-11600 
  Missing    (3): bat-dg2-11 fi-elk-e7500 bat-arls-3 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_132255v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-rkl-11600:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/fi-rkl-11600/igt@i915_module_load@load.html
    - fi-apl-guc:         [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/fi-apl-guc/igt@i915_module_load@load.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/fi-apl-guc/igt@i915_module_load@load.html
    - bat-dg1-7:          [PASS][4] -> [ABORT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-dg1-7/igt@i915_module_load@load.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-dg1-7/igt@i915_module_load@load.html
    - fi-glk-j4005:       [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/fi-glk-j4005/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/fi-glk-j4005/igt@i915_module_load@load.html
    - fi-kbl-7567u:       [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/fi-kbl-7567u/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/fi-kbl-7567u/igt@i915_module_load@load.html
    - fi-tgl-1115g4:      [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/fi-tgl-1115g4/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/fi-tgl-1115g4/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/fi-cfl-guc/igt@i915_module_load@load.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/fi-cfl-guc/igt@i915_module_load@load.html
    - bat-adls-6:         [PASS][14] -> [ABORT][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-adls-6/igt@i915_module_load@load.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-adls-6/igt@i915_module_load@load.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-arls-2:         [PASS][16] -> [ABORT][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-arls-2/igt@i915_selftest@live@gem_contexts.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-arls-2/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-cfl-8700k:       [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/fi-cfl-8700k/igt@kms_hdmi_inject@inject-audio.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/fi-cfl-8700k/igt@kms_hdmi_inject@inject-audio.html
    - bat-kbl-2:          NOTRUN -> [INCOMPLETE][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-kbl-2/igt@kms_hdmi_inject@inject-audio.html
    - bat-jsl-3:          [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-jsl-3/igt@kms_hdmi_inject@inject-audio.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-jsl-3/igt@kms_hdmi_inject@inject-audio.html
    - fi-kbl-guc:         [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
    - bat-jsl-1:          [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-jsl-1/igt@kms_hdmi_inject@inject-audio.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-jsl-1/igt@kms_hdmi_inject@inject-audio.html

  
Known issues
------------

  Here are the changes found in Patchwork_132255v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][27] ([i915#1849])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-kbl-2/igt@fbdev@info.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-dg2-9:          [PASS][28] -> [ABORT][29] ([i915#10366])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-dg2-9/igt@i915_selftest@live@gt_mocs.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-dg2-9/igt@i915_selftest@live@gt_mocs.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-kbl-2:          NOTRUN -> [SKIP][30] +21 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-kbl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-9:          [FAIL][31] ([i915#10378]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@i915_selftest@live@gt_contexts:
    - bat-dg2-8:          [ABORT][33] ([i915#10366]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html

  
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849


Build changes
-------------

  * Linux: CI_DRM_14552 -> Patchwork_132255v1

  CI-20190529: 20190529
  CI_DRM_14552: 057ec21a54cddd595a7725fa8731eb4c5bd5abff @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7803: 9669a17ae56f1dcd22ba4c5cb39b3cd334a46862 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_132255v1: 057ec21a54cddd595a7725fa8731eb4c5bd5abff @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e8f7a09a4c20 drm/i915: Implement Audio WA_14020863754

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/index.html

--===============5291048184103145657==
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
<tr><td><b>Series:</b></td><td>drm/i915: Implement Audio WA_14020863754</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132255/">https://patchwork.freedesktop.org/series/132255/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14552 -&gt; Patchwork_132255v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_132255v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_132255v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Additional (2): bat-kbl-2 fi-rkl-11600 <br />
  Missing    (3): bat-dg2-11 fi-elk-e7500 bat-arls-3 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_132255v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/fi-rkl-11600/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/fi-apl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/fi-apl-guc/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-dg1-7/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-dg1-7/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/fi-glk-j4005/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/fi-glk-j4005/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/fi-kbl-7567u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/fi-kbl-7567u/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/fi-tgl-1115g4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/fi-tgl-1115g4/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/fi-cfl-guc/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-adls-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-adls-6/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-arls-2/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-arls-2/igt@i915_selftest@live@gem_contexts.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/fi-cfl-8700k/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/fi-cfl-8700k/igt@kms_hdmi_inject@inject-audio.html">INCOMPLETE</a></li>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-kbl-2/igt@kms_hdmi_inject@inject-audio.html">INCOMPLETE</a></li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-jsl-3/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-jsl-3/igt@kms_hdmi_inject@inject-audio.html">INCOMPLETE</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">ABORT</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-jsl-1/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-jsl-1/igt@kms_hdmi_inject@inject-audio.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132255v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-dg2-9/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-dg2-9/igt@i915_selftest@live@gt_mocs.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-kbl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +21 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132255v1/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14552 -&gt; Patchwork_132255v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14552: 057ec21a54cddd595a7725fa8731eb4c5bd5abff @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7803: 9669a17ae56f1dcd22ba4c5cb39b3cd334a46862 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_132255v1: 057ec21a54cddd595a7725fa8731eb4c5bd5abff @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e8f7a09a4c20 drm/i915: Implement Audio WA_14020863754</p>

</body>
</html>

--===============5291048184103145657==--
