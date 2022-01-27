Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA1C49E763
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 17:23:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DCB310E199;
	Thu, 27 Jan 2022 16:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C2FE210E199;
 Thu, 27 Jan 2022 16:23:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BE911A77A5;
 Thu, 27 Jan 2022 16:23:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1538678337730990546=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin" <arunpravin.paneerselvam@amd.com>
Date: Thu, 27 Jan 2022 16:23:14 -0000
Message-ID: <164330059475.23659.11052618961942719157@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220127141107.173692-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20220127141107.173692-1-Arunpravin.PaneerSelvam@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv11=2C1/5=5D_drm=3A_improve_drm=5Fbuddy=5F?=
 =?utf-8?q?alloc_function?=
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

--===============1538678337730990546==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v11,1/5] drm: improve drm_buddy_alloc function
URL   : https://patchwork.freedesktop.org/series/99430/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11151 -> Patchwork_22128
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22128/index.html

Participating hosts (46 -> 39)
------------------------------

  Missing    (7): bat-adls-5 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-kbl-8809g fi-pnv-d510 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22128 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       [PASS][1] -> [FAIL][2] ([i915#4547])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22128/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - fi-skl-6600u:       NOTRUN -> [FAIL][3] ([i915#4312])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22128/fi-skl-6600u/igt@runner@aborted.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][4] ([i915#4957]) -> [DMESG-FAIL][5] ([i915#4494] / [i915#4957])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22128/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957


Build changes
-------------

  * Linux: CI_DRM_11151 -> Patchwork_22128

  CI-20190529: 20190529
  CI_DRM_11151: 627e2885b51ab503a98aa89f0a0bd68416c731fc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6336: ae2eb9e18bc58a4c45f28cfd80962938198dec3c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22128: a629aca723cdab39652e834b30f0513757f78441 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a629aca723cd drm/amdgpu: add drm buddy support to amdgpu
f26779496cc3 drm/amdgpu: move vram inline functions into a header
957142d57613 drm: implement a method to free unused pages
50185f5f7e57 drm: implement top-down allocation method
00470383ca08 drm: improve drm_buddy_alloc function

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22128/index.html

--===============1538678337730990546==
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
<tr><td><b>Series:</b></td><td>series starting with [v11,1/5] drm: improve drm_buddy_alloc function</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99430/">https://patchwork.freedesktop.org/series/99430/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22128/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22128/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11151 -&gt; Patchwork_22128</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22128/index.html</p>
<h2>Participating hosts (46 -&gt; 39)</h2>
<p>Missing    (7): bat-adls-5 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-kbl-8809g fi-pnv-d510 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22128 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22128/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22128/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11151/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22128/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11151 -&gt; Patchwork_22128</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11151: 627e2885b51ab503a98aa89f0a0bd68416c731fc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6336: ae2eb9e18bc58a4c45f28cfd80962938198dec3c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22128: a629aca723cdab39652e834b30f0513757f78441 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a629aca723cd drm/amdgpu: add drm buddy support to amdgpu<br />
f26779496cc3 drm/amdgpu: move vram inline functions into a header<br />
957142d57613 drm: implement a method to free unused pages<br />
50185f5f7e57 drm: implement top-down allocation method<br />
00470383ca08 drm: improve drm_buddy_alloc function</p>

</body>
</html>

--===============1538678337730990546==--
