Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 916C14A95AF
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 10:02:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D642210F548;
	Fri,  4 Feb 2022 09:02:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A386F10F548;
 Fri,  4 Feb 2022 09:02:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9EE41A0169;
 Fri,  4 Feb 2022 09:02:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8908800251267005417=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 04 Feb 2022 09:02:47 -0000
Message-ID: <164396536761.12039.12867393859834420022@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220202111616.1579-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220202111616.1579-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Move_PIPE=5FCHICKEN_RMW?=
 =?utf-8?q?_out_from_the_vblank_evade_critical_section_=28rev3=29?=
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

--===============8908800251267005417==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915: Move PIPE_CHICKEN RMW out from the vblank evade critical section (rev3)
URL   : https://patchwork.freedesktop.org/series/99616/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11188 -> Patchwork_22175
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/index.html

Participating hosts (52 -> 45)
------------------------------

  Missing    (7): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22175 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-hsw-4770:        NOTRUN -> [SKIP][1] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [PASS][2] -> [DMESG-FAIL][3] ([i915#2927] / [i915#4528])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][4] ([fdo#109271] / [i915#2403] / [i915#4312])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/fi-pnv-d510/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bsw-kefka:       [DMESG-FAIL][5] ([i915#541]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][7] ([i915#3303]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@reset:
    - {bat-adlp-6}:       [DMESG-FAIL][9] ([i915#4983]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/bat-adlp-6/igt@i915_selftest@live@reset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/bat-adlp-6/igt@i915_selftest@live@reset.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][11] ([i915#295]) -> [PASS][12] +12 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][13] ([i915#4957]) -> [DMESG-FAIL][14] ([i915#4494] / [i915#4957])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Build changes
-------------

  * Linux: CI_DRM_11188 -> Patchwork_22175

  CI-20190529: 20190529
  CI_DRM_11188: 4aa02b40e13239b675b5b1ad5e6e69f2743c82c0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6339: 9cd99d763440ae75d9981ce4e361d3deb5edb4e4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22175: 5372d07abc94bd0e2056e37a9dd6b82731d1a29c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5372d07abc94 drm/i915: Drop pointless i830 PIPECONF read
8201f52b9d50 drm/i915: Make the CHV CGM CSC register writes lockless
0d8af539bfc1 drm/i915: Make the pipe/output CSC register writes lockless
862199a017e8 drm/i915: Move PIPE_CHICKEN RMW out from the vblank evade critical section

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/index.html

--===============8908800251267005417==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915: Move PIPE_CHICKEN RMW out from the vblank evade critical section (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99616/">https://patchwork.freedesktop.org/series/99616/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11188 -&gt; Patchwork_22175</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/index.html</p>
<h2>Participating hosts (52 -&gt; 45)</h2>
<p>Missing    (7): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22175 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/bat-adlp-6/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/bat-adlp-6/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> +12 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11188/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22175/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11188 -&gt; Patchwork_22175</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11188: 4aa02b40e13239b675b5b1ad5e6e69f2743c82c0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6339: 9cd99d763440ae75d9981ce4e361d3deb5edb4e4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22175: 5372d07abc94bd0e2056e37a9dd6b82731d1a29c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5372d07abc94 drm/i915: Drop pointless i830 PIPECONF read<br />
8201f52b9d50 drm/i915: Make the CHV CGM CSC register writes lockless<br />
0d8af539bfc1 drm/i915: Make the pipe/output CSC register writes lockless<br />
862199a017e8 drm/i915: Move PIPE_CHICKEN RMW out from the vblank evade critical section</p>

</body>
</html>

--===============8908800251267005417==--
