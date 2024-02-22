Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE17185F5F3
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 11:45:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88D7310E8DE;
	Thu, 22 Feb 2024 10:45:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2510F10E8DE;
 Thu, 22 Feb 2024 10:45:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3082317825012865538=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_HDCP_MST_Type1_fixes_=28rev?=
 =?utf-8?q?4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Feb 2024 10:45:15 -0000
Message-ID: <170859871515.216123.2885328132316667460@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240222074353.1568904-2-suraj.kandpal@intel.com>
In-Reply-To: <20240222074353.1568904-2-suraj.kandpal@intel.com>
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

--===============3082317825012865538==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: HDCP MST Type1 fixes (rev4)
URL   : https://patchwork.freedesktop.org/series/129925/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14314 -> Patchwork_129925v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v4/index.html

Participating hosts (37 -> 37)
------------------------------

  Additional (1): bat-kbl-2 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_129925v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v4/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][2] ([fdo#109271]) +35 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v4/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7567u:       [PASS][3] -> [CRASH][4] ([i915#9947])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14314/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v4/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [PASS][5] -> [INCOMPLETE][6] ([i915#10137])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14314/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v4/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
    - bat-dg2-9:          [PASS][7] -> [DMESG-FAIL][8] ([i915#9500])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14314/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v4/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {bat-arls-2}:       [INCOMPLETE][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14314/bat-arls-2/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v4/bat-arls-2/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#10026]: https://gitlab.freedesktop.org/drm/intel/issues/10026
  [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#10213]: https://gitlab.freedesktop.org/drm/intel/issues/10213
  [i915#10215]: https://gitlab.freedesktop.org/drm/intel/issues/10215
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#9500]: https://gitlab.freedesktop.org/drm/intel/issues/9500
  [i915#9947]: https://gitlab.freedesktop.org/drm/intel/issues/9947


Build changes
-------------

  * Linux: CI_DRM_14314 -> Patchwork_129925v4

  CI-20190529: 20190529
  CI_DRM_14314: d6c1b8ab9a4dec3a52c5f53b283436f95dbd3285 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7722: 48196ef379a77675ea6af82a82da62b2ad2d9ded @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129925v4: d6c1b8ab9a4dec3a52c5f53b283436f95dbd3285 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a9593cf5471b drm/i915/hdcp: Read Rxcaps for robustibility
753571912608 drm/i915/hdcp: Allocate stream id after HDCP AKE stage
65cd068c8ff2 drm/i915/hdcp: Don't enable HDCP1.4 directly from check_link
999946564672 drm/i915/hdcp: Don't enable HDCP2.2 directly from check_link
e80427a8094f drm/i915/hdcp: Extract hdcp structure from correct connector
b7b6f73f2cca drm/i915/hdcp: Remove additional timing for reading mst hdcp message
eb8be832a1e0 drm/i915/hdcp: HDCP Capability for the downstream device
15c5527c7099 drm/i915/hdcp: Add new remote capability check shim function
d5f0238ad04b drm/i915/hdcp: Rename hdcp capable functions
68433a4d298c drm/i915/hdcp: Pass drm_dp_aux to read_bcaps function
5d976ce90174 drm/i915/hdcp: Refactor intel_dp_hdcp2_capable
38bea76bdf37 drm/i915/hdcp: Move source hdcp2 checks into its own function
25889bd287cd drm/i915/hdcp: Move to direct reads for HDCP

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v4/index.html

--===============3082317825012865538==
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
<tr><td><b>Series:</b></td><td>HDCP MST Type1 fixes (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129925/">https://patchwork.freedesktop.org/series/129925/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14314 -&gt; Patchwork_129925v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v4/index.html</p>
<h2>Participating hosts (37 -&gt; 37)</h2>
<p>Additional (1): bat-kbl-2 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129925v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v4/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v4/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14314/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v4/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9947">i915#9947</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14314/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v4/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10137">i915#10137</a>)</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14314/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v4/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9500">i915#9500</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14314/bat-arls-2/igt@i915_module_load@reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v4/bat-arls-2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14314 -&gt; Patchwork_129925v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14314: d6c1b8ab9a4dec3a52c5f53b283436f95dbd3285 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7722: 48196ef379a77675ea6af82a82da62b2ad2d9ded @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129925v4: d6c1b8ab9a4dec3a52c5f53b283436f95dbd3285 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a9593cf5471b drm/i915/hdcp: Read Rxcaps for robustibility<br />
753571912608 drm/i915/hdcp: Allocate stream id after HDCP AKE stage<br />
65cd068c8ff2 drm/i915/hdcp: Don't enable HDCP1.4 directly from check_link<br />
999946564672 drm/i915/hdcp: Don't enable HDCP2.2 directly from check_link<br />
e80427a8094f drm/i915/hdcp: Extract hdcp structure from correct connector<br />
b7b6f73f2cca drm/i915/hdcp: Remove additional timing for reading mst hdcp message<br />
eb8be832a1e0 drm/i915/hdcp: HDCP Capability for the downstream device<br />
15c5527c7099 drm/i915/hdcp: Add new remote capability check shim function<br />
d5f0238ad04b drm/i915/hdcp: Rename hdcp capable functions<br />
68433a4d298c drm/i915/hdcp: Pass drm_dp_aux to read_bcaps function<br />
5d976ce90174 drm/i915/hdcp: Refactor intel_dp_hdcp2_capable<br />
38bea76bdf37 drm/i915/hdcp: Move source hdcp2 checks into its own function<br />
25889bd287cd drm/i915/hdcp: Move to direct reads for HDCP</p>

</body>
</html>

--===============3082317825012865538==--
