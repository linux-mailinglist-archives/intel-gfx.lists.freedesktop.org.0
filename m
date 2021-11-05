Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 941BF44692D
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 20:31:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A734F6E3DA;
	Fri,  5 Nov 2021 19:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4AE6F6E49F;
 Fri,  5 Nov 2021 19:31:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 40EB5A66C9;
 Fri,  5 Nov 2021 19:31:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6844724716711670269=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Fri, 05 Nov 2021 19:31:44 -0000
Message-ID: <163614070423.30614.12527503605443362694@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211105183342.130810-1-lyude@redhat.com>
In-Reply-To: <20211105183342.130810-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/dp=2C_drm/i915=3A_Finish_basic_PWM_support_for_VESA_backlight_?=
 =?utf-8?q?helpers_=28rev11=29?=
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

--===============6844724716711670269==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/dp, drm/i915: Finish basic PWM support for VESA backlight helpers (rev11)
URL   : https://patchwork.freedesktop.org/series/95127/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10850 -> Patchwork_21527
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21527/index.html

Participating hosts (44 -> 37)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (8): bat-adls-5 bat-dg1-6 fi-tgl-u2 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 

Known issues
------------

  Here are the changes found in Patchwork_21527 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10850/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21527/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][3] ([fdo#109271]) +53 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21527/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888


Build changes
-------------

  * Linux: CI_DRM_10850 -> Patchwork_21527

  CI-20190529: 20190529
  CI_DRM_10850: 1bd94acfe948e741d49478b280055fd7b358c35c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6274: 569de51145fba197a8d93b2417348d47507bf485 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21527: a987c977562177d21b990db69fe069cf3257c2cf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a987c9775621 drm/i915: Clarify probing order in intel_dp_aux_init_backlight_funcs()
4ac7457c762d drm/dp, drm/i915: Add support for VESA backlights using PWM for brightness control
77a13fc4483a drm/dp: Don't read back backlight mode in drm_edp_backlight_enable()
cb44ccb9b548 drm/nouveau/kms/nv50-: Explicitly check DPCD backlights for aux enable/brightness
87f25e6e4d96 drm/i915: Add support for panels with VESA backlights with PWM enable/disable

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21527/index.html

--===============6844724716711670269==
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
<tr><td><b>Series:</b></td><td>drm/dp, drm/i915: Finish basic PWM support for VESA backlight helpers (rev11)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95127/">https://patchwork.freedesktop.org/series/95127/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21527/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21527/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10850 -&gt; Patchwork_21527</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21527/index.html</p>
<h2>Participating hosts (44 -&gt; 37)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (8): bat-adls-5 bat-dg1-6 fi-tgl-u2 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21527 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10850/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21527/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21527/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +53 similar issues</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10850 -&gt; Patchwork_21527</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10850: 1bd94acfe948e741d49478b280055fd7b358c35c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6274: 569de51145fba197a8d93b2417348d47507bf485 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21527: a987c977562177d21b990db69fe069cf3257c2cf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a987c9775621 drm/i915: Clarify probing order in intel_dp_aux_init_backlight_funcs()<br />
4ac7457c762d drm/dp, drm/i915: Add support for VESA backlights using PWM for brightness control<br />
77a13fc4483a drm/dp: Don't read back backlight mode in drm_edp_backlight_enable()<br />
cb44ccb9b548 drm/nouveau/kms/nv50-: Explicitly check DPCD backlights for aux enable/brightness<br />
87f25e6e4d96 drm/i915: Add support for panels with VESA backlights with PWM enable/disable</p>

</body>
</html>

--===============6844724716711670269==--
