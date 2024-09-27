Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2190987C0C
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 02:05:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 026A310E03B;
	Fri, 27 Sep 2024 00:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C76C710E03B;
 Fri, 27 Sep 2024 00:05:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7361424837149853145=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Reconcile_i915=27s_and_xe?=
 =?utf-8?q?=27s_display_power_mgt_sequences?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2024 00:05:41 -0000
Message-ID: <172739554180.1109336.1874775379558081031@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
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

--===============7361424837149853145==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Reconcile i915's and xe's display power mgt sequences
URL   : https://patchwork.freedesktop.org/series/139062/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15451 -> Patchwork_139062v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139062v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139062v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/index.html

Participating hosts (37 -> 37)
------------------------------

  Additional (2): bat-adlp-9 bat-rpls-4 
  Missing    (2): bat-arls-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139062v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - bat-twl-1:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-twl-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-twl-1/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-apl-1:          [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-adlm-1:         [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-adlm-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlm-1/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-rplp-1:         [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-rplp-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-rplp-1/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-adls-6:         [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-adls-6/igt@kms_pm_rpm@basic-pci-d3-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adls-6/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-jsl-1:          [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-jsl-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-jsl-1/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-rkl-11600:       [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/fi-rkl-11600/igt@kms_pm_rpm@basic-pci-d3-state.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/fi-rkl-11600/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-twl-2:          [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-twl-2/igt@kms_pm_rpm@basic-pci-d3-state.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-twl-2/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-rpls-4:         NOTRUN -> [ABORT][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-rpls-4/igt@kms_pm_rpm@basic-pci-d3-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_139062v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adlp-9:         NOTRUN -> [SKIP][18] ([i915#9318])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-9/igt@debugfs_test@basic-hwmon.html
    - bat-rpls-4:         NOTRUN -> [SKIP][19] ([i915#9318])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-rpls-4/igt@debugfs_test@basic-hwmon.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-9:         NOTRUN -> [SKIP][20] ([i915#3282])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-9/igt@gem_tiled_pread_basic.html
    - bat-rpls-4:         NOTRUN -> [SKIP][21] ([i915#3282])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-rpls-4/igt@gem_tiled_pread_basic.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - bat-dg2-13:         NOTRUN -> [SKIP][22] ([i915#7828]) +8 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-adlp-9:         NOTRUN -> [SKIP][23] ([i915#4103]) +1 other test skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - bat-rpls-4:         NOTRUN -> [SKIP][24] ([i915#4103]) +1 other test skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-rpls-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_dsc@dsc-basic:
    - bat-rpls-4:         NOTRUN -> [SKIP][25] ([i915#3555] / [i915#3840] / [i915#9886])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-rpls-4/igt@kms_dsc@dsc-basic.html
    - bat-adlp-9:         NOTRUN -> [SKIP][26] ([i915#3555] / [i915#3840])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-9/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-rpls-4:         NOTRUN -> [SKIP][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-rpls-4/igt@kms_force_connector_basic@force-load-detect.html
    - bat-adlp-9:         NOTRUN -> [SKIP][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-9/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-rpls-4:         NOTRUN -> [SKIP][29] ([i915#5354])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-rpls-4/igt@kms_pm_backlight@basic-brightness.html
    - bat-adlp-9:         NOTRUN -> [SKIP][30] ([i915#9812])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-9/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - bat-dg2-14:         [PASS][31] -> [ABORT][32] ([i915#10553])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-dg2-14/igt@kms_pm_rpm@basic-pci-d3-state.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-dg2-14/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-tgl-1115g4:      [PASS][33] -> [ABORT][34] ([i915#10553])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/fi-tgl-1115g4/igt@kms_pm_rpm@basic-pci-d3-state.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/fi-tgl-1115g4/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-mtlp-6:         [PASS][35] -> [ABORT][36] ([i915#10553])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-dg2-9:          [PASS][37] -> [ABORT][38] ([i915#10553])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-dg2-9/igt@kms_pm_rpm@basic-pci-d3-state.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-dg2-9/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-adlp-11:        [PASS][39] -> [ABORT][40] ([i915#10553])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-adlp-11/igt@kms_pm_rpm@basic-pci-d3-state.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-11/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-arls-2:         [PASS][41] -> [ABORT][42] ([i915#10553])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-arls-2/igt@kms_pm_rpm@basic-pci-d3-state.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-arls-2/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-mtlp-8:         [PASS][43] -> [ABORT][44] ([i915#10553])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-mtlp-8/igt@kms_pm_rpm@basic-pci-d3-state.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-mtlp-8/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-arls-5:         [PASS][45] -> [ABORT][46] ([i915#10553])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-arls-5/igt@kms_pm_rpm@basic-pci-d3-state.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-arls-5/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-adlp-6:         [PASS][47] -> [ABORT][48] ([i915#10553])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-adlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-arlh-2:         [PASS][49] -> [ABORT][50] ([i915#10553])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-arlh-2/igt@kms_pm_rpm@basic-pci-d3-state.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-arlh-2/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-dg1-7:          [PASS][51] -> [ABORT][52] ([i915#10553])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-dg1-7/igt@kms_pm_rpm@basic-pci-d3-state.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-dg1-7/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-glk-j4005:       [PASS][53] -> [ABORT][54] ([i915#10553])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/fi-glk-j4005/igt@kms_pm_rpm@basic-pci-d3-state.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/fi-glk-j4005/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-adlp-9:         NOTRUN -> [ABORT][55] ([i915#10553])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-9/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-dg2-11:         [PASS][56] -> [ABORT][57] ([i915#10553])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-dg2-11/igt@kms_pm_rpm@basic-pci-d3-state.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-dg2-11/igt@kms_pm_rpm@basic-pci-d3-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_15451 -> Patchwork_139062v1

  CI-20190529: 20190529
  CI_DRM_15451: 6bd25f52157328ac4b7b09a3946281957afe3bfd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8034: 73eed10d50c7d1f07df07214ae62924d4e377e12 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_139062v1: 6bd25f52157328ac4b7b09a3946281957afe3bfd @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/index.html

--===============7361424837149853145==
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
<tr><td><b>Series:</b></td><td>Reconcile i915&#x27;s and xe&#x27;s display power mgt sequences</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139062/">https://patchwork.freedesktop.org/series/139062/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15451 -&gt; Patchwork_139062v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139062v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139062v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/index.html</p>
<h2>Participating hosts (37 -&gt; 37)</h2>
<p>Additional (2): bat-adlp-9 bat-rpls-4 <br />
  Missing    (2): bat-arls-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139062v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pm_rpm@basic-pci-d3-state:<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-twl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-twl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a></li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-adlm-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlm-1/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-rplp-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-rplp-1/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-adls-6/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adls-6/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-jsl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-jsl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/fi-rkl-11600/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/fi-rkl-11600/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-twl-2/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-twl-2/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a></li>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-rpls-4/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139062v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-9/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>)</li>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-rpls-4/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-9/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-rpls-4/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-rpls-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-rpls-4/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>)</li>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-9/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-rpls-4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-rpls-4/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-9/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-dg2-14/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-dg2-14/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/fi-tgl-1115g4/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/fi-tgl-1115g4/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-dg2-9/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-dg2-9/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-adlp-11/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-11/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-arls-2/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-arls-2/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-mtlp-8/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-mtlp-8/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-arls-5/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-arls-5/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-adlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-arlh-2/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-arlh-2/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-dg1-7/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-dg1-7/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/fi-glk-j4005/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/fi-glk-j4005/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-adlp-9/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/bat-dg2-11/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139062v1/bat-dg2-11/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15451 -&gt; Patchwork_139062v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15451: 6bd25f52157328ac4b7b09a3946281957afe3bfd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8034: 73eed10d50c7d1f07df07214ae62924d4e377e12 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_139062v1: 6bd25f52157328ac4b7b09a3946281957afe3bfd @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7361424837149853145==--
