Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CE151DA76
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 16:23:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BAD910EA75;
	Fri,  6 May 2022 14:23:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 057F910EA75;
 Fri,  6 May 2022 14:23:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 035A5AA01E;
 Fri,  6 May 2022 14:23:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2321862106875028977=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Date: Fri, 06 May 2022 14:23:18 -0000
Message-ID: <165184699800.18818.1346697299359408681@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220506131109.20942-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20220506131109.20942-1-juhapekka.heikkila@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/display=3A_Add_smem_fallba?=
 =?utf-8?q?ck_allocation_for_dpt?=
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

--===============2321862106875028977==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/display: Add smem fallback allocation for dpt
URL   : https://patchwork.freedesktop.org/series/103678/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11617 -> Patchwork_103678v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103678v1/index.html

Participating hosts (45 -> 34)
------------------------------

  Additional (1): fi-snb-2520m 
  Missing    (12): fi-bxt-dsi bat-adls-5 bat-dg1-6 bat-dg2-8 bat-adlm-1 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adln-1 bat-rpls-2 bat-jsl-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_103678v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-snb-2520m:       NOTRUN -> [SKIP][1] ([fdo#109271]) +24 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103678v1/fi-snb-2520m/igt@gem_lmem_swapping@basic.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-snb-2520m:       NOTRUN -> [SKIP][2] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103678v1/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827


Build changes
-------------

  * Linux: CI_DRM_11617 -> Patchwork_103678v1

  CI-20190529: 20190529
  CI_DRM_11617: d96cea3d7ffb524248fcc8db433c579cf262eaea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6468: cffa5fffe9acddf49565b4caeeb5e3355ff2ea44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103678v1: d96cea3d7ffb524248fcc8db433c579cf262eaea @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

917898e4eee6 drm/i915: Fix i915_vma_pin_iomap()
07c3d8bd88b1 drm/i915/display: Add smem fallback allocation for dpt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103678v1/index.html

--===============2321862106875028977==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/display: Add smem fallback allocation for dpt</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103678/">https://patchwork.freedesktop.org/series/103678/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103678v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103678v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11617 -&gt; Patchwork_103678v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103678v1/index.html</p>
<h2>Participating hosts (45 -&gt; 34)</h2>
<p>Additional (1): fi-snb-2520m <br />
  Missing    (12): fi-bxt-dsi bat-adls-5 bat-dg1-6 bat-dg2-8 bat-adlm-1 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adln-1 bat-rpls-2 bat-jsl-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103678v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103678v1/fi-snb-2520m/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103678v1/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11617 -&gt; Patchwork_103678v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11617: d96cea3d7ffb524248fcc8db433c579cf262eaea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6468: cffa5fffe9acddf49565b4caeeb5e3355ff2ea44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103678v1: d96cea3d7ffb524248fcc8db433c579cf262eaea @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>917898e4eee6 drm/i915: Fix i915_vma_pin_iomap()<br />
07c3d8bd88b1 drm/i915/display: Add smem fallback allocation for dpt</p>

</body>
</html>

--===============2321862106875028977==--
