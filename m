Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB052636E0D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 00:06:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF0E110E64E;
	Wed, 23 Nov 2022 23:06:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7D33310E64E;
 Wed, 23 Nov 2022 23:06:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76085A0169;
 Wed, 23 Nov 2022 23:06:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3451282632343092554=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 23 Nov 2022 23:06:00 -0000
Message-ID: <166924476045.15575.10474098084547554470@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1669238194.git.jani.nikula@intel.com>
In-Reply-To: <cover.1669238194.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_switch_to_intel=5Fde=5F*_register_accessors?=
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

--===============3451282632343092554==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: switch to intel_de_* register accessors
URL   : https://patchwork.freedesktop.org/series/111281/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12425 -> Patchwork_111281v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111281v1/index.html

Participating hosts (38 -> 38)
------------------------------

  Additional (1): fi-tgl-dsi 
  Missing    (1): fi-ctg-p8600 

Known issues
------------

  Here are the changes found in Patchwork_111281v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       NOTRUN -> [INCOMPLETE][1] ([i915#6179])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111281v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][2] ([i915#2582]) -> [PASS][3] +4 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12425/bat-rpls-2/igt@fbdev@read.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111281v1/bat-rpls-2/igt@fbdev@read.html

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][4] ([i915#7229]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12425/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111281v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [INCOMPLETE][6] ([i915#4817]) -> [FAIL][7] ([fdo#103375])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12425/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111281v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6179]: https://gitlab.freedesktop.org/drm/intel/issues/6179
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6856]: https://gitlab.freedesktop.org/drm/intel/issues/6856
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7125]: https://gitlab.freedesktop.org/drm/intel/issues/7125
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7355]: https://gitlab.freedesktop.org/drm/intel/issues/7355
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7554]: https://gitlab.freedesktop.org/drm/intel/issues/7554
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561


Build changes
-------------

  * Linux: CI_DRM_12425 -> Patchwork_111281v1

  CI-20190529: 20190529
  CI_DRM_12425: 66e5d8e0cdb991feba4fde2c851e700f993d240a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7072: 69ba7163475925cdc69aebbdfa0e87453ae165c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111281v1: 66e5d8e0cdb991feba4fde2c851e700f993d240a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

809345841230 drm/i915/fbc: switch to intel_de_* register accessors in display code
3ca275f5c581 drm/i915/tc: switch to intel_de_* register accessors in display code
d33fc04bc8af drm/i915/snps: switch to intel_de_* register accessors in display code
dc68f8eeddfc drm/i915/wm: switch to intel_de_* register accessors in display code
5bc60163fcd3 drm/i915/gmbus: switch to intel_de_* register accessors in display code
0ebad48a3c8f drm/i915/dp-aux: switch to intel_de_* register accessors in display code
f109f92c4648 drm/i915/dmc: switch to intel_de_* register accessors in display code
0974c7c1f811 drm/i915/power: switch to intel_de_* register accessors in display code
226a7c622a02 drm/i915/crt: switch to intel_de_* register accessors in display code
3b61ea1f81d6 drm/i915/crt: drop a bunch of unnecessary register variables
1928db991afe drm/i915/de: return the old register value from intel_de_rmw()
b2a516814284 drm/i915/de: Add more macros to remove all direct calls to uncore

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111281v1/index.html

--===============3451282632343092554==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: switch to intel_de_* register accessors</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111281/">https://patchwork.freedesktop.org/series/111281/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111281v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111281v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12425 -&gt; Patchwork_111281v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111281v1/index.html</p>
<h2>Participating hosts (38 -&gt; 38)</h2>
<p>Additional (1): fi-tgl-dsi <br />
  Missing    (1): fi-ctg-p8600 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111281v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3@smem:<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111281v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6179">i915#6179</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12425/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111281v1/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12425/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111281v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12425/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111281v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12425 -&gt; Patchwork_111281v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12425: 66e5d8e0cdb991feba4fde2c851e700f993d240a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7072: 69ba7163475925cdc69aebbdfa0e87453ae165c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111281v1: 66e5d8e0cdb991feba4fde2c851e700f993d240a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>809345841230 drm/i915/fbc: switch to intel_de_<em> register accessors in display code<br />
3ca275f5c581 drm/i915/tc: switch to intel_de_</em> register accessors in display code<br />
d33fc04bc8af drm/i915/snps: switch to intel_de_<em> register accessors in display code<br />
dc68f8eeddfc drm/i915/wm: switch to intel_de_</em> register accessors in display code<br />
5bc60163fcd3 drm/i915/gmbus: switch to intel_de_<em> register accessors in display code<br />
0ebad48a3c8f drm/i915/dp-aux: switch to intel_de_</em> register accessors in display code<br />
f109f92c4648 drm/i915/dmc: switch to intel_de_<em> register accessors in display code<br />
0974c7c1f811 drm/i915/power: switch to intel_de_</em> register accessors in display code<br />
226a7c622a02 drm/i915/crt: switch to intel_de_* register accessors in display code<br />
3b61ea1f81d6 drm/i915/crt: drop a bunch of unnecessary register variables<br />
1928db991afe drm/i915/de: return the old register value from intel_de_rmw()<br />
b2a516814284 drm/i915/de: Add more macros to remove all direct calls to uncore</p>

</body>
</html>

--===============3451282632343092554==--
