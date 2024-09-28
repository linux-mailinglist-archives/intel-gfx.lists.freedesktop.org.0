Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF030989019
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Sep 2024 17:36:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3A6910E21E;
	Sat, 28 Sep 2024 15:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D7A210E08E;
 Sat, 28 Sep 2024 15:36:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3354640219227668435=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/backlight=3A_Remov?=
 =?utf-8?q?e_a_useless_kstrdup=5Fconst=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christophe JAILLET" <christophe.jaillet@wanadoo.fr>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 28 Sep 2024 15:36:01 -0000
Message-ID: <172753776156.1131456.4900746910778336059@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <3b3d3af8739e3016f3f80df0aa85b3c06230a385.1727533674.git.christophe.jaillet@wanadoo.fr>
In-Reply-To: <3b3d3af8739e3016f3f80df0aa85b3c06230a385.1727533674.git.christophe.jaillet@wanadoo.fr>
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

--===============3354640219227668435==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/backlight: Remove a useless kstrdup_const()
URL   : https://patchwork.freedesktop.org/series/139246/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15454 -> Patchwork_139246v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139246v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139246v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139246v1/index.html

Participating hosts (37 -> 36)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139246v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-adlp-6:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/bat-adlp-6/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139246v1/bat-adlp-6/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_139246v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-mtlp-6:         NOTRUN -> [DMESG-WARN][3] ([i915#10341])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139246v1/bat-mtlp-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@hangcheck:
    - bat-mtlp-6:         NOTRUN -> [DMESG-WARN][4] ([i915#11349])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139246v1/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - bat-mtlp-6:         [INCOMPLETE][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139246v1/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-dg2-11:         [ABORT][7] ([i915#12133]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/bat-dg2-11/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139246v1/bat-dg2-11/igt@i915_selftest@live.html

  * igt@i915_selftest@live@active:
    - bat-dg2-11:         [ABORT][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/bat-dg2-11/igt@i915_selftest@live@active.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139246v1/bat-dg2-11/igt@i915_selftest@live@active.html

  
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133


Build changes
-------------

  * Linux: CI_DRM_15454 -> Patchwork_139246v1

  CI-20190529: 20190529
  CI_DRM_15454: 26055f21c653a310af74417fe81466cb3ede668c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8036: 5aa244179b574e949a07ab1c7494033081735718 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_139246v1: 26055f21c653a310af74417fe81466cb3ede668c @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139246v1/index.html

--===============3354640219227668435==
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
<tr><td><b>Series:</b></td><td>drm/i915/backlight: Remove a useless kstrdup_const()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139246/">https://patchwork.freedesktop.org/series/139246/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139246v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139246v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15454 -&gt; Patchwork_139246v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139246v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139246v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139246v1/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139246v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139246v1/bat-adlp-6/igt@i915_module_load@load.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139246v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139246v1/bat-mtlp-6/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139246v1/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139246v1/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/bat-dg2-11/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139246v1/bat-dg2-11/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/bat-dg2-11/igt@i915_selftest@live@active.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139246v1/bat-dg2-11/igt@i915_selftest@live@active.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15454 -&gt; Patchwork_139246v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15454: 26055f21c653a310af74417fe81466cb3ede668c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8036: 5aa244179b574e949a07ab1c7494033081735718 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_139246v1: 26055f21c653a310af74417fe81466cb3ede668c @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3354640219227668435==--
