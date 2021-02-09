Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE44315916
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 23:06:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8181A6E8AC;
	Tue,  9 Feb 2021 22:06:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5BA466E145;
 Tue,  9 Feb 2021 22:06:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 55485A47E1;
 Tue,  9 Feb 2021 22:06:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Tue, 09 Feb 2021 22:06:02 -0000
Message-ID: <161290836232.28237.5187504550860302909@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210209212832.1401815-1-lyude@redhat.com>
In-Reply-To: <20210209212832.1401815-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gen9=5Fbc=3A_Add_TGP_PCH_support?=
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
Content-Type: multipart/mixed; boundary="===============0153232402=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0153232402==
Content-Type: multipart/alternative;
 boundary="===============1474518218518964076=="

--===============1474518218518964076==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gen9_bc: Add TGP PCH support
URL   : https://patchwork.freedesktop.org/series/86918/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9752 -> Patchwork_19646
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19646/index.html

Known issues
------------

  Here are the changes found in Patchwork_19646 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +26 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19646/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#2283])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19646/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-y:           [PASS][3] -> [DMESG-FAIL][4] ([i915#2291])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9752/fi-icl-y/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19646/fi-icl-y/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19646/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@prime_self_import@basic-with_one_bo:
    - fi-tgl-y:           [PASS][6] -> [DMESG-WARN][7] ([i915#402])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9752/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19646/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html

  
#### Possible fixes ####

  * igt@vgem_basic@dmabuf-fence-before:
    - fi-tgl-y:           [DMESG-WARN][8] ([i915#402]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9752/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19646/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9752 -> Patchwork_19646

  CI-20190529: 20190529
  CI_DRM_9752: a99b75af1722e15bade7f41dca4227bc907561aa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5999: 2982c998a9cb79095611fba018d5df3eec5eab88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19646: ce45e5062ad419c728947634615a931abd049890 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ce45e5062ad4 drm/i915/gen9_bc: Add W/A for missing STRAP config on TGP PCH + CML combos
00411d8a417f drm/i915/gen9_bc: Introduce HPD pin mappings for TGP PCH + CML combos
7812d10de3b7 drm/i915/gen9_bc: Introduce TGP PCH DDC pin mappings
3c2b1a4f667c drm/i915/gen9_bc: Recognize TGP PCH + CML combos

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19646/index.html

--===============1474518218518964076==
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
<tr><td><b>Series:</b></td><td>drm/i915/gen9_bc: Add TGP PCH support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86918/">https://patchwork.freedesktop.org/series/86918/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19646/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19646/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9752 -&gt; Patchwork_19646</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19646/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19646 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19646/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19646/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9752/fi-icl-y/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19646/fi-icl-y/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19646/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9752/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19646/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@vgem_basic@dmabuf-fence-before:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9752/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19646/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9752 -&gt; Patchwork_19646</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9752: a99b75af1722e15bade7f41dca4227bc907561aa @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5999: 2982c998a9cb79095611fba018d5df3eec5eab88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19646: ce45e5062ad419c728947634615a931abd049890 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ce45e5062ad4 drm/i915/gen9_bc: Add W/A for missing STRAP config on TGP PCH + CML combos<br />
00411d8a417f drm/i915/gen9_bc: Introduce HPD pin mappings for TGP PCH + CML combos<br />
7812d10de3b7 drm/i915/gen9_bc: Introduce TGP PCH DDC pin mappings<br />
3c2b1a4f667c drm/i915/gen9_bc: Recognize TGP PCH + CML combos</p>

</body>
</html>

--===============1474518218518964076==--

--===============0153232402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0153232402==--
