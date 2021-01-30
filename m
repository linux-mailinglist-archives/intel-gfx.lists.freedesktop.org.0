Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 915B93096CC
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Jan 2021 17:36:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 975686E0F1;
	Sat, 30 Jan 2021 16:36:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EFCC16E0AC;
 Sat, 30 Jan 2021 16:36:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9F57A47EB;
 Sat, 30 Jan 2021 16:36:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 30 Jan 2021 16:36:41 -0000
Message-ID: <161202460193.13907.6632736867359846876@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210130160041.16897-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210130160041.16897-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Reduce_GT_runti?=
 =?utf-8?q?me_stats_from_seqlock_to_a_latch?=
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
Content-Type: multipart/mixed; boundary="===============1468222038=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1468222038==
Content-Type: multipart/alternative;
 boundary="===============0550952263306454564=="

--===============0550952263306454564==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/2] drm/i915/gt: Reduce GT runtime stats from seqlock to a latch
URL   : https://patchwork.freedesktop.org/series/86481/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9705 -> Patchwork_19548
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19548/index.html

Known issues
------------

  Here are the changes found in Patchwork_19548 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9705/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19548/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  
#### Possible fixes ####

  * igt@gem_linear_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][3] ([i915#402]) -> [PASS][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9705/fi-tgl-y/igt@gem_linear_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19548/fi-tgl-y/igt@gem_linear_blits@basic.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-tgl-y:           [SKIP][5] ([i915#2966]) -> [PASS][6] +13 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9705/fi-tgl-y/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19548/fi-tgl-y/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gtt:
    - fi-tgl-y:           [FAIL][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9705/fi-tgl-y/igt@i915_selftest@live@gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19548/fi-tgl-y/igt@i915_selftest@live@gtt.html

  
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9705 -> Patchwork_19548

  CI-20190529: 20190529
  CI_DRM_9705: 7b1b769c42017c6e6d603dbea0182e74090451f1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5979: fdc23507d022b68443121ec2c1a951af27c87240 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19548: afbffefeb4ca2978b42ff54f31f61e9b5d9a1dbf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

afbffefeb4ca drm/i915/gt: Reduce engine runtime stats from seqlock to a latch
aedd5abd5930 drm/i915/gt: Reduce GT runtime stats from seqlock to a latch

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19548/index.html

--===============0550952263306454564==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/2] drm/i915/gt: Reduce GT runtime stats from seqlock to a latch</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86481/">https://patchwork.freedesktop.org/series/86481/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19548/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19548/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9705 -&gt; Patchwork_19548</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19548/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19548 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9705/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19548/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9705/fi-tgl-y/igt@gem_linear_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19548/fi-tgl-y/igt@gem_linear_blits@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9705/fi-tgl-y/igt@i915_selftest@live@gem_contexts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2966">i915#2966</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19548/fi-tgl-y/igt@i915_selftest@live@gem_contexts.html">PASS</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9705/fi-tgl-y/igt@i915_selftest@live@gtt.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19548/fi-tgl-y/igt@i915_selftest@live@gtt.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9705 -&gt; Patchwork_19548</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9705: 7b1b769c42017c6e6d603dbea0182e74090451f1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5979: fdc23507d022b68443121ec2c1a951af27c87240 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19548: afbffefeb4ca2978b42ff54f31f61e9b5d9a1dbf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>afbffefeb4ca drm/i915/gt: Reduce engine runtime stats from seqlock to a latch<br />
aedd5abd5930 drm/i915/gt: Reduce GT runtime stats from seqlock to a latch</p>

</body>
</html>

--===============0550952263306454564==--

--===============1468222038==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1468222038==--
