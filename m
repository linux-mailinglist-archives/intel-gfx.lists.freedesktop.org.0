Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D81A43B68D5
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 21:07:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02B876E523;
	Mon, 28 Jun 2021 19:07:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 38A746E523;
 Mon, 28 Jun 2021 19:07:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 31862A73C7;
 Mon, 28 Jun 2021 19:07:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bommu Krishnaiah" <krishnaiah.bommu@intel.com>
Date: Mon, 28 Jun 2021 19:07:44 -0000
Message-ID: <162490726417.2575.3560467765848700128@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210628143829.22995-1-krishnaiah.bommu@intel.com>
In-Reply-To: <20210628143829.22995-1-krishnaiah.bommu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgVGhl?=
 =?utf-8?q?_Following_Patches_are_to_Fix_the_Critical_KclockWork_Errors_in?=
 =?utf-8?q?_i915=5Fgem_and_gt?=
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
Content-Type: multipart/mixed; boundary="===============1914663788=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1914663788==
Content-Type: multipart/alternative;
 boundary="===============9214666532618624886=="

--===============9214666532618624886==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: The Following Patches are to Fix the Critical KclockWork Errors in i915_gem and gt
URL   : https://patchwork.freedesktop.org/series/91978/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10285 -> Patchwork_20480
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/index.html

Known issues
------------

  Here are the changes found in Patchwork_20480 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-compute0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-compute0.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][2] ([i915#1602] / [i915#2029])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][3] ([i915#1372]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029


Participating hosts (40 -> 37)
------------------------------

  Missing    (3): fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10285 -> Patchwork_20480

  CI-20190529: 20190529
  CI_DRM_10285: e65a658751fc5d3be5b0f4bcc4731e66ca1a537a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6121: a63ceb48e6c3e733d04156b32fba3b4f4d5ad794 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20480: ba8a3deef09797a23fca974125ef26df14c97c17 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ba8a3deef097 Klock work Fix for uninitialized array intel_migrate.c
7a1adeb3f0da Klock work Fix for possible memory leak in intel_execlists_submission.c
f9066d1a6aab Klock work Fix for NULL dereferencing in i915_gem_mman.c
4b2a948b3db2 Klock work Fix for NULL dereferencing in i915_gem_ttm.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/index.html

--===============9214666532618624886==
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
<tr><td><b>Series:</b></td><td>The Following Patches are to Fix the Critical KclockWork Errors in i915_gem and gt</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91978/">https://patchwork.freedesktop.org/series/91978/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10285 -&gt; Patchwork_20480</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20480 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-compute0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_chamelium@dp-crc-fast:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 37)</h2>
<p>Missing    (3): fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10285 -&gt; Patchwork_20480</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10285: e65a658751fc5d3be5b0f4bcc4731e66ca1a537a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6121: a63ceb48e6c3e733d04156b32fba3b4f4d5ad794 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20480: ba8a3deef09797a23fca974125ef26df14c97c17 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ba8a3deef097 Klock work Fix for uninitialized array intel_migrate.c<br />
7a1adeb3f0da Klock work Fix for possible memory leak in intel_execlists_submission.c<br />
f9066d1a6aab Klock work Fix for NULL dereferencing in i915_gem_mman.c<br />
4b2a948b3db2 Klock work Fix for NULL dereferencing in i915_gem_ttm.c</p>

</body>
</html>

--===============9214666532618624886==--

--===============1914663788==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1914663788==--
