Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B46C310027
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 23:40:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF70A6EE86;
	Thu,  4 Feb 2021 22:40:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E8BE56EE86;
 Thu,  4 Feb 2021 22:40:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9555A0091;
 Thu,  4 Feb 2021 22:40:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 04 Feb 2021 22:40:03 -0000
Message-ID: <161247840386.4502.12387072726773767125@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210204181048.24202-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210204181048.24202-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Clean_up_the_DDI_clock_routing_mess_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1434591709=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1434591709==
Content-Type: multipart/alternative;
 boundary="===============5258755228760348690=="

--===============5258755228760348690==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Clean up the DDI clock routing mess (rev2)
URL   : https://patchwork.freedesktop.org/series/86544/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9732 -> Patchwork_19593
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19593/index.html

Known issues
------------

  Here are the changes found in Patchwork_19593 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bsw-nick:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19593/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][2] -> [INCOMPLETE][3] ([i915#2940])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9732/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19593/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([i915#402])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9732/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19593/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  * igt@runner@aborted:
    - fi-bsw-n3050:       NOTRUN -> [FAIL][6] ([i915#1436] / [i915#2722])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19593/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [INCOMPLETE][7] ([i915#2940]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9732/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19593/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@prime_vgem@basic-read:
    - fi-tgl-y:           [DMESG-WARN][9] ([i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9732/fi-tgl-y/igt@prime_vgem@basic-read.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19593/fi-tgl-y/igt@prime_vgem@basic-read.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-byt-j1900 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9732 -> Patchwork_19593

  CI-20190529: 20190529
  CI_DRM_9732: adb75f6f105d29ef75c1c8547db6259cad2092df @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5991: a2d9c45fca85918ecf47761205555aade64b9220 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19593: 3042cc386f808b0fbaab79f4a1dc54f0f03d947b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3042cc386f80 drm/i915: s/dev_priv/i915/ for the remainder of DDI clock routing
68c071acd87d drm/i915: Relocate icl_sanitize_encoder_pll_mapping()
43bdf3bff434 drm/i915: Use .disable_clock() for pll sanitation
ad2ff2024cda drm/i915: Split adl-s/rkl from icl_ddi_combo_{enable, disable}_clock()
2c2cbb342e26 drm/i915: Extract _cnl_ddi_{enable, disable}_clock()
da8fa7f178d4 drm/i915: Sprinkle WARN(!pll) into icl/dg1 .clock_enable()
955b034d57a3 drm/i915: Sprinkle a few missing locks around shared DDI clock registers
05feedf13562 drm/i915: Use intel_de_rmw() for DDI clock routing
6556f08b6691 drm/i915: Extract icl+ .{enable, disable}_clock() vfuncs
818ed01c5517 drm/i915: Convert DG1 over to .{enable, disable}_clock()
ff375afcdf02 drm/i195: Extract cnl_ddi_{enable, disable}_clock()
370fdbea29e2 drm/i915: Extract skl_ddi_{enable, disable}_clock()
104612889762 drm/i915: Extract hsw_ddi_{enable, disable}_clock()
7a9a433648ec drm/i915: Introduce .{enable, disable}_clock() encoder vfuncs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19593/index.html

--===============5258755228760348690==
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
<tr><td><b>Series:</b></td><td>drm/i915: Clean up the DDI clock routing mess (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86544/">https://patchwork.freedesktop.org/series/86544/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19593/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19593/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9732 -&gt; Patchwork_19593</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19593/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19593 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19593/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9732/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19593/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_two_bos:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9732/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19593/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19593/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9732/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19593/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9732/fi-tgl-y/igt@prime_vgem@basic-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19593/fi-tgl-y/igt@prime_vgem@basic-read.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-jsl-1 fi-ilk-m540 fi-byt-j1900 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9732 -&gt; Patchwork_19593</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9732: adb75f6f105d29ef75c1c8547db6259cad2092df @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5991: a2d9c45fca85918ecf47761205555aade64b9220 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19593: 3042cc386f808b0fbaab79f4a1dc54f0f03d947b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3042cc386f80 drm/i915: s/dev_priv/i915/ for the remainder of DDI clock routing<br />
68c071acd87d drm/i915: Relocate icl_sanitize_encoder_pll_mapping()<br />
43bdf3bff434 drm/i915: Use .disable_clock() for pll sanitation<br />
ad2ff2024cda drm/i915: Split adl-s/rkl from icl_ddi_combo_{enable, disable}<em>clock()<br />
2c2cbb342e26 drm/i915: Extract _cnl_ddi</em>{enable, disable}<em>clock()<br />
da8fa7f178d4 drm/i915: Sprinkle WARN(!pll) into icl/dg1 .clock_enable()<br />
955b034d57a3 drm/i915: Sprinkle a few missing locks around shared DDI clock registers<br />
05feedf13562 drm/i915: Use intel_de_rmw() for DDI clock routing<br />
6556f08b6691 drm/i915: Extract icl+ .{enable, disable}_clock() vfuncs<br />
818ed01c5517 drm/i915: Convert DG1 over to .{enable, disable}_clock()<br />
ff375afcdf02 drm/i195: Extract cnl_ddi</em>{enable, disable}<em>clock()<br />
370fdbea29e2 drm/i915: Extract skl_ddi</em>{enable, disable}<em>clock()<br />
104612889762 drm/i915: Extract hsw_ddi</em>{enable, disable}_clock()<br />
7a9a433648ec drm/i915: Introduce .{enable, disable}_clock() encoder vfuncs</p>

</body>
</html>

--===============5258755228760348690==--

--===============1434591709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1434591709==--
