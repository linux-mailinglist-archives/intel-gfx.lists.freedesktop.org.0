Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4810A886439
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 01:02:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27E3E10E162;
	Fri, 22 Mar 2024 00:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 072C010E162;
 Fri, 22 Mar 2024 00:02:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1977068516865169259=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_move_dm?=
 =?utf-8?q?c=5Ffirmware=5Fpath_to_display_params?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Mar 2024 00:02:31 -0000
Message-ID: <171106575102.941104.6980442809250876358@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240321161856.3517856-1-jani.nikula@intel.com>
In-Reply-To: <20240321161856.3517856-1-jani.nikula@intel.com>
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

--===============1977068516865169259==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: move dmc_firmware_path to display params
URL   : https://patchwork.freedesktop.org/series/131443/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14464 -> Patchwork_131443v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_131443v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_131443v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/index.html

Participating hosts (40 -> 36)
------------------------------

  Missing    (4): bat-mtlp-8 bat-dg1-7 bat-kbl-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131443v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-14:         [PASS][1] -> [SKIP][2] +2 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-14/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-dg2-14/igt@i915_pm_rpm@module-reload.html
    - bat-adlp-6:         [PASS][3] -> [SKIP][4] +2 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
    - bat-rplp-1:         [PASS][5] -> [SKIP][6] +2 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-rplp-1/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-rplp-1/igt@i915_pm_rpm@module-reload.html
    - fi-rkl-11600:       [PASS][7] -> [SKIP][8] +2 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html
    - bat-adlp-11:        [PASS][9] -> [SKIP][10] +2 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-adlp-11/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-adlp-11/igt@i915_pm_rpm@module-reload.html
    - bat-adls-6:         [PASS][11] -> [SKIP][12] +2 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-adls-6/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-adls-6/igt@i915_pm_rpm@module-reload.html
    - bat-mtlp-6:         [PASS][13] -> [SKIP][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-dg2-13:         [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-13/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-dg2-13/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - bat-adln-1:         [PASS][17] -> [SKIP][18] +2 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-adln-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-adln-1/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-dg2-8:          [PASS][19] -> [SKIP][20] +2 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-8/igt@kms_pm_rpm@basic-pci-d3-state.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-dg2-8/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-adlm-1:         [PASS][21] -> [SKIP][22] +2 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-adlm-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-adlm-1/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-tgl-1115g4:      [PASS][23] -> [SKIP][24] +2 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-tgl-1115g4/igt@kms_pm_rpm@basic-pci-d3-state.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-tgl-1115g4/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-arls-1:         [PASS][25] -> [SKIP][26] +2 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-arls-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-arls-1/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-rpls-3:         [PASS][27] -> [SKIP][28] +2 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-rpls-3/igt@kms_pm_rpm@basic-pci-d3-state.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-rpls-3/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_pm_rpm@basic-rte:
    - bat-jsl-3:          [PASS][29] -> [SKIP][30] +2 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-jsl-3/igt@kms_pm_rpm@basic-rte.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-jsl-3/igt@kms_pm_rpm@basic-rte.html
    - bat-dg2-9:          [PASS][31] -> [SKIP][32] +2 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-9/igt@kms_pm_rpm@basic-rte.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-dg2-9/igt@kms_pm_rpm@basic-rte.html
    - bat-dg2-11:         [PASS][33] -> [SKIP][34] +2 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-11/igt@kms_pm_rpm@basic-rte.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-dg2-11/igt@kms_pm_rpm@basic-rte.html
    - bat-adlp-9:         [PASS][35] -> [SKIP][36] +2 other tests skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-adlp-9/igt@kms_pm_rpm@basic-rte.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-adlp-9/igt@kms_pm_rpm@basic-rte.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - {bat-mtlp-9}:       [PASS][37] -> [SKIP][38] +2 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-mtlp-9/igt@kms_pm_rpm@basic-pci-d3-state.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-mtlp-9/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_pm_rpm@basic-rte:
    - {bat-arls-4}:       [PASS][39] -> [SKIP][40] +2 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-arls-4/igt@kms_pm_rpm@basic-rte.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-arls-4/igt@kms_pm_rpm@basic-rte.html

  
Known issues
------------

  Here are the changes found in Patchwork_131443v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-jsl-1:          [PASS][41] -> [FAIL][42] ([i915#8293])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-jsl-1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-jsl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-apl-guc:         [PASS][43] -> [SKIP][44] +2 other tests skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-apl-guc/igt@i915_pm_rpm@module-reload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-apl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-9:          [PASS][45] -> [ABORT][46] ([i915#10366])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-9/igt@i915_selftest@live@hangcheck.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-dg2-9/igt@i915_selftest@live@hangcheck.html
    - bat-rpls-3:         [PASS][47] -> [DMESG-WARN][48] ([i915#5591])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [PASS][49] -> [SKIP][50] +2 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-8809g:       [PASS][51] -> [SKIP][52] +2 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-guc:         [PASS][53] -> [SKIP][54] +2 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-kbl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-kbl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-cfl-guc:         [PASS][55] -> [SKIP][56] +2 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-cfl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-cfl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-mtlp-6:         [PASS][57] -> [SKIP][58] ([i915#9792]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-cfl-8700k:       [PASS][59] -> [SKIP][60] +2 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-cfl-8700k/igt@kms_pm_rpm@basic-pci-d3-state.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-cfl-8700k/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_pm_rpm@basic-rte:
    - fi-kbl-x1275:       [PASS][61] -> [SKIP][62] +2 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-kbl-x1275/igt@kms_pm_rpm@basic-rte.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-kbl-x1275/igt@kms_pm_rpm@basic-rte.html
    - fi-cfl-8109u:       [PASS][63] -> [SKIP][64] +2 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-cfl-8109u/igt@kms_pm_rpm@basic-rte.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-cfl-8109u/igt@kms_pm_rpm@basic-rte.html
    - fi-glk-j4005:       [PASS][65] -> [SKIP][66] +2 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-glk-j4005/igt@kms_pm_rpm@basic-rte.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-glk-j4005/igt@kms_pm_rpm@basic-rte.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_mocs:
    - bat-dg2-14:         [ABORT][67] ([i915#10366]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-14/igt@i915_selftest@live@gt_mocs.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-dg2-14/igt@i915_selftest@live@gt_mocs.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9792]: https://gitlab.freedesktop.org/drm/intel/issues/9792


Build changes
-------------

  * Linux: CI_DRM_14464 -> Patchwork_131443v1

  CI-20190529: 20190529
  CI_DRM_14464: ad4a10c6d0e21df4bd830c20c96b795ae2d03962 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7775: 0ee4074685c1e184f2d3612ea6eb4d126f9a2e23 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131443v1: ad4a10c6d0e21df4bd830c20c96b795ae2d03962 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f7639235a0fb drm/i915/display: move dmc_firmware_path to display params

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/index.html

--===============1977068516865169259==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: move dmc_firmware_path to display params</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131443/">https://patchwork.freedesktop.org/series/131443/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14464 -&gt; Patchwork_131443v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_131443v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_131443v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/index.html</p>
<h2>Participating hosts (40 -&gt; 36)</h2>
<p>Missing    (4): bat-mtlp-8 bat-dg1-7 bat-kbl-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_131443v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-14/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-dg2-14/igt@i915_pm_rpm@module-reload.html">SKIP</a> +2 other tests skip</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">SKIP</a> +2 other tests skip</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-rplp-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-rplp-1/igt@i915_pm_rpm@module-reload.html">SKIP</a> +2 other tests skip</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html">SKIP</a> +2 other tests skip</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-adlp-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-adlp-11/igt@i915_pm_rpm@module-reload.html">SKIP</a> +2 other tests skip</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-adls-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-adls-6/igt@i915_pm_rpm@module-reload.html">SKIP</a> +2 other tests skip</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-13/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-dg2-13/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-adln-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-adln-1/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +2 other tests skip</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-8/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-dg2-8/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +2 other tests skip</li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-adlm-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-adlm-1/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +2 other tests skip</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-tgl-1115g4/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-tgl-1115g4/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +2 other tests skip</li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-arls-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-arls-1/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +2 other tests skip</li>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-rpls-3/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-rpls-3/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-jsl-3/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-jsl-3/igt@kms_pm_rpm@basic-rte.html">SKIP</a> +2 other tests skip</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-9/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-dg2-9/igt@kms_pm_rpm@basic-rte.html">SKIP</a> +2 other tests skip</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-11/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-dg2-11/igt@kms_pm_rpm@basic-rte.html">SKIP</a> +2 other tests skip</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-adlp-9/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-adlp-9/igt@kms_pm_rpm@basic-rte.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-mtlp-9/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-mtlp-9/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>{bat-arls-4}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-arls-4/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-arls-4/igt@kms_pm_rpm@basic-rte.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131443v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-apl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-apl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +2 other tests skip</li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +2 other tests skip</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-kbl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-kbl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +2 other tests skip</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-cfl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-cfl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +2 other tests skip</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>) +1 other test skip</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-cfl-8700k/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-cfl-8700k/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-kbl-x1275/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-kbl-x1275/igt@kms_pm_rpm@basic-rte.html">SKIP</a> +2 other tests skip</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-cfl-8109u/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-cfl-8109u/igt@kms_pm_rpm@basic-rte.html">SKIP</a> +2 other tests skip</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-glk-j4005/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/fi-glk-j4005/igt@kms_pm_rpm@basic-rte.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_mocs:<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-14/igt@i915_selftest@live@gt_mocs.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131443v1/bat-dg2-14/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14464 -&gt; Patchwork_131443v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14464: ad4a10c6d0e21df4bd830c20c96b795ae2d03962 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7775: 0ee4074685c1e184f2d3612ea6eb4d126f9a2e23 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131443v1: ad4a10c6d0e21df4bd830c20c96b795ae2d03962 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f7639235a0fb drm/i915/display: move dmc_firmware_path to display params</p>

</body>
</html>

--===============1977068516865169259==--
