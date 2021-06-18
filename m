Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0729A3AC8AE
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 12:20:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F03326E9E6;
	Fri, 18 Jun 2021 10:20:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 75F216E9DE;
 Fri, 18 Jun 2021 10:20:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6DA37A8830;
 Fri, 18 Jun 2021 10:20:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Werner Sembach" <wse@tuxedocomputers.com>
Date: Fri, 18 Jun 2021 10:20:00 -0000
Message-ID: <162401160041.1293.11402032835200481495@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210618091116.14428-1-wse@tuxedocomputers.com>
In-Reply-To: <20210618091116.14428-1-wse@tuxedocomputers.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTmV3?=
 =?utf-8?q?_uAPI_drm_properties_for_color_management_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0965695954=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0965695954==
Content-Type: multipart/alternative;
 boundary="===============5467023711856855349=="

--===============5467023711856855349==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: New uAPI drm properties for color management (rev2)
URL   : https://patchwork.freedesktop.org/series/91523/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10242 -> Patchwork_20408
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20408:

### CI changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * boot:
    - {fi-tgl-dsi}:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/fi-tgl-dsi/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/fi-tgl-dsi/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_20408 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4] ([i915#2539])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
    - fi-bsw-kefka:       [PASS][5] -> [INCOMPLETE][6] ([i915#2539])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][7] ([i915#1602] / [i915#2029])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/fi-bdw-5557u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2539]: https://gitlab.freedesktop.org/drm/intel/issues/2539


Participating hosts (42 -> 26)
------------------------------

  Missing    (16): fi-kbl-soraka fi-ilk-m540 fi-bxt-dsi fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-bwr-2160 fi-snb-2520m fi-ilk-650 fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-pnv-d510 fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_10242 -> Patchwork_20408

  CI-20190529: 20190529
  CI_DRM_10242: a31069c62e8586aa92907539ab948412c1d5f5a0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6112: a17cc0c5d096fabfd516848c114bc411e11130f4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20408: c085286ee0178053c7907dd37041d5acc1eef8ba @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c085286ee017 drm/amd/display: Add handling for new "Broadcast RGB" property
0e59e4efe994 drm/i915/display: Use the general "Broadcast RGB" implementation
fb7489fcb966 drm/uAPI: Move "Broadcast RGB" property from driver specific to general context
7036e14723d4 drm/i915/display: Add handling for new "preferred color format" property
7c574ffde4b2 drm/amd/display: Add handling for new "preferred color format" property
c75e0d2c86bc drm/uAPI: Add "preferred color format" drm property as setting for userspace
4a5eb1073840 drm/i915/display: Add handling for new "active color range" property
34a60f410858 drm/amd/display: Add handling for new "active color range" property
38cabfeae439 drm/uAPI: Add "active color range" drm property as feedback for userspace
d20d983e5c00 drm/i915/display: Add handling for new "active color format" property
b3388b2b31a3 drm/amd/display: Add handling for new "active color format" property
01063e3e0973 drm/uAPI: Add "active color format" drm property as feedback for userspace
d894e2d6d92c drm/i915/display: Add handling for new "active bpc" property
f27795b7edfc drm/amd/display: Add handling for new "active bpc" property
5d445706107f drm/uAPI: Add "active bpc" as feedback channel for "max bpc" drm property
a184c9f6c5f9 drm/amd/display: Add missing cases convert_dc_color_depth_into_bpc
8a1dbc104f1d drm/amd/display: Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A check

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/index.html

--===============5467023711856855349==
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
<tr><td><b>Series:</b></td><td>New uAPI drm properties for color management (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91523/">https://patchwork.freedesktop.org/series/91523/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10242 -&gt; Patchwork_20408</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20408:</p>
<h3>CI changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>boot:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/fi-tgl-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/fi-tgl-dsi/boot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20408 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2539">i915#2539</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2539">i915#2539</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 26)</h2>
<p>Missing    (16): fi-kbl-soraka fi-ilk-m540 fi-bxt-dsi fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-bwr-2160 fi-snb-2520m fi-ilk-650 fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-pnv-d510 fi-bdw-samus fi-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10242 -&gt; Patchwork_20408</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10242: a31069c62e8586aa92907539ab948412c1d5f5a0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6112: a17cc0c5d096fabfd516848c114bc411e11130f4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20408: c085286ee0178053c7907dd37041d5acc1eef8ba @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c085286ee017 drm/amd/display: Add handling for new "Broadcast RGB" property<br />
0e59e4efe994 drm/i915/display: Use the general "Broadcast RGB" implementation<br />
fb7489fcb966 drm/uAPI: Move "Broadcast RGB" property from driver specific to general context<br />
7036e14723d4 drm/i915/display: Add handling for new "preferred color format" property<br />
7c574ffde4b2 drm/amd/display: Add handling for new "preferred color format" property<br />
c75e0d2c86bc drm/uAPI: Add "preferred color format" drm property as setting for userspace<br />
4a5eb1073840 drm/i915/display: Add handling for new "active color range" property<br />
34a60f410858 drm/amd/display: Add handling for new "active color range" property<br />
38cabfeae439 drm/uAPI: Add "active color range" drm property as feedback for userspace<br />
d20d983e5c00 drm/i915/display: Add handling for new "active color format" property<br />
b3388b2b31a3 drm/amd/display: Add handling for new "active color format" property<br />
01063e3e0973 drm/uAPI: Add "active color format" drm property as feedback for userspace<br />
d894e2d6d92c drm/i915/display: Add handling for new "active bpc" property<br />
f27795b7edfc drm/amd/display: Add handling for new "active bpc" property<br />
5d445706107f drm/uAPI: Add "active bpc" as feedback channel for "max bpc" drm property<br />
a184c9f6c5f9 drm/amd/display: Add missing cases convert_dc_color_depth_into_bpc<br />
8a1dbc104f1d drm/amd/display: Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A check</p>

</body>
</html>

--===============5467023711856855349==--

--===============0965695954==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0965695954==--
