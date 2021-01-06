Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6802EB97E
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 06:29:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A58BD893B8;
	Wed,  6 Jan 2021 05:29:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E9C9893A2;
 Wed,  6 Jan 2021 05:29:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86E98A363B;
 Wed,  6 Jan 2021 05:29:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Wed, 06 Jan 2021 05:29:29 -0000
Message-ID: <160991096952.18711.7083181729859876003@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210105051353.5714-1-anshuman.gupta@intel.com>
In-Reply-To: <20210105051353.5714-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pps=3A_Add_PPS_power_domain_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============2045267614=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2045267614==
Content-Type: multipart/alternative;
 boundary="===============2842528396405188908=="

--===============2842528396405188908==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pps: Add PPS power domain (rev2)
URL   : https://patchwork.freedesktop.org/series/85470/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9548 -> Patchwork_19267
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/index.html

Known issues
------------

  Here are the changes found in Patchwork_19267 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-tgl-y:           NOTRUN -> [SKIP][1] ([fdo#109315] / [i915#2575])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][2] ([fdo#109271]) +22 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@sync-compute0:
    - fi-kbl-r:           NOTRUN -> [SKIP][3] ([fdo#109271]) +20 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][4] ([i915#2283])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#2411] / [i915#402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-r:           NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-kbl-r/igt@gem_huc_copy@huc-copy.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-r:           NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-r:           NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#533])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-kbl-r/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [PASS][10] -> [DMESG-WARN][11] ([i915#402]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  
#### Possible fixes ####

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [DMESG-WARN][12] ([i915#402]) -> [PASS][13] +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9548 -> Patchwork_19267

  CI-20190529: 20190529
  CI_DRM_9548: 93efa2366af7640d75a63666f790521f3747b808 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5944: e230cd8d481ea28ccc11b554d7a34ffca003fb25 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19267: 1adba2ece40dcf1615848dbc7a0d186adfbe8030 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1adba2ece40d drm/i915/pps: Add PPS power domain

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/index.html

--===============2842528396405188908==
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
<tr><td><b>Series:</b></td><td>drm/i915/pps: Add PPS power domain (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85470/">https://patchwork.freedesktop.org/series/85470/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9548 -&gt; Patchwork_19267</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19267 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-compute0:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-kbl-r/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-kbl-r/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/fi-tgl-y/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-tgl-y/igt@prime_vgem@basic-gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_self_import@basic-with_two_bos:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9548/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19267/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9548 -&gt; Patchwork_19267</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9548: 93efa2366af7640d75a63666f790521f3747b808 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5944: e230cd8d481ea28ccc11b554d7a34ffca003fb25 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19267: 1adba2ece40dcf1615848dbc7a0d186adfbe8030 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1adba2ece40d drm/i915/pps: Add PPS power domain</p>

</body>
</html>

--===============2842528396405188908==--

--===============2045267614==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2045267614==--
