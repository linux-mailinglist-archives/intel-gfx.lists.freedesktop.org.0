Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60213497C63
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 10:47:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB5E110E397;
	Mon, 24 Jan 2022 09:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C835510E397;
 Mon, 24 Jan 2022 09:47:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C3B4DAA914;
 Mon, 24 Jan 2022 09:47:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1287134033832025377=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Mon, 24 Jan 2022 09:47:07 -0000
Message-ID: <164301762779.1342.11849098042855660876@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220124090344.1791-1-andi.shyti@linux.intel.com>
In-Reply-To: <20220124090344.1791-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_fix_header_file_inclusion_for_might=5Falloc=28=29_=28r?=
 =?utf-8?q?ev2=29?=
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

--===============1287134033832025377==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: fix header file inclusion for might_alloc() (rev2)
URL   : https://patchwork.freedesktop.org/series/99215/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11120 -> Patchwork_22075
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22075/index.html

Participating hosts (49 -> 33)
------------------------------

  Missing    (16): fi-ilk-m540 fi-bdw-samus shard-tglu bat-dg1-6 fi-hsw-4200u fi-icl-u2 fi-bsw-cyan bat-adlp-6 fi-ctg-p8600 fi-cfl-8109u fi-kbl-8809g bat-rpls-1 shard-rkl shard-dg1 bat-jsl-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_22075 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][1] -> [INCOMPLETE][2] ([i915#2940])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22075/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a1:
    - fi-elk-e7500:       [PASS][3] -> [FAIL][4] ([i915#2122])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22075/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a1.html

  * igt@runner@aborted:
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][5] ([i915#4312])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22075/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][6] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22075/fi-bsw-n3050/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312


Build changes
-------------

  * Linux: CI_DRM_11120 -> Patchwork_22075

  CI-20190529: 20190529
  CI_DRM_11120: d8e524ded1a6cb24bbd2da0785b04f199c03f1b9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6330: f73008bac9a8db0779264b170f630483e9165764 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22075: e88e293f760284f0f7745fe00fc49743980c1ed8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e88e293f7602 drm/i915: fix header file inclusion for might_alloc()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22075/index.html

--===============1287134033832025377==
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
<tr><td><b>Series:</b></td><td>drm/i915: fix header file inclusion for might_alloc() (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99215/">https://patchwork.freedesktop.org/series/99215/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22075/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22075/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11120 -&gt; Patchwork_22075</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22075/index.html</p>
<h2>Participating hosts (49 -&gt; 33)</h2>
<p>Missing    (16): fi-ilk-m540 fi-bdw-samus shard-tglu bat-dg1-6 fi-hsw-4200u fi-icl-u2 fi-bsw-cyan bat-adlp-6 fi-ctg-p8600 fi-cfl-8109u fi-kbl-8809g bat-rpls-1 shard-rkl shard-dg1 bat-jsl-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22075 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22075/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a1:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22075/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22075/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22075/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11120 -&gt; Patchwork_22075</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11120: d8e524ded1a6cb24bbd2da0785b04f199c03f1b9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6330: f73008bac9a8db0779264b170f630483e9165764 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22075: e88e293f760284f0f7745fe00fc49743980c1ed8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e88e293f7602 drm/i915: fix header file inclusion for might_alloc()</p>

</body>
</html>

--===============1287134033832025377==--
