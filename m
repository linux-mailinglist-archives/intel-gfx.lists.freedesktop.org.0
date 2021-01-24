Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA700301D7B
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Jan 2021 17:24:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB0A89E41;
	Sun, 24 Jan 2021 16:24:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5338F89C3B;
 Sun, 24 Jan 2021 16:24:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45272A8169;
 Sun, 24 Jan 2021 16:24:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 24 Jan 2021 16:24:56 -0000
Message-ID: <161150549624.10312.2466571845380899184@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210124153136.19124-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210124153136.19124-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/8=5D_drm/i915/gt=3A_Show_the_per-en?=
 =?utf-8?q?gine_runtime_in_sysfs?=
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
Content-Type: multipart/mixed; boundary="===============0397034603=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0397034603==
Content-Type: multipart/alternative;
 boundary="===============2389008883465871383=="

--===============2389008883465871383==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/8] drm/i915/gt: Show the per-engine runtime in sysfs
URL   : https://patchwork.freedesktop.org/series/86222/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9675 -> Patchwork_19475
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/index.html

Known issues
------------

  Here are the changes found in Patchwork_19475 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-tgl-y:           [DMESG-WARN][3] ([i915#402]) -> [PASS][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/fi-tgl-y/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/fi-tgl-y/igt@gem_close_race@basic-threads.html

  
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (41 -> 36)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9675 -> Patchwork_19475

  CI-20190529: 20190529
  CI_DRM_9675: f84d1efce492ef0f46cf4fa1bf01b17ce1627fe4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5968: 267fa33c0947fbbb642098098ff6e5902f9a3d94 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19475: a1ec37ed680a947ceb9f0ca1fd94e96502f3e16f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a1ec37ed680a drm/i915: Expose per-engine client busyness
42d11544f6f9 drm/i915: Track context current active time
60c93db17ee3 drm/i915: Track all user contexts per client
c551926259e4 drm/i915: Track runtime spent in closed and unreachable GEM contexts
2d114de7f3f4 drm/i915: Make GEM contexts track DRM clients
9e87704f2eac drm/i915: Update client name on context create
3537604ec4c2 drm/i915: Expose list of clients in sysfs
fd3b420c3829 drm/i915/gt: Show the per-engine runtime in sysfs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/index.html

--===============2389008883465871383==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/8] drm/i915/gt: Show the per-engine runtime in sysfs</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86222/">https://patchwork.freedesktop.org/series/86222/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9675 -&gt; Patchwork_19475</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19475 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_mmap_gtt@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_close_race@basic-threads:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/fi-tgl-y/igt@gem_close_race@basic-threads.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/fi-tgl-y/igt@gem_close_race@basic-threads.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 36)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9675 -&gt; Patchwork_19475</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9675: f84d1efce492ef0f46cf4fa1bf01b17ce1627fe4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5968: 267fa33c0947fbbb642098098ff6e5902f9a3d94 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19475: a1ec37ed680a947ceb9f0ca1fd94e96502f3e16f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a1ec37ed680a drm/i915: Expose per-engine client busyness<br />
42d11544f6f9 drm/i915: Track context current active time<br />
60c93db17ee3 drm/i915: Track all user contexts per client<br />
c551926259e4 drm/i915: Track runtime spent in closed and unreachable GEM contexts<br />
2d114de7f3f4 drm/i915: Make GEM contexts track DRM clients<br />
9e87704f2eac drm/i915: Update client name on context create<br />
3537604ec4c2 drm/i915: Expose list of clients in sysfs<br />
fd3b420c3829 drm/i915/gt: Show the per-engine runtime in sysfs</p>

</body>
</html>

--===============2389008883465871383==--

--===============0397034603==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0397034603==--
