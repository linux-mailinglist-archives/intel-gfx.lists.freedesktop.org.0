Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2955E98C847
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 00:32:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D92110E1A7;
	Tue,  1 Oct 2024 22:32:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8461510E1A7;
 Tue,  1 Oct 2024 22:32:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3538394192139251954=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Use_DSB_for_pla?=
 =?utf-8?q?ne/color_management_commits_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 01 Oct 2024 22:32:22 -0000
Message-ID: <172782194253.1143910.16644969398453979058@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
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

--===============3538394192139251954==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use DSB for plane/color management commits (rev2)
URL   : https://patchwork.freedesktop.org/series/138095/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15469 -> Patchwork_138095v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/index.html

Participating hosts (43 -> 42)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_138095v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][1] -> [ABORT][2] ([i915#12216]) +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/bat-mtlp-8/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-arls-5:         NOTRUN -> [DMESG-WARN][3] ([i915#11637] / [i915#12133]) +8 other tests dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arls-5/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_tlb:
    - bat-arls-5:         NOTRUN -> [DMESG-WARN][4] ([i915#11637]) +21 other tests dmesg-warn
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arls-5/igt@i915_selftest@live@gt_tlb.html

  * igt@i915_selftest@live@objects:
    - bat-arls-5:         NOTRUN -> [DMESG-WARN][5] ([i915#10341] / [i915#11637]) +2 other tests dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arls-5/igt@i915_selftest@live@objects.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-arlh-2:         [INCOMPLETE][6] ([i915#10341] / [i915#12133]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/bat-arlh-2/igt@i915_selftest@live.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arlh-2/igt@i915_selftest@live.html
    - bat-arls-2:         [ABORT][8] ([i915#12061] / [i915#12133]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/bat-arls-2/igt@i915_selftest@live.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arls-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@hugepages:
    - bat-arlh-2:         [INCOMPLETE][10] -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/bat-arlh-2/igt@i915_selftest@live@hugepages.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arlh-2/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@workarounds:
    - bat-adlp-11:        [INCOMPLETE][12] ([i915#9413]) -> [PASS][13] +1 other test pass
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/bat-adlp-11/igt@i915_selftest@live@workarounds.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-adlp-11/igt@i915_selftest@live@workarounds.html
    - bat-arls-2:         [ABORT][14] ([i915#12061]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/bat-arls-2/igt@i915_selftest@live@workarounds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arls-2/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arls-5:         [ABORT][16] ([i915#12061] / [i915#12133]) -> [DMESG-WARN][17] ([i915#10341] / [i915#12133])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/bat-arls-5/igt@i915_selftest@live.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arls-5/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [ABORT][18] ([i915#12061]) -> [DMESG-WARN][19] ([i915#10341] / [i915#11637])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arls-5/igt@i915_selftest@live@workarounds.html

  
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#11637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15469 -> Patchwork_138095v2

  CI-20190529: 20190529
  CI_DRM_15469: fcdbbdcd11d425434efc837037141c9dfb0fcdec @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8047: 2a1ef45992ee7569d9fc37be875fa78ce3aa5ab8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_138095v2: fcdbbdcd11d425434efc837037141c9dfb0fcdec @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/index.html

--===============3538394192139251954==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use DSB for plane/color management commits (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138095/">https://patchwork.freedesktop.org/series/138095/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15469 -&gt; Patchwork_138095v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_138095v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-mtlp-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216">i915#12216</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arls-5/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) +8 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_tlb:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arls-5/igt@i915_selftest@live@gt_tlb.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a>) +21 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arls-5/igt@i915_selftest@live@objects.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a>) +2 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/bat-arlh-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arlh-2/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/bat-arls-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arls-2/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/bat-arlh-2/igt@i915_selftest@live@hugepages.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arlh-2/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/bat-adlp-11/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-adlp-11/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/bat-arls-2/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arls-2/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/bat-arls-5/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arls-5/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/bat-arls-5/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138095v2/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15469 -&gt; Patchwork_138095v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15469: fcdbbdcd11d425434efc837037141c9dfb0fcdec @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8047: 2a1ef45992ee7569d9fc37be875fa78ce3aa5ab8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_138095v2: fcdbbdcd11d425434efc837037141c9dfb0fcdec @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3538394192139251954==--
