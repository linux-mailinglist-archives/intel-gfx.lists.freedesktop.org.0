Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 343A0A98A1E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 14:50:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4D1A10E1C5;
	Wed, 23 Apr 2025 12:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F164A10E1B7;
 Wed, 23 Apr 2025 12:49:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5597238493595743196=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Rework/Correction_on_mini?=
 =?utf-8?q?mum_hblank_calculation_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Apr 2025 12:49:56 -0000
Message-ID: <174541259699.355.10475307833306073261@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250423-hblank-v4-0-8e513cc54652@intel.com>
In-Reply-To: <20250423-hblank-v4-0-8e513cc54652@intel.com>
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

--===============5597238493595743196==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Rework/Correction on minimum hblank calculation (rev4)
URL   : https://patchwork.freedesktop.org/series/147361/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16451 -> Patchwork_147361v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_147361v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_147361v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/index.html

Participating hosts (40 -> 42)
------------------------------

  Additional (2): fi-cfl-8109u fi-cfl-guc 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_147361v4:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-adlp-6:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-adlp-6/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-adlp-6/igt@i915_module_load@load.html
    - fi-rkl-11600:       [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-rkl-11600/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-rkl-11600/igt@i915_module_load@load.html
    - fi-skl-6600u:       [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-skl-6600u/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-skl-6600u/igt@i915_module_load@load.html
    - bat-arlh-3:         [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-arlh-3/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-arlh-3/igt@i915_module_load@load.html
    - bat-dg1-7:          [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg1-7/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-dg1-7/igt@i915_module_load@load.html
    - bat-dg2-13:         [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg2-13/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-dg2-13/igt@i915_module_load@load.html
    - fi-glk-j4005:       [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-glk-j4005/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-glk-j4005/igt@i915_module_load@load.html
    - bat-adlp-9:         [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-adlp-9/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-adlp-9/igt@i915_module_load@load.html
    - bat-twl-2:          [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-twl-2/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-twl-2/igt@i915_module_load@load.html
    - bat-dg2-11:         [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg2-11/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-dg2-11/igt@i915_module_load@load.html
    - bat-rpls-4:         [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-rpls-4/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-rpls-4/igt@i915_module_load@load.html
    - fi-kbl-7567u:       [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-kbl-7567u/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-kbl-7567u/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][25] -> [ABORT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-cfl-8700k/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-cfl-8700k/igt@i915_module_load@load.html
    - bat-twl-1:          [PASS][27] -> [ABORT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-twl-1/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-twl-1/igt@i915_module_load@load.html
    - bat-apl-1:          [PASS][29] -> [ABORT][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-apl-1/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-apl-1/igt@i915_module_load@load.html
    - bat-dg2-14:         [PASS][31] -> [ABORT][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg2-14/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-dg2-14/igt@i915_module_load@load.html
    - bat-arls-5:         [PASS][33] -> [ABORT][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-arls-5/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-arls-5/igt@i915_module_load@load.html
    - bat-rplp-1:         [PASS][35] -> [ABORT][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-rplp-1/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-rplp-1/igt@i915_module_load@load.html
    - fi-cfl-guc:         NOTRUN -> [ABORT][37]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-cfl-guc/igt@i915_module_load@load.html
    - bat-mtlp-9:         [PASS][38] -> [ABORT][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-mtlp-9/igt@i915_module_load@load.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-mtlp-9/igt@i915_module_load@load.html
    - bat-arls-6:         [PASS][40] -> [ABORT][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-arls-6/igt@i915_module_load@load.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-arls-6/igt@i915_module_load@load.html
    - bat-dg2-9:          [PASS][42] -> [ABORT][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg2-9/igt@i915_module_load@load.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-dg2-9/igt@i915_module_load@load.html
    - fi-hsw-4770:        [PASS][44] -> [ABORT][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-hsw-4770/igt@i915_module_load@load.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-hsw-4770/igt@i915_module_load@load.html
    - fi-cfl-8109u:       NOTRUN -> [ABORT][46]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-cfl-8109u/igt@i915_module_load@load.html
    - bat-mtlp-8:         [PASS][47] -> [ABORT][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-mtlp-8/igt@i915_module_load@load.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-mtlp-8/igt@i915_module_load@load.html
    - bat-dg2-8:          [PASS][49] -> [ABORT][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg2-8/igt@i915_module_load@load.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-dg2-8/igt@i915_module_load@load.html
    - bat-adls-6:         [PASS][51] -> [ABORT][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-adls-6/igt@i915_module_load@load.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-adls-6/igt@i915_module_load@load.html

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-mtlp-6:         [PASS][53] -> [ABORT][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html
    - bat-kbl-2:          [PASS][55] -> [ABORT][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-x1275:       [PASS][57] -> [ABORT][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-8809g:       [PASS][59] -> [ABORT][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-guc:         [PASS][61] -> [ABORT][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_hdmi_inject@inject-audio:
    - bat-dg1-6:          [PASS][63] -> [ABORT][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg1-6/igt@kms_hdmi_inject@inject-audio.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-dg1-6/igt@kms_hdmi_inject@inject-audio.html

  


Build changes
-------------

  * Linux: CI_DRM_16451 -> Patchwork_147361v4

  CI-20190529: 20190529
  CI_DRM_16451: d6a6684585dd1c86a8ad88d592c73193482cf5a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8332: 8c1b777b5e59af1e17be96470dcc8ff9fb14ff5b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_147361v4: d6a6684585dd1c86a8ad88d592c73193482cf5a1 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/index.html

--===============5597238493595743196==
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
<tr><td><b>Series:</b></td><td>Rework/Correction on minimum hblank calculation (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/147361/">https://patchwork.freedesktop.org/series/147361/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16451 -&gt; Patchwork_147361v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_147361v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_147361v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/index.html</p>
<h2>Participating hosts (40 -&gt; 42)</h2>
<p>Additional (2): fi-cfl-8109u fi-cfl-guc </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_147361v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-adlp-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-rkl-11600/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-skl-6600u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-skl-6600u/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-arlh-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-arlh-3/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg1-7/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-dg1-7/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg2-13/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-dg2-13/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-glk-j4005/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-glk-j4005/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-adlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-adlp-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-twl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-twl-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-dg2-11/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-rpls-4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-rpls-4/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-kbl-7567u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-kbl-7567u/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-cfl-8700k/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-twl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-twl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-apl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-apl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg2-14/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-dg2-14/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-arls-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-arls-5/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-rplp-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-rplp-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-cfl-guc/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-mtlp-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-arls-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-arls-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-dg2-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-hsw-4770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-hsw-4770/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-cfl-8109u/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-mtlp-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-mtlp-8/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-dg2-8/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-adls-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-adls-6/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg1-6/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v4/bat-dg1-6/igt@kms_hdmi_inject@inject-audio.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16451 -&gt; Patchwork_147361v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16451: d6a6684585dd1c86a8ad88d592c73193482cf5a1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8332: 8c1b777b5e59af1e17be96470dcc8ff9fb14ff5b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_147361v4: d6a6684585dd1c86a8ad88d592c73193482cf5a1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5597238493595743196==--
