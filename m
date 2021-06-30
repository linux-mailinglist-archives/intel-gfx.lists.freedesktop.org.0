Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C13A3B8904
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 21:09:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41A216EA76;
	Wed, 30 Jun 2021 19:09:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3CFD46EA74;
 Wed, 30 Jun 2021 19:09:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 34EF2A00E6;
 Wed, 30 Jun 2021 19:09:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Werner Sembach" <wse@tuxedocomputers.com>
Date: Wed, 30 Jun 2021 19:09:50 -0000
Message-ID: <162508019017.10377.4467815021682224957@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210630151018.330354-1-wse@tuxedocomputers.com>
In-Reply-To: <20210630151018.330354-1-wse@tuxedocomputers.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTmV3?=
 =?utf-8?q?_uAPI_drm_properties_for_color_management_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============2130189910=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2130189910==
Content-Type: multipart/alternative;
 boundary="===============4276337493074679133=="

--===============4276337493074679133==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: New uAPI drm properties for color management (rev3)
URL   : https://patchwork.freedesktop.org/series/91523/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10295 -> Patchwork_20496
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20496:

### CI changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * boot:
    - {fi-tgl-dsi}:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-tgl-dsi/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/fi-tgl-dsi/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_20496 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4] ([i915#2539])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
    - fi-bsw-kefka:       [PASS][5] -> [INCOMPLETE][6] ([i915#2539])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][7] -> [FAIL][8] ([i915#1372])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#2539]: https://gitlab.freedesktop.org/drm/intel/issues/2539


Participating hosts (39 -> 25)
------------------------------

  Missing    (14): fi-ilk-m540 fi-bxt-dsi fi-bsw-n3050 fi-glk-dsi fi-bsw-cyan fi-bwr-2160 fi-snb-2520m fi-ilk-650 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-pnv-d510 fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_10295 -> Patchwork_20496

  CI-20190529: 20190529
  CI_DRM_10295: 683b7f160eb6993ccfc19e67e3c7111f12946bea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6124: 357d5477c93f2bdd3354afe91b89ccfd4ee4fd56 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20496: f1f5fc6be615238b6a54d0181acd8a08b5231f0c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f1f5fc6be615 drm/amd/display: Add handling for new "Broadcast RGB" property
5f414124d4e6 drm/i915/display: Use the general "Broadcast RGB" implementation
20d6a32d4c22 drm/uAPI: Move "Broadcast RGB" property from driver specific to general context
204cfad3307a drm/i915/display: Add handling for new "preferred color format" property
c49700e94fa3 drm/amd/display: Add handling for new "preferred color format" property
6e2c78d00f47 drm/uAPI: Add "preferred color format" drm property as setting for userspace
60c647d72801 drm/i915/display: Add handling for new "active color range" property
7aaeb8fe964a drm/amd/display: Add handling for new "active color range" property
dea414d4c1f5 drm/uAPI: Add "active color range" drm property as feedback for userspace
27a08747a4e0 drm/i915/display: Add handling for new "active color format" property
b992c4fb2b09 drm/amd/display: Add handling for new "active color format" property
c7e6abbdeea8 drm/uAPI: Add "active color format" drm property as feedback for userspace
3e6ebc8ddc1c drm/i915/display: Add handling for new "active bpc" property
3ac175acf116 drm/amd/display: Add handling for new "active bpc" property
a3501a1254e9 drm/uAPI: Add "active bpc" as feedback channel for "max bpc" drm property
acbc1fa10104 drm/amd/display: Add missing cases convert_dc_color_depth_into_bpc
de5b09605b88 drm/amd/display: Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A check

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/index.html

--===============4276337493074679133==
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
<tr><td><b>Series:</b></td><td>New uAPI drm properties for color management (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91523/">https://patchwork.freedesktop.org/series/91523/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10295 -&gt; Patchwork_20496</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20496:</p>
<h3>CI changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>boot:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-tgl-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/fi-tgl-dsi/boot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20496 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2539">i915#2539</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2539">i915#2539</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20496/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 25)</h2>
<p>Missing    (14): fi-ilk-m540 fi-bxt-dsi fi-bsw-n3050 fi-glk-dsi fi-bsw-cyan fi-bwr-2160 fi-snb-2520m fi-ilk-650 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-pnv-d510 fi-bdw-samus fi-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10295 -&gt; Patchwork_20496</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10295: 683b7f160eb6993ccfc19e67e3c7111f12946bea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6124: 357d5477c93f2bdd3354afe91b89ccfd4ee4fd56 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20496: f1f5fc6be615238b6a54d0181acd8a08b5231f0c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f1f5fc6be615 drm/amd/display: Add handling for new "Broadcast RGB" property<br />
5f414124d4e6 drm/i915/display: Use the general "Broadcast RGB" implementation<br />
20d6a32d4c22 drm/uAPI: Move "Broadcast RGB" property from driver specific to general context<br />
204cfad3307a drm/i915/display: Add handling for new "preferred color format" property<br />
c49700e94fa3 drm/amd/display: Add handling for new "preferred color format" property<br />
6e2c78d00f47 drm/uAPI: Add "preferred color format" drm property as setting for userspace<br />
60c647d72801 drm/i915/display: Add handling for new "active color range" property<br />
7aaeb8fe964a drm/amd/display: Add handling for new "active color range" property<br />
dea414d4c1f5 drm/uAPI: Add "active color range" drm property as feedback for userspace<br />
27a08747a4e0 drm/i915/display: Add handling for new "active color format" property<br />
b992c4fb2b09 drm/amd/display: Add handling for new "active color format" property<br />
c7e6abbdeea8 drm/uAPI: Add "active color format" drm property as feedback for userspace<br />
3e6ebc8ddc1c drm/i915/display: Add handling for new "active bpc" property<br />
3ac175acf116 drm/amd/display: Add handling for new "active bpc" property<br />
a3501a1254e9 drm/uAPI: Add "active bpc" as feedback channel for "max bpc" drm property<br />
acbc1fa10104 drm/amd/display: Add missing cases convert_dc_color_depth_into_bpc<br />
de5b09605b88 drm/amd/display: Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A check</p>

</body>
</html>

--===============4276337493074679133==--

--===============2130189910==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2130189910==--
