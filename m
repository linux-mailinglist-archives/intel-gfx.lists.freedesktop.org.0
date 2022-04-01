Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A234EFBF0
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 23:00:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3974510E110;
	Fri,  1 Apr 2022 21:00:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7440D10E110;
 Fri,  1 Apr 2022 21:00:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70CA8A00E8;
 Fri,  1 Apr 2022 21:00:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1589595362510415076=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 01 Apr 2022 21:00:09 -0000
Message-ID: <164884680945.22004.9721553104275015319@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220401142205.3123159-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20220401142205.3123159-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUGVy?=
 =?utf-8?q?_client_GPU_utilisation_=28rev5=29?=
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

--===============1589595362510415076==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Per client GPU utilisation (rev5)
URL   : https://patchwork.freedesktop.org/series/100573/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11440 -> Patchwork_22761
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/index.html

Participating hosts (45 -> 41)
------------------------------

  Additional (2): bat-rpls-2 fi-pnv-d510 
  Missing    (6): shard-tglu bat-dg2-8 fi-bsw-cyan fi-icl-u2 bat-jsl-2 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22761 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-hsw-4770:        NOTRUN -> [SKIP][1] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@fork-compute0:
    - fi-blb-e6850:       NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-blb-e6850/igt@amdgpu/amd_cs_nop@fork-compute0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       [PASS][3] -> [INCOMPLETE][4] ([i915#5127])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11440/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-pnv-d510:        NOTRUN -> [SKIP][5] ([fdo#109271]) +57 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][6] -> [INCOMPLETE][7] ([i915#2940])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11440/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-pnv-d510:        NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#5341])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][9] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-blb-e6850:       [FAIL][10] ([i915#3194]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11440/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][12] ([i915#4494] / [i915#4957]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11440/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
    - fi-hsw-4770:        [INCOMPLETE][14] ([i915#4785]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11440/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][16] ([i915#4528]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11440/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - fi-tgl-u2:          [DMESG-WARN][18] ([i915#402]) -> [PASS][19] +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11440/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html

  * igt@kms_force_connector_basic@force-connector-state:
    - {bat-adlp-6}:       [DMESG-WARN][20] ([i915#3576]) -> [PASS][21] +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11440/bat-adlp-6/igt@kms_force_connector_basic@force-connector-state.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/bat-adlp-6/igt@kms_force_connector_basic@force-connector-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3194]: https://gitlab.freedesktop.org/drm/intel/issues/3194
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#5195]: https://gitlab.freedesktop.org/drm/intel/issues/5195
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5482]: https://gitlab.freedesktop.org/drm/intel/issues/5482


Build changes
-------------

  * IGT: IGT_6405 -> IGTPW_6859
  * Linux: CI_DRM_11440 -> Patchwork_22761

  CI-20190529: 20190529
  CI_DRM_11440: 1aba80b3bc8c8e2cc405cd96fe95770ecbadde71 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_6859: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6859/index.html
  IGT_6405: 50f7bc405cc1411f57855ed23322c6c4d2510b58 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22761: 0fa662dc40c3c40358887cbdca2f25b534325b64 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0fa662dc40c3 drm/i915: Expose client engine utilisation via fdinfo
358f40a1b272 drm/i915: Count engine instances per uabi class
d68a3dd18e32 drm: Document fdinfo format specification
f8aa16bf3954 drm/i915: Track context current active time
2f89085834a4 drm/i915: Track all user contexts per client
8112c9dac44d drm/i915: Track runtime spent in closed and unreachable GEM contexts
20138e4593a9 drm/i915: Make GEM contexts track DRM clients
7e9efd72439e drm/i915: Explicitly track DRM clients

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/index.html

--===============1589595362510415076==
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
<tr><td><b>Series:</b></td><td>Per client GPU utilisation (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100573/">https://patchwork.freedesktop.org/series/100573/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11440 -&gt; Patchwork_22761</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/index.html</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Additional (2): bat-rpls-2 fi-pnv-d510 <br />
  Missing    (6): shard-tglu bat-dg2-8 fi-bsw-cyan fi-icl-u2 bat-jsl-2 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22761 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-compute0:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-blb-e6850/igt@amdgpu/amd_cs_nop@fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11440/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11440/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11440/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3194">i915#3194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11440/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11440/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11440/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11440/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11440/bat-adlp-6/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22761/bat-adlp-6/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6405 -&gt; IGTPW_6859</li>
<li>Linux: CI_DRM_11440 -&gt; Patchwork_22761</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11440: 1aba80b3bc8c8e2cc405cd96fe95770ecbadde71 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_6859: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6859/index.html<br />
  IGT_6405: 50f7bc405cc1411f57855ed23322c6c4d2510b58 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22761: 0fa662dc40c3c40358887cbdca2f25b534325b64 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0fa662dc40c3 drm/i915: Expose client engine utilisation via fdinfo<br />
358f40a1b272 drm/i915: Count engine instances per uabi class<br />
d68a3dd18e32 drm: Document fdinfo format specification<br />
f8aa16bf3954 drm/i915: Track context current active time<br />
2f89085834a4 drm/i915: Track all user contexts per client<br />
8112c9dac44d drm/i915: Track runtime spent in closed and unreachable GEM contexts<br />
20138e4593a9 drm/i915: Make GEM contexts track DRM clients<br />
7e9efd72439e drm/i915: Explicitly track DRM clients</p>

</body>
</html>

--===============1589595362510415076==--
