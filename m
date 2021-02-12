Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9100931A574
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 20:32:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E51766E207;
	Fri, 12 Feb 2021 19:32:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8B5EF6E207;
 Fri, 12 Feb 2021 19:32:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87EB3A47E1;
 Fri, 12 Feb 2021 19:32:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Fri, 12 Feb 2021 19:32:42 -0000
Message-ID: <161315836255.25822.12266535356896729825@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210212185053.1689716-1-lyude@redhat.com>
In-Reply-To: <20210212185053.1689716-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gen9bc=3A_Handle_TGP_PCH_during_suspend/resume_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1393029966=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1393029966==
Content-Type: multipart/alternative;
 boundary="===============4715325371165854377=="

--===============4715325371165854377==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gen9bc: Handle TGP PCH during suspend/resume (rev2)
URL   : https://patchwork.freedesktop.org/series/86346/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9771 -> Patchwork_19673
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19673/index.html

Known issues
------------

  Here are the changes found in Patchwork_19673 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-tgl-y:           NOTRUN -> [SKIP][1] ([fdo#109315] / [i915#2575])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19673/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_basic@userptr:
    - fi-byt-j1900:       NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19673/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html

  * igt@gem_render_tiled_blits@basic:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/fi-tgl-y/igt@gem_render_tiled_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19673/fi-tgl-y/igt@gem_render_tiled_blits@basic.html

  
#### Possible fixes ####

  * igt@gem_linear_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/fi-tgl-y/igt@gem_linear_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19673/fi-tgl-y/igt@gem_linear_blits@basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [INCOMPLETE][7] ([i915#142] / [i915#2405]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19673/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (45 -> 39)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-ehl-2 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9771 -> Patchwork_19673

  CI-20190529: 20190529
  CI_DRM_9771: 1b095889c6780e40f6161bfb824b5e944fd69547 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6003: 627cc5353535d61fa33c5f7ff7e64f154c84f10a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19673: 1ffa579a6e3408e1a4033b88eb5ab0a4186f82a5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1ffa579a6e34 drm/i915/gen9bc: Handle TGP PCH during suspend/resume

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19673/index.html

--===============4715325371165854377==
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
<tr><td><b>Series:</b></td><td>drm/i915/gen9bc: Handle TGP PCH during suspend/resume (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86346/">https://patchwork.freedesktop.org/series/86346/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19673/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19673/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9771 -&gt; Patchwork_19673</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19673/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19673 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19673/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@userptr:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19673/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19673/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/fi-tgl-y/igt@gem_linear_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19673/fi-tgl-y/igt@gem_linear_blits@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19673/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 39)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-ehl-2 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9771 -&gt; Patchwork_19673</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9771: 1b095889c6780e40f6161bfb824b5e944fd69547 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6003: 627cc5353535d61fa33c5f7ff7e64f154c84f10a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19673: 1ffa579a6e3408e1a4033b88eb5ab0a4186f82a5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1ffa579a6e34 drm/i915/gen9bc: Handle TGP PCH during suspend/resume</p>

</body>
</html>

--===============4715325371165854377==--

--===============1393029966==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1393029966==--
