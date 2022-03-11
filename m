Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D280B4D5BE4
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 08:03:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9ADE10E056;
	Fri, 11 Mar 2022 07:03:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1745810E033;
 Fri, 11 Mar 2022 07:03:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0FC3FA00A0;
 Fri, 11 Mar 2022 07:03:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0689468831202659561=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 11 Mar 2022 07:03:32 -0000
Message-ID: <164698221205.23984.6499225485602240207@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220311061543.153611-1-matthew.d.roper@intel.com>
In-Reply-To: <20220311061543.153611-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/sseu=3A_Don=27t_overalloca?=
 =?utf-8?q?te_subslice_storage?=
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

--===============0689468831202659561==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/sseu: Don't overallocate subslice storage
URL   : https://patchwork.freedesktop.org/series/101268/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11350 -> Patchwork_22538
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/index.html

Participating hosts (48 -> 43)
------------------------------

  Additional (2): fi-kbl-soraka fi-pnv-d510 
  Missing    (7): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22538 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-hsw-4770:        NOTRUN -> [SKIP][1] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - fi-icl-u2:          NOTRUN -> [SKIP][2] ([fdo#109315]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271]) +9 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-pnv-d510:        NOTRUN -> [SKIP][4] ([fdo#109271]) +58 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#4613]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-kbl-soraka/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-6:          [PASS][7] -> [FAIL][8] ([i915#4032])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-dg1-6/igt@i915_pm_rps@basic-api.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/bat-dg1-6/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][9] ([i915#1886])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][10] -> [INCOMPLETE][11] ([i915#3921])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-kbl-soraka/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#533])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-cfl-8109u:       [PASS][14] -> [DMESG-WARN][15] ([i915#295]) +12 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][16] ([i915#2426] / [i915#4312])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bwr-2160:        [FAIL][17] ([i915#3194]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [INCOMPLETE][19] ([i915#146]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@execlists:
    - fi-icl-u2:          [INCOMPLETE][21] ([i915#5060]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-icl-u2/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - {bat-rpls-2}:       [DMESG-WARN][23] ([i915#4391]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][25] ([i915#4494] / [i915#4957]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
    - fi-hsw-4770:        [INCOMPLETE][27] ([i915#3303]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - {bat-rpls-2}:       [DMESG-WARN][29] ([i915#5278]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@i915_selftest@live@hugepages.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/bat-rpls-2/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [INCOMPLETE][31] ([i915#4983]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@i915_selftest@live@reset.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@workarounds:
    - {bat-adlp-6}:       [DMESG-WARN][33] ([i915#5068]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-adlp-6/igt@i915_selftest@live@workarounds.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/bat-adlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       [DMESG-WARN][35] ([i915#3576]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-adlp-6/igt@kms_busy@basic@flip.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/bat-adlp-6/igt@kms_busy@basic@flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3194]: https://gitlab.freedesktop.org/drm/intel/issues/3194
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5060]: https://gitlab.freedesktop.org/drm/intel/issues/5060
  [i915#5068]: https://gitlab.freedesktop.org/drm/intel/issues/5068
  [i915#5087]: https://gitlab.freedesktop.org/drm/intel/issues/5087
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_11350 -> Patchwork_22538

  CI-20190529: 20190529
  CI_DRM_11350: 925314164278701a48bb63b89a95d6c7e179a02e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6375: aa6eb64bac510b7d617436997171bfe388943d89 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22538: 27d39ebcdbba3bc414a7cb8a82f5b35db2ffc30f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

27d39ebcdbba drm/i915/xehp: Update topology dumps for Xe_HP
5c1d208e40c1 drm/i915/sseu: Don't overallocate subslice storage

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/index.html

--===============0689468831202659561==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/sseu: Don&#39;t overallocate subslice storage</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101268/">https://patchwork.freedesktop.org/series/101268/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11350 -&gt; Patchwork_22538</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/index.html</p>
<h2>Participating hosts (48 -&gt; 43)</h2>
<p>Additional (2): fi-kbl-soraka fi-pnv-d510 <br />
  Missing    (7): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22538 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +58 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-kbl-soraka/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-dg1-6/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/bat-dg1-6/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4032">i915#4032</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-kbl-soraka/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3194">i915#3194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5060">i915#5060</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-icl-u2/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5278">i915#5278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/bat-rpls-2/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@i915_selftest@live@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-adlp-6/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5068">i915#5068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/bat-adlp-6/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22538/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11350 -&gt; Patchwork_22538</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11350: 925314164278701a48bb63b89a95d6c7e179a02e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6375: aa6eb64bac510b7d617436997171bfe388943d89 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22538: 27d39ebcdbba3bc414a7cb8a82f5b35db2ffc30f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>27d39ebcdbba drm/i915/xehp: Update topology dumps for Xe_HP<br />
5c1d208e40c1 drm/i915/sseu: Don't overallocate subslice storage</p>

</body>
</html>

--===============0689468831202659561==--
