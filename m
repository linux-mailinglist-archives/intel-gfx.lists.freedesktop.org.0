Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5983986BEB3
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 03:05:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E959710E263;
	Thu, 29 Feb 2024 02:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6186610E263;
 Thu, 29 Feb 2024 02:05:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1214758922754226224=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/selftest=5Fhangche?=
 =?utf-8?q?ck=3A_Check_sanity_with_more_patience?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Feb 2024 02:05:01 -0000
Message-ID: <170917230139.375736.2483335475411231030@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240228152500.38267-2-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20240228152500.38267-2-janusz.krzysztofik@linux.intel.com>
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

--===============1214758922754226224==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftest_hangcheck: Check sanity with more patience
URL   : https://patchwork.freedesktop.org/series/130512/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14362 -> Patchwork_130512v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/index.html

Participating hosts (41 -> 38)
------------------------------

  Missing    (3): fi-glk-j4005 bat-kbl-2 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_130512v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-arls-3:         [PASS][1] -> [FAIL][2] ([i915#10234])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/bat-arls-3/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/bat-arls-3/boot.html
    - bat-jsl-1:          [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/bat-jsl-1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/bat-jsl-1/boot.html
    - fi-cfl-8109u:       [PASS][5] -> [FAIL][6] ([i915#8293])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/fi-cfl-8109u/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - bat-jsl-3:          [INCOMPLETE][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/bat-jsl-3/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/bat-jsl-3/igt@i915_pm_rpm@module-reload.html

  
  [i915#10234]: https://gitlab.freedesktop.org/drm/intel/issues/10234
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14362 -> Patchwork_130512v1

  CI-20190529: 20190529
  CI_DRM_14362: eec7a135b960c7b83b13a7c821e30f956074e439 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7734: 7734
  Patchwork_130512v1: eec7a135b960c7b83b13a7c821e30f956074e439 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

24719df34fdc drm/i915/selftest_hangcheck: Check sanity with more patience

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/index.html

--===============1214758922754226224==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftest_hangcheck: Check sanity with more patience</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130512/">https://patchwork.freedesktop.org/series/130512/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14362 -&gt; Patchwork_130512v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): fi-glk-j4005 bat-kbl-2 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130512v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/bat-arls-3/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/bat-arls-3/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10234">i915#10234</a>)</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/bat-jsl-3/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/bat-jsl-3/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14362 -&gt; Patchwork_130512v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14362: eec7a135b960c7b83b13a7c821e30f956074e439 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7734: 7734<br />
  Patchwork_130512v1: eec7a135b960c7b83b13a7c821e30f956074e439 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>24719df34fdc drm/i915/selftest_hangcheck: Check sanity with more patience</p>

</body>
</html>

--===============1214758922754226224==--
