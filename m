Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B444D6039
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 11:56:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB49910E8FE;
	Fri, 11 Mar 2022 10:56:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB37910E8FE;
 Fri, 11 Mar 2022 10:56:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4FC3A7DFC;
 Fri, 11 Mar 2022 10:56:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0742099133313955845=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 11 Mar 2022 10:56:44 -0000
Message-ID: <164699620479.23982.645034018927086880@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220311100639.114685-1-jani.nikula@intel.com>
In-Reply-To: <20220311100639.114685-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_x86/gpu=3A_include_drm/i915=5Fpciid?=
 =?utf-8?q?s=2Eh_directly_in_early_quirks?=
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

--===============0742099133313955845==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] x86/gpu: include drm/i915_pciids.h directly in early quirks
URL   : https://patchwork.freedesktop.org/series/101279/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11350 -> Patchwork_22541
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/index.html

Participating hosts (48 -> 39)
------------------------------

  Missing    (9): shard-tglu bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22541:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@module-reload:
    - {bat-rpls-2}:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_22541 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - fi-icl-u2:          NOTRUN -> [SKIP][3] ([fdo#109315]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html

  * igt@i915_selftest@live@execlists:
    - fi-glk-j4005:       [PASS][4] -> [INCOMPLETE][5] ([i915#5294])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-glk-j4005/igt@i915_selftest@live@execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-glk-j4005/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cfl-8700k:       [PASS][6] -> [DMESG-FAIL][7] ([i915#541])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][8] -> [INCOMPLETE][9] ([i915#3921])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-cfl-8109u:       [PASS][10] -> [DMESG-WARN][11] ([i915#295]) +11 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  * igt@runner@aborted:
    - fi-glk-j4005:       NOTRUN -> [FAIL][12] ([i915#2722] / [i915#4312] / [k.org#202321])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-glk-j4005/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][13] ([i915#2426] / [i915#4312])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bwr-2160:        [FAIL][14] ([i915#3194]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html

  * igt@fbdev@info:
    - {bat-rpls-2}:       [SKIP][16] ([i915#2582]) -> [PASS][17] +4 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@fbdev@info.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@fbdev@info.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [INCOMPLETE][18] ([i915#146]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
    - {fi-rkl-11600}:     [INCOMPLETE][20] ([i915#5127]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {bat-rpls-2}:       [SKIP][22] ([fdo#109308]) -> [PASS][23] +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@i915_pm_rpm@basic-pci-d3-state.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@execlists:
    - fi-icl-u2:          [INCOMPLETE][24] ([i915#5060]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-icl-u2/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - {bat-rpls-2}:       [DMESG-WARN][26] ([i915#4391]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hugepages:
    - {bat-rpls-2}:       [DMESG-WARN][28] ([i915#5278]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@i915_selftest@live@hugepages.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [INCOMPLETE][30] ([i915#4983]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@i915_selftest@live@reset.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@workarounds:
    - {bat-adlp-6}:       [DMESG-WARN][32] ([i915#5068]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-adlp-6/igt@i915_selftest@live@workarounds.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-adlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - {bat-rpls-2}:       [SKIP][34] ([fdo#111825]) -> [PASS][35] +5 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - {bat-rpls-2}:       [SKIP][36] ([i915#1849]) -> [PASS][37] +12 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@prime_vgem@basic-fence-flip:
    - {bat-rpls-2}:       [SKIP][38] ([i915#1845] / [i915#3708]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][40] ([i915#3303]) -> [INCOMPLETE][41] ([i915#4785])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3194]: https://gitlab.freedesktop.org/drm/intel/issues/3194
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5060]: https://gitlab.freedesktop.org/drm/intel/issues/5060
  [i915#5068]: https://gitlab.freedesktop.org/drm/intel/issues/5068
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#5195]: https://gitlab.freedesktop.org/drm/intel/issues/5195
  [i915#5276]: https://gitlab.freedesktop.org/drm/intel/issues/5276
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#5294]: https://gitlab.freedesktop.org/drm/intel/issues/5294
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Build changes
-------------

  * Linux: CI_DRM_11350 -> Patchwork_22541

  CI-20190529: 20190529
  CI_DRM_11350: 925314164278701a48bb63b89a95d6c7e179a02e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6375: aa6eb64bac510b7d617436997171bfe388943d89 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22541: 09911f598f4a0603d4e7e89a15ecdad5ce23ae30 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

09911f598f4a drm/i915: include uapi/drm/i915_drm.h directly where needed
a8d20d2d189c x86/gpu: include drm/i915_pciids.h directly in early quirks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/index.html

--===============0742099133313955845==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] x86/gpu: include drm/i915_pciids.h directly in early quirks</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101279/">https://patchwork.freedesktop.org/series/101279/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11350 -&gt; Patchwork_22541</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/index.html</p>
<h2>Participating hosts (48 -&gt; 39)</h2>
<p>Missing    (9): shard-tglu bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22541:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22541 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-glk-j4005/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-glk-j4005/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5294">i915#5294</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3194">i915#3194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@fbdev@info.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></p>
</li>
<li>
<p>{fi-rkl-11600}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109308">fdo#109308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5060">i915#5060</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-icl-u2/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5278">i915#5278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@i915_selftest@live@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-adlp-6/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5068">i915#5068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-adlp-6/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">PASS</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11350 -&gt; Patchwork_22541</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11350: 925314164278701a48bb63b89a95d6c7e179a02e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6375: aa6eb64bac510b7d617436997171bfe388943d89 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22541: 09911f598f4a0603d4e7e89a15ecdad5ce23ae30 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>09911f598f4a drm/i915: include uapi/drm/i915_drm.h directly where needed<br />
a8d20d2d189c x86/gpu: include drm/i915_pciids.h directly in early quirks</p>

</body>
</html>

--===============0742099133313955845==--
