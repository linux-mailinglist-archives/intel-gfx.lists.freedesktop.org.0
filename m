Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B269977C8
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 23:47:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA54D10E81A;
	Wed,  9 Oct 2024 21:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C68E510E81A;
 Wed,  9 Oct 2024 21:47:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2619299156623013572=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/xe=3A_Fix_HPD_interrupt?=
 =?utf-8?q?_enabling_during_runtime_resume?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 09 Oct 2024 21:47:26 -0000
Message-ID: <172851044680.1212464.5438507671110460158@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241009194358.1321200-1-imre.deak@intel.com>
In-Reply-To: <20241009194358.1321200-1-imre.deak@intel.com>
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

--===============2619299156623013572==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/xe: Fix HPD interrupt enabling during runtime resume
URL   : https://patchwork.freedesktop.org/series/139813/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15510 -> Patchwork_139813v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-rpls-4 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_139813v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-arlh-2:         [PASS][1] -> [ABORT][2] ([i915#12133])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15510/bat-arlh-2/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/bat-arlh-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-2:         [PASS][3] -> [ABORT][4] ([i915#12061])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15510/bat-arlh-2/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/bat-arlh-2/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-dg2-11:         [ABORT][5] ([i915#12133]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15510/bat-dg2-11/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/bat-dg2-11/igt@i915_selftest@live.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-11:         [ABORT][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15510/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/bat-dg2-11/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [ABORT][9] ([i915#12216]) -> [PASS][10] +1 other test pass
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15510/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
    - bat-adlp-6:         [INCOMPLETE][11] ([i915#9413]) -> [PASS][12] +1 other test pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15510/bat-adlp-6/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/bat-adlp-6/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [DMESG-WARN][13] ([i915#11621] / [i915#180]) -> [DMESG-WARN][14] ([i915#11621] / [i915#180] / [i915#1982]) +1 other test dmesg-warn
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15510/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html

  
  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15510 -> Patchwork_139813v1

  CI-20190529: 20190529
  CI_DRM_15510: e1aba2bf4f79f2f8ae7ce538124d445fc91df852 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8061: 8061
  Patchwork_139813v1: e1aba2bf4f79f2f8ae7ce538124d445fc91df852 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/index.html

--===============2619299156623013572==
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
<tr><td><b>Series:</b></td><td>drm/xe: Fix HPD interrupt enabling during runtime resume</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139813/">https://patchwork.freedesktop.org/series/139813/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15510 -&gt; Patchwork_139813v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-rpls-4 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139813v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15510/bat-arlh-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/bat-arlh-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15510/bat-arlh-2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/bat-arlh-2/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15510/bat-dg2-11/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/bat-dg2-11/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15510/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15510/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216">i915#12216</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15510/bat-adlp-6/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/bat-adlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_pm_rpm@basic-pci-d3-state:<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15510/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139813v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) +1 other test dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15510 -&gt; Patchwork_139813v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15510: e1aba2bf4f79f2f8ae7ce538124d445fc91df852 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8061: 8061<br />
  Patchwork_139813v1: e1aba2bf4f79f2f8ae7ce538124d445fc91df852 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2619299156623013572==--
