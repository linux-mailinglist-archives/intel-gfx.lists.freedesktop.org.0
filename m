Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D45B767765E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 09:38:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7978310E1E2;
	Mon, 23 Jan 2023 08:38:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F16A610E316;
 Mon, 23 Jan 2023 08:38:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4462A9932;
 Mon, 23 Jan 2023 08:38:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7061499773013660679=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Date: Mon, 23 Jan 2023 08:38:06 -0000
Message-ID: <167446308670.345.846514871552328489@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230123074437.475103-1-jouni.hogander@intel.com>
In-Reply-To: <20230123074437.475103-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/fbdev=3A_Implement_fb=5Fdirty_for_intel_custom_fb_helper_?=
 =?utf-8?b?KHJldjQp?=
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

--===============7061499773013660679==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/fbdev: Implement fb_dirty for intel custom fb helper (rev4)
URL   : https://patchwork.freedesktop.org/series/111433/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12619 -> Patchwork_111433v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/index.html

Participating hosts (37 -> 35)
------------------------------

  Additional (1): fi-bsw-kefka 
  Missing    (3): fi-kbl-soraka fi-rkl-11600 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_111433v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_mocs:
    - fi-rkl-guc:         NOTRUN -> [INCOMPLETE][1] ([i915#4983])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/fi-rkl-guc/igt@i915_selftest@live@gt_mocs.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-n3050:       [PASS][2] -> [FAIL][3] ([i915#6298])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12619/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][4] ([fdo#109271]) +26 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html

  * igt@runner@aborted:
    - fi-blb-e6850:       NOTRUN -> [FAIL][5] ([i915#4312])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/fi-blb-e6850/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - {bat-adls-5}:       [FAIL][6] -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12619/bat-adls-5/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/bat-adls-5/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@migrate:
    - {bat-dg2-11}:       [DMESG-WARN][8] ([i915#7699]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12619/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [DMESG-FAIL][10] ([i915#4983]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12619/bat-rpls-2/igt@i915_selftest@live@reset.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/bat-rpls-2/igt@i915_selftest@live@reset.html
    - {bat-rpls-1}:       [DMESG-FAIL][12] ([i915#4983]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12619/bat-rpls-1/igt@i915_selftest@live@reset.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [INCOMPLETE][14] ([i915#4983]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12619/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-3:
    - {bat-dg2-11}:       [INCOMPLETE][16] -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12619/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-3.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6763]: https://gitlab.freedesktop.org/drm/intel/issues/6763
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#7625]: https://gitlab.freedesktop.org/drm/intel/issues/7625
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828


Build changes
-------------

  * Linux: CI_DRM_12619 -> Patchwork_111433v4

  CI-20190529: 20190529
  CI_DRM_12619: 7d3e7f64a42d66ba8da6e7b66a8d85457ef84570 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7129: 7816773163a1b0d248dd9dd34d14e632ad8903be @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111433v4: 7d3e7f64a42d66ba8da6e7b66a8d85457ef84570 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

960be7a80df1 drm/i915/fbdev: Implement fb_dirty for intel custom fb helper

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/index.html

--===============7061499773013660679==
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
<tr><td><b>Series:</b></td><td>drm/i915/fbdev: Implement fb_dirty for intel custom fb helper (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111433/">https://patchwork.freedesktop.org/series/111433/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12619 -&gt; Patchwork_111433v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Additional (1): fi-bsw-kefka <br />
  Missing    (3): fi-kbl-soraka fi-rkl-11600 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111433v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/fi-rkl-guc/igt@i915_selftest@live@gt_mocs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12619/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-adls-5}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12619/bat-adls-5/igt@i915_pm_rpm@module-reload.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/bat-adls-5/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12619/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12619/bat-rpls-2/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12619/bat-rpls-1/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12619/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-3:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12619/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-3.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111433v4/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-3.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12619 -&gt; Patchwork_111433v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12619: 7d3e7f64a42d66ba8da6e7b66a8d85457ef84570 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7129: 7816773163a1b0d248dd9dd34d14e632ad8903be @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111433v4: 7d3e7f64a42d66ba8da6e7b66a8d85457ef84570 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>960be7a80df1 drm/i915/fbdev: Implement fb_dirty for intel custom fb helper</p>

</body>
</html>

--===============7061499773013660679==--
