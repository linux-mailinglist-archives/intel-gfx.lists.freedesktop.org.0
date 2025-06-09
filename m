Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C42AD2329
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 18:00:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5663A10E0EA;
	Mon,  9 Jun 2025 16:00:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D4DA10E3D2;
 Mon,  9 Jun 2025 16:00:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4255433008356796391=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/flipq=3A_Rough_f?=
 =?utf-8?q?lip_queue_implementation_=28rev8=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Jun 2025 16:00:47 -0000
Message-ID: <174948484743.61261.9867312659312205689@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
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

--===============4255433008356796391==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/flipq: Rough flip queue implementation (rev8)
URL   : https://patchwork.freedesktop.org/series/149110/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16673 -> Patchwork_149110v8
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_149110v8 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_149110v8, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_149110v8:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic@modeset:
    - bat-adls-6:         [PASS][1] -> [ABORT][2] +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-adls-6/igt@kms_busy@basic@modeset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-adls-6/igt@kms_busy@basic@modeset.html
    - bat-dg1-7:          [PASS][3] -> [ABORT][4] +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-dg1-7/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-dg1-7/igt@kms_busy@basic@modeset.html
    - fi-tgl-1115g4:      [PASS][5] -> [ABORT][6] +1 other test abort
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html

  * igt@kms_force_connector_basic@force-edid:
    - bat-dg1-6:          [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-dg1-6/igt@kms_force_connector_basic@force-edid.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-dg1-6/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_psr@psr-primary-page-flip@edp-1:
    - bat-twl-1:          [PASS][9] -> [SKIP][10] +7 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-twl-1/igt@kms_psr@psr-primary-page-flip@edp-1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-twl-1/igt@kms_psr@psr-primary-page-flip@edp-1.html

  * igt@kms_psr@psr-sprite-plane-onoff@edp-1:
    - bat-twl-2:          [PASS][11] -> [SKIP][12] +7 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-twl-2/igt@kms_psr@psr-sprite-plane-onoff@edp-1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-twl-2/igt@kms_psr@psr-sprite-plane-onoff@edp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_149110v8 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [PASS][13] -> [DMESG-WARN][14] ([i915#13494])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-mtlp-9/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-mtlp-9/igt@i915_module_load@load.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][15] -> [DMESG-FAIL][16] ([i915#12061]) +1 other test dmesg-fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-mtlp-8/igt@i915_selftest@live.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [PASS][17] -> [DMESG-FAIL][18] ([i915#12061]) +1 other test dmesg-fail
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_psr@psr-cursor-plane-move:
    - fi-skl-6600u:       [PASS][19] -> [SKIP][20] +7 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/fi-skl-6600u/igt@kms_psr@psr-cursor-plane-move.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/fi-skl-6600u/igt@kms_psr@psr-cursor-plane-move.html
    - bat-adlp-6:         [PASS][21] -> [SKIP][22] ([i915#9688]) +7 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-adlp-6/igt@kms_psr@psr-cursor-plane-move.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-adlp-6/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_psr@psr-cursor-plane-move@edp-1:
    - bat-mtlp-8:         [PASS][23] -> [SKIP][24] ([i915#9688]) +5 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-mtlp-8/igt@kms_psr@psr-cursor-plane-move@edp-1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-mtlp-8/igt@kms_psr@psr-cursor-plane-move@edp-1.html
    - bat-mtlp-9:         [PASS][25] -> [SKIP][26] ([i915#9688]) +5 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-mtlp-9/igt@kms_psr@psr-cursor-plane-move@edp-1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-mtlp-9/igt@kms_psr@psr-cursor-plane-move@edp-1.html
    - bat-arlh-3:         [PASS][27] -> [SKIP][28] ([i915#9688]) +5 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-arlh-3/igt@kms_psr@psr-cursor-plane-move@edp-1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-arlh-3/igt@kms_psr@psr-cursor-plane-move@edp-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-dg2-8:          [ABORT][29] -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-dg2-8/igt@i915_selftest@live.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-dg2-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@client:
    - bat-dg2-8:          [ABORT][31] ([i915#14201]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-dg2-8/igt@i915_selftest@live@client.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-dg2-8/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@guc_hang:
    - bat-twl-2:          [INCOMPLETE][33] ([i915#14096]) -> [PASS][34] +1 other test pass
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-twl-2/igt@i915_selftest@live@guc_hang.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-twl-2/igt@i915_selftest@live@guc_hang.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-9:         [DMESG-FAIL][35] ([i915#12061]) -> [PASS][36] +1 other test pass
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - bat-dg2-13:         [FAIL][37] -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html

  
#### Warnings ####

  * igt@kms_psr@psr-primary-mmap-gtt:
    - bat-mtlp-9:         [SKIP][39] ([i915#4077] / [i915#9688]) -> [SKIP][40] ([i915#9688]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html
    - bat-mtlp-8:         [SKIP][41] ([i915#4077] / [i915#9688]) -> [SKIP][42] ([i915#9688]) +1 other test skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt.html
    - bat-arlh-3:         [SKIP][43] ([i915#12637] / [i915#9688]) -> [SKIP][44] ([i915#9688]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-arlh-3/igt@kms_psr@psr-primary-mmap-gtt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-arlh-3/igt@kms_psr@psr-primary-mmap-gtt.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
  [i915#14096]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14096
  [i915#14201]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688


Build changes
-------------

  * Linux: CI_DRM_16673 -> Patchwork_149110v8

  CI-20190529: 20190529
  CI_DRM_16673: 40c78d0f4b5d532ada0e4a0a82bb219397796164 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8401: 8401
  Patchwork_149110v8: 40c78d0f4b5d532ada0e4a0a82bb219397796164 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/index.html

--===============4255433008356796391==
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
<tr><td><b>Series:</b></td><td>drm/i915/flipq: Rough flip queue implementation (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/149110/">https://patchwork.freedesktop.org/series/149110/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16673 -&gt; Patchwork_149110v8</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_149110v8 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_149110v8, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_149110v8:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-adls-6/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-adls-6/igt@kms_busy@basic@modeset.html">ABORT</a> +1 other test abort</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-dg1-7/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-dg1-7/igt@kms_busy@basic@modeset.html">ABORT</a> +1 other test abort</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-dg1-6/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-dg1-6/igt@kms_force_connector_basic@force-edid.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip@edp-1:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-twl-1/igt@kms_psr@psr-primary-page-flip@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-twl-1/igt@kms_psr@psr-primary-page-flip@edp-1.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff@edp-1:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-twl-2/igt@kms_psr@psr-sprite-plane-onoff@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-twl-2/igt@kms_psr@psr-sprite-plane-onoff@edp-1.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_149110v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-mtlp-9/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494">i915#13494</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/fi-skl-6600u/igt@kms_psr@psr-cursor-plane-move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/fi-skl-6600u/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> +7 other tests skip</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-adlp-6/igt@kms_psr@psr-cursor-plane-move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-adlp-6/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move@edp-1:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-mtlp-8/igt@kms_psr@psr-cursor-plane-move@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-mtlp-8/igt@kms_psr@psr-cursor-plane-move@edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +5 other tests skip</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-mtlp-9/igt@kms_psr@psr-cursor-plane-move@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-mtlp-9/igt@kms_psr@psr-cursor-plane-move@edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +5 other tests skip</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-arlh-3/igt@kms_psr@psr-cursor-plane-move@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-arlh-3/igt@kms_psr@psr-cursor-plane-move@edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +5 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-dg2-8/igt@i915_selftest@live.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-dg2-8/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-dg2-8/igt@i915_selftest@live@client.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-dg2-8/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_hang:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-twl-2/igt@i915_selftest@live@guc_hang.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14096">i915#14096</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-twl-2/igt@i915_selftest@live@guc_hang.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@psr-primary-mmap-gtt:<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +1 other test skip</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +1 other test skip</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16673/bat-arlh-3/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149110v8/bat-arlh-3/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16673 -&gt; Patchwork_149110v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16673: 40c78d0f4b5d532ada0e4a0a82bb219397796164 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8401: 8401<br />
  Patchwork_149110v8: 40c78d0f4b5d532ada0e4a0a82bb219397796164 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4255433008356796391==--
