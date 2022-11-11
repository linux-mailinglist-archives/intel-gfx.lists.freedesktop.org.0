Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E659625003
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 03:10:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E9B210E004;
	Fri, 11 Nov 2022 02:10:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9FD3710E004;
 Fri, 11 Nov 2022 02:10:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 78A77A7DFC;
 Fri, 11 Nov 2022 02:10:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7079698014017238709=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mateusz Kwiatkowski" <kfyatek@gmail.com>
Date: Fri, 11 Nov 2022 02:10:43 -0000
Message-ID: <166813264346.871.10996593118441201100@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220728-rpi-analog-tv-properties-v8-0-09ce1466967c@cerno.tech>
In-Reply-To: <20220728-rpi-analog-tv-properties-v8-0-09ce1466967c@cerno.tech>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Analog_TV_Improvements_=28rev9=29?=
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

--===============7079698014017238709==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Analog TV Improvements (rev9)
URL   : https://patchwork.freedesktop.org/series/107892/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12369 -> Patchwork_107892v9
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_107892v9 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107892v9, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/index.html

Participating hosts (40 -> 38)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (3): fi-ctg-p8600 fi-hsw-4770 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107892v9:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_107892v9 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][6] ([i915#7099])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][7] ([i915#1886])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-4:         [PASS][8] -> [INCOMPLETE][9] ([i915#7348])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/bat-adlp-4/igt@i915_selftest@live@migrate.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/bat-adlp-4/igt@i915_selftest@live@migrate.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-rkl-11600:       NOTRUN -> [SKIP][10] ([fdo#111827])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][11] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [PASS][12] -> [FAIL][13] ([i915#6298])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> [FAIL][14] ([i915#4312])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/bat-adlp-4/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][15] ([i915#2867]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rpls-1}:       [DMESG-WARN][17] ([i915#6687]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [INCOMPLETE][19] ([i915#4817]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7099]: https://gitlab.freedesktop.org/drm/intel/issues/7099
  [i915#7328]: https://gitlab.freedesktop.org/drm/intel/issues/7328
  [i915#7346]: https://gitlab.freedesktop.org/drm/intel/issues/7346
  [i915#7348]: https://gitlab.freedesktop.org/drm/intel/issues/7348


Build changes
-------------

  * Linux: CI_DRM_12369 -> Patchwork_107892v9

  CI-20190529: 20190529
  CI_DRM_12369: cdcedc1a52e4f4ec01a8f8c51065d651c31bea87 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7050: 42839a7c2bab78bc6cda8c949d8545606f377735 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107892v9: cdcedc1a52e4f4ec01a8f8c51065d651c31bea87 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0fdfa4f70118 drm/sun4i: tv: Convert to the new TV mode property
5f2f2ad4c0e6 drm/vc4: vec: Add support for more analog TV standards
cecf435e27e0 drm/vc4: vec: Convert to the new TV mode property
96d0e7fab6c2 drm/vc4: vec: Check for VEC output constraints
c91f0353755e drm/vc4: vec: Use TV Reset implementation
1ece6d82f2a2 drm/atomic-helper: Add an analog TV atomic_check implementation
2c113da4e233 drm/atomic-helper: Add a TV properties reset helper
9e8d3539d387 drm/probe-helper: Provide a TV get_modes helper
201b8f37ee74 drm/modes: Introduce more named modes
02891a470ca3 drm/client: Remove match on mode name
cf3978beedaa drm/modes: Properly generate a drm_display_mode from a named mode
61cc7ec97cac drm/modes: Introduce the tv_mode property as a command-line option
b0b517315a4b drm/connector: Add a function to lookup a TV mode by its name
e9c783f3c9a8 drm/connector: Add pixel clock to cmdline mode
ab4a2bd311fd drm/modes: Fill drm_cmdline mode from named modes
ee908b2a7322 drm/modes: Switch to named mode descriptors
824f0da8580f drm/modes: Move named modes parsing to a separate function
f4adc5eb6cdd drm/client: Add some tests for drm_connector_pick_cmdline_mode()
2d0b85c7f2e3 drm/modes: Add a function to generate analog display modes
aaf6d2bc6339 drm/connector: Add TV standard property
6f48af2df8ea drm/connector: Rename drm_mode_create_tv_properties
f19c99255020 drm/connector: Only register TV mode property if present
b2607ba09753 drm/connector: Rename legacy TV property
920d0f42e0c5 drm/tests: Add Kunit Helpers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/index.html

--===============7079698014017238709==
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
<tr><td><b>Series:</b></td><td>drm: Analog TV Improvements (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107892/">https://patchwork.freedesktop.org/series/107892/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12369 -&gt; Patchwork_107892v9</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_107892v9 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_107892v9, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (3): fi-ctg-p8600 fi-hsw-4770 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_107892v9:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_lrc:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107892v9 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7099">i915#7099</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/bat-adlp-4/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/bat-adlp-4/igt@i915_selftest@live@migrate.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7348">i915#7348</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v9/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12369 -&gt; Patchwork_107892v9</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12369: cdcedc1a52e4f4ec01a8f8c51065d651c31bea87 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7050: 42839a7c2bab78bc6cda8c949d8545606f377735 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107892v9: cdcedc1a52e4f4ec01a8f8c51065d651c31bea87 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0fdfa4f70118 drm/sun4i: tv: Convert to the new TV mode property<br />
5f2f2ad4c0e6 drm/vc4: vec: Add support for more analog TV standards<br />
cecf435e27e0 drm/vc4: vec: Convert to the new TV mode property<br />
96d0e7fab6c2 drm/vc4: vec: Check for VEC output constraints<br />
c91f0353755e drm/vc4: vec: Use TV Reset implementation<br />
1ece6d82f2a2 drm/atomic-helper: Add an analog TV atomic_check implementation<br />
2c113da4e233 drm/atomic-helper: Add a TV properties reset helper<br />
9e8d3539d387 drm/probe-helper: Provide a TV get_modes helper<br />
201b8f37ee74 drm/modes: Introduce more named modes<br />
02891a470ca3 drm/client: Remove match on mode name<br />
cf3978beedaa drm/modes: Properly generate a drm_display_mode from a named mode<br />
61cc7ec97cac drm/modes: Introduce the tv_mode property as a command-line option<br />
b0b517315a4b drm/connector: Add a function to lookup a TV mode by its name<br />
e9c783f3c9a8 drm/connector: Add pixel clock to cmdline mode<br />
ab4a2bd311fd drm/modes: Fill drm_cmdline mode from named modes<br />
ee908b2a7322 drm/modes: Switch to named mode descriptors<br />
824f0da8580f drm/modes: Move named modes parsing to a separate function<br />
f4adc5eb6cdd drm/client: Add some tests for drm_connector_pick_cmdline_mode()<br />
2d0b85c7f2e3 drm/modes: Add a function to generate analog display modes<br />
aaf6d2bc6339 drm/connector: Add TV standard property<br />
6f48af2df8ea drm/connector: Rename drm_mode_create_tv_properties<br />
f19c99255020 drm/connector: Only register TV mode property if present<br />
b2607ba09753 drm/connector: Rename legacy TV property<br />
920d0f42e0c5 drm/tests: Add Kunit Helpers</p>

</body>
</html>

--===============7079698014017238709==--
