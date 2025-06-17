Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A63ADD116
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 17:11:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8895F10E4EC;
	Tue, 17 Jun 2025 15:11:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A68D10E4EC;
 Tue, 17 Jun 2025 15:11:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4913327585144126285=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/panel=3A_registe?=
 =?utf-8?q?r_drm=5Fpanel_and_call_prepare/unprepare_for_eDP?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Jun 2025 15:11:33 -0000
Message-ID: <175017309342.88194.14273134477142382128@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250617-edp_panel-v1-1-ce1a581e8fcd@intel.com>
In-Reply-To: <20250617-edp_panel-v1-1-ce1a581e8fcd@intel.com>
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

--===============4913327585144126285==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/panel: register drm_panel and call prepare/unprepare for eDP
URL   : https://patchwork.freedesktop.org/series/150370/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16712 -> Patchwork_150370v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_150370v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_150370v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/index.html

Participating hosts (38 -> 38)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_150370v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-jsl-1:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-jsl-1/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-jsl-1/igt@i915_module_load@load.html
    - bat-arlh-3:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-arlh-3/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-arlh-3/igt@i915_module_load@load.html
    - bat-twl-1:          [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-twl-1/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-twl-1/igt@i915_module_load@load.html
    - bat-rplp-1:         [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-rplp-1/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-rplp-1/igt@i915_module_load@load.html
    - bat-adlp-6:         [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-adlp-6/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-adlp-6/igt@i915_module_load@load.html
    - bat-twl-2:          [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-twl-2/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-twl-2/igt@i915_module_load@load.html
    - bat-mtlp-9:         [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-mtlp-9/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-mtlp-9/igt@i915_module_load@load.html
    - bat-mtlp-8:         [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-mtlp-8/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-mtlp-8/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_150370v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [DMESG-FAIL][17] ([i915#12061]) -> [PASS][18] +1 other test pass
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061


Build changes
-------------

  * Linux: CI_DRM_16712 -> Patchwork_150370v1

  CI-20190529: 20190529
  CI_DRM_16712: 95f0ac069cc2eee10b5d5e0ba67502ccea089de8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8412: 8412
  Patchwork_150370v1: 95f0ac069cc2eee10b5d5e0ba67502ccea089de8 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/index.html

--===============4913327585144126285==
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
<tr><td><b>Series:</b></td><td>drm/i915/panel: register drm_panel and call prepare/unprepare for eDP</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/150370/">https://patchwork.freedesktop.org/series/150370/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16712 -&gt; Patchwork_150370v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_150370v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_150370v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/index.html</p>
<h2>Participating hosts (38 -&gt; 38)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_150370v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-jsl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-arlh-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-arlh-3/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-twl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-twl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-rplp-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-rplp-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-adlp-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-twl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-twl-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-mtlp-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-mtlp-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-mtlp-8/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_150370v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150370v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16712 -&gt; Patchwork_150370v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16712: 95f0ac069cc2eee10b5d5e0ba67502ccea089de8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8412: 8412<br />
  Patchwork_150370v1: 95f0ac069cc2eee10b5d5e0ba67502ccea089de8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4913327585144126285==--
