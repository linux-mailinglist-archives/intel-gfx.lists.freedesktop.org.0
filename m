Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EECDD41CB75
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 20:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22BC36EAC7;
	Wed, 29 Sep 2021 18:05:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 37F336EAC7;
 Wed, 29 Sep 2021 18:05:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2FD80A8830;
 Wed, 29 Sep 2021 18:05:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1159096069424635000=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Sep 2021 18:05:37 -0000
Message-ID: <163293873718.27098.9570344845874584925@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210927182455.27119-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210927182455.27119-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_DP_per-lane_drive_settings_prep_work_=28rev4=29?=
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

--===============1159096069424635000==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: DP per-lane drive settings prep work (rev4)
URL   : https://patchwork.freedesktop.org/series/95122/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10660 -> Patchwork_21192
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21192/index.html


Changes
-------

  No changes found


Participating hosts (33 -> 28)
------------------------------

  Missing    (5): bat-dg1-6 fi-tgl-u2 fi-bsw-cyan bat-adlp-4 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10660 -> Patchwork_21192

  CI-20190529: 20190529
  CI_DRM_10660: 05888a7b7b4aec560d6692e5e9173adc7e76c0df @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6227: 6ac2da7fd6b13f04f9aa0ec10f86b831d2756946 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21192: def5bc2e3c93d986e7f69476bb0722ea7cbe0f11 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

def5bc2e3c93 drm/i915: Allow per-lane drive settings with LTTPRs
24cdd73489e8 drm/i915: Prepare link training for per-lane drive settings
68f42730e749 drm/i915: Pass the lane to intel_ddi_level()
025b7bd7473d drm/i915: Nuke intel_ddi_hdmi_num_entries()
40be81462b60 drm/i915: Hoover the level>=n_entries WARN into intel_ddi_level()
96ccc8d77127 drm/i915: De-wrapper bxt_ddi_phy_set_signal_levels()
148ee4908c2b drm/i915: Nuke usless .set_signal_levels() wrappers
12af5655d6e9 drm/i915: Generalize .set_signal_levels()
5ca7aed58062 drm/i915: s/ddi_translations/trans/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21192/index.html

--===============1159096069424635000==
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
<tr><td><b>Series:</b></td><td>drm/i915: DP per-lane drive settings prep work (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95122/">https://patchwork.freedesktop.org/series/95122/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21192/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21192/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10660 -&gt; Patchwork_21192</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21192/index.html</p>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Participating hosts (33 -&gt; 28)</h2>
<p>Missing    (5): bat-dg1-6 fi-tgl-u2 fi-bsw-cyan bat-adlp-4 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10660 -&gt; Patchwork_21192</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10660: 05888a7b7b4aec560d6692e5e9173adc7e76c0df @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6227: 6ac2da7fd6b13f04f9aa0ec10f86b831d2756946 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21192: def5bc2e3c93d986e7f69476bb0722ea7cbe0f11 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>def5bc2e3c93 drm/i915: Allow per-lane drive settings with LTTPRs<br />
24cdd73489e8 drm/i915: Prepare link training for per-lane drive settings<br />
68f42730e749 drm/i915: Pass the lane to intel_ddi_level()<br />
025b7bd7473d drm/i915: Nuke intel_ddi_hdmi_num_entries()<br />
40be81462b60 drm/i915: Hoover the level&gt;=n_entries WARN into intel_ddi_level()<br />
96ccc8d77127 drm/i915: De-wrapper bxt_ddi_phy_set_signal_levels()<br />
148ee4908c2b drm/i915: Nuke usless .set_signal_levels() wrappers<br />
12af5655d6e9 drm/i915: Generalize .set_signal_levels()<br />
5ca7aed58062 drm/i915: s/ddi_translations/trans/</p>

</body>
</html>

--===============1159096069424635000==--
