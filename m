Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3E7494DF0
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 13:30:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68F7010E4EC;
	Thu, 20 Jan 2022 12:30:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 424C110E4EC;
 Thu, 20 Jan 2022 12:30:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CD20A7DFB;
 Thu, 20 Jan 2022 12:30:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4837777472494072799=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Piorkowski, Piotr" <piotr.piorkowski@intel.com>
Date: Thu, 20 Jan 2022 12:30:49 -0000
Message-ID: <164268184921.22529.4689698250403443532@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220120113049.213361-1-piotr.piorkowski@intel.com>
In-Reply-To: <20220120113049.213361-1-piotr.piorkowski@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Sanitycheck_PCI_BARs_on_probe?=
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

--===============4837777472494072799==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Sanitycheck PCI BARs on probe
URL   : https://patchwork.freedesktop.org/series/99094/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11111 -> Patchwork_22038
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22038 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22038, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/index.html

Participating hosts (48 -> 44)
------------------------------

  Additional (2): fi-kbl-soraka bat-adlp-4 
  Missing    (6): shard-tglu fi-bsw-cyan fi-icl-u2 shard-rkl shard-dg1 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22038:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - bat-adlp-4:         NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/bat-adlp-4/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  
Known issues
------------

  Here are the changes found in Patchwork_22038 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-tgl-1115g4:      [PASS][4] -> [FAIL][5] ([i915#1888])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11111/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3@smem.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - bat-adlp-4:         NOTRUN -> [SKIP][7] ([i915#4613]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/bat-adlp-4/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#4613]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-kbl-soraka/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-4:         NOTRUN -> [SKIP][9] ([i915#3282])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/bat-adlp-4/igt@gem_tiled_pread_basic.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][10] ([i915#1886] / [i915#2291])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [PASS][11] -> [DMESG-FAIL][12] ([i915#4494])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11111/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
    - fi-hsw-4770:        [PASS][13] -> [INCOMPLETE][14] ([i915#4785])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11111/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][15] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-kbl-soraka/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#533])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@prime_vgem@basic-userptr:
    - fi-skl-6600u:       NOTRUN -> [SKIP][17] ([fdo#109271]) +18 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-skl-6600u/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][18] ([fdo#109271] / [i915#1436] / [i915#4312])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-hsw-4770/igt@runner@aborted.html
    - bat-adlp-4:         NOTRUN -> [FAIL][19] ([i915#4312])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/bat-adlp-4/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][20] ([i915#3921]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11111/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][22] ([i915#4269]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11111/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       [FAIL][24] ([i915#4547]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11111/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_11111 -> Patchwork_22038

  CI-20190529: 20190529
  CI_DRM_11111: fe44f8bdb12374a6168cb561834eb714097f5e5f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6329: 38f656fdd61119105ecfa2c4dac157cd7dcad204 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22038: 7039a907c8b869cc4f279793654a088a752d095e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7039a907c8b8 drm/i915: Sanitycheck PCI BARs on probe

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/index.html

--===============4837777472494072799==
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
<tr><td><b>Series:</b></td><td>drm/i915: Sanitycheck PCI BARs on probe</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99094/">https://patchwork.freedesktop.org/series/99094/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11111 -&gt; Patchwork_22038</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22038 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22038, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/index.html</p>
<h2>Participating hosts (48 -&gt; 44)</h2>
<p>Additional (2): fi-kbl-soraka bat-adlp-4 <br />
  Missing    (6): shard-tglu fi-bsw-cyan fi-icl-u2 shard-rkl shard-dg1 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22038:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/bat-adlp-4/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22038 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11111/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/bat-adlp-4/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-kbl-soraka/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/bat-adlp-4/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11111/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11111/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-kbl-soraka/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11111/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11111/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11111/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22038/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11111 -&gt; Patchwork_22038</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11111: fe44f8bdb12374a6168cb561834eb714097f5e5f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6329: 38f656fdd61119105ecfa2c4dac157cd7dcad204 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22038: 7039a907c8b869cc4f279793654a088a752d095e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7039a907c8b8 drm/i915: Sanitycheck PCI BARs on probe</p>

</body>
</html>

--===============4837777472494072799==--
