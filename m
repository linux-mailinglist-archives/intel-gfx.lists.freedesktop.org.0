Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FA34E3E91
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:34:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F7CF10E18C;
	Tue, 22 Mar 2022 12:34:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6FDC610E18C;
 Tue, 22 Mar 2022 12:34:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6CB61A882E;
 Tue, 22 Mar 2022 12:34:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3095766337351886324=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Tue, 22 Mar 2022 12:34:47 -0000
Message-ID: <164795248741.20007.5523929745111902827@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220321224459.12223-1-ramalingam.c@intel.com>
In-Reply-To: <20220321224459.12223-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Evict_and_restore_of_compressed_object_=28rev4=29?=
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

--===============3095766337351886324==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/ttm: Evict and restore of compressed object (rev4)
URL   : https://patchwork.freedesktop.org/series/101106/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11396 -> Patchwork_22640
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22640 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22640, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/index.html

Participating hosts (48 -> 41)
------------------------------

  Missing    (7): shard-tglu fi-hsw-4200u bat-adlm-1 fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22640:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@migrate:
    - fi-rkl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-rkl-guc/igt@i915_selftest@live@migrate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-rkl-guc/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@mman:
    - bat-dg1-6:          [PASS][3] -> [DMESG-FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/bat-dg1-6/igt@i915_selftest@live@mman.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/bat-dg1-6/igt@i915_selftest@live@mman.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@migrate:
    - {fi-adl-ddr5}:      [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-adl-ddr5/igt@i915_selftest@live@migrate.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-adl-ddr5/igt@i915_selftest@live@migrate.html
    - {fi-tgl-dsi}:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-tgl-dsi/igt@i915_selftest@live@migrate.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-tgl-dsi/igt@i915_selftest@live@migrate.html
    - {bat-rpls-2}:       [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/bat-rpls-2/igt@i915_selftest@live@migrate.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/bat-rpls-2/igt@i915_selftest@live@migrate.html

  
Known issues
------------

  Here are the changes found in Patchwork_22640 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [PASS][11] -> [FAIL][12] ([i915#4054])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][13] -> [INCOMPLETE][14] ([i915#3303])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [PASS][15] -> [INCOMPLETE][16] ([i915#3921])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@memory_region:
    - fi-cfl-8109u:       [PASS][17] -> [DMESG-WARN][18] ([i915#203]) +28 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-cfl-8109u/igt@i915_selftest@live@memory_region.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-cfl-8109u/igt@i915_selftest@live@memory_region.html

  * igt@i915_selftest@live@migrate:
    - fi-tgl-1115g4:      [PASS][19] -> [DMESG-FAIL][20] ([i915#1888])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-tgl-1115g4/igt@i915_selftest@live@migrate.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-tgl-1115g4/igt@i915_selftest@live@migrate.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][21] ([fdo#109271] / [i915#1436] / [i915#4312])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-hsw-4770/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@objects:
    - {bat-rpls-2}:       [DMESG-WARN][22] ([i915#4391]) -> [PASS][23] +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/bat-rpls-2/igt@i915_selftest@live@objects.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/bat-rpls-2/igt@i915_selftest@live@objects.html

  * igt@kms_busy@basic@modeset:
    - {bat-adlp-6}:       [DMESG-WARN][24] ([i915#3576]) -> [PASS][25] +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/bat-adlp-6/igt@kms_busy@basic@modeset.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-cfl-8109u:       [DMESG-WARN][26] ([i915#295] / [i915#5341]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][28] ([i915#295]) -> [PASS][29] +10 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][30] ([i915#4494] / [i915#4957]) -> [DMESG-FAIL][31] ([i915#4957])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
  [i915#4054]: https://gitlab.freedesktop.org/drm/intel/issues/4054
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5068]: https://gitlab.freedesktop.org/drm/intel/issues/5068
  [i915#5339]: https://gitlab.freedesktop.org/drm/intel/issues/5339
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5342]: https://gitlab.freedesktop.org/drm/intel/issues/5342


Build changes
-------------

  * IGT: IGT_6387 -> IGTPW_6786
  * Linux: CI_DRM_11396 -> Patchwork_22640

  CI-20190529: 20190529
  CI_DRM_11396: 18b88414e6c9660022bb464d4d5fadb07d38cf04 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_6786: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6786/index.html
  IGT_6387: 04d012b18355b53798af5a55a8915afb1a421bba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22640: e353c857458acb1f0021425fafb89128fb4b9da7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e353c857458a drm/i915/migrate: Evict and restore the flatccs capable lmem obj
39ff40d5bebd drm/i915/gem: Add extra pages in ttm_tt for ccs data
766cd5bde39e drm/ttm: Add a parameter to add extra pages into ttm_tt
76ff4ce56fc2 drm/i915/gt: offset handling for multiple copy engines
5983ea8c0949 drm/i915/selftest_migrate: Check CCS meta data clear
d45626d09747 drm/i915/selftest_migrate: Consider the possible roundup of size
b1fffd14ade8 drm/i915/gt: Clear compress metadata for Flat-ccs objects
3d80382ed2d7 drm/i915/gt: Optimize the migration and clear loop
7bd13c18ac9e drm/i915/gt: Use XY_FAST_COLOR_BLT to clear obj on graphics ver 12+

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/index.html

--===============3095766337351886324==
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
<tr><td><b>Series:</b></td><td>drm/i915/ttm: Evict and restore of compressed object (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101106/">https://patchwork.freedesktop.org/series/101106/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11396 -&gt; Patchwork_22640</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22640 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22640, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/index.html</p>
<h2>Participating hosts (48 -&gt; 41)</h2>
<p>Missing    (7): shard-tglu fi-hsw-4200u bat-adlm-1 fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22640:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-rkl-guc/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-rkl-guc/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/bat-dg1-6/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/bat-dg1-6/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>
<p>{fi-adl-ddr5}:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-adl-ddr5/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-adl-ddr5/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-tgl-dsi/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-tgl-dsi/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/bat-rpls-2/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/bat-rpls-2/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22640 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4054">i915#4054</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@memory_region:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-cfl-8109u/igt@i915_selftest@live@memory_region.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-cfl-8109u/igt@i915_selftest@live@memory_region.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/203">i915#203</a>) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-tgl-1115g4/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-tgl-1115g4/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/bat-rpls-2/igt@i915_selftest@live@objects.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/bat-rpls-2/igt@i915_selftest@live@objects.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/bat-adlp-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> +10 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22640/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6387 -&gt; IGTPW_6786</li>
<li>Linux: CI_DRM_11396 -&gt; Patchwork_22640</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11396: 18b88414e6c9660022bb464d4d5fadb07d38cf04 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_6786: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6786/index.html<br />
  IGT_6387: 04d012b18355b53798af5a55a8915afb1a421bba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22640: e353c857458acb1f0021425fafb89128fb4b9da7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e353c857458a drm/i915/migrate: Evict and restore the flatccs capable lmem obj<br />
39ff40d5bebd drm/i915/gem: Add extra pages in ttm_tt for ccs data<br />
766cd5bde39e drm/ttm: Add a parameter to add extra pages into ttm_tt<br />
76ff4ce56fc2 drm/i915/gt: offset handling for multiple copy engines<br />
5983ea8c0949 drm/i915/selftest_migrate: Check CCS meta data clear<br />
d45626d09747 drm/i915/selftest_migrate: Consider the possible roundup of size<br />
b1fffd14ade8 drm/i915/gt: Clear compress metadata for Flat-ccs objects<br />
3d80382ed2d7 drm/i915/gt: Optimize the migration and clear loop<br />
7bd13c18ac9e drm/i915/gt: Use XY_FAST_COLOR_BLT to clear obj on graphics ver 12+</p>

</body>
</html>

--===============3095766337351886324==--
