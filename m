Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E470153141F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 18:25:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31B0E10E4D2;
	Mon, 23 May 2022 16:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 919D010E3EC;
 Mon, 23 May 2022 16:25:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87F2EAADD7;
 Mon, 23 May 2022 16:25:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6379030079760782299=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Balasubramani Vivekanandan" <balasubramani.vivekanandan@intel.com>
Date: Mon, 23 May 2022 16:25:08 -0000
Message-ID: <165332310852.9279.11245938391726352659@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220523075116.207677-1-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20220523075116.207677-1-balasubramani.vivekanandan@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/hwconfig=3A_Report_no_hwconfig_support_on_ADL-N?=
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

--===============6379030079760782299==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hwconfig: Report no hwconfig support on ADL-N
URL   : https://patchwork.freedesktop.org/series/104270/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11690 -> Patchwork_104270v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/index.html

Participating hosts (47 -> 44)
------------------------------

  Missing    (3): bat-dg2-8 fi-hsw-4770 fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_104270v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@hugepages:
    - {bat-adln-1}:       [DMESG-WARN][1] ([i915#5869]) -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/bat-adln-1/igt@i915_selftest@live@hugepages.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/bat-adln-1/igt@i915_selftest@live@hugepages.html

  * igt@i915_suspend@basic-s3-without-i915:
    - {bat-adln-1}:       [SKIP][3] ([i915#5869]) -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/bat-adln-1/igt@i915_suspend@basic-s3-without-i915.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/bat-adln-1/igt@i915_suspend@basic-s3-without-i915.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11690 and Patchwork_104270v1:

### New IGT tests (2) ###

  * igt@gem_softpin@allocator-basic:
    - Statuses : 34 pass(s) 9 skip(s)
    - Exec time: [0.0, 0.81] s

  * igt@gem_softpin@allocator-basic-reserve:
    - Statuses : 34 pass(s) 9 skip(s)
    - Exec time: [0.0, 0.80] s

  

Known issues
------------

  Here are the changes found in Patchwork_104270v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@coherency:
    - fi-bdw-5557u:       [PASS][5] -> [INCOMPLETE][6] ([i915#5674] / [i915#5685])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/fi-bdw-5557u/igt@i915_selftest@live@coherency.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/fi-bdw-5557u/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-5:          [PASS][7] -> [INCOMPLETE][8] ([i915#4418])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/bat-dg1-5/igt@i915_selftest@live@gt_engines.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/bat-dg1-5/igt@i915_selftest@live@gt_engines.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-icl-u2:          NOTRUN -> [SKIP][9] ([i915#5903])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/fi-icl-u2/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_busy@basic@flip:
    - bat-adlp-4:         [PASS][10] -> [DMESG-WARN][11] ([i915#3576])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/bat-adlp-4/igt@kms_busy@basic@flip.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/bat-adlp-4/igt@kms_busy@basic@flip.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          NOTRUN -> [SKIP][12] ([fdo#111827])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
    - fi-tgl-u2:          [PASS][13] -> [DMESG-WARN][14] ([i915#402])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - {bat-adln-1}:       [DMESG-WARN][15] ([i915#5869]) -> [PASS][16] +37 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/bat-adln-1/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/bat-adln-1/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-jsl-1}:         [INCOMPLETE][17] ([i915#3921] / [i915#5153]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/fi-jsl-1/igt@i915_selftest@live@hangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/fi-jsl-1/igt@i915_selftest@live@hangcheck.html
    - fi-icl-u2:          [INCOMPLETE][19] ([i915#5153]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
    - bat-dg1-6:          [DMESG-FAIL][21] ([i915#4494] / [i915#4957]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_flip@basic-flip-vs-modeset@b-edp1:
    - bat-adlp-4:         [DMESG-WARN][23] ([i915#3576]) -> [PASS][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - fi-tgl-u2:          [DMESG-WARN][25] ([i915#402]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5153]: https://gitlab.freedesktop.org/drm/intel/issues/5153
  [i915#5674]: https://gitlab.freedesktop.org/drm/intel/issues/5674
  [i915#5685]: https://gitlab.freedesktop.org/drm/intel/issues/5685
  [i915#5869]: https://gitlab.freedesktop.org/drm/intel/issues/5869
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903


Build changes
-------------

  * Linux: CI_DRM_11690 -> Patchwork_104270v1

  CI-20190529: 20190529
  CI_DRM_11690: 7420808c59c9be6a025f811ada6e6c860f6562b6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6485: 51663917b40d36086cc1c555ce4f67b22937694d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104270v1: 7420808c59c9be6a025f811ada6e6c860f6562b6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

2d5b2cd7e190 drm/i915/hwconfig: Report no hwconfig support on ADL-N

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/index.html

--===============6379030079760782299==
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
<tr><td><b>Series:</b></td><td>drm/i915/hwconfig: Report no hwconfig support on ADL-N</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104270/">https://patchwork.freedesktop.org/series/104270/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11690 -&gt; Patchwork_104270v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/index.html</p>
<h2>Participating hosts (47 -&gt; 44)</h2>
<p>Missing    (3): bat-dg2-8 fi-hsw-4770 fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_104270v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/bat-adln-1/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5869">i915#5869</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/bat-adln-1/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/bat-adln-1/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5869">i915#5869</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/bat-adln-1/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11690 and Patchwork_104270v1:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@gem_softpin@allocator-basic:</p>
<ul>
<li>Statuses : 34 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0, 0.81] s</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>Statuses : 34 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0, 0.80] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104270v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/fi-bdw-5557u/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/fi-bdw-5557u/igt@i915_selftest@live@coherency.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5674">i915#5674</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5685">i915#5685</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/fi-icl-u2/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5903">i915#5903</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/bat-adlp-4/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/bat-adlp-4/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/bat-adln-1/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5869">i915#5869</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/bat-adln-1/igt@i915_pm_rpm@module-reload.html">PASS</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5153">i915#5153</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5153">i915#5153</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-edp1:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11690 -&gt; Patchwork_104270v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11690: 7420808c59c9be6a025f811ada6e6c860f6562b6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6485: 51663917b40d36086cc1c555ce4f67b22937694d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104270v1: 7420808c59c9be6a025f811ada6e6c860f6562b6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>2d5b2cd7e190 drm/i915/hwconfig: Report no hwconfig support on ADL-N</p>

</body>
</html>

--===============6379030079760782299==--
