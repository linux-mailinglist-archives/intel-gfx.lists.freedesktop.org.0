Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDD54CB72B
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 07:48:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3693510ED39;
	Thu,  3 Mar 2022 06:48:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ED8AA10EC92;
 Thu,  3 Mar 2022 06:48:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EA019A47DF;
 Thu,  3 Mar 2022 06:48:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7919325483006358504=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mastan Katragadda" <mastanx.katragadda@intel.com>
Date: Thu, 03 Mar 2022 06:48:18 -0000
Message-ID: <164629009895.19838.6055320582412006809@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220303060428.1668844-1-mastanx.katragadda@intel.com>
In-Reply-To: <20220303060428.1668844-1-mastanx.katragadda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_missing_boundary_check_in_vm=5Faccess_leads_to_OOB?=
 =?utf-8?q?_read/write_=28rev2=29?=
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

--===============7919325483006358504==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: missing boundary check in vm_access leads to OOB read/write (rev2)
URL   : https://patchwork.freedesktop.org/series/100932/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11316 -> Patchwork_22468
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22468 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22468, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/index.html

Participating hosts (50 -> 41)
------------------------------

  Additional (1): bat-adlp-4 
  Missing    (10): fi-kbl-soraka shard-tglu bat-dg1-5 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 bat-jsl-2 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22468:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-kbl-7567u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-skl-6600u:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_22468 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - bat-adlp-4:         NOTRUN -> [SKIP][5] ([i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@gem_lmem_swapping@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-4:         NOTRUN -> [SKIP][6] ([i915#3282])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@gem_tiled_pread_basic.html

  * igt@kms_busy@basic@modeset:
    - bat-adlp-4:         NOTRUN -> [DMESG-WARN][7] ([i915#3576])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@kms_busy@basic@modeset.html

  * igt@kms_chamelium@vga-hpd-fast:
    - bat-adlp-4:         NOTRUN -> [SKIP][8] ([fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-adlp-4:         NOTRUN -> [SKIP][9] ([i915#4103]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adlp-4:         NOTRUN -> [SKIP][10] ([fdo#109285])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@prime_vgem@basic-fence-read:
    - bat-adlp-4:         NOTRUN -> [SKIP][11] ([i915#3291] / [i915#3708]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-userptr:
    - bat-adlp-4:         NOTRUN -> [SKIP][12] ([i915#3301] / [i915#3708])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-kbl-7567u:       NOTRUN -> [FAIL][13] ([i915#4312])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-kbl-7567u/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][14] ([i915#2426] / [i915#4312])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [INCOMPLETE][15] ([i915#146]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-u2:          [FAIL][17] ([i915#3049]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/fi-icl-u2/igt@i915_pm_rpm@module-reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-icl-u2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@evict:
    - {bat-rpls-2}:       [DMESG-WARN][19] ([i915#4391]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/bat-rpls-2/igt@i915_selftest@live@evict.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-rpls-2/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-u2:          [DMESG-WARN][21] ([i915#2867]) -> [PASS][22] +7 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
    - bat-dg1-6:          [DMESG-FAIL][23] ([i915#4494] / [i915#4957]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@workarounds:
    - {bat-adlp-6}:       [DMESG-WARN][25] ([i915#5068]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/bat-adlp-6/igt@i915_selftest@live@workarounds.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       [DMESG-WARN][27] ([i915#3576]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/bat-adlp-6/igt@kms_busy@basic@flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-6/igt@kms_busy@basic@flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3049]: https://gitlab.freedesktop.org/drm/intel/issues/3049
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5068]: https://gitlab.freedesktop.org/drm/intel/issues/5068


Build changes
-------------

  * Linux: CI_DRM_11316 -> Patchwork_22468

  CI-20190529: 20190529
  CI_DRM_11316: 41f05cc5d1eed1879e572ef203ef2dbe9a75aff8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6361: 2372a4beb6a33c5f0799a4a8ccbb93794f52dbca @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22468: 49f7781dc74065aad8b8517b6a9e2d963890da62 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

49f7781dc740 drm/i915/gem: missing boundary check in vm_access leads to OOB read/write

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/index.html

--===============7919325483006358504==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: missing boundary check in vm_access leads to OOB read/write (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100932/">https://patchwork.freedesktop.org/series/100932/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11316 -&gt; Patchwork_22468</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22468 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22468, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/index.html</p>
<h2>Participating hosts (50 -&gt; 41)</h2>
<p>Additional (1): bat-adlp-4 <br />
  Missing    (10): fi-kbl-soraka shard-tglu bat-dg1-5 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 bat-jsl-2 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22468:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22468 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@kms_chamelium@vga-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/fi-icl-u2/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3049">i915#3049</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-icl-u2/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/bat-rpls-2/igt@i915_selftest@live@evict.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-rpls-2/igt@i915_selftest@live@evict.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">PASS</a> +7 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/bat-adlp-6/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5068">i915#5068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-6/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11316 -&gt; Patchwork_22468</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11316: 41f05cc5d1eed1879e572ef203ef2dbe9a75aff8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6361: 2372a4beb6a33c5f0799a4a8ccbb93794f52dbca @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22468: 49f7781dc74065aad8b8517b6a9e2d963890da62 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>49f7781dc740 drm/i915/gem: missing boundary check in vm_access leads to OOB read/write</p>

</body>
</html>

--===============7919325483006358504==--
