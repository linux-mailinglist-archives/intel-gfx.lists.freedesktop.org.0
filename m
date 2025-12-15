Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1478CCBF6D1
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 19:26:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1643A10E4E7;
	Mon, 15 Dec 2025 18:26:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01CB510E4BD;
 Mon, 15 Dec 2025 18:26:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1963380065641776452=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_All_p?=
 =?utf-8?q?atches_to_make_PREEMPT=5FRT_work_on_i915_+_xe=2E?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Dec 2025 18:26:47 -0000
Message-ID: <176582320788.89561.7281717739741460036@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251215154740.1738648-18-dev@lankhorst.se>
In-Reply-To: <20251215154740.1738648-18-dev@lankhorst.se>
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

--===============1963380065641776452==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: All patches to make PREEMPT_RT work on i915 + xe.
URL   : https://patchwork.freedesktop.org/series/159035/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17686 -> Patchwork_159035v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_159035v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_159035v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/index.html

Participating hosts (42 -> 41)
------------------------------

  Additional (1): bat-adls-6 
  Missing    (2): bat-dg2-13 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_159035v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-ilk-650:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-ilk-650/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-ilk-650/igt@i915_module_load@load.html
    - bat-jsl-1:          [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-jsl-1/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-jsl-1/igt@i915_module_load@load.html
    - fi-bsw-n3050:       [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-bsw-n3050/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-bsw-n3050/igt@i915_module_load@load.html
    - bat-adlp-6:         [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-adlp-6/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-adlp-6/igt@i915_module_load@load.html
    - fi-skl-6600u:       [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-skl-6600u/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-skl-6600u/igt@i915_module_load@load.html
    - bat-arlh-3:         [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-arlh-3/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-arlh-3/igt@i915_module_load@load.html
    - fi-pnv-d510:        [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-pnv-d510/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-pnv-d510/igt@i915_module_load@load.html
    - bat-dg1-7:          [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-dg1-7/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-dg1-7/igt@i915_module_load@load.html
    - fi-glk-j4005:       [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-glk-j4005/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-glk-j4005/igt@i915_module_load@load.html
    - bat-adlp-9:         [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-adlp-9/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-adlp-9/igt@i915_module_load@load.html
    - bat-twl-2:          [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-twl-2/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-twl-2/igt@i915_module_load@load.html
    - bat-dg2-11:         [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-dg2-11/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-dg2-11/igt@i915_module_load@load.html
    - bat-rpls-4:         [PASS][25] -> [ABORT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-rpls-4/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-rpls-4/igt@i915_module_load@load.html
    - fi-kbl-7567u:       [PASS][27] -> [ABORT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-kbl-7567u/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-kbl-7567u/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][29] -> [ABORT][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-cfl-8700k/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-cfl-8700k/igt@i915_module_load@load.html
    - bat-twl-1:          [PASS][31] -> [ABORT][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-twl-1/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-twl-1/igt@i915_module_load@load.html
    - bat-jsl-5:          [PASS][33] -> [ABORT][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-jsl-5/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-jsl-5/igt@i915_module_load@load.html
    - bat-apl-1:          [PASS][35] -> [ABORT][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-apl-1/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-apl-1/igt@i915_module_load@load.html
    - bat-dg2-14:         [PASS][37] -> [ABORT][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-dg2-14/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-dg2-14/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][39] -> [ABORT][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-elk-e7500/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-elk-e7500/igt@i915_module_load@load.html
    - bat-arls-5:         [PASS][41] -> [ABORT][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-arls-5/igt@i915_module_load@load.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-arls-5/igt@i915_module_load@load.html
    - bat-rplp-1:         [PASS][43] -> [ABORT][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-rplp-1/igt@i915_module_load@load.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-rplp-1/igt@i915_module_load@load.html
    - fi-tgl-1115g4:      [PASS][45] -> [ABORT][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-tgl-1115g4/igt@i915_module_load@load.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-tgl-1115g4/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][47] -> [ABORT][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-cfl-guc/igt@i915_module_load@load.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-cfl-guc/igt@i915_module_load@load.html
    - bat-mtlp-9:         [PASS][49] -> [ABORT][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-mtlp-9/igt@i915_module_load@load.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-mtlp-9/igt@i915_module_load@load.html
    - bat-arls-6:         [PASS][51] -> [ABORT][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-arls-6/igt@i915_module_load@load.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-arls-6/igt@i915_module_load@load.html
    - bat-dg2-9:          [PASS][53] -> [ABORT][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-dg2-9/igt@i915_module_load@load.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-dg2-9/igt@i915_module_load@load.html
    - fi-hsw-4770:        [PASS][55] -> [ABORT][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-hsw-4770/igt@i915_module_load@load.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-hsw-4770/igt@i915_module_load@load.html
    - fi-ivb-3770:        [PASS][57] -> [ABORT][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-ivb-3770/igt@i915_module_load@load.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-ivb-3770/igt@i915_module_load@load.html
    - bat-mtlp-8:         [PASS][59] -> [ABORT][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-mtlp-8/igt@i915_module_load@load.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-mtlp-8/igt@i915_module_load@load.html
    - bat-dg2-8:          [PASS][61] -> [ABORT][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-dg2-8/igt@i915_module_load@load.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-dg2-8/igt@i915_module_load@load.html
    - bat-adls-6:         NOTRUN -> [ABORT][63]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-adls-6/igt@i915_module_load@load.html

  * igt@i915_selftest@live:
    - bat-adlp-11:        [PASS][64] -> [ABORT][65] +1 other test abort
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-adlp-11/igt@i915_selftest@live.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-adlp-11/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_engines:
    - bat-arlh-2:         [PASS][66] -> [ABORT][67] +1 other test abort
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-arlh-2/igt@i915_selftest@live@gt_engines.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-arlh-2/igt@i915_selftest@live@gt_engines.html
    - bat-atsm-1:         [PASS][68] -> [ABORT][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-atsm-1/igt@i915_selftest@live@gt_engines.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-atsm-1/igt@i915_selftest@live@gt_engines.html

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-kbl-2:          [PASS][70] -> [ABORT][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html
    - fi-rkl-11600:       [PASS][72] -> [ABORT][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-rkl-11600/igt@kms_force_connector_basic@force-connector-state.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-rkl-11600/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-8809g:       [PASS][74] -> [ABORT][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-bsw-nick:        [PASS][76] -> [ABORT][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-bsw-nick/igt@kms_force_connector_basic@force-edid.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-bsw-nick/igt@kms_force_connector_basic@force-edid.html
    - fi-kbl-x1275:       [PASS][78] -> [ABORT][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_hdmi_inject@inject-audio:
    - bat-dg1-6:          [PASS][80] -> [ABORT][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-dg1-6/igt@kms_hdmi_inject@inject-audio.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-dg1-6/igt@kms_hdmi_inject@inject-audio.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [DMESG-FAIL][82] ([i915#12061] / [i915#13929]) -> [ABORT][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-atsm-1/igt@i915_selftest@live.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-atsm-1/igt@i915_selftest@live.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929


Build changes
-------------

  * Linux: CI_DRM_17686 -> Patchwork_159035v1

  CI-20190529: 20190529
  CI_DRM_17686: 342b565445c93d6fb5221aa9c23be20d65fa16f2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8666: 8666
  Patchwork_159035v1: 342b565445c93d6fb5221aa9c23be20d65fa16f2 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/index.html

--===============1963380065641776452==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: All patches to make PREEMPT_RT work on i915 + xe.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/159035/">https://patchwork.freedesktop.org/series/159035/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17686 -&gt; Patchwork_159035v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_159035v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_159035v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/index.html</p>
<h2>Participating hosts (42 -&gt; 41)</h2>
<p>Additional (1): bat-adls-6 <br />
  Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_159035v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-ilk-650/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-ilk-650/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-jsl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-bsw-n3050/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-bsw-n3050/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-adlp-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-skl-6600u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-skl-6600u/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-arlh-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-arlh-3/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-pnv-d510/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-dg1-7/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-dg1-7/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-glk-j4005/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-glk-j4005/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-adlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-adlp-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-twl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-twl-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-dg2-11/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-rpls-4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-rpls-4/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-kbl-7567u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-kbl-7567u/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-cfl-8700k/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-twl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-twl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-jsl-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-jsl-5/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-apl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-apl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-dg2-14/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-dg2-14/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-elk-e7500/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-arls-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-arls-5/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-rplp-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-rplp-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-tgl-1115g4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-tgl-1115g4/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-cfl-guc/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-mtlp-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-arls-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-arls-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-dg2-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-hsw-4770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-hsw-4770/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-ivb-3770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-ivb-3770/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-mtlp-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-mtlp-8/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-dg2-8/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-adls-6/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-adlp-11/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-adlp-11/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-arlh-2/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-arlh-2/igt@i915_selftest@live@gt_engines.html">ABORT</a> +1 other test abort</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-atsm-1/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-atsm-1/igt@i915_selftest@live@gt_engines.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-rkl-11600/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-rkl-11600/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-bsw-nick/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-bsw-nick/igt@kms_force_connector_basic@force-edid.html">ABORT</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-dg1-6/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-dg1-6/igt@kms_hdmi_inject@inject-audio.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17686/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v1/bat-atsm-1/igt@i915_selftest@live.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17686 -&gt; Patchwork_159035v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17686: 342b565445c93d6fb5221aa9c23be20d65fa16f2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8666: 8666<br />
  Patchwork_159035v1: 342b565445c93d6fb5221aa9c23be20d65fa16f2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1963380065641776452==--
