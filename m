Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67ACA41CCD9
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 21:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 950CB6E218;
	Wed, 29 Sep 2021 19:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A8FB26E217;
 Wed, 29 Sep 2021 19:48:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0A49A008A;
 Wed, 29 Sep 2021 19:48:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2878133769962584562=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Sep 2021 19:48:17 -0000
Message-ID: <163294489762.27098.18363388135386010099@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Reject_bogus_modes_with_fixed_mode_panels_=28rev4=29?=
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

--===============2878133769962584562==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Reject bogus modes with fixed mode panels (rev4)
URL   : https://patchwork.freedesktop.org/series/95003/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10660 -> Patchwork_21194
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21194/index.html

Known issues
------------

  Here are the changes found in Patchwork_21194 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21194/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888


Participating hosts (33 -> 29)
------------------------------

  Missing    (4): fi-bsw-cyan bat-jsl-1 bat-dg1-6 bat-adlp-4 


Build changes
-------------

  * Linux: CI_DRM_10660 -> Patchwork_21194

  CI-20190529: 20190529
  CI_DRM_10660: 05888a7b7b4aec560d6692e5e9173adc7e76c0df @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6227: 6ac2da7fd6b13f04f9aa0ec10f86b831d2756946 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21194: 757c93b34f28fa06ae5d6d3e8df3890209ccc560 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

757c93b34f28 drm/i915: Drop pointless fixed_mode checks from dsi code
3c1fa96c8f68 drm/i915: Reject user modes that don't match fixed mode's refresh rate
f7cdd9e01604 drm/i915: Introduce intel_panel_compute_config()
533507b364f4 drm/i915: Reject modes that don't match fixed_mode vrefresh
d9423a841736 drm/i915: Use intel_panel_mode_valid() for DSI/LVDS/DVO
1167de2f2bef drm/i915: Extract intel_panel_mode_valid()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21194/index.html

--===============2878133769962584562==
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
<tr><td><b>Series:</b></td><td>drm/i915: Reject bogus modes with fixed mode panels (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95003/">https://patchwork.freedesktop.org/series/95003/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21194/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21194/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10660 -&gt; Patchwork_21194</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21194/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21194 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21194/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (33 -&gt; 29)</h2>
<p>Missing    (4): fi-bsw-cyan bat-jsl-1 bat-dg1-6 bat-adlp-4 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10660 -&gt; Patchwork_21194</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10660: 05888a7b7b4aec560d6692e5e9173adc7e76c0df @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6227: 6ac2da7fd6b13f04f9aa0ec10f86b831d2756946 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21194: 757c93b34f28fa06ae5d6d3e8df3890209ccc560 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>757c93b34f28 drm/i915: Drop pointless fixed_mode checks from dsi code<br />
3c1fa96c8f68 drm/i915: Reject user modes that don't match fixed mode's refresh rate<br />
f7cdd9e01604 drm/i915: Introduce intel_panel_compute_config()<br />
533507b364f4 drm/i915: Reject modes that don't match fixed_mode vrefresh<br />
d9423a841736 drm/i915: Use intel_panel_mode_valid() for DSI/LVDS/DVO<br />
1167de2f2bef drm/i915: Extract intel_panel_mode_valid()</p>

</body>
</html>

--===============2878133769962584562==--
