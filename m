Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F52E2E7C96
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Dec 2020 22:21:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E09338979F;
	Wed, 30 Dec 2020 21:21:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 277348977A;
 Wed, 30 Dec 2020 21:21:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1784BAA0EB;
 Wed, 30 Dec 2020 21:21:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 30 Dec 2020 21:21:31 -0000
Message-ID: <160936329107.26068.17478945352715615864@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201230202309.23982-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201230202309.23982-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Track_pm=5Fqos_per_connector_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0799979883=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0799979883==
Content-Type: multipart/alternative;
 boundary="===============4940915404633545258=="

--===============4940915404633545258==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Track pm_qos per connector (rev2)
URL   : https://patchwork.freedesktop.org/series/85333/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9534 -> Patchwork_19233
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/index.html

Known issues
------------

  Here are the changes found in Patchwork_19233 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +14 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [PASS][2] -> [INCOMPLETE][3] ([i915#142] / [i915#2405])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([i915#402]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][6] ([i915#1814])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/fi-byt-j1900/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_basic@create-fd-close:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/fi-tgl-y/igt@gem_basic@create-fd-close.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/fi-tgl-y/igt@gem_basic@create-fd-close.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [DMESG-WARN][9] ([i915#2411] / [i915#402]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (42 -> 36)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9534 -> Patchwork_19233

  CI-20190529: 20190529
  CI_DRM_9534: 797de7a6fea9a997e5b529af8994b2f251779d0a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5930: 9efe3bfcb2b1c3613dddc8761425aa6943fa162d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19233: a7992ba281fa1ed68959996728a37230f6614097 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a7992ba281fa drm/i915/dp: Track pm_qos per connector

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/index.html

--===============4940915404633545258==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Track pm_qos per connector (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85333/">https://patchwork.freedesktop.org/series/85333/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9534 -&gt; Patchwork_19233</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19233 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/fi-tgl-y/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/fi-tgl-y/igt@prime_vgem@basic-gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/fi-byt-j1900/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_basic@create-fd-close:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/fi-tgl-y/igt@gem_basic@create-fd-close.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/fi-tgl-y/igt@gem_basic@create-fd-close.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19233/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 36)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bsw-nick fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9534 -&gt; Patchwork_19233</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9534: 797de7a6fea9a997e5b529af8994b2f251779d0a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5930: 9efe3bfcb2b1c3613dddc8761425aa6943fa162d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19233: a7992ba281fa1ed68959996728a37230f6614097 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a7992ba281fa drm/i915/dp: Track pm_qos per connector</p>

</body>
</html>

--===============4940915404633545258==--

--===============0799979883==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0799979883==--
