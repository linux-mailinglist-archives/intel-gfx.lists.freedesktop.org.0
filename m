Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 090C441E024
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 19:25:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59D406EC3B;
	Thu, 30 Sep 2021 17:25:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BA7D16EC3B;
 Thu, 30 Sep 2021 17:25:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B701CA0BCB;
 Thu, 30 Sep 2021 17:25:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8247508952417628897=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Sep 2021 17:25:01 -0000
Message-ID: <163302270174.18252.13427693157211766342@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210930001409.254817-1-jose.souza@intel.com>
In-Reply-To: <20210930001409.254817-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/9=5D_drm/i915/display/psr=3A_Handle?=
 =?utf-8?q?_plane_and_pipe_restrictions_at_every_page_flip_=28rev2=29?=
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

--===============8247508952417628897==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/9] drm/i915/display/psr: Handle plane and pipe restrictions at every page flip (rev2)
URL   : https://patchwork.freedesktop.org/series/95242/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10666 -> Patchwork_21206
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21206/index.html

Known issues
------------

  Here are the changes found in Patchwork_21206 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21206/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][2] -> [DMESG-WARN][3] ([i915#95])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10666/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21206/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [INCOMPLETE][4] ([i915#2940]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10666/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21206/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-tgl-dsi}:       [DMESG-FAIL][6] ([i915#541]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10666/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21206/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (33 -> 28)
------------------------------

  Missing    (5): bat-dg1-6 fi-tgl-u2 fi-bsw-cyan bat-adlp-4 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10666 -> Patchwork_21206

  CI-20190529: 20190529
  CI_DRM_10666: fb718bc531fbe5ccecf5a100280860ce07c25476 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6228: 22643ce4014a0b2dc52ce7916b2f657e2a7757c3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21206: 0bfa29f809cc1cf347fe1ce6d432007530778184 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0bfa29f809cc drm/i915/display: Always wait vblank counter to increment when commit needs a modeset
f4a96ec43c66 drm/i915/display: Enable PSR2 selective fetch by default
1679ec45931a drm/i915/display/adlp: Allow PSR2 to be enabled
508b01fff84d drm/i915/display/adlp: Optimize PSR2 power-savings in corner cases
c8a703cfabe3 drm/i915/display: Fix glitches when moving cursor with PSR2 selective fetch enabled
14c53c33e4c8 drm/i915/display: Handle frontbuffer rendering when PSR2 selective fetch is enabled
c902a8ff6101 drm/i915/display: Drop unnecessary frontbuffer flushes
05a7d3350a40 drm/i915/display/psr: Do full fetch when handling multi-planar formats
bead86428b95 drm/i915/display/psr: Handle plane and pipe restrictions at every page flip

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21206/index.html

--===============8247508952417628897==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/9] drm/i915/display/psr: Handle plane and pipe restrictions at every page flip (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95242/">https://patchwork.freedesktop.org/series/95242/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21206/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21206/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10666 -&gt; Patchwork_21206</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21206/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21206 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21206/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10666/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21206/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10666/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21206/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10666/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21206/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (33 -&gt; 28)</h2>
<p>Missing    (5): bat-dg1-6 fi-tgl-u2 fi-bsw-cyan bat-adlp-4 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10666 -&gt; Patchwork_21206</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10666: fb718bc531fbe5ccecf5a100280860ce07c25476 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6228: 22643ce4014a0b2dc52ce7916b2f657e2a7757c3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21206: 0bfa29f809cc1cf347fe1ce6d432007530778184 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0bfa29f809cc drm/i915/display: Always wait vblank counter to increment when commit needs a modeset<br />
f4a96ec43c66 drm/i915/display: Enable PSR2 selective fetch by default<br />
1679ec45931a drm/i915/display/adlp: Allow PSR2 to be enabled<br />
508b01fff84d drm/i915/display/adlp: Optimize PSR2 power-savings in corner cases<br />
c8a703cfabe3 drm/i915/display: Fix glitches when moving cursor with PSR2 selective fetch enabled<br />
14c53c33e4c8 drm/i915/display: Handle frontbuffer rendering when PSR2 selective fetch is enabled<br />
c902a8ff6101 drm/i915/display: Drop unnecessary frontbuffer flushes<br />
05a7d3350a40 drm/i915/display/psr: Do full fetch when handling multi-planar formats<br />
bead86428b95 drm/i915/display/psr: Handle plane and pipe restrictions at every page flip</p>

</body>
</html>

--===============8247508952417628897==--
