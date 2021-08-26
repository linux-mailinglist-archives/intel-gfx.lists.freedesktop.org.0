Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BF43F8CBD
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 19:11:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FB696E87B;
	Thu, 26 Aug 2021 17:11:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A3F66E02E;
 Thu, 26 Aug 2021 17:11:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3FFF5A47E2;
 Thu, 26 Aug 2021 17:11:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0929243913110847742=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Aug 2021 17:11:42 -0000
Message-ID: <162999790223.15047.6546528568723381532@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210826141830.889-1-jani.nikula@intel.com>
In-Reply-To: <20210826141830.889-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_remove_unused_i915-=3Eactive=5Fpipes?=
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

--===============0929243913110847742==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: remove unused i915->active_pipes
URL   : https://patchwork.freedesktop.org/series/94076/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10525 -> Patchwork_20906
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20906/index.html

Known issues
------------

  Here are the changes found in Patchwork_20906 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +9 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20906/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-7500u:       [PASS][2] -> [FAIL][3] ([i915#3449])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20906/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3449]: https://gitlab.freedesktop.org/drm/intel/issues/3449


Participating hosts (40 -> 33)
------------------------------

  Missing    (7): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10525 -> Patchwork_20906

  CI-20190529: 20190529
  CI_DRM_10525: 059309d37ac2de5d93cf6d71fd7fe33c9c2c66ea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6186: 250081b306c6fa8f95405fab6a7604f1968dd4ec @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20906: e8c9a5aa908f6917e49a5c2653db34346f141253 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e8c9a5aa908f drm/i915: remove unused i915->active_pipes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20906/index.html

--===============0929243913110847742==
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
<tr><td><b>Series:</b></td><td>drm/i915: remove unused i915-&gt;active_pipes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94076/">https://patchwork.freedesktop.org/series/94076/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20906/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20906/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10525 -&gt; Patchwork_20906</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20906/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20906 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20906/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20906/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3449">i915#3449</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 33)</h2>
<p>Missing    (7): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10525 -&gt; Patchwork_20906</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10525: 059309d37ac2de5d93cf6d71fd7fe33c9c2c66ea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6186: 250081b306c6fa8f95405fab6a7604f1968dd4ec @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20906: e8c9a5aa908f6917e49a5c2653db34346f141253 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e8c9a5aa908f drm/i915: remove unused i915-&gt;active_pipes</p>

</body>
</html>

--===============0929243913110847742==--
