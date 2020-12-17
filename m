Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F082F2DD022
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 12:13:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A4AE6E25B;
	Thu, 17 Dec 2020 11:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CEC706E252;
 Thu, 17 Dec 2020 11:13:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C0DCEA47E9;
 Thu, 17 Dec 2020 11:13:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 17 Dec 2020 11:13:06 -0000
Message-ID: <160820358676.2012.14436294058770773317@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201217091524.10258-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201217091524.10258-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Drain_the_breadcrumbs_just_once?=
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
Content-Type: multipart/mixed; boundary="===============0632276844=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0632276844==
Content-Type: multipart/alternative;
 boundary="===============2026279347077010155=="

--===============2026279347077010155==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Drain the breadcrumbs just once
URL   : https://patchwork.freedesktop.org/series/85037/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9496 -> Patchwork_19167
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19167/index.html

Known issues
------------

  Here are the changes found in Patchwork_19167 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bsw-n3050:       [PASS][1] -> [DMESG-FAIL][2] ([i915#2675] / [i915#541])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9496/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19167/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9496/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19167/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9496/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19167/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  
  [i915#2675]: https://gitlab.freedesktop.org/drm/intel/issues/2675
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (42 -> 39)
------------------------------

  Missing    (3): fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9496 -> Patchwork_19167

  CI-20190529: 20190529
  CI_DRM_9496: c1bf99ceda83bcdd33f05515deb9efc3649d449e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5905: 3d0934900bddeb7a68f1abab4cd05077f0609e32 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19167: 5fd3c4d2c8955af09fdf227412a2e5757f4d57fd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5fd3c4d2c895 drm/i915/gt: Drain the breadcrumbs just once

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19167/index.html

--===============2026279347077010155==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Drain the breadcrumbs just once</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85037/">https://patchwork.freedesktop.org/series/85037/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19167/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19167/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9496 -&gt; Patchwork_19167</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19167/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19167 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9496/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19167/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2675">i915#2675</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9496/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19167/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_getparams_basic@basic-subslice-total:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9496/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19167/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9496 -&gt; Patchwork_19167</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9496: c1bf99ceda83bcdd33f05515deb9efc3649d449e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5905: 3d0934900bddeb7a68f1abab4cd05077f0609e32 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19167: 5fd3c4d2c8955af09fdf227412a2e5757f4d57fd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5fd3c4d2c895 drm/i915/gt: Drain the breadcrumbs just once</p>

</body>
</html>

--===============2026279347077010155==--

--===============0632276844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0632276844==--
