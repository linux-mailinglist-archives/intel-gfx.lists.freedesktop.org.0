Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B469288F7
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 14:49:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D299810EA34;
	Fri,  5 Jul 2024 12:49:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE47910EAD6;
 Fri,  5 Jul 2024 12:49:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2021040561216539204=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Introduce_drm_sharpening_pr?=
 =?utf-8?q?operty_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 05 Jul 2024 12:49:50 -0000
Message-ID: <172018379096.30593.3530304543909363485@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240705090205.72302-1-nemesa.garg@intel.com>
In-Reply-To: <20240705090205.72302-1-nemesa.garg@intel.com>
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

--===============2021040561216539204==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce drm sharpening property (rev3)
URL   : https://patchwork.freedesktop.org/series/129888/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15036 -> Patchwork_129888v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v3/index.html

Participating hosts (40 -> 35)
------------------------------

  Missing    (5): fi-snb-2520m fi-kbl-8809g bat-dg2-11 bat-jsl-3 bat-arlh-2 

Known issues
------------

  Here are the changes found in Patchwork_129888v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_frontbuffer_tracking@basic:
    - bat-arls-2:         [PASS][1] -> [DMESG-WARN][2] ([i915#7507])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15036/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v3/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1:
    - bat-dg2-8:          [PASS][3] -> [FAIL][4] ([i915#11379])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15036/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v3/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7567u:       [DMESG-WARN][5] ([i915#180] / [i915#9925]) -> [DMESG-WARN][6] ([i915#180] / [i915#1982] / [i915#9925])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15036/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v3/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10886
  [i915#11379]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11379
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#7507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507
  [i915#9925]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9925


Build changes
-------------

  * Linux: CI_DRM_15036 -> Patchwork_129888v3

  CI-20190529: 20190529
  CI_DRM_15036: cdd1a80a2d16d5213af20a29eb7570a7651db7dc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7916: 971cfc9d6afc8242db25d1eabd4ae00890d9144a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129888v3: cdd1a80a2d16d5213af20a29eb7570a7651db7dc @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v3/index.html

--===============2021040561216539204==
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
<tr><td><b>Series:</b></td><td>Introduce drm sharpening property (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129888/">https://patchwork.freedesktop.org/series/129888/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15036 -&gt; Patchwork_129888v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v3/index.html</p>
<h2>Participating hosts (40 -&gt; 35)</h2>
<p>Missing    (5): fi-snb-2520m fi-kbl-8809g bat-dg2-11 bat-jsl-3 bat-arlh-2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129888v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15036/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v3/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507">i915#7507</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15036/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v3/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11379">i915#11379</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15036/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9925">i915#9925</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v3/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9925">i915#9925</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15036 -&gt; Patchwork_129888v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15036: cdd1a80a2d16d5213af20a29eb7570a7651db7dc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7916: 971cfc9d6afc8242db25d1eabd4ae00890d9144a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129888v3: cdd1a80a2d16d5213af20a29eb7570a7651db7dc @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2021040561216539204==--
