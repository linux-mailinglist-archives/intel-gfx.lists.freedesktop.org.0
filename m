Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F36E52A363C
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 23:04:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ED766E573;
	Mon,  2 Nov 2020 22:04:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8508E6E56A;
 Mon,  2 Nov 2020 22:04:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7CA29A8832;
 Mon,  2 Nov 2020 22:04:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Mon, 02 Nov 2020 22:04:32 -0000
Message-ID: <160435467247.26393.8800377403170146350@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201102211906.4893-1-manasi.d.navare@intel.com>
In-Reply-To: <20201102211906.4893-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/6=5D_drm/i915/dp=3A_Some_reshufflin?=
 =?utf-8?q?g_in_mode=5Fvalid_as_prep_for_bigjoiner_modes?=
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
Content-Type: multipart/mixed; boundary="===============0999240951=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0999240951==
Content-Type: multipart/alternative;
 boundary="===============1826468219105894788=="

--===============1826468219105894788==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v5,1/6] drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes
URL   : https://patchwork.freedesktop.org/series/83373/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9247 -> Patchwork_18830
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18830 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18830, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18830:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-hsw-4770:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html
    - fi-elk-e7500:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-elk-e7500/igt@kms_force_connector_basic@force-load-detect.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-elk-e7500/igt@kms_force_connector_basic@force-load-detect.html
    - fi-ivb-3770:        [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-ivb-3770/igt@kms_force_connector_basic@force-load-detect.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-ivb-3770/igt@kms_force_connector_basic@force-load-detect.html
    - fi-byt-j1900:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-byt-j1900/igt@kms_force_connector_basic@force-load-detect.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-byt-j1900/igt@kms_force_connector_basic@force-load-detect.html
    - fi-blb-e6850:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-blb-e6850/igt@kms_force_connector_basic@force-load-detect.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-blb-e6850/igt@kms_force_connector_basic@force-load-detect.html
    - fi-ilk-650:         [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-ilk-650/igt@kms_force_connector_basic@force-load-detect.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-ilk-650/igt@kms_force_connector_basic@force-load-detect.html
    - fi-snb-2520m:       [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-snb-2520m/igt@kms_force_connector_basic@force-load-detect.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-snb-2520m/igt@kms_force_connector_basic@force-load-detect.html
    - fi-bwr-2160:        [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html
    - fi-snb-2600:        [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-snb-2600/igt@kms_force_connector_basic@force-load-detect.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-snb-2600/igt@kms_force_connector_basic@force-load-detect.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-pnv-d510/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-gdg-551/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-bwr-2160/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-blb-e6850/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9247 and Patchwork_18830:

### New CI tests (1) ###

  * boot:
    - Statuses : 38 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18830 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-icl-y:           [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-icl-y/igt@i915_module_load@reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-icl-y/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [PASS][27] -> [DMESG-WARN][28] ([i915#1982]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-pnv-d510:        [PASS][29] -> [INCOMPLETE][30] ([i915#299])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-pnv-d510/igt@kms_force_connector_basic@force-load-detect.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-pnv-d510/igt@kms_force_connector_basic@force-load-detect.html
    - fi-gdg-551:         [PASS][31] -> [INCOMPLETE][32] ([i915#172])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-gdg-551/igt@kms_force_connector_basic@force-load-detect.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-gdg-551/igt@kms_force_connector_basic@force-load-detect.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-apl-guc:         [DMESG-WARN][33] ([i915#1635] / [i915#1982]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-apl-guc/igt@i915_module_load@reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-apl-guc/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-n3050:       [DMESG-WARN][35] ([i915#1982]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-bsw-n3050/igt@i915_pm_rpm@basic-pci-d3-state.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-bsw-n3050/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-tgl-dsi}:       [DMESG-FAIL][37] ([i915#2601]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-apl-guc:         [INCOMPLETE][39] ([i915#1635]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - fi-icl-u2:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-kbl-7500u fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9247 -> Patchwork_18830

  CI-20190529: 20190529
  CI_DRM_9247: 009a99e9be393d32ed57bcac34d6b1fb37c28cdf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5830: 12d370cb57e0cfcb781c87ad9e15e68b17a1f41f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18830: 48259413d98d37ad6fde949d14cfecbcf4510779 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

48259413d98d drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
6c99d8e81e66 drm/i915/dp: Prep for bigjoiner atomic check
792fb4cd8a71 drm/i915: Pass intel_atomic_state instead of drm_atomic_state
10c3667c3de6 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
20fab9de7fd5 drm/i915: Move encoder->get_config to a new function
b5a70599ee92 drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/index.html

--===============1826468219105894788==
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
<tr><td><b>Series:</b></td><td>series starting with [v5,1/6] drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83373/">https://patchwork.freedesktop.org/series/83373/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9247 -&gt; Patchwork_18830</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18830 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18830, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18830:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-elk-e7500/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-elk-e7500/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-ivb-3770/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-ivb-3770/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-byt-j1900/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-byt-j1900/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-blb-e6850/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-blb-e6850/igt@kms_force_connector_basic@force-load-detect.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-ilk-650/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-ilk-650/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-snb-2520m/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-snb-2520m/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-snb-2600/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-snb-2600/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-pnv-d510/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-gdg-551:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-gdg-551/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-bwr-2160/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-blb-e6850/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9247 and Patchwork_18830:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 38 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18830 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-icl-y/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-icl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-pnv-d510/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-pnv-d510/igt@kms_force_connector_basic@force-load-detect.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>)</p>
</li>
<li>
<p>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-gdg-551/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-gdg-551/igt@kms_force_connector_basic@force-load-detect.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/172">i915#172</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-apl-guc/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-apl-guc/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-bsw-n3050/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-bsw-n3050/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9247/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18830/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-kbl-7500u fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9247 -&gt; Patchwork_18830</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9247: 009a99e9be393d32ed57bcac34d6b1fb37c28cdf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5830: 12d370cb57e0cfcb781c87ad9e15e68b17a1f41f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18830: 48259413d98d37ad6fde949d14cfecbcf4510779 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>48259413d98d drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.<br />
6c99d8e81e66 drm/i915/dp: Prep for bigjoiner atomic check<br />
792fb4cd8a71 drm/i915: Pass intel_atomic_state instead of drm_atomic_state<br />
10c3667c3de6 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split<br />
20fab9de7fd5 drm/i915: Move encoder-&gt;get_config to a new function<br />
b5a70599ee92 drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes</p>

</body>
</html>

--===============1826468219105894788==--

--===============0999240951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0999240951==--
