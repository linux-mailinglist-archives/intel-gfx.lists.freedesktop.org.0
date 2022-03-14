Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0769B4D8E6D
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 21:46:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DBEC10E2A6;
	Mon, 14 Mar 2022 20:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E2A410E284;
 Mon, 14 Mar 2022 20:46:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A6E0A363D;
 Mon, 14 Mar 2022 20:46:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2603953264186969807=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Mon, 14 Mar 2022 20:46:03 -0000
Message-ID: <164729076329.20567.2147899134956036676@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220314170954.1537154-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220314170954.1537154-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQWRk?=
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

--===============2603953264186969807==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add GuC Error Capture Support
URL   : https://patchwork.freedesktop.org/series/101348/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11360 -> Patchwork_22560
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22560 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22560, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/index.html

Participating hosts (49 -> 44)
------------------------------

  Additional (1): fi-icl-u2 
  Missing    (6): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22560:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_basic@basic@vecs0-smem:
    - fi-icl-u2:          NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/fi-icl-u2/igt@gem_exec_basic@basic@vecs0-smem.html

  
Known issues
------------

  Here are the changes found in Patchwork_22560 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][2] ([fdo#109271])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/fi-bdw-gvtdvm/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-bdw-gvtdvm:      NOTRUN -> [INCOMPLETE][3] ([i915#4831])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/fi-bdw-gvtdvm/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [PASS][4] -> [INCOMPLETE][5] ([i915#4418])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/bat-dg1-6/igt@i915_selftest@live@gt_engines.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-cfl-8109u:       [PASS][6] -> [DMESG-WARN][7] ([i915#295]) +11 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  * igt@runner@aborted:
    - fi-icl-u2:          NOTRUN -> [FAIL][8] ([i915#2426] / [i915#3690] / [i915#4312])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/fi-icl-u2/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][9] ([i915#4312] / [i915#5257])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/bat-dg1-6/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_basic@create-fd-close:
    - fi-bdw-gvtdvm:      [INCOMPLETE][10] ([i915#2295]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/fi-bdw-gvtdvm/igt@gem_basic@create-fd-close.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/fi-bdw-gvtdvm/igt@gem_basic@create-fd-close.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {fi-rkl-11600}:     [INCOMPLETE][12] ([i915#5127]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gem:
    - {bat-rpls-2}:       [DMESG-WARN][14] ([i915#4391]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/bat-rpls-2/igt@i915_selftest@live@gem.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/bat-rpls-2/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [INCOMPLETE][16] ([i915#4983]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/bat-rpls-2/igt@i915_selftest@live@reset.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       [DMESG-WARN][18] -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/bat-adlp-6/igt@kms_busy@basic@flip.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/bat-adlp-6/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-n3050:       [DMESG-WARN][20] ([i915#1982]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4831]: https://gitlab.freedesktop.org/drm/intel/issues/4831
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5323]: https://gitlab.freedesktop.org/drm/intel/issues/5323
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_11360 -> Patchwork_22560

  CI-20190529: 20190529
  CI_DRM_11360: b37605de46fef48555bf0cf463cccf355c51fac0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6380: 5d9ef79ab61fc4e9abc8b565f298e0515265e616 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22560: 8ff05662e8d4c76c8663833fa4f66ed3de80313d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8ff05662e8d4 drm/i915/guc: Print the GuC error capture output register list.
b11696a16cff drm/i915/guc: Plumb GuC-capture into gpu_coredump
d8e90d0c2a55 drm/i915/guc: Pre-allocate output nodes for extraction
f177743e1ffe drm/i915/guc: Extract GuC error capture lists on G2H notification.
327c5e5e8b4f drm/i915/guc: Check sizing of guc_capture output
057f767cdab2 drm/i915/guc: Add capture region into intel_guc_log
bf5c9b7ad048 drm/i915/guc: Update GuC-log relay function names
dbe0bc5ebd32 drm/i915/guc: Add GuC's error state capture output structures.
cb36f6528184 drm/i915/guc: Add Gen9 registers for GuC error state capture.
d517212e3bc6 drm/i915/guc: Add DG2 registers for GuC error state capture.
fa824b3c1885 drm/i915/guc: Add XE_LP steered register lists support
5e9033716ead drm/i915/guc: Add XE_LP static registers for GuC error capture.
d88514e8a355 drm/i915/guc: Update GuC ADS size for error capture lists

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/index.html

--===============2603953264186969807==
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
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101348/">https://patchwork.freedesktop.org/series/101348/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11360 -&gt; Patchwork_22560</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22560 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22560, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/index.html</p>
<h2>Participating hosts (49 -&gt; 44)</h2>
<p>Additional (1): fi-icl-u2 <br />
  Missing    (6): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22560:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_basic@basic@vecs0-smem:<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/fi-icl-u2/igt@gem_exec_basic@basic@vecs0-smem.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22560 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/fi-bdw-gvtdvm/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/fi-bdw-gvtdvm/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4831">i915#4831</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_basic@create-fd-close:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/fi-bdw-gvtdvm/igt@gem_basic@create-fd-close.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/fi-bdw-gvtdvm/igt@gem_basic@create-fd-close.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{fi-rkl-11600}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/bat-rpls-2/igt@i915_selftest@live@gem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/bat-rpls-2/igt@i915_selftest@live@gem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/bat-rpls-2/igt@i915_selftest@live@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22560/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11360 -&gt; Patchwork_22560</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11360: b37605de46fef48555bf0cf463cccf355c51fac0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6380: 5d9ef79ab61fc4e9abc8b565f298e0515265e616 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22560: 8ff05662e8d4c76c8663833fa4f66ed3de80313d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8ff05662e8d4 drm/i915/guc: Print the GuC error capture output register list.<br />
b11696a16cff drm/i915/guc: Plumb GuC-capture into gpu_coredump<br />
d8e90d0c2a55 drm/i915/guc: Pre-allocate output nodes for extraction<br />
f177743e1ffe drm/i915/guc: Extract GuC error capture lists on G2H notification.<br />
327c5e5e8b4f drm/i915/guc: Check sizing of guc_capture output<br />
057f767cdab2 drm/i915/guc: Add capture region into intel_guc_log<br />
bf5c9b7ad048 drm/i915/guc: Update GuC-log relay function names<br />
dbe0bc5ebd32 drm/i915/guc: Add GuC's error state capture output structures.<br />
cb36f6528184 drm/i915/guc: Add Gen9 registers for GuC error state capture.<br />
d517212e3bc6 drm/i915/guc: Add DG2 registers for GuC error state capture.<br />
fa824b3c1885 drm/i915/guc: Add XE_LP steered register lists support<br />
5e9033716ead drm/i915/guc: Add XE_LP static registers for GuC error capture.<br />
d88514e8a355 drm/i915/guc: Update GuC ADS size for error capture lists</p>

</body>
</html>

--===============2603953264186969807==--
