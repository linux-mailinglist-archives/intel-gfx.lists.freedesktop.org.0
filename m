Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAB5507B65
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 22:57:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5E9410E063;
	Tue, 19 Apr 2022 20:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B88F10E063;
 Tue, 19 Apr 2022 20:57:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2CFC8A0096;
 Tue, 19 Apr 2022 20:57:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5893912755866555380=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 19 Apr 2022 20:57:02 -0000
Message-ID: <165040182215.19107.1600619357898158872@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220419193314.526966-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220419193314.526966-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgR1ND?=
 =?utf-8?q?_support_=28rev7=29?=
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

--===============5893912755866555380==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: GSC support (rev7)
URL   : https://patchwork.freedesktop.org/series/102160/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11520 -> Patchwork_102160v7
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_102160v7 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102160v7, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/index.html

Participating hosts (50 -> 46)
------------------------------

  Additional (1): bat-adlm-1 
  Missing    (5): fi-kbl-soraka fi-hsw-4200u fi-bsw-cyan fi-icl-u2 fi-ctg-p8600 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102160v7:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][1] ([i915#4494] / [i915#4957]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_lmem_swapping@random-engines:
    - {bat-rpls-2}:       NOTRUN -> [FAIL][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/bat-rpls-2/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_module_load@reload:
    - {bat-rpls-2}:       [INCOMPLETE][4] ([i915#5329]) -> [DMESG-WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/bat-rpls-2/igt@i915_module_load@reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/bat-rpls-2/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_102160v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [PASS][6] -> [DMESG-FAIL][7] ([i915#4494] / [i915#4957])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-u2:          [PASS][8] -> [DMESG-WARN][9] ([i915#402])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/fi-tgl-u2/igt@kms_busy@basic@flip.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/fi-tgl-u2/igt@kms_busy@basic@flip.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][10] -> [DMESG-WARN][11] ([i915#4269])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@i915_pm_rps@basic-api:
    - fi-glk-j4005:       [DMESG-WARN][12] ([i915#118]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/fi-glk-j4005/igt@i915_pm_rps@basic-api.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/fi-glk-j4005/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cfl-8700k:       [DMESG-FAIL][14] ([i915#5334]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-1115g4:      [DMESG-FAIL][16] ([i915#3987]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][18] ([i915#3921]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_busy@basic@modeset:
    - {bat-adlp-6}:       [DMESG-WARN][20] ([i915#3576]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/bat-adlp-6/igt@kms_busy@basic@modeset.html

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - fi-tgl-u2:          [DMESG-WARN][22] ([i915#402]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5329]: https://gitlab.freedesktop.org/drm/intel/issues/5329
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5607]: https://gitlab.freedesktop.org/drm/intel/issues/5607


Build changes
-------------

  * Linux: CI_DRM_11520 -> Patchwork_102160v7

  CI-20190529: 20190529
  CI_DRM_11520: c0088948b7f76b77e1f7c5dfd0d034b14cba90a8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6440: 04262fc75ff3ec42f4db0c929d46b7cd5083911f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102160v7: c0088948b7f76b77e1f7c5dfd0d034b14cba90a8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

75d1c9f6e9ee HAX: drm/i915: force INTEL_MEI_GSC on for CI
78d9ccc9028d drm/i915/dg2: add gsc with special gsc bar offsets
1d3006a16a01 mei: gsc: retrieve the firmware version
d68f6318a7fd mei: gsc: add runtime pm handlers
a8fc34976d6a mei: gsc: setup char driver alive in spite of firmware handshake failure
689d5bb6f9d3 mei: add support for graphics system controller (gsc) devices
168fd941fd71 drm/i915/gsc: add gsc as a mei auxiliary device

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/index.html

--===============5893912755866555380==
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
<tr><td><b>Series:</b></td><td>GSC support (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102160/">https://patchwork.freedesktop.org/series/102160/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11520 -&gt; Patchwork_102160v7</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_102160v7 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_102160v7, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/index.html</p>
<h2>Participating hosts (50 -&gt; 46)</h2>
<p>Additional (1): bat-adlm-1 <br />
  Missing    (5): fi-kbl-soraka fi-hsw-4200u fi-bsw-cyan fi-icl-u2 fi-ctg-p8600 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102160v7:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/bat-rpls-2/igt@gem_lmem_swapping@random-engines.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/bat-rpls-2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5329">i915#5329</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/bat-rpls-2/igt@i915_module_load@reload.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102160v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/fi-tgl-u2/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/fi-tgl-u2/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/fi-glk-j4005/igt@i915_pm_rps@basic-api.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/fi-glk-j4005/igt@i915_pm_rps@basic-api.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3987">i915#3987</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/bat-adlp-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11520/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v7/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11520 -&gt; Patchwork_102160v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11520: c0088948b7f76b77e1f7c5dfd0d034b14cba90a8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6440: 04262fc75ff3ec42f4db0c929d46b7cd5083911f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102160v7: c0088948b7f76b77e1f7c5dfd0d034b14cba90a8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>75d1c9f6e9ee HAX: drm/i915: force INTEL_MEI_GSC on for CI<br />
78d9ccc9028d drm/i915/dg2: add gsc with special gsc bar offsets<br />
1d3006a16a01 mei: gsc: retrieve the firmware version<br />
d68f6318a7fd mei: gsc: add runtime pm handlers<br />
a8fc34976d6a mei: gsc: setup char driver alive in spite of firmware handshake failure<br />
689d5bb6f9d3 mei: add support for graphics system controller (gsc) devices<br />
168fd941fd71 drm/i915/gsc: add gsc as a mei auxiliary device</p>

</body>
</html>

--===============5893912755866555380==--
