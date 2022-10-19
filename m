Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C8F603B41
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 10:17:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F3D610F18E;
	Wed, 19 Oct 2022 08:16:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2CAEA10F18E;
 Wed, 19 Oct 2022 08:16:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E12A0AADDA;
 Wed, 19 Oct 2022 08:16:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2422644982359841964=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Wed, 19 Oct 2022 08:16:53 -0000
Message-ID: <166616741391.29708.3583652817910368138@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221019071252.180682-1-andrzej.hajda@intel.com>
In-Reply-To: <20221019071252.180682-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_add_prefetch_padding_to_store=5Fdw_batchbuff?=
 =?utf-8?q?er?=
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

--===============2422644982359841964==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: add prefetch padding to store_dw batchbuffer
URL   : https://patchwork.freedesktop.org/series/109855/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12259 -> Patchwork_109855v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/index.html

Participating hosts (41 -> 41)
------------------------------

  Additional (1): bat-adlm-1 
  Missing    (1): fi-kbl-soraka 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109855v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_contexts:
    - {bat-adln-1}:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/bat-adln-1/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/bat-adln-1/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_109855v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [PASS][3] -> [FAIL][4] ([i915#7229])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][5] ([fdo#109271]) +13 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/fi-bdw-5557u/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [PASS][6] -> [INCOMPLETE][7] ([i915#3303] / [i915#4785])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][8] ([i915#146] / [i915#6712])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/fi-bdw-5557u/igt@kms_chamelium@dp-edid-read.html

  * igt@runner@aborted:
    - fi-hsw-g3258:       NOTRUN -> [FAIL][10] ([fdo#109271] / [i915#4312] / [i915#4991])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rpls-1}:       [DMESG-WARN][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_huc_copy@huc-copy:
    - {bat-dg2-8}:        [FAIL][13] ([i915#7029]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/bat-dg2-8/igt@gem_huc_copy@huc-copy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/bat-dg2-8/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@gem_contexts:
    - {fi-tgl-mst}:       [DMESG-FAIL][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/fi-tgl-mst/igt@i915_selftest@live@gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/fi-tgl-mst/igt@i915_selftest@live@gem_contexts.html
    - {bat-dg2-11}:       [DMESG-FAIL][17] -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/bat-dg2-11/igt@i915_selftest@live@gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/bat-dg2-11/igt@i915_selftest@live@gem_contexts.html
    - {bat-jsl-1}:        [DMESG-FAIL][19] -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/bat-jsl-1/igt@i915_selftest@live@gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/bat-jsl-1/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@requests:
    - {bat-adln-1}:       [DMESG-FAIL][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/bat-adln-1/igt@i915_selftest@live@requests.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/bat-adln-1/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [DMESG-FAIL][23] ([i915#4983]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/bat-rpls-2/igt@i915_selftest@live@reset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6712]: https://gitlab.freedesktop.org/drm/intel/issues/6712
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229


Build changes
-------------

  * Linux: CI_DRM_12259 -> Patchwork_109855v1

  CI-20190529: 20190529
  CI_DRM_12259: af4d5174f9efe29241ffa082a7417fde95ca2f28 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7019: fdbafce2b74e84739bb1d81223ae6f01fb442980 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109855v1: af4d5174f9efe29241ffa082a7417fde95ca2f28 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

01d0edaa7486 drm/i915/selftests: add prefetch padding to store_dw batchbuffer

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/index.html

--===============2422644982359841964==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: add prefetch padding to store_dw batchbuffer</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/109855/">https://patchwork.freedesktop.org/series/109855/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12259 -&gt; Patchwork_109855v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/index.html</p>
<h2>Participating hosts (41 -&gt; 41)</h2>
<p>Additional (1): bat-adlm-1 <br />
  Missing    (1): fi-kbl-soraka </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_109855v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gem_contexts:<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/bat-adln-1/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/bat-adln-1/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109855v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/fi-bdw-5557u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6712">i915#6712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/fi-bdw-5557u/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/bat-dg2-8/igt@gem_huc_copy@huc-copy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7029">i915#7029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/bat-dg2-8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>
<p>{fi-tgl-mst}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/fi-tgl-mst/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/fi-tgl-mst/igt@i915_selftest@live@gem_contexts.html">PASS</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/bat-dg2-11/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/bat-dg2-11/igt@i915_selftest@live@gem_contexts.html">PASS</a></p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/bat-jsl-1/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/bat-jsl-1/igt@i915_selftest@live@gem_contexts.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/bat-adln-1/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/bat-adln-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12259/bat-rpls-2/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109855v1/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12259 -&gt; Patchwork_109855v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12259: af4d5174f9efe29241ffa082a7417fde95ca2f28 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7019: fdbafce2b74e84739bb1d81223ae6f01fb442980 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109855v1: af4d5174f9efe29241ffa082a7417fde95ca2f28 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>01d0edaa7486 drm/i915/selftests: add prefetch padding to store_dw batchbuffer</p>

</body>
</html>

--===============2422644982359841964==--
