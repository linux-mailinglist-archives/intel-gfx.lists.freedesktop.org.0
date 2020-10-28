Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E22EA29DACA
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Oct 2020 00:31:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 094626E819;
	Wed, 28 Oct 2020 23:31:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1EEAA6E819;
 Wed, 28 Oct 2020 23:31:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16916A66C9;
 Wed, 28 Oct 2020 23:31:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Date: Wed, 28 Oct 2020 23:31:14 -0000
Message-ID: <160392787406.21341.9020044955134417038@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201028214232.5631-1-manasi.d.navare@intel.com>
In-Reply-To: <20201028214232.5631-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/6=5D_drm/i915/dp=3A_Some_reshufflin?=
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
Content-Type: multipart/mixed; boundary="===============1405868919=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1405868919==
Content-Type: multipart/alternative;
 boundary="===============3437863822962853321=="

--===============3437863822962853321==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v3,1/6] drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes
URL   : https://patchwork.freedesktop.org/series/83173/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9214 -> Patchwork_18802
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18802 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18802, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18802:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-hsw-4770:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html
    - fi-elk-e7500:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-elk-e7500/igt@kms_force_connector_basic@force-load-detect.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-elk-e7500/igt@kms_force_connector_basic@force-load-detect.html
    - fi-ivb-3770:        [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-ivb-3770/igt@kms_force_connector_basic@force-load-detect.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-ivb-3770/igt@kms_force_connector_basic@force-load-detect.html
    - fi-byt-j1900:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-byt-j1900/igt@kms_force_connector_basic@force-load-detect.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-byt-j1900/igt@kms_force_connector_basic@force-load-detect.html
    - fi-blb-e6850:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-blb-e6850/igt@kms_force_connector_basic@force-load-detect.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-blb-e6850/igt@kms_force_connector_basic@force-load-detect.html
    - fi-ilk-650:         [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-ilk-650/igt@kms_force_connector_basic@force-load-detect.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-ilk-650/igt@kms_force_connector_basic@force-load-detect.html
    - fi-snb-2520m:       [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-snb-2520m/igt@kms_force_connector_basic@force-load-detect.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-snb-2520m/igt@kms_force_connector_basic@force-load-detect.html
    - fi-bwr-2160:        [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html
    - fi-snb-2600:        [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-snb-2600/igt@kms_force_connector_basic@force-load-detect.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-snb-2600/igt@kms_force_connector_basic@force-load-detect.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-pnv-d510/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-gdg-551/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-bwr-2160/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-blb-e6850/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9214 and Patchwork_18802:

### New CI tests (1) ###

  * boot:
    - Statuses : 39 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18802 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982] / [k.org#205379])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-tgl-u2/igt@i915_module_load@reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-kefka:       [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-dpms@c-edp1:
    - fi-tgl-y:           [PASS][27] -> [DMESG-WARN][28] ([i915#1982])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-tgl-y/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-tgl-y/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-pnv-d510:        [PASS][29] -> [INCOMPLETE][30] ([i915#299])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-pnv-d510/igt@kms_force_connector_basic@force-load-detect.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-pnv-d510/igt@kms_force_connector_basic@force-load-detect.html
    - fi-gdg-551:         [PASS][31] -> [INCOMPLETE][32] ([i915#172])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-gdg-551/igt@kms_force_connector_basic@force-load-detect.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-gdg-551/igt@kms_force_connector_basic@force-load-detect.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [PASS][33] -> [DMESG-WARN][34] ([i915#402]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][35] ([i915#402]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-tgl-y/igt@debugfs_test@read_all_entries.html
    - {fi-kbl-7560u}:     [INCOMPLETE][37] ([i915#2417]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-apl-guc:         [DMESG-WARN][39] ([i915#1635] / [i915#1982]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-apl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-apl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-soraka:      [DMESG-WARN][41] ([i915#1982]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-kbl-soraka/igt@kms_busy@basic@flip.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-kbl-soraka/igt@kms_busy@basic@flip.html
    - fi-tgl-y:           [DMESG-WARN][43] ([i915#1982]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-tgl-y/igt@kms_busy@basic@flip.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-tgl-y/igt@kms_busy@basic@flip.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [DMESG-WARN][45] ([i915#2411]) -> [DMESG-WARN][46] ([i915#2411] / [i915#402])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@module-reload:
    - fi-tgl-y:           [DMESG-WARN][47] ([i915#2411]) -> [DMESG-WARN][48] ([i915#1982] / [i915#2411])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-tgl-y/igt@i915_pm_rpm@module-reload.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-tgl-y/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2417]: https://gitlab.freedesktop.org/drm/intel/issues/2417
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (41 -> 39)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9214 -> Patchwork_18802

  CI-20190529: 20190529
  CI_DRM_9214: c485050a56cf0edaed15b8297d5540bd0f4310b9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5827: 7fd7e3fb8b42eb4e62a4575f6edc5a048e5bec3d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18802: 1388a0c36ca0a250e8f8dc39240096d044d5cb65 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1388a0c36ca0 drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
779bec036a45 drm/i915/dp: Prep for bigjoiner atomic check
a5f14d0b240f drm/i915: Pass intel_atomic_state instead of drm_atomic_state
f4900e21412a drm/i915: Add pipe_mode readout in verify_crtc_state
7b5090a4c566 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
29b307e050f4 drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/index.html

--===============3437863822962853321==
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
<tr><td><b>Series:</b></td><td>series starting with [v3,1/6] drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83173/">https://patchwork.freedesktop.org/series/83173/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9214 -&gt; Patchwork_18802</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18802 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18802, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18802:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-elk-e7500/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-elk-e7500/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-ivb-3770/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-ivb-3770/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-byt-j1900/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-byt-j1900/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-blb-e6850/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-blb-e6850/igt@kms_force_connector_basic@force-load-detect.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-ilk-650/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-ilk-650/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-snb-2520m/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-snb-2520m/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-snb-2600/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-snb-2600/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-pnv-d510/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-gdg-551:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-gdg-551/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-bwr-2160/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-blb-e6850/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9214 and Patchwork_18802:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 39 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18802 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-edp1:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-tgl-y/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-tgl-y/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-pnv-d510/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-pnv-d510/igt@kms_force_connector_basic@force-load-detect.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>)</p>
</li>
<li>
<p>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-gdg-551/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-gdg-551/igt@kms_force_connector_basic@force-load-detect.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/172">i915#172</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_two_bos:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> +2 similar issues</p>
</li>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2417">i915#2417</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-apl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-apl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-kbl-soraka/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-kbl-soraka/igt@kms_busy@basic@flip.html">PASS</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-tgl-y/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-tgl-y/igt@kms_busy@basic@flip.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/fi-tgl-y/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18802/fi-tgl-y/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9214 -&gt; Patchwork_18802</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9214: c485050a56cf0edaed15b8297d5540bd0f4310b9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5827: 7fd7e3fb8b42eb4e62a4575f6edc5a048e5bec3d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18802: 1388a0c36ca0a250e8f8dc39240096d044d5cb65 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1388a0c36ca0 drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.<br />
779bec036a45 drm/i915/dp: Prep for bigjoiner atomic check<br />
a5f14d0b240f drm/i915: Pass intel_atomic_state instead of drm_atomic_state<br />
f4900e21412a drm/i915: Add pipe_mode readout in verify_crtc_state<br />
7b5090a4c566 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split<br />
29b307e050f4 drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes</p>

</body>
</html>

--===============3437863822962853321==--

--===============1405868919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1405868919==--
