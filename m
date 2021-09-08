Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDCF403CE4
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 17:53:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7813B6E203;
	Wed,  8 Sep 2021 15:53:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2714E6E1F4;
 Wed,  8 Sep 2021 15:53:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1FFF3A7525;
 Wed,  8 Sep 2021 15:53:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7548530064038816861=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 08 Sep 2021 15:53:21 -0000
Message-ID: <163111640109.22226.10591137513845898821@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210906165515.450541-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210906165515.450541-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Suspend_/_resume_backup-_and_restore_of_LMEM=2E_=28rev?=
 =?utf-8?q?3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============7548530064038816861==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Suspend / resume backup- and restore of LMEM. (rev3)
URL   : https://patchwork.freedesktop.org/series/94278/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10563 -> Patchwork_20991
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/index.html

Known issues
------------

  Here are the changes found in Patchwork_20991 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +23 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@sync-compute0:
    - fi-kbl-r:           NOTRUN -> [SKIP][2] ([fdo#109271]) +21 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][3] ([i915#3718])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [PASS][4] -> [FAIL][5] ([i915#1888])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10563/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-r:           NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-r/igt@gem_huc_copy@huc-copy.html

  * igt@gem_tiled_blits@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][8] ([fdo#109271]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-soraka/igt@gem_tiled_blits@basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][9] -> [FAIL][10] ([i915#2203] / [i915#579])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10563/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][11] ([i915#1886] / [i915#2291])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-r:           NOTRUN -> [SKIP][13] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#533])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-r:           NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#533])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-r/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][16] ([fdo#109271]) +48 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@userptr:
    - fi-pnv-d510:        [INCOMPLETE][17] ([i915#299]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10563/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [INCOMPLETE][19] ([i915#155]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10563/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
    - fi-tgl-1115g4:      [FAIL][21] ([i915#1888]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10563/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [DMESG-WARN][23] ([i915#3958]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10563/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
  [i915#3958]: https://gitlab.freedesktop.org/drm/intel/issues/3958
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (47 -> 39)
------------------------------

  Missing    (8): fi-ilk-m540 bat-adls-5 bat-dg1-6 fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10563 -> Patchwork_20991

  CI-20190529: 20190529
  CI_DRM_10563: 1deaa7210c8c7907d406f65121188b0ae76f7ad6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6201: be0d02ff0775235ead63ccb1e3a1e8c10f0209cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20991: b3a1b351a5bf0ac9ac7ac23555c8bc9590fa4f02 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b3a1b351a5bf drm/i915: Reduce the number of objects subject to memcpy recover
e829df93558f drm/i915: Don't back up pinned LMEM context images and rings during suspend
9fa23d69f7ed drm/i915/gt: Register the migrate contexts with their engines
6b06e53cb3c8 drm/i915 Implement LMEM backup and restore for suspend / resume
9f81cf996425 drm/i915/gem: Implement a function to process all gem objects of a region
6374ded0c677 drm/i915/ttm: Implement a function to copy the contents of two TTM-base objects

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/index.html

--===============7548530064038816861==
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
<tr><td><b>Series:</b></td><td>drm/i915: Suspend / resume backup- and restore of LMEM. (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94278/">https://patchwork.freedesktop.org/series/94278/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10563 -&gt; Patchwork_20991</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20991 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-compute0:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10563/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-r/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-soraka/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10563/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-r/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +48 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10563/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10563/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10563/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10563/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3958">i915#3958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20991/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (47 -&gt; 39)</h2>
<p>Missing    (8): fi-ilk-m540 bat-adls-5 bat-dg1-6 fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10563 -&gt; Patchwork_20991</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10563: 1deaa7210c8c7907d406f65121188b0ae76f7ad6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6201: be0d02ff0775235ead63ccb1e3a1e8c10f0209cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20991: b3a1b351a5bf0ac9ac7ac23555c8bc9590fa4f02 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b3a1b351a5bf drm/i915: Reduce the number of objects subject to memcpy recover<br />
e829df93558f drm/i915: Don't back up pinned LMEM context images and rings during suspend<br />
9fa23d69f7ed drm/i915/gt: Register the migrate contexts with their engines<br />
6b06e53cb3c8 drm/i915 Implement LMEM backup and restore for suspend / resume<br />
9f81cf996425 drm/i915/gem: Implement a function to process all gem objects of a region<br />
6374ded0c677 drm/i915/ttm: Implement a function to copy the contents of two TTM-base objects</p>

</body>
</html>

--===============7548530064038816861==--
