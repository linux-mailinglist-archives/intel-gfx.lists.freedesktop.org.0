Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 639AE48D263
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 07:43:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61AF1112269;
	Thu, 13 Jan 2022 06:43:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 24D32112264;
 Thu, 13 Jan 2022 06:43:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 207ECAA917;
 Thu, 13 Jan 2022 06:43:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9067496714957080615=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Thu, 13 Jan 2022 06:43:05 -0000
Message-ID: <164205618510.19002.15385688412502890548@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220113055903.7607-1-matthew.brost@intel.com>
In-Reply-To: <20220113055903.7607-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Ensure_multi-lrc_fini_breadcrumb_math_is_correct?=
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

--===============9067496714957080615==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Ensure multi-lrc fini breadcrumb math is correct
URL   : https://patchwork.freedesktop.org/series/98816/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11075 -> Patchwork_21991
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/index.html

Participating hosts (44 -> 43)
------------------------------

  Missing    (1): fi-bsw-cyan 

Known issues
------------

  Here are the changes found in Patchwork_21991 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-pnv-d510:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-pnv-d510/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          NOTRUN -> [DMESG-FAIL][2] ([i915#4494])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][3] -> [DMESG-FAIL][4] ([i915#4610])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       [PASS][5] -> [FAIL][6] ([i915#4547])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - fi-skl-6600u:       NOTRUN -> [FAIL][7] ([i915#4312])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-skl-6600u/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][8] ([i915#2426] / [i915#4312])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-bdw-5557u/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][9] ([fdo#109271] / [i915#2403] / [i915#2426] / [i915#4312])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-blb-e6850/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_auth@basic-auth:
    - {bat-jsl-2}:        [DMESG-WARN][10] ([i915#4562]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/bat-jsl-2/igt@core_auth@basic-auth.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/bat-jsl-2/igt@core_auth@basic-auth.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [INCOMPLETE][12] ([i915#146]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-5:          [INCOMPLETE][14] ([i915#4418]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/bat-dg1-5/igt@i915_selftest@live@gt_engines.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/bat-dg1-5/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-ehl-2}:         [DMESG-FAIL][16] -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-ehl-2/igt@i915_selftest@live@hangcheck.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-ehl-2/igt@i915_selftest@live@hangcheck.html
    - bat-dg1-6:          [DMESG-FAIL][18] ([i915#4494]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - {bat-adlp-6}:       [DMESG-WARN][20] ([i915#1888]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/bat-adlp-6/igt@i915_selftest@live@hugepages.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/bat-adlp-6/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [DMESG-FAIL][22] ([i915#2927]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-pnv-d510/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4562]: https://gitlab.freedesktop.org/drm/intel/issues/4562
  [i915#4610]: https://gitlab.freedesktop.org/drm/intel/issues/4610
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897


Build changes
-------------

  * Linux: CI_DRM_11075 -> Patchwork_21991

  CI-20190529: 20190529
  CI_DRM_11075: 9b371f79eeb9a3867d2483e4038f22f89a854886 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6326: ec75f64fcbcf4aac58fbf1bf629e8f59b19db4ce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21991: cbc7f028c5ae7962b9739f16521ef7c9eec50872 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cbc7f028c5ae drm/i915/guc: Ensure multi-lrc fini breadcrumb math is correct

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/index.html

--===============9067496714957080615==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Ensure multi-lrc fini breadcrumb math is correct</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98816/">https://patchwork.freedesktop.org/series/98816/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11075 -&gt; Patchwork_21991</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Missing    (1): fi-bsw-cyan </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21991 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-pnv-d510/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4610">i915#4610</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>{bat-jsl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/bat-jsl-2/igt@core_auth@basic-auth.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4562">i915#4562</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/bat-jsl-2/igt@core_auth@basic-auth.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-ehl-2/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-ehl-2/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/bat-adlp-6/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/bat-adlp-6/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11075/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21991/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11075 -&gt; Patchwork_21991</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11075: 9b371f79eeb9a3867d2483e4038f22f89a854886 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6326: ec75f64fcbcf4aac58fbf1bf629e8f59b19db4ce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21991: cbc7f028c5ae7962b9739f16521ef7c9eec50872 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>cbc7f028c5ae drm/i915/guc: Ensure multi-lrc fini breadcrumb math is correct</p>

</body>
</html>

--===============9067496714957080615==--
