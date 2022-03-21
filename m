Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFEAA4E329B
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 23:18:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F98510E106;
	Mon, 21 Mar 2022 22:18:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E7F7210E106;
 Mon, 21 Mar 2022 22:18:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8BDDA0096;
 Mon, 21 Mar 2022 22:18:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6231287319603216475=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Mon, 21 Mar 2022 22:18:22 -0000
Message-ID: <164790110284.18157.11896433842053944121@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220321164527.2500062-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220321164527.2500062-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_GuC_Error_Capture_Support?=
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

--===============6231287319603216475==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add GuC Error Capture Support
URL   : https://patchwork.freedesktop.org/series/101604/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11393 -> Patchwork_22632
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/index.html

Participating hosts (47 -> 42)
------------------------------

  Additional (1): bat-adlm-1 
  Missing    (6): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22632:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_tiled_pread_basic:
    - {bat-jsl-2}:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/bat-jsl-2/igt@gem_tiled_pread_basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/bat-jsl-2/igt@gem_tiled_pread_basic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - {bat-adlm-1}:       NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
Known issues
------------

  Here are the changes found in Patchwork_22632 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_busy@busy@all:
    - {bat-dg2-9}:        [DMESG-WARN][4] ([i915#5195]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/bat-dg2-9/igt@gem_busy@busy@all.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/bat-dg2-9/igt@gem_busy@busy@all.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {fi-rkl-11600}:     [INCOMPLETE][6] ([i915#5127]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gem_contexts:
    - {fi-tgl-dsi}:       [DMESG-WARN][8] ([i915#2867]) -> [PASS][9] +16 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@sanitycheck:
    - {bat-rpls-2}:       [DMESG-WARN][10] ([i915#4391]) -> [PASS][11] +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][12] ([i915#3576]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@vgem_basic@unload:
    - {fi-tgl-dsi}:       [DMESG-WARN][14] -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/fi-tgl-dsi/igt@vgem_basic@unload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/fi-tgl-dsi/igt@vgem_basic@unload.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-hsw-4770:        [FAIL][16] ([fdo#109271] / [i915#1436] / [i915#4312]) -> [FAIL][17] ([i915#4312])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/fi-hsw-4770/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/fi-hsw-4770/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#5068]: https://gitlab.freedesktop.org/drm/intel/issues/5068
  [i915#5087]: https://gitlab.freedesktop.org/drm/intel/issues/5087
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#5192]: https://gitlab.freedesktop.org/drm/intel/issues/5192
  [i915#5193]: https://gitlab.freedesktop.org/drm/intel/issues/5193
  [i915#5195]: https://gitlab.freedesktop.org/drm/intel/issues/5195
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5338]: https://gitlab.freedesktop.org/drm/intel/issues/5338
  [i915#5342]: https://gitlab.freedesktop.org/drm/intel/issues/5342


Build changes
-------------

  * Linux: CI_DRM_11393 -> Patchwork_22632

  CI-20190529: 20190529
  CI_DRM_11393: bb39f08a81da1a7e2d82026eac394394504b7126 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6387: 04d012b18355b53798af5a55a8915afb1a421bba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22632: 50ba93c272a3071fe8815697dd67eb5a06632a86 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

50ba93c272a3 drm/i915/guc: Print the GuC error capture output register list.
26c0e6f1bb38 drm/i915/guc: Plumb GuC-capture into gpu_coredump
1b7217691fe0 drm/i915/guc: Pre-allocate output nodes for extraction
ddb02e22dfda drm/i915/guc: Extract GuC error capture lists on G2H notification.
ebdef25ea3de drm/i915/guc: Check sizing of guc_capture output
a9e9bb3976db drm/i915/guc: Add capture region into intel_guc_log
e4ca38c87fcb drm/i915/guc: Update GuC-log relay function names
34b17ec685f3 drm/i915/guc: Add GuC's error state capture output structures.
083f95c9ff5e drm/i915/guc: Add Gen9 registers for GuC error state capture.
3a9156e25e78 drm/i915/guc: Add DG2 registers for GuC error state capture.
c7fdc682a3ae drm/i915/guc: Add XE_LP steered register lists support
9d1a96af3a97 drm/i915/guc: Add XE_LP static registers for GuC error capture.
b440789589db drm/i915/guc: Update GuC ADS size for error capture lists

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/index.html

--===============6231287319603216475==
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
<tr><td><b>Series:</b></td><td>Add GuC Error Capture Support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101604/">https://patchwork.freedesktop.org/series/101604/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11393 -&gt; Patchwork_22632</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/index.html</p>
<h2>Participating hosts (47 -&gt; 42)</h2>
<p>Additional (1): bat-adlm-1 <br />
  Missing    (6): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22632:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>{bat-jsl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/bat-jsl-2/igt@gem_tiled_pread_basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/bat-jsl-2/igt@gem_tiled_pread_basic.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>{bat-adlm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22632 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/bat-dg2-9/igt@gem_busy@busy@all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5195">i915#5195</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/bat-dg2-9/igt@gem_busy@busy@all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{fi-rkl-11600}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html">PASS</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/fi-tgl-dsi/igt@vgem_basic@unload.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/fi-tgl-dsi/igt@vgem_basic@unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11393/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22632/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11393 -&gt; Patchwork_22632</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11393: bb39f08a81da1a7e2d82026eac394394504b7126 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6387: 04d012b18355b53798af5a55a8915afb1a421bba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22632: 50ba93c272a3071fe8815697dd67eb5a06632a86 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>50ba93c272a3 drm/i915/guc: Print the GuC error capture output register list.<br />
26c0e6f1bb38 drm/i915/guc: Plumb GuC-capture into gpu_coredump<br />
1b7217691fe0 drm/i915/guc: Pre-allocate output nodes for extraction<br />
ddb02e22dfda drm/i915/guc: Extract GuC error capture lists on G2H notification.<br />
ebdef25ea3de drm/i915/guc: Check sizing of guc_capture output<br />
a9e9bb3976db drm/i915/guc: Add capture region into intel_guc_log<br />
e4ca38c87fcb drm/i915/guc: Update GuC-log relay function names<br />
34b17ec685f3 drm/i915/guc: Add GuC's error state capture output structures.<br />
083f95c9ff5e drm/i915/guc: Add Gen9 registers for GuC error state capture.<br />
3a9156e25e78 drm/i915/guc: Add DG2 registers for GuC error state capture.<br />
c7fdc682a3ae drm/i915/guc: Add XE_LP steered register lists support<br />
9d1a96af3a97 drm/i915/guc: Add XE_LP static registers for GuC error capture.<br />
b440789589db drm/i915/guc: Update GuC ADS size for error capture lists</p>

</body>
</html>

--===============6231287319603216475==--
