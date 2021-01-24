Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B25E3301CD0
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Jan 2021 15:45:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BDB389DA5;
	Sun, 24 Jan 2021 14:45:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9615589D9B;
 Sun, 24 Jan 2021 14:45:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84A7BA0099;
 Sun, 24 Jan 2021 14:45:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 24 Jan 2021 14:45:42 -0000
Message-ID: <161149954251.10312.18072564603963067459@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210124135406.28756-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210124135406.28756-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_drm/i915=3A_Remove_guard_page_insertion_aroun?=
 =?utf-8?q?d_unevictable_nodes_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1568643356=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1568643356==
Content-Type: multipart/alternative;
 boundary="===============5620179317072719335=="

--===============5620179317072719335==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with drm/i915: Remove guard page insertion around unevictable nodes (rev2)
URL   : https://patchwork.freedesktop.org/series/86220/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9675 -> Patchwork_19474
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19474/index.html

Known issues
------------

  Here are the changes found in Patchwork_19474 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19474/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live@blt:
    - fi-snb-2600:        [PASS][3] -> [DMESG-FAIL][4] ([i915#1409])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/fi-snb-2600/igt@i915_selftest@live@blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19474/fi-snb-2600/igt@i915_selftest@live@blt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/fi-tgl-y/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19474/fi-tgl-y/igt@gem_close_race@basic-threads.html

  
  [i915#1409]: https://gitlab.freedesktop.org/drm/intel/issues/1409
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (41 -> 37)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9675 -> Patchwork_19474

  CI-20190529: 20190529
  CI_DRM_9675: f84d1efce492ef0f46cf4fa1bf01b17ce1627fe4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5968: 267fa33c0947fbbb642098098ff6e5902f9a3d94 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19474: ef937ce200af05b71504476de427b0b4f054f4b9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ef937ce200af drm/i915/gt: Always try to reserve GGTT address 0x0
d8da1202f742 drm/i915: Remove guard page insertion around unevictable nodes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19474/index.html

--===============5620179317072719335==
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
<tr><td><b>Series:</b></td><td>series starting with drm/i915: Remove guard page insertion around unevictable nodes (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86220/">https://patchwork.freedesktop.org/series/86220/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19474/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19474/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9675 -&gt; Patchwork_19474</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19474/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19474 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19474/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@blt:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/fi-snb-2600/igt@i915_selftest@live@blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19474/fi-snb-2600/igt@i915_selftest@live@blt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1409">i915#1409</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_close_race@basic-threads:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/fi-tgl-y/igt@gem_close_race@basic-threads.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19474/fi-tgl-y/igt@gem_close_race@basic-threads.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 37)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9675 -&gt; Patchwork_19474</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9675: f84d1efce492ef0f46cf4fa1bf01b17ce1627fe4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5968: 267fa33c0947fbbb642098098ff6e5902f9a3d94 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19474: ef937ce200af05b71504476de427b0b4f054f4b9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ef937ce200af drm/i915/gt: Always try to reserve GGTT address 0x0<br />
d8da1202f742 drm/i915: Remove guard page insertion around unevictable nodes</p>

</body>
</html>

--===============5620179317072719335==--

--===============1568643356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1568643356==--
