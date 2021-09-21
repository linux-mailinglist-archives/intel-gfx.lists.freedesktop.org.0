Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74ED3412A24
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 03:01:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F35DB6E8C5;
	Tue, 21 Sep 2021 01:01:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 71DD46E8C7;
 Tue, 21 Sep 2021 01:01:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68E1AA00FD;
 Tue, 21 Sep 2021 01:01:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7746179646317978059=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 01:01:29 -0000
Message-ID: <163218608942.15890.9123361263122334564@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210921002313.1132357-1-imre.deak@intel.com>
In-Reply-To: <20210921002313.1132357-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tc=3A_Fix_TypeC_connect/disconnect_sequences?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============7746179646317978059==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/tc: Fix TypeC connect/disconnect sequences
URL   : https://patchwork.freedesktop.org/series/94878/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10615 -> Patchwork_21102
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/index.html

Known issues
------------

  Here are the changes found in Patchwork_21102 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-compute:
    - fi-cfl-guc:         NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-cfl-guc/igt@amdgpu/amd_basic@cs-compute.html

  * igt@amdgpu/amd_basic@cs-sdma:
    - fi-kbl-7500u:       NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271]) +27 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
    - fi-skl-6600u:       NOTRUN -> [SKIP][4] ([fdo#109271]) +17 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][5] ([fdo#109271]) +17 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-kbl-7567u/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-snb-2520m:       NOTRUN -> [SKIP][6] ([fdo#109271]) +18 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-rkl-11600:       [PASS][7] -> [INCOMPLETE][8] ([i915#4130])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html
    - fi-bdw-5557u:       NOTRUN -> [WARN][9] ([i915#3718])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-icl-u2:          NOTRUN -> [INCOMPLETE][10] ([i915#4130] / [i915#4179])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-icl-u2/igt@i915_module_load@reload.html
    - fi-glk-dsi:         [PASS][11] -> [INCOMPLETE][12] ([i915#4130])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-glk-dsi/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-glk-dsi/igt@i915_module_load@reload.html
    - fi-cfl-8109u:       NOTRUN -> [INCOMPLETE][13] ([i915#4130] / [i915#4179])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-cfl-8109u/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-rkl-guc:         [PASS][14] -> [SKIP][15] ([fdo#109308])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@gtt:
    - fi-bdw-5557u:       NOTRUN -> [DMESG-FAIL][16] ([i915#3674])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-bdw-5557u/igt@i915_selftest@live@gtt.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][17] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@runner@aborted:
    - fi-cfl-8109u:       NOTRUN -> [FAIL][18] ([i915#2426] / [i915#3363])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][19] ([i915#2426] / [i915#3363] / [i915#3690] / [i915#4136])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-icl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-cfl-guc:         [INCOMPLETE][20] ([i915#4130]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-icl-u2:          [INCOMPLETE][22] ([i915#4130]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7500u:       [INCOMPLETE][24] ([i915#4130]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8109u:       [INCOMPLETE][26] ([i915#4130]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7567u:       [INCOMPLETE][28] ([i915#4130]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-kbl-r:           [TIMEOUT][30] ([i915#4136]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-kbl-r/igt@i915_module_load@reload.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-kbl-r/igt@i915_module_load@reload.html
    - fi-snb-2520m:       [INCOMPLETE][32] ([i915#4179]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-snb-2520m/igt@i915_module_load@reload.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-snb-2520m/igt@i915_module_load@reload.html
    - fi-skl-6600u:       [INCOMPLETE][34] ([i915#4130]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-skl-6600u/igt@i915_module_load@reload.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-skl-6600u/igt@i915_module_load@reload.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - fi-rkl-guc:         [SKIP][36] ([i915#3919]) -> [PASS][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-rkl-guc/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-rkl-guc/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3674]: https://gitlab.freedesktop.org/drm/intel/issues/3674
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
  [i915#3919]: https://gitlab.freedesktop.org/drm/intel/issues/3919
  [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
  [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136
  [i915#4179]: https://gitlab.freedesktop.org/drm/intel/issues/4179
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456


Participating hosts (37 -> 32)
------------------------------

  Missing    (5): bat-dg1-6 fi-bsw-cyan fi-ctg-p8600 bat-jsl-1 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10615 -> Patchwork_21102

  CI-20190529: 20190529
  CI_DRM_10615: 4aedbb89fd6dc4f0b3c5e9213059b0e84e054d19 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6213: e9ae59cb8b4f1e7bc61a9261f33fc7e52ae06c65 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21102: 1890abf291df38a057b485e6e860751975a197dc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1890abf291df drm/i915/tc: Fix system hang on ADL-P during TypeC PHY disconnect
14a2cb6aae07 drm/i915/tc: Drop extra TC cold blocking from intel_tc_port_connected()
d9687de8553d drm/i915/tc: Fix TypeC PHY connect/disconnect logic on ADL-P
24944d022b80 drm/i915/icl/tc: Remove the ICL special casing during TC-cold blocking
d163824eae60 drm/i915/tc: Avoid using legacy AUX PW in TBT mode
1a6d3f2220ba drm/i915/tc: Refactor TC-cold block/unblock helpers
dc6bbabc3efa drm/i915/tc: Add a mode for the TypeC PHY's disconnected state
344a4da141dd drm/i915/tc: Don't keep legacy TypeC ports in connected state w/o a sink
cc76a5af71d5 drm/i915/tc: Add/use helpers to retrieve TypeC port properties
4e8751ecf807 drm/i915/tc: Check for DP-alt, legacy sinks before taking PHY ownership
3a96d2e03bbf drm/i915/tc: Remove waiting for PHY complete during releasing ownership
8cf6d77baac7 drm/i915/adlp/tc: Fix PHY connected check for Thunderbolt mode
9d2a21b4286f drm/i915/tc: Fix TypeC port init/resume time sanitization

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/index.html

--===============7746179646317978059==
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
<tr><td><b>Series:</b></td><td>drm/i915/tc: Fix TypeC connect/disconnect sequences</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94878/">https://patchwork.freedesktop.org/series/94878/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10615 -&gt; Patchwork_21102</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21102 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-compute:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-cfl-guc/igt@amdgpu/amd_basic@cs-compute.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@cs-sdma:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-gfx0:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-kbl-7567u/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@i915-to-amd:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-icl-u2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-glk-dsi/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-glk-dsi/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-cfl-8109u/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109308">fdo#109308</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-bdw-5557u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3674">i915#3674</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-kbl-r/igt@i915_module_load@reload.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-kbl-r/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-snb-2520m/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-snb-2520m/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-skl-6600u/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-skl-6600u/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10615/fi-rkl-guc/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3919">i915#3919</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21102/fi-rkl-guc/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 32)</h2>
<p>Missing    (5): bat-dg1-6 fi-bsw-cyan fi-ctg-p8600 bat-jsl-1 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10615 -&gt; Patchwork_21102</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10615: 4aedbb89fd6dc4f0b3c5e9213059b0e84e054d19 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6213: e9ae59cb8b4f1e7bc61a9261f33fc7e52ae06c65 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21102: 1890abf291df38a057b485e6e860751975a197dc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1890abf291df drm/i915/tc: Fix system hang on ADL-P during TypeC PHY disconnect<br />
14a2cb6aae07 drm/i915/tc: Drop extra TC cold blocking from intel_tc_port_connected()<br />
d9687de8553d drm/i915/tc: Fix TypeC PHY connect/disconnect logic on ADL-P<br />
24944d022b80 drm/i915/icl/tc: Remove the ICL special casing during TC-cold blocking<br />
d163824eae60 drm/i915/tc: Avoid using legacy AUX PW in TBT mode<br />
1a6d3f2220ba drm/i915/tc: Refactor TC-cold block/unblock helpers<br />
dc6bbabc3efa drm/i915/tc: Add a mode for the TypeC PHY's disconnected state<br />
344a4da141dd drm/i915/tc: Don't keep legacy TypeC ports in connected state w/o a sink<br />
cc76a5af71d5 drm/i915/tc: Add/use helpers to retrieve TypeC port properties<br />
4e8751ecf807 drm/i915/tc: Check for DP-alt, legacy sinks before taking PHY ownership<br />
3a96d2e03bbf drm/i915/tc: Remove waiting for PHY complete during releasing ownership<br />
8cf6d77baac7 drm/i915/adlp/tc: Fix PHY connected check for Thunderbolt mode<br />
9d2a21b4286f drm/i915/tc: Fix TypeC port init/resume time sanitization</p>

</body>
</html>

--===============7746179646317978059==--
