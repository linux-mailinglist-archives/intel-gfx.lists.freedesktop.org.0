Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB727008F3
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 15:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33F9810E6A4;
	Fri, 12 May 2023 13:17:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8FDCB10E28A;
 Fri, 12 May 2023 13:17:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 864E0AA917;
 Fri, 12 May 2023 13:17:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4129351122395559902=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 12 May 2023 13:17:08 -0000
Message-ID: <168389742850.26102.16548694216479913749@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230512110444.1448231-1-jani.nikula@intel.com>
In-Reply-To: <20230512110444.1448231-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/dpll=3A_drop_a_useless_I91?=
 =?utf-8?b?NV9TVEFURV9XQVJOX09OKCk=?=
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

--===============4129351122395559902==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915/dpll: drop a useless I915_STATE_WARN_ON()
URL   : https://patchwork.freedesktop.org/series/117685/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13142 -> Patchwork_117685v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_117685v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_117685v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/index.html

Participating hosts (40 -> 38)
------------------------------

  Missing    (2): fi-snb-2520m bat-mtlp-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_117685v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-ilk-650:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-ilk-650/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-ilk-650/igt@i915_module_load@load.html
    - fi-blb-e6850:       [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-blb-e6850/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-blb-e6850/igt@i915_module_load@load.html
    - fi-bsw-n3050:       [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-bsw-n3050/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-bsw-n3050/igt@i915_module_load@load.html
    - fi-rkl-11600:       [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-rkl-11600/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-rkl-11600/igt@i915_module_load@load.html
    - bat-adls-5:         [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-adls-5/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-adls-5/igt@i915_module_load@load.html
    - bat-dg1-5:          [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-dg1-5/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-dg1-5/igt@i915_module_load@load.html
    - bat-adln-1:         [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-adln-1/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-adln-1/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-cfl-8700k/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-cfl-8700k/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-elk-e7500/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-elk-e7500/igt@i915_module_load@load.html
    - bat-rplp-1:         [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-rplp-1/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-rplp-1/igt@i915_module_load@load.html
    - fi-hsw-4770:        [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-hsw-4770/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-hsw-4770/igt@i915_module_load@load.html
    - fi-ivb-3770:        [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-ivb-3770/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-ivb-3770/igt@i915_module_load@load.html

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-adlm-1:         [PASS][25] -> [ABORT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html
    - bat-dg1-7:          [PASS][27] -> [ABORT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-dg1-7/igt@kms_force_connector_basic@force-connector-state.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-dg1-7/igt@kms_force_connector_basic@force-connector-state.html
    - fi-bsw-nick:        [PASS][29] -> [ABORT][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-bsw-nick/igt@kms_force_connector_basic@force-connector-state.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-bsw-nick/igt@kms_force_connector_basic@force-connector-state.html
    - bat-rpls-2:         [PASS][31] -> [ABORT][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-rpls-2/igt@kms_force_connector_basic@force-connector-state.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-rpls-2/igt@kms_force_connector_basic@force-connector-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_117685v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - bat-jsl-1:          [PASS][33] -> [ABORT][34] ([i915#8189])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-jsl-1/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-jsl-1/igt@i915_module_load@load.html
    - bat-adlp-6:         [PASS][35] -> [ABORT][36] ([i915#8189])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-adlp-6/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-adlp-6/igt@i915_module_load@load.html
    - fi-skl-6600u:       [PASS][37] -> [ABORT][38] ([i915#8189])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-skl-6600u/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-skl-6600u/igt@i915_module_load@load.html
    - fi-apl-guc:         [PASS][39] -> [ABORT][40] ([i915#8189])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-apl-guc/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-apl-guc/igt@i915_module_load@load.html
    - bat-jsl-3:          [PASS][41] -> [ABORT][42] ([i915#8189])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-jsl-3/igt@i915_module_load@load.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-jsl-3/igt@i915_module_load@load.html
    - fi-glk-j4005:       [PASS][43] -> [ABORT][44] ([i915#8143])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-glk-j4005/igt@i915_module_load@load.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-glk-j4005/igt@i915_module_load@load.html
    - bat-adlp-9:         [PASS][45] -> [ABORT][46] ([i915#8189])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-adlp-9/igt@i915_module_load@load.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-adlp-9/igt@i915_module_load@load.html
    - fi-skl-guc:         [PASS][47] -> [ABORT][48] ([i915#8189])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-skl-guc/igt@i915_module_load@load.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-skl-guc/igt@i915_module_load@load.html
    - bat-dg2-11:         [PASS][49] -> [ABORT][50] ([i915#7953] / [i915#8189])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-dg2-11/igt@i915_module_load@load.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-dg2-11/igt@i915_module_load@load.html
    - fi-kbl-7567u:       [PASS][51] -> [ABORT][52] ([i915#8141])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-kbl-7567u/igt@i915_module_load@load.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-kbl-7567u/igt@i915_module_load@load.html
    - fi-tgl-1115g4:      [PASS][53] -> [ABORT][54] ([i915#7953] / [i915#8189])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-tgl-1115g4/igt@i915_module_load@load.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-tgl-1115g4/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][55] -> [ABORT][56] ([i915#8141])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-cfl-guc/igt@i915_module_load@load.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-cfl-guc/igt@i915_module_load@load.html
    - bat-dg2-9:          [PASS][57] -> [ABORT][58] ([i915#7953] / [i915#8189])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-dg2-9/igt@i915_module_load@load.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-dg2-9/igt@i915_module_load@load.html
    - fi-cfl-8109u:       [PASS][59] -> [ABORT][60] ([i915#8141])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-cfl-8109u/igt@i915_module_load@load.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-cfl-8109u/igt@i915_module_load@load.html
    - bat-dg2-8:          [PASS][61] -> [ABORT][62] ([i915#7953] / [i915#8189])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-dg2-8/igt@i915_module_load@load.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-dg2-8/igt@i915_module_load@load.html

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-rpls-1:         [PASS][63] -> [ABORT][64] ([i915#7953])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-x1275:       [PASS][65] -> [ABORT][66] ([i915#8299])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-guc:         [PASS][67] -> [ABORT][68] ([i915#8299])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#7953]: https://gitlab.freedesktop.org/drm/intel/issues/7953
  [i915#8141]: https://gitlab.freedesktop.org/drm/intel/issues/8141
  [i915#8143]: https://gitlab.freedesktop.org/drm/intel/issues/8143
  [i915#8189]: https://gitlab.freedesktop.org/drm/intel/issues/8189
  [i915#8299]: https://gitlab.freedesktop.org/drm/intel/issues/8299


Build changes
-------------

  * Linux: CI_DRM_13142 -> Patchwork_117685v1

  CI-20190529: 20190529
  CI_DRM_13142: feb7ce5e6311c1fe13bd46dbcd38385643323e37 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7286: a482779488f11c432d7ddcb1980691ab1603f356 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117685v1: feb7ce5e6311c1fe13bd46dbcd38385643323e37 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c2973dfb901e drm/i915/display: add i915 parameter to I915_STATE_WARN()
56a181355bad drm/i915/display: remove I915_STATE_WARN_ON()
a6580d03f82a drm/i915/crtc: replace I915_STATE_WARN_ON() with I915_STATE_WARN()
c61e3534abee drm/i915/dpll: drop a useless I915_STATE_WARN_ON()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/index.html

--===============4129351122395559902==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915/dpll: drop a useless I915_STATE_WARN_ON()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117685/">https://patchwork.freedesktop.org/series/117685/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13142 -&gt; Patchwork_117685v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_117685v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_117685v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Missing    (2): fi-snb-2520m bat-mtlp-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_117685v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-ilk-650/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-ilk-650/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-blb-e6850/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-blb-e6850/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-bsw-n3050/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-bsw-n3050/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-rkl-11600/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-adls-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-adls-5/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-dg1-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-dg1-5/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-adln-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-adln-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-cfl-8700k/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-elk-e7500/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-rplp-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-rplp-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-hsw-4770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-hsw-4770/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-ivb-3770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-ivb-3770/igt@i915_module_load@load.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>
<p>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></p>
</li>
<li>
<p>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-dg1-7/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-dg1-7/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-bsw-nick/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-bsw-nick/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></p>
</li>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-rpls-2/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-rpls-2/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117685v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-jsl-1/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>)</p>
</li>
<li>
<p>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-adlp-6/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-skl-6600u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-skl-6600u/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-apl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-apl-guc/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>)</p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-jsl-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-jsl-3/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-glk-j4005/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-glk-j4005/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8143">i915#8143</a>)</p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-adlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-adlp-9/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-skl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-skl-guc/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>)</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-dg2-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-kbl-7567u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-kbl-7567u/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8141">i915#8141</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-tgl-1115g4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-tgl-1115g4/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-cfl-guc/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8141">i915#8141</a>)</p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-dg2-9/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-cfl-8109u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-cfl-8109u/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8141">i915#8141</a>)</p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-dg2-8/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8299">i915#8299</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13142/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117685v1/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8299">i915#8299</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13142 -&gt; Patchwork_117685v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13142: feb7ce5e6311c1fe13bd46dbcd38385643323e37 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7286: a482779488f11c432d7ddcb1980691ab1603f356 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117685v1: feb7ce5e6311c1fe13bd46dbcd38385643323e37 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c2973dfb901e drm/i915/display: add i915 parameter to I915_STATE_WARN()<br />
56a181355bad drm/i915/display: remove I915_STATE_WARN_ON()<br />
a6580d03f82a drm/i915/crtc: replace I915_STATE_WARN_ON() with I915_STATE_WARN()<br />
c61e3534abee drm/i915/dpll: drop a useless I915_STATE_WARN_ON()</p>

</body>
</html>

--===============4129351122395559902==--
