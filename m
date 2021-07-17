Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DB03CC16F
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Jul 2021 08:05:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 032046EA17;
	Sat, 17 Jul 2021 06:05:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D11A56EA17;
 Sat, 17 Jul 2021 06:05:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C371AA008A;
 Sat, 17 Jul 2021 06:05:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sat, 17 Jul 2021 06:05:18 -0000
Message-ID: <162650191877.18554.405808115531574928@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210717051426.4120328-1-matthew.d.roper@intel.com>
In-Reply-To: <20210717051426.4120328-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTW9y?=
 =?utf-8?q?e_workaround_updates?=
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
Content-Type: multipart/mixed; boundary="===============1328071817=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1328071817==
Content-Type: multipart/alternative;
 boundary="===============3396067362829761101=="

--===============3396067362829761101==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: More workaround updates
URL   : https://patchwork.freedesktop.org/series/92669/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10346 -> Patchwork_20640
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/index.html

Known issues
------------

  Here are the changes found in Patchwork_20640 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +27 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#3718])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718


Participating hosts (41 -> 35)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus fi-tgl-y bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10346 -> Patchwork_20640

  CI-20190529: 20190529
  CI_DRM_10346: 6c4e3c031a995e641cc0d9563d21043415fb8d12 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6144: bc65ee9ee6593716306448c9fb82c77f284f2148 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20640: fae76d62ac8ff6dc3d11546abd41305f544c8024 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fae76d62ac8f drm/i915: Make workaround upper bounds exclusive
5d962f65530f drm/i915/rkl: Wa_1408330847 no longer applies to RKL
a04accd6c6dc drm/i915/rkl: Wa_1409767108 also applies to RKL
00c4dd9a43c2 drm/i915/adl_s: Wa_14011765242 is also needed on A1 display stepping
2f52e703776a drm/i915: Program DFR enable/disable as a GT workaround
a83a0ab9a15c drm/i915/icl: Drop a couple unnecessary workarounds
b4df960619ce drm/i915: Fix application of WaInPlaceDecompressionHang

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/index.html

--===============3396067362829761101==
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
<tr><td><b>Series:</b></td><td>More workaround updates</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92669/">https://patchwork.freedesktop.org/series/92669/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10346 -&gt; Patchwork_20640</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20640 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 35)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus fi-tgl-y bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10346 -&gt; Patchwork_20640</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10346: 6c4e3c031a995e641cc0d9563d21043415fb8d12 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6144: bc65ee9ee6593716306448c9fb82c77f284f2148 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20640: fae76d62ac8ff6dc3d11546abd41305f544c8024 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fae76d62ac8f drm/i915: Make workaround upper bounds exclusive<br />
5d962f65530f drm/i915/rkl: Wa_1408330847 no longer applies to RKL<br />
a04accd6c6dc drm/i915/rkl: Wa_1409767108 also applies to RKL<br />
00c4dd9a43c2 drm/i915/adl_s: Wa_14011765242 is also needed on A1 display stepping<br />
2f52e703776a drm/i915: Program DFR enable/disable as a GT workaround<br />
a83a0ab9a15c drm/i915/icl: Drop a couple unnecessary workarounds<br />
b4df960619ce drm/i915: Fix application of WaInPlaceDecompressionHang</p>

</body>
</html>

--===============3396067362829761101==--

--===============1328071817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1328071817==--
