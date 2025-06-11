Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 932D0AD4BEF
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 08:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA43710E042;
	Wed, 11 Jun 2025 06:40:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B522810E042;
 Wed, 11 Jun 2025 06:40:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0506932998077311775=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Fix_m?=
 =?utf-8?q?acro_HAS=5FULTRAJOINER_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Jun 2025 06:40:33 -0000
Message-ID: <174962403373.66486.2445065327200840186@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250611053039.377695-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250611053039.377695-1-ankit.k.nautiyal@intel.com>
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

--===============0506932998077311775==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Fix macro HAS_ULTRAJOINER (rev2)
URL   : https://patchwork.freedesktop.org/series/149862/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16677 -> Patchwork_149862v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149862v2/index.html

Participating hosts (41 -> 38)
------------------------------

  Missing    (3): bat-arlh-2 fi-snb-2520m bat-adlp-6 

Known issues
------------

  Here are the changes found in Patchwork_149862v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][1] -> [DMESG-FAIL][2] ([i915#12061]) +1 other test dmesg-fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16677/bat-mtlp-8/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149862v2/bat-mtlp-8/igt@i915_selftest@live.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-twl-2:          [ABORT][3] ([i915#14357]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16677/bat-twl-2/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149862v2/bat-twl-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@guc_hang:
    - bat-twl-2:          [ABORT][5] ([i915#14379]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16677/bat-twl-2/igt@i915_selftest@live@guc_hang.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149862v2/bat-twl-2/igt@i915_selftest@live@guc_hang.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#14357]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14357
  [i915#14379]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14379


Build changes
-------------

  * Linux: CI_DRM_16677 -> Patchwork_149862v2

  CI-20190529: 20190529
  CI_DRM_16677: 7bc153635620254b73cfe8714ce42768b2bf6d60 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8402: ad7a9182bc87a1fe9875de9956b620f9d25485df @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_149862v2: 7bc153635620254b73cfe8714ce42768b2bf6d60 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149862v2/index.html

--===============0506932998077311775==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Fix macro HAS_ULTRAJOINER (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/149862/">https://patchwork.freedesktop.org/series/149862/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149862v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149862v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16677 -&gt; Patchwork_149862v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149862v2/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): bat-arlh-2 fi-snb-2520m bat-adlp-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_149862v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16677/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149862v2/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16677/bat-twl-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14357">i915#14357</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149862v2/bat-twl-2/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_hang:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16677/bat-twl-2/igt@i915_selftest@live@guc_hang.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14379">i915#14379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149862v2/bat-twl-2/igt@i915_selftest@live@guc_hang.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16677 -&gt; Patchwork_149862v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16677: 7bc153635620254b73cfe8714ce42768b2bf6d60 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8402: ad7a9182bc87a1fe9875de9956b620f9d25485df @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_149862v2: 7bc153635620254b73cfe8714ce42768b2bf6d60 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0506932998077311775==--
