Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF85297D167
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 08:59:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CB1E10E220;
	Fri, 20 Sep 2024 06:59:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8CF410E1B2;
 Fri, 20 Sep 2024 06:59:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5445240807219445204=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_revampe?=
 =?utf-8?q?d_crtc_iterators?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2024 06:59:30 -0000
Message-ID: <172681557094.1049317.5827794758435956499@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1726776703.git.jani.nikula@intel.com>
In-Reply-To: <cover.1726776703.git.jani.nikula@intel.com>
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

--===============5445240807219445204==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: revamped crtc iterators
URL   : https://patchwork.freedesktop.org/series/138886/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15440 -> Patchwork_138886v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_138886v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_138886v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/index.html

Participating hosts (39 -> 35)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (5): fi-kbl-7567u fi-tgl-1115g4 fi-snb-2520m fi-cfl-8109u bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_138886v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-arls-1:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-arls-1/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-arls-1/igt@i915_module_load@load.html
    - fi-blb-e6850:       [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-blb-e6850/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-blb-e6850/igt@i915_module_load@load.html
    - fi-bsw-n3050:       NOTRUN -> [ABORT][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-bsw-n3050/igt@i915_module_load@load.html
    - bat-adlp-6:         [PASS][6] -> [ABORT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-adlp-6/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-adlp-6/igt@i915_module_load@load.html
    - bat-arlh-2:         [PASS][8] -> [ABORT][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-arlh-2/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-arlh-2/igt@i915_module_load@load.html
    - fi-rkl-11600:       [PASS][10] -> [ABORT][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-rkl-11600/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-rkl-11600/igt@i915_module_load@load.html
    - fi-pnv-d510:        [PASS][12] -> [ABORT][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-pnv-d510/igt@i915_module_load@load.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-pnv-d510/igt@i915_module_load@load.html
    - bat-dg1-7:          [PASS][14] -> [ABORT][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-dg1-7/igt@i915_module_load@load.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-dg1-7/igt@i915_module_load@load.html
    - bat-dg2-13:         [PASS][16] -> [ABORT][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-dg2-13/igt@i915_module_load@load.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-dg2-13/igt@i915_module_load@load.html
    - fi-glk-j4005:       [PASS][18] -> [ABORT][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-glk-j4005/igt@i915_module_load@load.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-glk-j4005/igt@i915_module_load@load.html
    - bat-adlp-9:         [PASS][20] -> [ABORT][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-adlp-9/igt@i915_module_load@load.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-adlp-9/igt@i915_module_load@load.html
    - bat-twl-2:          [PASS][22] -> [ABORT][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-twl-2/igt@i915_module_load@load.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-twl-2/igt@i915_module_load@load.html
    - bat-dg2-11:         [PASS][24] -> [ABORT][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-dg2-11/igt@i915_module_load@load.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-dg2-11/igt@i915_module_load@load.html
    - bat-rpls-4:         [PASS][26] -> [ABORT][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-rpls-4/igt@i915_module_load@load.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-rpls-4/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][28] -> [ABORT][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-cfl-8700k/igt@i915_module_load@load.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-cfl-8700k/igt@i915_module_load@load.html
    - bat-twl-1:          [PASS][30] -> [ABORT][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-twl-1/igt@i915_module_load@load.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-twl-1/igt@i915_module_load@load.html
    - bat-dg2-14:         [PASS][32] -> [ABORT][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-dg2-14/igt@i915_module_load@load.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-dg2-14/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][34] -> [ABORT][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-elk-e7500/igt@i915_module_load@load.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-elk-e7500/igt@i915_module_load@load.html
    - bat-adlm-1:         [PASS][36] -> [ABORT][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-adlm-1/igt@i915_module_load@load.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-adlm-1/igt@i915_module_load@load.html
    - bat-rplp-1:         [PASS][38] -> [ABORT][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-rplp-1/igt@i915_module_load@load.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-rplp-1/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][40] -> [ABORT][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-cfl-guc/igt@i915_module_load@load.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-cfl-guc/igt@i915_module_load@load.html
    - bat-mtlp-6:         [PASS][42] -> [ABORT][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-mtlp-6/igt@i915_module_load@load.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-mtlp-6/igt@i915_module_load@load.html
    - bat-dg2-9:          [PASS][44] -> [ABORT][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-dg2-9/igt@i915_module_load@load.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-dg2-9/igt@i915_module_load@load.html
    - bat-adlp-11:        [PASS][46] -> [ABORT][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-adlp-11/igt@i915_module_load@load.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-adlp-11/igt@i915_module_load@load.html
    - bat-arls-2:         [PASS][48] -> [ABORT][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-arls-2/igt@i915_module_load@load.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-arls-2/igt@i915_module_load@load.html
    - fi-ivb-3770:        [PASS][50] -> [ABORT][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-ivb-3770/igt@i915_module_load@load.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-ivb-3770/igt@i915_module_load@load.html
    - bat-mtlp-8:         [PASS][52] -> [ABORT][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-mtlp-8/igt@i915_module_load@load.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-mtlp-8/igt@i915_module_load@load.html
    - bat-dg2-8:          [PASS][54] -> [ABORT][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-dg2-8/igt@i915_module_load@load.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-dg2-8/igt@i915_module_load@load.html

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-kbl-2:          [PASS][56] -> [ABORT][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-x1275:       [PASS][58] -> [ABORT][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-8809g:       [PASS][60] -> [ABORT][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-guc:         [PASS][62] -> [ABORT][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-apl-1:          [DMESG-WARN][64] ([i915#180]) -> [ABORT][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-apl-1/igt@i915_module_load@load.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-apl-1/igt@i915_module_load@load.html
    - bat-arls-5:         [DMESG-WARN][66] ([i915#11637]) -> [ABORT][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-arls-5/igt@i915_module_load@load.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-arls-5/igt@i915_module_load@load.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-arlh-3}:       [PASS][68] -> [ABORT][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-arlh-3/igt@i915_module_load@load.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-arlh-3/igt@i915_module_load@load.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#11637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180


Build changes
-------------

  * Linux: CI_DRM_15440 -> Patchwork_138886v1

  CI-20190529: 20190529
  CI_DRM_15440: d4340c1de6d417c7b3edac187c3af011b146701a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8028: 8028
  Patchwork_138886v1: d4340c1de6d417c7b3edac187c3af011b146701a @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/index.html

--===============5445240807219445204==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: revamped crtc iterators</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138886/">https://patchwork.freedesktop.org/series/138886/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15440 -&gt; Patchwork_138886v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_138886v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_138886v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/index.html</p>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (5): fi-kbl-7567u fi-tgl-1115g4 fi-snb-2520m fi-cfl-8109u bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_138886v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-arls-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-arls-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-blb-e6850/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-blb-e6850/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-bsw-n3050/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-adlp-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-arlh-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-arlh-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-rkl-11600/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-pnv-d510/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-dg1-7/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-dg1-7/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-dg2-13/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-dg2-13/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-glk-j4005/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-glk-j4005/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-adlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-adlp-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-twl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-twl-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-dg2-11/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-rpls-4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-rpls-4/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-cfl-8700k/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-twl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-twl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-dg2-14/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-dg2-14/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-elk-e7500/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-adlm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-adlm-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-rplp-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-rplp-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-cfl-guc/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-mtlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-mtlp-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-dg2-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-adlp-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-arls-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-arls-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-ivb-3770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-ivb-3770/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-mtlp-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-mtlp-8/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-dg2-8/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-apl-1/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-apl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-arls-5/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-arls-5/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15440/bat-arlh-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138886v1/bat-arlh-3/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15440 -&gt; Patchwork_138886v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15440: d4340c1de6d417c7b3edac187c3af011b146701a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8028: 8028<br />
  Patchwork_138886v1: d4340c1de6d417c7b3edac187c3af011b146701a @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5445240807219445204==--
