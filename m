Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7715D31D0C5
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 20:14:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37CE36E974;
	Tue, 16 Feb 2021 19:14:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 23F536E974;
 Tue, 16 Feb 2021 19:14:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 14AF2A882E;
 Tue, 16 Feb 2021 19:14:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tomas Winkler" <tomas.winkler@intel.com>
Date: Tue, 16 Feb 2021 19:14:55 -0000
Message-ID: <161350289506.32287.17672078284082862197@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210216181925.650082-1-tomas.winkler@intel.com>
In-Reply-To: <20210216181925.650082-1-tomas.winkler@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/spi=3A_discrete_graphics_internal_spi?=
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
Content-Type: multipart/mixed; boundary="===============1011703183=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1011703183==
Content-Type: multipart/alternative;
 boundary="===============5176793246566704305=="

--===============5176793246566704305==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/spi: discrete graphics internal spi
URL   : https://patchwork.freedesktop.org/series/87137/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9779 -> Patchwork_19688
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19688/index.html

Known issues
------------

  Here are the changes found in Patchwork_19688 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@client:
    - fi-glk-dsi:         [PASS][1] -> [DMESG-FAIL][2] ([i915#3047])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/fi-glk-dsi/igt@i915_selftest@live@client.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19688/fi-glk-dsi/igt@i915_selftest@live@client.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19688/fi-tgl-y/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19688/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
  [i915#3047]: https://gitlab.freedesktop.org/drm/intel/issues/3047
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (45 -> 40)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9779 -> Patchwork_19688

  CI-20190529: 20190529
  CI_DRM_9779: 775dbe8d5e041442fcadf63894468a63582a87a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6004: fe9ac2aeffc1828c6d61763a611a44fbd450aa96 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19688: a88bc6332c0e24c204e6aae6a0d3eb1df32cbbe0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a88bc6332c0e mtd: use refcount to prevent corruption
e19e4be7b8a6 drm/i915/spi: serialize spi access
bf56e1ed210e drm/i915/spi: mtd: implement access handlers
b0e8bcfbf9b1 drm/i915/spi: spi register with mtd
09c90ea9056f drm/i915/spi: implement spi access functions
38d4aaea57cb drm/i915/spi: implement region enumeration
e863e8ed0f60 drm/i915/spi: add driver for on-die spi device
898dd46b903c drm/i915/spi: intel_spi_region map
00cd2f532d55 drm/i915/spi: add spi device for discrete graphics

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19688/index.html

--===============5176793246566704305==
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
<tr><td><b>Series:</b></td><td>drm/i915/spi: discrete graphics internal spi</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87137/">https://patchwork.freedesktop.org/series/87137/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19688/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19688/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9779 -&gt; Patchwork_19688</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19688/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19688 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/fi-glk-dsi/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19688/fi-glk-dsi/igt@i915_selftest@live@client.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3047">i915#3047</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19688/fi-tgl-y/igt@prime_vgem@basic-userptr.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_vgem@basic-fence-flip:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19688/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 40)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9779 -&gt; Patchwork_19688</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9779: 775dbe8d5e041442fcadf63894468a63582a87a2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6004: fe9ac2aeffc1828c6d61763a611a44fbd450aa96 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19688: a88bc6332c0e24c204e6aae6a0d3eb1df32cbbe0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a88bc6332c0e mtd: use refcount to prevent corruption<br />
e19e4be7b8a6 drm/i915/spi: serialize spi access<br />
bf56e1ed210e drm/i915/spi: mtd: implement access handlers<br />
b0e8bcfbf9b1 drm/i915/spi: spi register with mtd<br />
09c90ea9056f drm/i915/spi: implement spi access functions<br />
38d4aaea57cb drm/i915/spi: implement region enumeration<br />
e863e8ed0f60 drm/i915/spi: add driver for on-die spi device<br />
898dd46b903c drm/i915/spi: intel_spi_region map<br />
00cd2f532d55 drm/i915/spi: add spi device for discrete graphics</p>

</body>
</html>

--===============5176793246566704305==--

--===============1011703183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1011703183==--
