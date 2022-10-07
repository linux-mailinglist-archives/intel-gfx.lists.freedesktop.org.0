Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0455F7A48
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 17:09:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAE4010E32D;
	Fri,  7 Oct 2022 15:09:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6AA1610E32B;
 Fri,  7 Oct 2022 15:09:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61AB1AADDE;
 Fri,  7 Oct 2022 15:09:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0738946246128662537=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 07 Oct 2022 15:09:21 -0000
Message-ID: <166515536136.15727.12983755009069257489@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221007133307.3805735-1-imre.deak@intel.com>
In-Reply-To: <20221007133307.3805735-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_simulated_GPU_reset_wrt=2E_encoder_HW_readout?=
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

--===============0738946246128662537==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix simulated GPU reset wrt. encoder HW readout
URL   : https://patchwork.freedesktop.org/series/109480/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12225 -> Patchwork_109480v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109480v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109480v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/index.html

Participating hosts (46 -> 44)
------------------------------

  Additional (1): fi-tgl-dsi 
  Missing    (3): fi-ctg-p8600 fi-hsw-4770 fi-hsw-4200u 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109480v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_109480v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - bat-dg1-5:          NOTRUN -> [SKIP][3] ([fdo#111827])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-dg1-5/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-bdw-5557u:       NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/fi-bdw-5557u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-dg1-5:          NOTRUN -> [SKIP][5] ([i915#4078])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][6] ([fdo#109271] / [i915#4312])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][7] ([i915#2582]) -> [PASS][8] +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/bat-rpls-2/igt@fbdev@read.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-rpls-2/igt@fbdev@read.html

  * igt@gem_exec_suspend@basic-s3@lmem0:
    - {bat-dg2-11}:       [DMESG-WARN][9] ([i915#6816]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rpls-1}:       [DMESG-WARN][11] ([i915#6687]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - {bat-atsm-1}:       [FAIL][13] ([i915#7029]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/bat-atsm-1/igt@gem_huc_copy@huc-copy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-atsm-1/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@load:
    - {bat-atsm-1}:       [DMESG-WARN][15] ([i915#7031]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/bat-atsm-1/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-atsm-1/igt@i915_module_load@load.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-5:          [INCOMPLETE][17] ([i915#4418]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/bat-dg1-5/igt@i915_selftest@live@gt_engines.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-dg1-5/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bxt-dsi:         [DMESG-FAIL][19] ([i915#5334]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@slpc:
    - {bat-adln-1}:       [DMESG-FAIL][21] ([i915#6997]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/bat-adln-1/igt@i915_selftest@live@slpc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-adln-1/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-bdw-5557u:       [INCOMPLETE][23] ([i915#146] / [i915#6712]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-2:
    - {bat-dg2-11}:       [FAIL][25] ([i915#6818]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-2.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-2.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6712]: https://gitlab.freedesktop.org/drm/intel/issues/6712
  [i915#6816]: https://gitlab.freedesktop.org/drm/intel/issues/6816
  [i915#6818]: https://gitlab.freedesktop.org/drm/intel/issues/6818
  [i915#6856]: https://gitlab.freedesktop.org/drm/intel/issues/6856
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7031]: https://gitlab.freedesktop.org/drm/intel/issues/7031


Build changes
-------------

  * Linux: CI_DRM_12225 -> Patchwork_109480v1

  CI-20190529: 20190529
  CI_DRM_12225: 31426dd8e9677d64141dcf5546927c6c23e994bd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7003: 1ea9ec5e7295fbc1cb784be4692971fd342bea53 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109480v1: 31426dd8e9677d64141dcf5546927c6c23e994bd @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

b8e1eb6b0cb8 drm/i915: Fix simulated GPU reset wrt. encoder HW readout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/index.html

--===============0738946246128662537==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix simulated GPU reset wrt. encoder HW readout</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/109480/">https://patchwork.freedesktop.org/series/109480/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12225 -&gt; Patchwork_109480v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109480v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_109480v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/index.html</p>
<h2>Participating hosts (46 -&gt; 44)</h2>
<p>Additional (1): fi-tgl-dsi <br />
  Missing    (3): fi-ctg-p8600 fi-hsw-4770 fi-hsw-4200u </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_109480v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109480v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-dg1-5/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/fi-bdw-5557u/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@lmem0:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6816">i915#6816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>{bat-atsm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/bat-atsm-1/igt@gem_huc_copy@huc-copy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7029">i915#7029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-atsm-1/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-atsm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/bat-atsm-1/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7031">i915#7031</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-atsm-1/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/bat-adln-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-adln-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6712">i915#6712</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-2:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6818">i915#6818</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-2.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12225 -&gt; Patchwork_109480v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12225: 31426dd8e9677d64141dcf5546927c6c23e994bd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7003: 1ea9ec5e7295fbc1cb784be4692971fd342bea53 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109480v1: 31426dd8e9677d64141dcf5546927c6c23e994bd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>b8e1eb6b0cb8 drm/i915: Fix simulated GPU reset wrt. encoder HW readout</p>

</body>
</html>

--===============0738946246128662537==--
