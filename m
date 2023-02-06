Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A5268C737
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 21:04:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15A9710E19D;
	Mon,  6 Feb 2023 20:04:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7D41410E19D;
 Mon,  6 Feb 2023 20:04:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72938AADDC;
 Mon,  6 Feb 2023 20:04:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8106510494810520145=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Mon, 06 Feb 2023 20:04:29 -0000
Message-ID: <167571386943.27492.10730325104114115012@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230206165410.3056073-1-lucas.demarchi@intel.com>
In-Reply-To: <20230206165410.3056073-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915=3A_Fix_GEN8=5FMISCCPC?=
 =?utf-8?q?TL?=
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

--===============8106510494810520145==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915: Fix GEN8_MISCCPCTL
URL   : https://patchwork.freedesktop.org/series/113713/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12704 -> Patchwork_113713v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_113713v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_113713v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/index.html

Participating hosts (36 -> 34)
------------------------------

  Missing    (2): bat-atsm-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_113713v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-flip-vs-modeset@b-dp1:
    - fi-elk-e7500:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/fi-elk-e7500/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/fi-elk-e7500/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_113713v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-dg1-5:          NOTRUN -> [SKIP][3] ([i915#7828])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/bat-dg1-5/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [ABORT][4] ([i915#4983]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@slpc:
    - {bat-rpls-1}:       [DMESG-FAIL][6] ([i915#6367]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@kms_busy@basic@modeset:
    - fi-elk-e7500:       [FAIL][8] -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/fi-elk-e7500/igt@kms_busy@basic@modeset.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/fi-elk-e7500/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828


Build changes
-------------

  * Linux: CI_DRM_12704 -> Patchwork_113713v1

  CI-20190529: 20190529
  CI_DRM_12704: 0f138ae07efe477bd51695d63b03394050bb6e07 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7152: 790b81207a0a6705213ec5ea645bc5e223b2ce1d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113713v1: 0f138ae07efe477bd51695d63b03394050bb6e07 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

204afd36a3d7 drm/i915: Remove unused/wrong INF_UNIT_LEVEL_CLKGATE
80322c878d54 drm/i915: Fix GEN8_MISCCPCTL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/index.html

--===============8106510494810520145==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915: Fix GEN8_MISCCPCTL</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113713/">https://patchwork.freedesktop.org/series/113713/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12704 -&gt; Patchwork_113713v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_113713v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_113713v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/index.html</p>
<h2>Participating hosts (36 -&gt; 34)</h2>
<p>Missing    (2): bat-atsm-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_113713v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@basic-flip-vs-modeset@b-dp1:<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/fi-elk-e7500/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/fi-elk-e7500/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113713v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_chamelium_hpd@common-hpd-after-suspend:<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/bat-dg1-5/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/fi-elk-e7500/igt@kms_busy@basic@modeset.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/fi-elk-e7500/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12704 -&gt; Patchwork_113713v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12704: 0f138ae07efe477bd51695d63b03394050bb6e07 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7152: 790b81207a0a6705213ec5ea645bc5e223b2ce1d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113713v1: 0f138ae07efe477bd51695d63b03394050bb6e07 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>204afd36a3d7 drm/i915: Remove unused/wrong INF_UNIT_LEVEL_CLKGATE<br />
80322c878d54 drm/i915: Fix GEN8_MISCCPCTL</p>

</body>
</html>

--===============8106510494810520145==--
