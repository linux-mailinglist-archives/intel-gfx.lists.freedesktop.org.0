Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E153A3A967C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 11:47:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CD236E544;
	Wed, 16 Jun 2021 09:47:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A6ADE6E544;
 Wed, 16 Jun 2021 09:47:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E34FAA3D8;
 Wed, 16 Jun 2021 09:47:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 16 Jun 2021 09:47:38 -0000
Message-ID: <162383685861.8275.8822906855948360643@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210616090350.828696-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210616090350.828696-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Remove_duplicated_call_to_ops-=3Epread?=
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
Content-Type: multipart/mixed; boundary="===============1562281946=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1562281946==
Content-Type: multipart/alternative;
 boundary="===============1819964622386846841=="

--===============1819964622386846841==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Remove duplicated call to ops->pread
URL   : https://patchwork.freedesktop.org/series/91561/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10226 -> Patchwork_20383
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20383/index.html

Known issues
------------

  Here are the changes found in Patchwork_20383 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][1] -> [SKIP][2] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20383/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10226 -> Patchwork_20383

  CI-20190529: 20190529
  CI_DRM_10226: e59107e71dfda22b959337ca2dd68b1bcbe78710 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6108: be59e0579cca677566c85540219fb9545e9afadf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20383: 8887e9f43783f2cac61fd93675fe5d2acd61aa51 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8887e9f43783 drm/i915/gem: Remove duplicated call to ops->pread

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20383/index.html

--===============1819964622386846841==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Remove duplicated call to ops-&gt;pread</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91561/">https://patchwork.freedesktop.org/series/91561/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20383/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20383/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10226 -&gt; Patchwork_20383</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20383/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20383 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20383/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10226 -&gt; Patchwork_20383</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10226: e59107e71dfda22b959337ca2dd68b1bcbe78710 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6108: be59e0579cca677566c85540219fb9545e9afadf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20383: 8887e9f43783f2cac61fd93675fe5d2acd61aa51 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8887e9f43783 drm/i915/gem: Remove duplicated call to ops-&gt;pread</p>

</body>
</html>

--===============1819964622386846841==--

--===============1562281946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1562281946==--
