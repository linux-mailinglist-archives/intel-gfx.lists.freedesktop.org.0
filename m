Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B7648D1B2
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 05:38:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB7CD10FA6B;
	Thu, 13 Jan 2022 04:38:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC97A10FA6B;
 Thu, 13 Jan 2022 04:38:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C714AAA914;
 Thu, 13 Jan 2022 04:38:13 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1472952601153343479=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Thu, 13 Jan 2022 04:38:13 -0000
Message-ID: <164204869378.19000.13791968437515305463@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220113033803.14967-1-matthew.brost@intel.com>
In-Reply-To: <20220113033803.14967-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Flip_guc=5Fid_allocation_partition_=28rev2=29?=
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

--===============1472952601153343479==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Flip guc_id allocation partition (rev2)
URL   : https://patchwork.freedesktop.org/series/98751/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11075 -> Patchwork_21990
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21990 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21990, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/index.html

Participating hosts (44 -> 42)
------------------------------

  Missing    (2): fi-bsw-cyan fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21990:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@guc_multi_lrc:
    - bat-dg1-6:          [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/bat-dg1-6/igt@i915_selftest@live@guc_multi_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/bat-dg1-6/igt@i915_selftest@live@guc_multi_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_21990 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271]) +31 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_flink_basic@bad-flink:
    - fi-skl-6600u:       [PASS][4] -> [FAIL][5] ([i915#4547])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          NOTRUN -> [DMESG-FAIL][6] ([i915#4494])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
    - fi-hsw-4770:        [PASS][7] -> [INCOMPLETE][8] ([i915#4785])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][10] -> [DMESG-WARN][11] ([i915#4269])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@runner@aborted:
    - fi-skl-6600u:       NOTRUN -> [FAIL][12] ([i915#4312])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-skl-6600u/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][13] ([fdo#109271] / [i915#1436] / [i915#4312])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-hsw-4770/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][14] ([i915#4214] / [i915#4312])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/bat-dg1-6/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_auth@basic-auth:
    - {bat-jsl-2}:        [DMESG-WARN][15] ([i915#4562]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/bat-jsl-2/igt@core_auth@basic-auth.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/bat-jsl-2/igt@core_auth@basic-auth.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [INCOMPLETE][17] ([i915#146]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-5:          [INCOMPLETE][19] ([i915#4418]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/bat-dg1-5/igt@i915_selftest@live@gt_engines.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/bat-dg1-5/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-ehl-2}:         [DMESG-FAIL][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-ehl-2/igt@i915_selftest@live@hangcheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-ehl-2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - {bat-adlp-6}:       [DMESG-WARN][23] ([i915#1888]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/bat-adlp-6/igt@i915_selftest@live@hugepages.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/bat-adlp-6/igt@i915_selftest@live@hugepages.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#4214]: https://gitlab.freedesktop.org/drm/intel/issues/4214
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4562]: https://gitlab.freedesktop.org/drm/intel/issues/4562
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785


Build changes
-------------

  * Linux: CI_DRM_11075 -> Patchwork_21990

  CI-20190529: 20190529
  CI_DRM_11075: 9b371f79eeb9a3867d2483e4038f22f89a854886 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6326: ec75f64fcbcf4aac58fbf1bf629e8f59b19db4ce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21990: 562c51a5dc5cad4239bd80a1f64a01e1092c1830 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

562c51a5dc5c drm/i915: Flip guc_id allocation partition

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/index.html

--===============1472952601153343479==
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
<tr><td><b>Series:</b></td><td>drm/i915: Flip guc_id allocation partition (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98751/">https://patchwork.freedesktop.org/series/98751/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11075 -&gt; Patchwork_21990</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21990 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21990, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/index.html</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Missing    (2): fi-bsw-cyan fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21990:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@guc_multi_lrc:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/bat-dg1-6/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/bat-dg1-6/igt@i915_selftest@live@guc_multi_lrc.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21990 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4214">i915#4214</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>{bat-jsl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/bat-jsl-2/igt@core_auth@basic-auth.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4562">i915#4562</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/bat-jsl-2/igt@core_auth@basic-auth.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-ehl-2/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/fi-ehl-2/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/bat-adlp-6/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21990/bat-adlp-6/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11075 -&gt; Patchwork_21990</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11075: 9b371f79eeb9a3867d2483e4038f22f89a854886 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6326: ec75f64fcbcf4aac58fbf1bf629e8f59b19db4ce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21990: 562c51a5dc5cad4239bd80a1f64a01e1092c1830 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>562c51a5dc5c drm/i915: Flip guc_id allocation partition</p>

</body>
</html>

--===============1472952601153343479==--
