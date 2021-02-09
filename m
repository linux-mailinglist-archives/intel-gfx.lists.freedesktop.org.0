Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B82003154B5
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 18:11:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82BFF89FF9;
	Tue,  9 Feb 2021 17:11:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4829A89DB5;
 Tue,  9 Feb 2021 17:11:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 40958A882E;
 Tue,  9 Feb 2021 17:11:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Saichandana S" <saichandana.s@intel.com>
Date: Tue, 09 Feb 2021 17:11:54 -0000
Message-ID: <161289071423.28237.11768415802442520526@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210104103036.1443-1-saichandana.s@intel.com>
In-Reply-To: <20210104103036.1443-1-saichandana.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/debugfs_=3A_PM=5FREQ_and_PM=5FRES_registers_=28rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============0548169256=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0548169256==
Content-Type: multipart/alternative;
 boundary="===============6456948640967893672=="

--===============6456948640967893672==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/debugfs : PM_REQ and PM_RES registers (rev4)
URL   : https://patchwork.freedesktop.org/series/85437/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9752 -> Patchwork_19642
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19642/index.html

Known issues
------------

  Here are the changes found in Patchwork_19642 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-tgl-y:           NOTRUN -> [SKIP][1] ([fdo#109315] / [i915#2575])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19642/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9752/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19642/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7500u:       [PASS][4] -> [INCOMPLETE][5] ([i915#151] / [i915#2405])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9752/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19642/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][6] -> [FAIL][7] ([i915#1372])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9752/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19642/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@runner@aborted:
    - fi-kbl-7500u:       NOTRUN -> [FAIL][8] ([fdo#109271] / [i915#1814] / [i915#2722])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19642/fi-kbl-7500u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@vgem_basic@dmabuf-fence-before:
    - fi-tgl-y:           [DMESG-WARN][9] ([i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9752/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19642/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9752 -> Patchwork_19642

  CI-20190529: 20190529
  CI_DRM_9752: a99b75af1722e15bade7f41dca4227bc907561aa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5999: 2982c998a9cb79095611fba018d5df3eec5eab88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19642: 45c0b040618535169c0722ed22b61db9062bd5eb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

45c0b0406185 drm/i915/debugfs : PCU PM_REQ and PM_RES registers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19642/index.html

--===============6456948640967893672==
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
<tr><td><b>Series:</b></td><td>drm/i915/debugfs : PM_REQ and PM_RES registers (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85437/">https://patchwork.freedesktop.org/series/85437/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19642/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19642/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9752 -&gt; Patchwork_19642</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19642/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19642 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19642/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9752/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19642/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9752/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19642/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/151">i915#151</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9752/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19642/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19642/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@vgem_basic@dmabuf-fence-before:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9752/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19642/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9752 -&gt; Patchwork_19642</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9752: a99b75af1722e15bade7f41dca4227bc907561aa @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5999: 2982c998a9cb79095611fba018d5df3eec5eab88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19642: 45c0b040618535169c0722ed22b61db9062bd5eb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>45c0b0406185 drm/i915/debugfs : PCU PM_REQ and PM_RES registers</p>

</body>
</html>

--===============6456948640967893672==--

--===============0548169256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0548169256==--
