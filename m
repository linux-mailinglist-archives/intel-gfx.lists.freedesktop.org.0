Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D92A2AB2C0
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 09:50:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC61E892D6;
	Mon,  9 Nov 2020 08:50:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D0052892D6;
 Mon,  9 Nov 2020 08:50:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8546A0091;
 Mon,  9 Nov 2020 08:50:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Mon, 09 Nov 2020 08:50:46 -0000
Message-ID: <160491184681.18040.14583873031382778505@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201105223359.28203-1-manasi.d.navare@intel.com>
In-Reply-To: <20201105223359.28203-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRmlu?=
 =?utf-8?q?al_prep_series_for_bigjoiner_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0305659676=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0305659676==
Content-Type: multipart/alternative;
 boundary="===============6854808548773838733=="

--===============6854808548773838733==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Final prep series for bigjoiner (rev2)
URL   : https://patchwork.freedesktop.org/series/83547/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9294 -> Patchwork_18871
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18871 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18871, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18871:

### CI changes ###

#### Possible regressions ####

  * boot (NEW):
    - fi-icl-y:           [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-icl-y/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-icl-y/boot.html
    - fi-cfl-8109u:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-cfl-8109u/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-cfl-8109u/boot.html
    - fi-cfl-8700k:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-cfl-8700k/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-cfl-8700k/boot.html
    - {fi-ehl-1}:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-ehl-1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-ehl-1/boot.html
    - fi-skl-6700k2:      [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-skl-6700k2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-skl-6700k2/boot.html
    - fi-cfl-guc:         [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-cfl-guc/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-cfl-guc/boot.html
    - fi-skl-lmem:        [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-skl-lmem/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-skl-lmem/boot.html
    - fi-glk-dsi:         [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-glk-dsi/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-glk-dsi/boot.html
    - fi-kbl-7500u:       [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-kbl-7500u/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-kbl-7500u/boot.html
    - fi-skl-guc:         [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-skl-guc/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-skl-guc/boot.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9294 and Patchwork_18871:

### New CI tests (1) ###

  * boot:
    - Statuses : 12 fail(s) 25 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18871 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot (NEW):
    - fi-apl-guc:         [PASS][21] -> [FAIL][22] ([i915#1635] / [i915#348])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-apl-guc/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-apl-guc/boot.html
    - fi-bxt-dsi:         [PASS][23] -> [FAIL][24] ([i915#1635])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-bxt-dsi/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-bxt-dsi/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-byt-j1900/igt@i915_module_load@reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-byt-j1900/igt@i915_module_load@reload.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-byt-j1900:       [DMESG-WARN][27] ([i915#1982]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-byt-j1900/igt@gem_exec_suspend@basic-s3.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-byt-j1900/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_busy@basic@flip:
    - {fi-kbl-7560u}:     [DMESG-WARN][29] ([i915#1982]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-kbl-7560u/igt@kms_busy@basic@flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-kbl-7560u/igt@kms_busy@basic@flip.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][31] ([fdo#109271]) -> [FAIL][32] ([i915#579])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2524]: https://gitlab.freedesktop.org/drm/intel/issues/2524
  [i915#348]: https://gitlab.freedesktop.org/drm/intel/issues/348
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-cml-u2 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9294 -> Patchwork_18871

  CI-20190529: 20190529
  CI_DRM_9294: 75a6367920296190fdde8365c2afdf74de0a9fbc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5839: 2dbd64a6301e36eb432bc50ad7021fabaeebd1f4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18871: 18446671587a5e910386c296dae72f4958d33d96 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

18446671587a drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
8036c2301b4a drm/i915/dp: Add from_crtc_state to copy color blobs
9ec71e9df46e drm/i915: Pass intel_atomic_state instead of drm_atomic_state
2ea170a05527 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
c8081c28ad59 drm/i915/dp: Add a wrapper function around get_pipe_config
99648dc9d2bf drm/i915: Move encoder->get_config to a new function
6cf2a64fbb76 drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/index.html

--===============6854808548773838733==
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
<tr><td><b>Series:</b></td><td>Final prep series for bigjoiner (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83547/">https://patchwork.freedesktop.org/series/83547/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9294 -&gt; Patchwork_18871</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18871 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18871, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18871:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>boot (NEW):</p>
<ul>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-icl-y/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-icl-y/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-cfl-8109u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-cfl-8700k/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-cfl-8700k/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-ehl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-ehl-1/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-skl-6700k2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-skl-6700k2/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-cfl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-cfl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-skl-lmem/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-skl-lmem/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-glk-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-glk-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-kbl-7500u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-kbl-7500u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-skl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-skl-guc/boot.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9294 and Patchwork_18871:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 12 fail(s) 25 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18871 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot (NEW):</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/348">i915#348</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-bxt-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-bxt-dsi/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-byt-j1900/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-byt-j1900/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-kbl-7560u/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-kbl-7560u/igt@kms_busy@basic@flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9294/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18871/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-cml-u2 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9294 -&gt; Patchwork_18871</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9294: 75a6367920296190fdde8365c2afdf74de0a9fbc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5839: 2dbd64a6301e36eb432bc50ad7021fabaeebd1f4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18871: 18446671587a5e910386c296dae72f4958d33d96 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>18446671587a drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.<br />
8036c2301b4a drm/i915/dp: Add from_crtc_state to copy color blobs<br />
9ec71e9df46e drm/i915: Pass intel_atomic_state instead of drm_atomic_state<br />
2ea170a05527 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split<br />
c8081c28ad59 drm/i915/dp: Add a wrapper function around get_pipe_config<br />
99648dc9d2bf drm/i915: Move encoder-&gt;get_config to a new function<br />
6cf2a64fbb76 drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes</p>

</body>
</html>

--===============6854808548773838733==--

--===============0305659676==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0305659676==--
