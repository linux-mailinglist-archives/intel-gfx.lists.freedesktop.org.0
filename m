Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEAC4BEF84
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 03:27:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD63F10E563;
	Tue, 22 Feb 2022 02:27:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB0DA10E563;
 Tue, 22 Feb 2022 02:27:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C772CA00A0;
 Tue, 22 Feb 2022 02:27:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8709193096756336180=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chuansheng Liu" <chuansheng.liu@intel.com>
Date: Tue, 22 Feb 2022 02:27:19 -0000
Message-ID: <164549683978.23043.6914834112362353664@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222012215.9545-1-chuansheng.liu@intel.com>
In-Reply-To: <20220222012215.9545-1-chuansheng.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_fix_one_mem_leak_in_mmap=5Foffset=5Fattach=28=29?=
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

--===============8709193096756336180==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: fix one mem leak in mmap_offset_attach()
URL   : https://patchwork.freedesktop.org/series/100532/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11264 -> Patchwork_22347
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/index.html

Participating hosts (44 -> 42)
------------------------------

  Additional (2): bat-dg2-8 fi-bdw-5557u 
  Missing    (4): fi-bsw-cyan shard-rkl shard-dg1 shard-tglu 

Known issues
------------

  Here are the changes found in Patchwork_22347 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-skl-6600u:       NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#4613]) +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-skl-6600u:       NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][4] ([fdo#109271]) +21 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-skl-6600u:       NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#533])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-cfl-8109u:       [PASS][6] -> [DMESG-WARN][7] ([i915#295]) +11 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][8] ([i915#2426] / [i915#4312])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-skl-6600u:       [INCOMPLETE][9] ([i915#4547]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-1115g4:      [DMESG-FAIL][11] ([i915#3987]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@gt_timelines:
    - {fi-tgl-dsi}:       [INCOMPLETE][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-tgl-dsi/igt@i915_selftest@live@gt_timelines.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-tgl-dsi/igt@i915_selftest@live@gt_timelines.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][15] ([i915#4494] / [i915#4957]) -> [DMESG-FAIL][16] ([i915#4957])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#5137]: https://gitlab.freedesktop.org/drm/intel/issues/5137
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Build changes
-------------

  * Linux: CI_DRM_11264 -> Patchwork_22347

  CI-20190529: 20190529
  CI_DRM_11264: 3b562232559bd940e63f977619548e5cc70da985 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6349: 0513032006f385f34fcd094c810b93f31cbed09d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22347: 7dffc282c26b39bbb84828444b7b3d0e232b44e0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7dffc282c26b drm/i915: fix one mem leak in mmap_offset_attach()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/index.html

--===============8709193096756336180==
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
<tr><td><b>Series:</b></td><td>drm/i915: fix one mem leak in mmap_offset_attach()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100532/">https://patchwork.freedesktop.org/series/100532/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11264 -&gt; Patchwork_22347</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/index.html</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Additional (2): bat-dg2-8 fi-bdw-5557u <br />
  Missing    (4): fi-bsw-cyan shard-rkl shard-dg1 shard-tglu </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22347 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3987">i915#3987</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-tgl-dsi/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/fi-tgl-dsi/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22347/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11264 -&gt; Patchwork_22347</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11264: 3b562232559bd940e63f977619548e5cc70da985 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6349: 0513032006f385f34fcd094c810b93f31cbed09d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22347: 7dffc282c26b39bbb84828444b7b3d0e232b44e0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7dffc282c26b drm/i915: fix one mem leak in mmap_offset_attach()</p>

</body>
</html>

--===============8709193096756336180==--
