Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C20C9B7010
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 23:54:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFEC910E06F;
	Wed, 30 Oct 2024 22:54:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E5A410E06F;
 Wed, 30 Oct 2024 22:54:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5860692088442552491=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/color=3A_Stop_usin?=
 =?utf-8?q?g_non-posted_DSB_writes_for_legacy_LUT?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Oct 2024 22:54:04 -0000
Message-ID: <173032884411.1364410.10840116593311910925@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241030210750.6550-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241030210750.6550-1-ville.syrjala@linux.intel.com>
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

--===============5860692088442552491==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/color: Stop using non-posted DSB writes for legacy LUT
URL   : https://patchwork.freedesktop.org/series/140739/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15615 -> Patchwork_140739v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/index.html

Participating hosts (47 -> 45)
------------------------------

  Missing    (2): fi-snb-2520m bat-dg1-6 

Known issues
------------

  Here are the changes found in Patchwork_140739v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-dg2-8:          [PASS][1] -> [ABORT][2] ([i915#12133])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/bat-dg2-8/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/bat-dg2-8/igt@i915_selftest@live.html
    - bat-dg2-9:          [PASS][3] -> [DMESG-FAIL][4] ([i915#12133] / [i915#9500])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/bat-dg2-9/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/bat-dg2-9/igt@i915_selftest@live.html

  * igt@i915_selftest@live@execlists:
    - bat-dg2-8:          [PASS][5] -> [ABORT][6] ([i915#12305])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/bat-dg2-8/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/bat-dg2-8/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [PASS][7] -> [DMESG-FAIL][8] ([i915#9500])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [ABORT][9] ([i915#12133] / [i915#12216]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/bat-mtlp-8/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-arlh-3:         [ABORT][11] ([i915#12133]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/bat-arlh-3/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [ABORT][13] ([i915#12061]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-8:         [ABORT][15] ([i915#12216]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/bat-mtlp-8/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/bat-mtlp-8/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216
  [i915#12305]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12305
  [i915#9500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500


Build changes
-------------

  * Linux: CI_DRM_15615 -> Patchwork_140739v1

  CI-20190529: 20190529
  CI_DRM_15615: c245557007af0a1c23da00c47732ae1dadda7dd3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8089: 2339a396e8c38ba1582a6fc18fe4f7ed178979cc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_140739v1: c245557007af0a1c23da00c47732ae1dadda7dd3 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/index.html

--===============5860692088442552491==
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
<tr><td><b>Series:</b></td><td>drm/i915/color: Stop using non-posted DSB writes for legacy LUT</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140739/">https://patchwork.freedesktop.org/series/140739/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15615 -&gt; Patchwork_140739v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/index.html</p>
<h2>Participating hosts (47 -&gt; 45)</h2>
<p>Missing    (2): fi-snb-2520m bat-dg1-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140739v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/bat-dg2-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/bat-dg2-9/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/bat-dg2-9/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500">i915#9500</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/bat-dg2-8/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/bat-dg2-8/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12305">i915#12305</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500">i915#9500</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/bat-mtlp-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216">i915#12216</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/bat-arlh-3/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/bat-arlh-3/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/bat-arlh-3/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/bat-mtlp-8/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216">i915#12216</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/bat-mtlp-8/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15615 -&gt; Patchwork_140739v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15615: c245557007af0a1c23da00c47732ae1dadda7dd3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8089: 2339a396e8c38ba1582a6fc18fe4f7ed178979cc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_140739v1: c245557007af0a1c23da00c47732ae1dadda7dd3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5860692088442552491==--
