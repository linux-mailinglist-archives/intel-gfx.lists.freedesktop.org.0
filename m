Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B792129F619
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Oct 2020 21:22:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C92566E8FA;
	Thu, 29 Oct 2020 20:22:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 16ACC6E8F5;
 Thu, 29 Oct 2020 20:22:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E3A8A8831;
 Thu, 29 Oct 2020 20:22:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 29 Oct 2020 20:22:10 -0000
Message-ID: <160400293011.1427.10872432152485714486@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201029193641.23199-1-manasi.d.navare@intel.com>
In-Reply-To: <20201029193641.23199-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2C1/6=5D_drm/i915/dp=3A_Some_reshufflin?=
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
Content-Type: multipart/mixed; boundary="===============1084589149=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1084589149==
Content-Type: multipart/alternative;
 boundary="===============2751662079261875902=="

--===============2751662079261875902==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v4,1/6] drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes
URL   : https://patchwork.freedesktop.org/series/83212/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9221 -> Patchwork_18809
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18809 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18809, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18809:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-hsw-4770:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html
    - fi-elk-e7500:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-elk-e7500/igt@kms_force_connector_basic@force-load-detect.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-elk-e7500/igt@kms_force_connector_basic@force-load-detect.html
    - fi-ivb-3770:        [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-ivb-3770/igt@kms_force_connector_basic@force-load-detect.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-ivb-3770/igt@kms_force_connector_basic@force-load-detect.html
    - fi-byt-j1900:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-byt-j1900/igt@kms_force_connector_basic@force-load-detect.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-byt-j1900/igt@kms_force_connector_basic@force-load-detect.html
    - fi-ilk-650:         [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-ilk-650/igt@kms_force_connector_basic@force-load-detect.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-ilk-650/igt@kms_force_connector_basic@force-load-detect.html
    - fi-snb-2520m:       [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-snb-2520m/igt@kms_force_connector_basic@force-load-detect.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-snb-2520m/igt@kms_force_connector_basic@force-load-detect.html
    - fi-bwr-2160:        [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html
    - fi-snb-2600:        [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-snb-2600/igt@kms_force_connector_basic@force-load-detect.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-snb-2600/igt@kms_force_connector_basic@force-load-detect.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-pnv-d510/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-gdg-551/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-bwr-2160/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9221 and Patchwork_18809:

### New CI tests (1) ###

  * boot:
    - Statuses : 40 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18809 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-skl-lmem:        [PASS][20] -> [DMESG-WARN][21] ([i915#2605])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-skl-lmem/igt@core_hotunplug@unbind-rebind.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-skl-lmem/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-icl-y:           [PASS][22] -> [DMESG-WARN][23] ([i915#1982])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-icl-y/igt@i915_module_load@reload.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-icl-y/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-icl-u2:          [PASS][24] -> [DMESG-WARN][25] ([i915#1982])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1:
    - fi-tgl-y:           [PASS][26] -> [DMESG-WARN][27] ([i915#1982]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-tgl-y/igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-tgl-y/igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-pnv-d510:        [PASS][28] -> [INCOMPLETE][29] ([i915#299])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-pnv-d510/igt@kms_force_connector_basic@force-load-detect.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-pnv-d510/igt@kms_force_connector_basic@force-load-detect.html
    - fi-gdg-551:         [PASS][30] -> [INCOMPLETE][31] ([i915#172])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-gdg-551/igt@kms_force_connector_basic@force-load-detect.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-gdg-551/igt@kms_force_connector_basic@force-load-detect.html

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [PASS][32] -> [DMESG-WARN][33] ([i915#402]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  * igt@vgem_basic@unload:
    - fi-skl-guc:         [PASS][34] -> [DMESG-WARN][35] ([i915#2203])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-skl-guc/igt@vgem_basic@unload.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-skl-guc/igt@vgem_basic@unload.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][36] ([i915#1982]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [DMESG-WARN][38] ([i915#1982]) -> [PASS][39] +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-byt-j1900/igt@i915_module_load@reload.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-tgl-u2:          [DMESG-WARN][40] ([i915#1982] / [k.org#205379]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-tgl-u2/igt@i915_module_load@reload.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [DMESG-FAIL][42] ([i915#541]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_busy@basic@flip:
    - {fi-tgl-dsi}:       [DMESG-WARN][44] ([i915#1982]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-tgl-dsi/igt@kms_busy@basic@flip.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-tgl-dsi/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-icl-u2:          [DMESG-WARN][46] ([i915#1982]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@vgem_basic@dmabuf-fence:
    - fi-tgl-y:           [DMESG-WARN][48] ([i915#402]) -> [PASS][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-tgl-y:           [DMESG-WARN][50] ([i915#2411]) -> [DMESG-WARN][51] ([i915#1982] / [i915#2411])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-tgl-y/igt@i915_pm_rpm@basic-rte.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-tgl-y/igt@i915_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (43 -> 40)
------------------------------

  Missing    (3): fi-blb-e6850 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9221 -> Patchwork_18809

  CI-20190529: 20190529
  CI_DRM_9221: d1859ff72eefa224fe11a5c3e8e1eef567d6ec93 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5828: db972bdaab8ada43b742bc9621bb0fc9d56a6fc6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18809: 163d8871d913fc1454bc35690f3e6201d87c85d9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

163d8871d913 drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
84acf3bfc8fc drm/i915/dp: Prep for bigjoiner atomic check
63eb504c1b4f drm/i915: Pass intel_atomic_state instead of drm_atomic_state
bbcf8eebd514 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
af64e9b4b2ce drm/i915: Move encoder->get_config to a new function
e90405311347 drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/index.html

--===============2751662079261875902==
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
<tr><td><b>Series:</b></td><td>series starting with [v4,1/6] drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83212/">https://patchwork.freedesktop.org/series/83212/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9221 -&gt; Patchwork_18809</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18809 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18809, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18809:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-elk-e7500/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-elk-e7500/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-ivb-3770/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-ivb-3770/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-byt-j1900/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-byt-j1900/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-ilk-650/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-ilk-650/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-snb-2520m/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-snb-2520m/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-snb-2600/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-snb-2600/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-pnv-d510/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-gdg-551:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-gdg-551/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-bwr-2160/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9221 and Patchwork_18809:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 40 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18809 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-skl-lmem/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-skl-lmem/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-icl-y/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-icl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-tgl-y/igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-tgl-y/igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-pnv-d510/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-pnv-d510/igt@kms_force_connector_basic@force-load-detect.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>)</p>
</li>
<li>
<p>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-gdg-551/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-gdg-551/igt@kms_force_connector_basic@force-load-detect.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/172">i915#172</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-tgl-y/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-tgl-y/igt@prime_vgem@basic-gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-skl-guc/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-skl-guc/igt@vgem_basic@unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a> +2 similar issues</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-tgl-dsi/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-tgl-dsi/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-fence:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9221/fi-tgl-y/igt@i915_pm_rpm@basic-rte.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18809/fi-tgl-y/igt@i915_pm_rpm@basic-rte.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Missing    (3): fi-blb-e6850 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9221 -&gt; Patchwork_18809</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9221: d1859ff72eefa224fe11a5c3e8e1eef567d6ec93 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5828: db972bdaab8ada43b742bc9621bb0fc9d56a6fc6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18809: 163d8871d913fc1454bc35690f3e6201d87c85d9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>163d8871d913 drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.<br />
84acf3bfc8fc drm/i915/dp: Prep for bigjoiner atomic check<br />
63eb504c1b4f drm/i915: Pass intel_atomic_state instead of drm_atomic_state<br />
bbcf8eebd514 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split<br />
af64e9b4b2ce drm/i915: Move encoder-&gt;get_config to a new function<br />
e90405311347 drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes</p>

</body>
</html>

--===============2751662079261875902==--

--===============1084589149==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1084589149==--
