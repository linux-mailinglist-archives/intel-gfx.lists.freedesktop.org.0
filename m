Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C981E2D8FE7
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Dec 2020 20:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E338A89D63;
	Sun, 13 Dec 2020 19:18:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B1E5E89D61;
 Sun, 13 Dec 2020 19:18:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4078A9A42;
 Sun, 13 Dec 2020 19:18:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Sun, 13 Dec 2020 19:18:31 -0000
Message-ID: <160788711170.3706.47237261633729546@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201213183930.349592-1-jose.souza@intel.com>
In-Reply-To: <20201213183930.349592-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/6=5D_drm/damage=5Fhelper=3A_Check_i?=
 =?utf-8?q?f_damage_clips_has_valid_values?=
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
Content-Type: multipart/mixed; boundary="===============1264654680=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1264654680==
Content-Type: multipart/alternative;
 boundary="===============3645892653869613184=="

--===============3645892653869613184==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v5,1/6] drm/damage_helper: Check if damage clips has valid values
URL   : https://patchwork.freedesktop.org/series/84874/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9478 -> Patchwork_19130
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19130/index.html


Changes
-------

  No changes found


Participating hosts (42 -> 33)
------------------------------

  Missing    (9): fi-bxt-dsi fi-bdw-samus fi-tgl-u2 fi-bsw-n3050 fi-skl-guc fi-hsw-4200u fi-blb-e6850 fi-tgl-y fi-skl-6700k2 


Build changes
-------------

  * Linux: CI_DRM_9478 -> Patchwork_19130

  CI-20190529: 20190529
  CI_DRM_9478: 94cf3a4cc350324f21728c70954c46e535405c87 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5890: 0e209dc3cd7561a57ec45be74b8b299eaf391950 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19130: af66f7ce909e50ccda4b3751a3b1619e4836c473 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

af66f7ce909e HAX/DO_NOT_MERGE_IT: drm/i915/display: Enable PSR2 selective fetch for testing
00461c41ab57 drm/i915/display/psr: Program plane's calculated offset to plane SF register
ad158b219b69 drm/i915/display: Split and export main surface calculation from skl_check_main_surface()
b7fdc2e15cce drm/i915/display/psr: Use plane damage clips to calculate damaged area
55ba6d00f603 drm/i915/display: Check plane damage clips
a04301392942 drm/damage_helper: Check if damage clips has valid values

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19130/index.html

--===============3645892653869613184==
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
<tr><td><b>Series:</b></td><td>series starting with [v5,1/6] drm/damage_helper: Check if damage clips has valid values</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84874/">https://patchwork.freedesktop.org/series/84874/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19130/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19130/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9478 -&gt; Patchwork_19130</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19130/index.html</p>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Participating hosts (42 -&gt; 33)</h2>
<p>Missing    (9): fi-bxt-dsi fi-bdw-samus fi-tgl-u2 fi-bsw-n3050 fi-skl-guc fi-hsw-4200u fi-blb-e6850 fi-tgl-y fi-skl-6700k2 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9478 -&gt; Patchwork_19130</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9478: 94cf3a4cc350324f21728c70954c46e535405c87 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5890: 0e209dc3cd7561a57ec45be74b8b299eaf391950 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19130: af66f7ce909e50ccda4b3751a3b1619e4836c473 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>af66f7ce909e HAX/DO_NOT_MERGE_IT: drm/i915/display: Enable PSR2 selective fetch for testing<br />
00461c41ab57 drm/i915/display/psr: Program plane's calculated offset to plane SF register<br />
ad158b219b69 drm/i915/display: Split and export main surface calculation from skl_check_main_surface()<br />
b7fdc2e15cce drm/i915/display/psr: Use plane damage clips to calculate damaged area<br />
55ba6d00f603 drm/i915/display: Check plane damage clips<br />
a04301392942 drm/damage_helper: Check if damage clips has valid values</p>

</body>
</html>

--===============3645892653869613184==--

--===============1264654680==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1264654680==--
