Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D3AA1A5A8
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 15:21:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A868310E009;
	Thu, 23 Jan 2025 14:21:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92EEF10E009;
 Thu, 23 Jan 2025 14:21:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2856242097824916047=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915=3A_Disable_RPG_d?=
 =?utf-8?q?uring_live_selftest?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Badal Nilawar" <badal.nilawar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2025 14:21:11 -0000
Message-ID: <173764207159.3541523.276050244746857805@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250123122941.925789-1-badal.nilawar@intel.com>
In-Reply-To: <20250123122941.925789-1-badal.nilawar@intel.com>
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

--===============2856242097824916047==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Disable RPG during live selftest
URL   : https://patchwork.freedesktop.org/series/143886/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16008 -> Patchwork_143886v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_143886v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_143886v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_143886v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live:
    - bat-adlp-11:        [PASS][1] -> [ABORT][2] +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-adlp-11/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-adlp-11/igt@i915_selftest@live.html
    - bat-dg1-6:          [PASS][3] -> [ABORT][4] +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-dg1-6/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-dg1-6/igt@i915_selftest@live.html
    - bat-dg2-8:          [PASS][5] -> [ABORT][6] +1 other test abort
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-dg2-8/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-dg2-8/igt@i915_selftest@live.html
    - bat-adls-6:         [PASS][7] -> [ABORT][8] +1 other test abort
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-adls-6/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-adls-6/igt@i915_selftest@live.html
    - fi-tgl-1115g4:      [PASS][9] -> [ABORT][10] +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/fi-tgl-1115g4/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/fi-tgl-1115g4/igt@i915_selftest@live.html
    - bat-dg1-7:          [PASS][11] -> [ABORT][12] +1 other test abort
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-dg1-7/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-dg1-7/igt@i915_selftest@live.html
    - bat-adlp-9:         [PASS][13] -> [ABORT][14] +1 other test abort
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-adlp-9/igt@i915_selftest@live.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-adlp-9/igt@i915_selftest@live.html
    - bat-dg2-11:         [PASS][15] -> [ABORT][16] +1 other test abort
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-dg2-11/igt@i915_selftest@live.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-dg2-11/igt@i915_selftest@live.html
    - bat-rpls-4:         [PASS][17] -> [ABORT][18] +1 other test abort
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-rpls-4/igt@i915_selftest@live.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-rpls-4/igt@i915_selftest@live.html

  * igt@i915_selftest@live@sanitycheck:
    - bat-dg2-14:         [PASS][19] -> [ABORT][20] +1 other test abort
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-dg2-14/igt@i915_selftest@live@sanitycheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-dg2-14/igt@i915_selftest@live@sanitycheck.html
    - fi-rkl-11600:       [PASS][21] -> [ABORT][22] +1 other test abort
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/fi-rkl-11600/igt@i915_selftest@live@sanitycheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/fi-rkl-11600/igt@i915_selftest@live@sanitycheck.html
    - bat-dg2-9:          [PASS][23] -> [ABORT][24] +1 other test abort
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-dg2-9/igt@i915_selftest@live@sanitycheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-dg2-9/igt@i915_selftest@live@sanitycheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_143886v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][25] -> [FAIL][26] ([i915#13401])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-dg2-11/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][27] -> [DMESG-FAIL][28] ([i915#12061]) +1 other test dmesg-fail
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-mtlp-8/igt@i915_selftest@live.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-adlp-6:         [PASS][29] -> [ABORT][30] ([i915#13399]) +1 other test abort
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-adlp-6/igt@i915_selftest@live.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-adlp-6/igt@i915_selftest@live.html
    - bat-arlh-3:         [PASS][31] -> [DMESG-FAIL][32] ([i915#12061] / [i915#12435])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-arlh-3/igt@i915_selftest@live.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][33] -> [DMESG-FAIL][34] ([i915#12061])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][35] -> [SKIP][36] ([i915#9197]) +3 other tests skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - {bat-mtlp-9}:       [DMESG-WARN][37] -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-mtlp-9/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-mtlp-9/igt@i915_module_load@load.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [DMESG-FAIL][39] ([i915#12061]) -> [PASS][40] +1 other test pass
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - {bat-mtlp-9}:       [DMESG-FAIL][41] ([i915#12061]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#13399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_16008 -> Patchwork_143886v1

  CI-20190529: 20190529
  CI_DRM_16008: a5cc7d87c1d8de0391edd40d4b7e2ba7c1da0f5b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8207: 9f36f9f9e8825a67b762630c2b31628ddcda5c10 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143886v1: a5cc7d87c1d8de0391edd40d4b7e2ba7c1da0f5b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/index.html

--===============2856242097824916047==
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
<tr><td><b>Series:</b></td><td>drm/i915: Disable RPG during live selftest</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/143886/">https://patchwork.freedesktop.org/series/143886/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16008 -&gt; Patchwork_143886v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_143886v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_143886v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_143886v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-adlp-11/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-adlp-11/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-dg1-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-dg1-6/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-dg2-8/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-adls-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-adls-6/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/fi-tgl-1115g4/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/fi-tgl-1115g4/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-dg1-7/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-dg1-7/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-adlp-9/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-adlp-9/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-dg2-11/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-dg2-11/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-rpls-4/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-rpls-4/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-dg2-14/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-dg2-14/igt@i915_selftest@live@sanitycheck.html">ABORT</a> +1 other test abort</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/fi-rkl-11600/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/fi-rkl-11600/igt@i915_selftest@live@sanitycheck.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-dg2-9/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-dg2-9/igt@i915_selftest@live@sanitycheck.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_143886v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-adlp-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-adlp-6/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399">i915#13399</a>) +1 other test abort</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-arlh-3/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-mtlp-9/igt@i915_module_load@load.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16008/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143886v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16008 -&gt; Patchwork_143886v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16008: a5cc7d87c1d8de0391edd40d4b7e2ba7c1da0f5b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8207: 9f36f9f9e8825a67b762630c2b31628ddcda5c10 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_143886v1: a5cc7d87c1d8de0391edd40d4b7e2ba7c1da0f5b @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2856242097824916047==--
