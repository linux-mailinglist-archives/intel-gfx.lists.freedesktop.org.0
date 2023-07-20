Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D58575B682
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 20:20:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 244C910E16E;
	Thu, 20 Jul 2023 18:20:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 13ABA10E16E;
 Thu, 20 Jul 2023 18:20:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1F0FAADF5;
 Thu, 20 Jul 2023 18:20:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1148953003695560080=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Thu, 20 Jul 2023 18:20:12 -0000
Message-ID: <168987721295.20751.6516758023413598100@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230720164454.757075-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230720164454.757075-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgVXBk?=
 =?utf-8?q?ate_AUX_invalidation_sequence_=28rev7=29?=
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

--===============1148953003695560080==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Update AUX invalidation sequence (rev7)
URL   : https://patchwork.freedesktop.org/series/119798/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13399 -> Patchwork_119798v7
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_119798v7 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_119798v7, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/index.html

Participating hosts (43 -> 42)
------------------------------

  Missing    (1): fi-kbl-soraka 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_119798v7:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-blb-e6850:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-blb-e6850/igt@gem_exec_suspend@basic-s3@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-blb-e6850/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_module_load@load:
    - bat-rpls-1:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rpls-1/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-rpls-1/igt@i915_module_load@load.html
    - bat-adlp-6:         [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adlp-6/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-adlp-6/igt@i915_module_load@load.html
    - bat-adls-5:         [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adls-5/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-adls-5/igt@i915_module_load@load.html
    - bat-dg1-5:          [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-dg1-5/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-dg1-5/igt@i915_module_load@load.html
    - bat-dg1-7:          [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-dg1-7/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-dg1-7/igt@i915_module_load@load.html
    - bat-adlp-9:         [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adlp-9/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-adlp-9/igt@i915_module_load@load.html
    - bat-dg2-11:         [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-dg2-11/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-dg2-11/igt@i915_module_load@load.html
    - bat-adln-1:         [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adln-1/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-adln-1/igt@i915_module_load@load.html
    - bat-adlm-1:         [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adlm-1/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-adlm-1/igt@i915_module_load@load.html
    - fi-tgl-1115g4:      [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-tgl-1115g4/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-tgl-1115g4/igt@i915_module_load@load.html
    - bat-atsm-1:         [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-atsm-1/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-atsm-1/igt@i915_module_load@load.html
    - bat-dg2-9:          [PASS][25] -> [ABORT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-dg2-9/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-dg2-9/igt@i915_module_load@load.html
    - bat-rpls-2:         [PASS][27] -> [ABORT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rpls-2/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-rpls-2/igt@i915_module_load@load.html
    - bat-dg2-8:          [PASS][29] -> [ABORT][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-dg2-8/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-dg2-8/igt@i915_module_load@load.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-adlp-11:        [ABORT][31] ([i915#4423]) -> [ABORT][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adlp-11/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-adlp-11/igt@i915_module_load@load.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-dg2-13}:       [DMESG-WARN][33] ([Intel XE#486] / [i915#8879]) -> [ABORT][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-dg2-13/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-dg2-13/igt@i915_module_load@load.html
    - {bat-dg2-14}:       [DMESG-WARN][35] ([Intel XE#486] / [i915#8879]) -> [ABORT][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-dg2-14/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-dg2-14/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_119798v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - fi-rkl-11600:       [PASS][37] -> [ABORT][38] ([i915#8695])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-rkl-11600/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-rkl-11600/igt@i915_module_load@load.html
    - bat-rplp-1:         [PASS][39] -> [ABORT][40] ([i915#8695])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rplp-1/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-rplp-1/igt@i915_module_load@load.html
    - bat-mtlp-6:         [PASS][41] -> [ABORT][42] ([i915#8141])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-6/igt@i915_module_load@load.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-mtlp-6/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-cfl-8109u:       [PASS][43] -> [FAIL][44] ([i915#7940])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8700k:       [PASS][45] -> [FAIL][46] ([i915#7940])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][47] -> [ABORT][48] ([i915#7911] / [i915#7913])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-cfl-8700k:       [FAIL][49] ([i915#7940]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-mtlp-8:         [DMESG-WARN][51] ([i915#8937]) -> [ABORT][52] ([i915#8141])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-8/igt@i915_module_load@load.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-mtlp-8/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-guc:         [SKIP][53] ([fdo#109271]) -> [FAIL][54] ([i915#7940])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][55] ([i915#7940]) -> [FAIL][56] ([i915#8843])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#486]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/486
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#8141]: https://gitlab.freedesktop.org/drm/intel/issues/8141
  [i915#8695]: https://gitlab.freedesktop.org/drm/intel/issues/8695
  [i915#8843]: https://gitlab.freedesktop.org/drm/intel/issues/8843
  [i915#8879]: https://gitlab.freedesktop.org/drm/intel/issues/8879
  [i915#8937]: https://gitlab.freedesktop.org/drm/intel/issues/8937


Build changes
-------------

  * Linux: CI_DRM_13399 -> Patchwork_119798v7

  CI-20190529: 20190529
  CI_DRM_13399: fcafac400c8ed8c9fe9419e94a6cd2dc3bc87da1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7396: 8e84faf33c2cf3482c7dff814d256089bc03db5d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119798v7: fcafac400c8ed8c9fe9419e94a6cd2dc3bc87da1 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a4127769b7fb drm/i915/gt: Support aux invalidation on all engines
e35f684a2398 drm/i915/gt: Poll aux invalidation register bit on invalidation
83d80f960547 drm/i915/gt: Enable the CCS_FLUSH bit in the pipe control
3580122c4fab drm/i915/gt: Ensure memory quiesced before invalidation for all engines
336355c1e8ae drm/i915/gt: Refactor intel_emit_pipe_control_cs() in a single function
cb2c9308d154 drm/i915/gt: Rename flags with bit_group_X according to the datasheet
d18ab7607586 drm/i915/gt: Ensure memory quiesced before invalidation
df98c7f697f2 drm/i915: Add the has_aux_ccs device property
b8a4ec9fa8be drm/i915/gt: Cleanup aux invalidation registers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/index.html

--===============1148953003695560080==
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
<tr><td><b>Series:</b></td><td>Update AUX invalidation sequence (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119798/">https://patchwork.freedesktop.org/series/119798/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13399 -&gt; Patchwork_119798v7</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_119798v7 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_119798v7, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Missing    (1): fi-kbl-soraka </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_119798v7:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-blb-e6850/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-blb-e6850/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rpls-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-rpls-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-adlp-6/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adls-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-adls-5/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-dg1-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-dg1-5/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-dg1-7/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-dg1-7/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-adlp-9/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-dg2-11/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adln-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-adln-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adlm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-adlm-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-tgl-1115g4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-tgl-1115g4/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-atsm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-atsm-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-dg2-9/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rpls-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-rpls-2/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-dg2-8/igt@i915_module_load@load.html">ABORT</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-dg2-13/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/486">Intel XE#486</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8879">i915#8879</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-dg2-13/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-dg2-14/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/486">Intel XE#486</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8879">i915#8879</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-dg2-14/igt@i915_module_load@load.html">ABORT</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119798v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-rkl-11600/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8695">i915#8695</a>)</p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rplp-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-rplp-1/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8695">i915#8695</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-mtlp-6/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8141">i915#8141</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-8/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/bat-mtlp-8/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8141">i915#8141</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119798v7/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8843">i915#8843</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13399 -&gt; Patchwork_119798v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13399: fcafac400c8ed8c9fe9419e94a6cd2dc3bc87da1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7396: 8e84faf33c2cf3482c7dff814d256089bc03db5d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119798v7: fcafac400c8ed8c9fe9419e94a6cd2dc3bc87da1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a4127769b7fb drm/i915/gt: Support aux invalidation on all engines<br />
e35f684a2398 drm/i915/gt: Poll aux invalidation register bit on invalidation<br />
83d80f960547 drm/i915/gt: Enable the CCS_FLUSH bit in the pipe control<br />
3580122c4fab drm/i915/gt: Ensure memory quiesced before invalidation for all engines<br />
336355c1e8ae drm/i915/gt: Refactor intel_emit_pipe_control_cs() in a single function<br />
cb2c9308d154 drm/i915/gt: Rename flags with bit_group_X according to the datasheet<br />
d18ab7607586 drm/i915/gt: Ensure memory quiesced before invalidation<br />
df98c7f697f2 drm/i915: Add the has_aux_ccs device property<br />
b8a4ec9fa8be drm/i915/gt: Cleanup aux invalidation registers</p>

</body>
</html>

--===============1148953003695560080==--
