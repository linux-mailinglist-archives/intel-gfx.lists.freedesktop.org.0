Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3B34A94D7
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 09:04:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6DD610EE1B;
	Fri,  4 Feb 2022 08:04:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 09FB110EE1B;
 Fri,  4 Feb 2022 08:03:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 066D1A73C9;
 Fri,  4 Feb 2022 08:03:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1403117444643617563=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 04 Feb 2022 08:03:58 -0000
Message-ID: <164396183899.12042.4133676350526088379@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_a_bitmask_for_bigjoiner_state_tracking_=28rev3=29?=
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

--===============1403117444643617563==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use a bitmask for bigjoiner state tracking (rev3)
URL   : https://patchwork.freedesktop.org/series/99680/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11188 -> Patchwork_22174
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/index.html

Participating hosts (52 -> 44)
------------------------------

  Missing    (8): shard-tglu fi-hsw-4200u fi-icl-u2 fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22174 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-hsw-4770:        NOTRUN -> [SKIP][1] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-skl-6600u:       NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#4613]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][5] -> [DMESG-FAIL][6] ([i915#4610])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-skl-6600u:       NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][8] ([fdo#109271]) +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-skl-6600u:       NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#533])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       NOTRUN -> [INCOMPLETE][10] ([i915#4547] / [i915#4838])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - fi-blb-e6850:       NOTRUN -> [FAIL][11] ([fdo#109271] / [i915#2403] / [i915#2426] / [i915#4312])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-blb-e6850/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][12] ([i915#2426] / [i915#4312])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-skl-6600u:       [INCOMPLETE][13] ([i915#4547]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bsw-kefka:       [DMESG-FAIL][15] ([i915#541]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][17] ([i915#3303]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [INCOMPLETE][19] ([i915#3921]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@reset:
    - {bat-adlp-6}:       [DMESG-FAIL][21] ([i915#4983]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/bat-adlp-6/igt@i915_selftest@live@reset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/bat-adlp-6/igt@i915_selftest@live@reset.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][23] ([i915#295]) -> [PASS][24] +12 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][25] ([i915#4957]) -> [DMESG-FAIL][26] ([i915#4494] / [i915#4957])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][27] ([i915#4312]) -> [FAIL][28] ([i915#2722] / [i915#4312])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-skl-6600u/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-skl-6600u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4610]: https://gitlab.freedesktop.org/drm/intel/issues/4610
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4838]: https://gitlab.freedesktop.org/drm/intel/issues/4838
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Build changes
-------------

  * Linux: CI_DRM_11188 -> Patchwork_22174

  CI-20190529: 20190529
  CI_DRM_11188: 4aa02b40e13239b675b5b1ad5e6e69f2743c82c0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6339: 9cd99d763440ae75d9981ce4e361d3deb5edb4e4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22174: d7ef79ee8751323f0d43af1b5a0457293bbecdb4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d7ef79ee8751 drm/i915: Change bigjoiner state tracking to use the pipe bitmask
72702ca376f8 drm/i915: Return both master and slave pipes from enabled_bigjoiner_pipes()
abf4ac559145 drm/i915: Use for_each_intel_crtc_in_pipe_mask() more
71cb08d3ef98 drm/i915: Convert for_each_intel_crtc_mask() to take a pipe mask instead
5cb49a708185 drm/i915: Introduce intel_crtc_is_bigjoiner_{slave, master}()
3dd5243283ec drm/i915: Nuke some dead code
1779ba955b06 drm/i915: Clean up the bigjoiner state copy logic
414ad2151468 drm/i915: Remove weird code from intel_atomic_check_bigjoiner()
af5ef233b8e4 drm/i915: Fix bigjoiner state copy fails
70bac4e4c094 drm/i915: Flag crtc scaling_filter changes as modeset

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/index.html

--===============1403117444643617563==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use a bitmask for bigjoiner state tracking (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99680/">https://patchwork.freedesktop.org/series/99680/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11188 -&gt; Patchwork_22174</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/index.html</p>
<h2>Participating hosts (52 -&gt; 44)</h2>
<p>Missing    (8): shard-tglu fi-hsw-4200u fi-icl-u2 fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22174 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4610">i915#4610</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4838">i915#4838</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/bat-adlp-6/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/bat-adlp-6/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> +12 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22174/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11188 -&gt; Patchwork_22174</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11188: 4aa02b40e13239b675b5b1ad5e6e69f2743c82c0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6339: 9cd99d763440ae75d9981ce4e361d3deb5edb4e4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22174: d7ef79ee8751323f0d43af1b5a0457293bbecdb4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d7ef79ee8751 drm/i915: Change bigjoiner state tracking to use the pipe bitmask<br />
72702ca376f8 drm/i915: Return both master and slave pipes from enabled_bigjoiner_pipes()<br />
abf4ac559145 drm/i915: Use for_each_intel_crtc_in_pipe_mask() more<br />
71cb08d3ef98 drm/i915: Convert for_each_intel_crtc_mask() to take a pipe mask instead<br />
5cb49a708185 drm/i915: Introduce intel_crtc_is_bigjoiner_{slave, master}()<br />
3dd5243283ec drm/i915: Nuke some dead code<br />
1779ba955b06 drm/i915: Clean up the bigjoiner state copy logic<br />
414ad2151468 drm/i915: Remove weird code from intel_atomic_check_bigjoiner()<br />
af5ef233b8e4 drm/i915: Fix bigjoiner state copy fails<br />
70bac4e4c094 drm/i915: Flag crtc scaling_filter changes as modeset</p>

</body>
</html>

--===============1403117444643617563==--
