Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BC15344BB
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 22:16:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 722AB10E96E;
	Wed, 25 May 2022 20:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BEE7010E967;
 Wed, 25 May 2022 20:16:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B859CAADD5;
 Wed, 25 May 2022 20:16:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5566781369463666119=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Wed, 25 May 2022 20:16:20 -0000
Message-ID: <165350978071.16575.3675577456742710043@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220525184337.491763-1-matthew.auld@intel.com>
In-Reply-To: <20220525184337.491763-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc21h?=
 =?utf-8?q?ll_BAR_uapi_bits?=
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

--===============5566781369463666119==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: small BAR uapi bits
URL   : https://patchwork.freedesktop.org/series/104369/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11700 -> Patchwork_104369v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/index.html

Participating hosts (46 -> 43)
------------------------------

  Missing    (3): bat-dg2-8 fi-rkl-11600 bat-dg1-5 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_104369v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@basic-rte:
    - {bat-dg2-9}:        [SKIP][1] ([i915#5174]) -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-dg2-9/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-dg2-9/igt@i915_pm_rpm@basic-rte.html

  
Known issues
------------

  Here are the changes found in Patchwork_104369v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem:
    - fi-pnv-d510:        NOTRUN -> [DMESG-FAIL][3] ([i915#4528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/fi-pnv-d510/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [PASS][4] -> [INCOMPLETE][5] ([i915#4418])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-dg1-6/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gtt:
    - fi-bdw-5557u:       [PASS][6] -> [DMESG-FAIL][7] ([i915#3674])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/fi-bdw-5557u/igt@i915_selftest@live@gtt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/fi-bdw-5557u/igt@i915_selftest@live@gtt.html

  * igt@kms_flip@basic-flip-vs-dpms@a-edp1:
    - fi-tgl-u2:          [PASS][8] -> [DMESG-WARN][9] ([i915#402]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - bat-adlp-4:         [PASS][10] -> [DMESG-WARN][11] ([i915#3576])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {bat-dg2-9}:        [SKIP][12] ([i915#2582]) -> [PASS][13] +4 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-dg2-9/igt@fbdev@read.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-dg2-9/igt@fbdev@read.html

  * igt@i915_getparams_basic@basic-eu-total:
    - {bat-dg2-9}:        [SKIP][14] ([i915#2575]) -> [PASS][15] +27 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-dg2-9/igt@i915_getparams_basic@basic-eu-total.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-dg2-9/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {bat-dg2-9}:        [SKIP][16] ([i915#5174]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-dg2-9/igt@i915_pm_rpm@basic-pci-d3-state.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-dg2-9/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@hugepages:
    - {bat-adln-1}:       [DMESG-WARN][18] -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-adln-1/igt@i915_selftest@live@hugepages.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-adln-1/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@requests:
    - bat-adlp-4:         [DMESG-FAIL][20] -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-adlp-4/igt@i915_selftest@live@requests.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-adlp-4/igt@i915_selftest@live@requests.html
    - fi-pnv-d510:        [DMESG-FAIL][22] ([i915#4528]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@kms_addfb_basic@addfb25-yf-tiled-legacy:
    - {bat-dg2-9}:        [SKIP][24] ([i915#5171] / [i915#5190]) -> [PASS][25] +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-dg2-9/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small:
    - {bat-dg2-9}:        [SKIP][26] ([i915#5171]) -> [PASS][27] +45 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-dg2-9/igt@kms_addfb_basic@bo-too-small.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-dg2-9/igt@kms_addfb_basic@bo-too-small.html

  * igt@kms_flip@basic-flip-vs-modeset@b-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][28] ([i915#3576]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
    - bat-adlp-4:         [DMESG-WARN][30] ([i915#3576]) -> [PASS][31] +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3674]: https://gitlab.freedesktop.org/drm/intel/issues/3674
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#5171]: https://gitlab.freedesktop.org/drm/intel/issues/5171
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274


Build changes
-------------

  * IGT: IGT_6492 -> IGTPW_7174
  * Linux: CI_DRM_11700 -> Patchwork_104369v1

  CI-20190529: 20190529
  CI_DRM_11700: f5895776c32b7fc5c196fafef3f5dab7e5ad19c6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_7174: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7174/index.html
  IGT_6492: ef18e59c374472e961a3a145724e7381eb4800aa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104369v1: f5895776c32b7fc5c196fafef3f5dab7e5ad19c6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

47888d6ee3aa HAX: force small BAR on dg2
5e24a572e647 drm/i915: turn on small BAR support
326cfef39f1c drm/i915/uapi: disable capturing objects on recoverable contexts
1d8aa973c112 drm/i915/error: skip non-mappable pages
f430a36e818d drm/i915/uapi: add NEEDS_CPU_ACCESS hint
aea0098389b6 drm/i915/uapi: apply ALLOC_GPU_ONLY by default
0a6d83d93733 drm/i915: remove intel_memory_region avail
e8c79f7d40cd drm/i915/uapi: expose the avail tracking
e8217645ee2f drm/i915/uapi: add probed_cpu_visible_size
4c06fd9d298d drm/doc: add rfc section for small BAR uapi

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/index.html

--===============5566781369463666119==
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
<tr><td><b>Series:</b></td><td>small BAR uapi bits</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104369/">https://patchwork.freedesktop.org/series/104369/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11700 -&gt; Patchwork_104369v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/index.html</p>
<h2>Participating hosts (46 -&gt; 43)</h2>
<p>Missing    (3): bat-dg2-8 fi-rkl-11600 bat-dg1-5 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_104369v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-dg2-9/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5174">i915#5174</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-dg2-9/igt@i915_pm_rpm@basic-rte.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104369v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/fi-pnv-d510/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/fi-bdw-5557u/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/fi-bdw-5557u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3674">i915#3674</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-dg2-9/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-dg2-9/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_getparams_basic@basic-eu-total:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-dg2-9/igt@i915_getparams_basic@basic-eu-total.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-dg2-9/igt@i915_getparams_basic@basic-eu-total.html">PASS</a> +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-dg2-9/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5174">i915#5174</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-dg2-9/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-adln-1/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-adln-1/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-adlp-4/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-adlp-4/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-yf-tiled-legacy:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-dg2-9/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5171">i915#5171</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-dg2-9/igt@kms_addfb_basic@bo-too-small.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5171">i915#5171</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-dg2-9/igt@kms_addfb_basic@bo-too-small.html">PASS</a> +45 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-edp1:</p>
<ul>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">PASS</a></p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11700/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104369v1/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6492 -&gt; IGTPW_7174</li>
<li>Linux: CI_DRM_11700 -&gt; Patchwork_104369v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11700: f5895776c32b7fc5c196fafef3f5dab7e5ad19c6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_7174: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7174/index.html<br />
  IGT_6492: ef18e59c374472e961a3a145724e7381eb4800aa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104369v1: f5895776c32b7fc5c196fafef3f5dab7e5ad19c6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>47888d6ee3aa HAX: force small BAR on dg2<br />
5e24a572e647 drm/i915: turn on small BAR support<br />
326cfef39f1c drm/i915/uapi: disable capturing objects on recoverable contexts<br />
1d8aa973c112 drm/i915/error: skip non-mappable pages<br />
f430a36e818d drm/i915/uapi: add NEEDS_CPU_ACCESS hint<br />
aea0098389b6 drm/i915/uapi: apply ALLOC_GPU_ONLY by default<br />
0a6d83d93733 drm/i915: remove intel_memory_region avail<br />
e8c79f7d40cd drm/i915/uapi: expose the avail tracking<br />
e8217645ee2f drm/i915/uapi: add probed_cpu_visible_size<br />
4c06fd9d298d drm/doc: add rfc section for small BAR uapi</p>

</body>
</html>

--===============5566781369463666119==--
