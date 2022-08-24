Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7585A03CC
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 00:12:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0753910E6CE;
	Wed, 24 Aug 2022 22:12:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 31E8C10E6CE;
 Wed, 24 Aug 2022 22:12:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26419A882E;
 Wed, 24 Aug 2022 22:12:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3209890427816655294=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 24 Aug 2022 22:12:33 -0000
Message-ID: <166137915311.9872.15774398068327359163@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220819225335.3947346-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220819225335.3947346-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_HuC_loading_for_DG2_=28rev2=29?=
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

--===============3209890427816655294==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: HuC loading for DG2 (rev2)
URL   : https://patchwork.freedesktop.org/series/107477/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12022 -> Patchwork_107477v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/index.html

Participating hosts (37 -> 36)
------------------------------

  Additional (1): bat-dg2-8 
  Missing    (2): bat-dg2-10 fi-rkl-11600 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107477v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-dg2-9}:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_huc_copy@huc-copy:
    - {bat-dg2-8}:        NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg2-8/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@load:
    - {bat-dg2-8}:        NOTRUN -> [DMESG-WARN][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg2-8/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_107477v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [PASS][5] -> [DMESG-FAIL][6] ([i915#4528])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][7] ([fdo#109271] / [i915#2403] / [i915#4312])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/fi-pnv-d510/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_huc_copy@huc-copy:
    - {bat-dg2-9}:        [SKIP][8] ([i915#3595]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg2-9/igt@gem_huc_copy@huc-copy.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg2-9/igt@gem_huc_copy@huc-copy.html
    - {bat-dg2-11}:       [SKIP][10] ([i915#3595]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg2-11/igt@gem_huc_copy@huc-copy.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg2-11/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rps@basic-api:
    - fi-rkl-guc:         [SKIP][12] ([i915#6621]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-rkl-guc/igt@i915_pm_rps@basic-api.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/fi-rkl-guc/igt@i915_pm_rps@basic-api.html
    - bat-dg1-6:          [SKIP][14] ([i915#6621]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg1-6/igt@i915_pm_rps@basic-api.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg1-6/igt@i915_pm_rps@basic-api.html
    - {bat-rplp-1}:       [SKIP][16] ([i915#6621]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-rplp-1/igt@i915_pm_rps@basic-api.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-rplp-1/igt@i915_pm_rps@basic-api.html
    - bat-dg1-5:          [SKIP][18] ([i915#6621]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg1-5/igt@i915_pm_rps@basic-api.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg1-5/igt@i915_pm_rps@basic-api.html
    - {bat-dg2-9}:        [SKIP][20] ([i915#6621]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg2-9/igt@i915_pm_rps@basic-api.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg2-9/igt@i915_pm_rps@basic-api.html
    - {bat-dg2-11}:       [SKIP][22] ([i915#6621]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg2-11/igt@i915_pm_rps@basic-api.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg2-11/igt@i915_pm_rps@basic-api.html
    - bat-adlp-4:         [SKIP][24] ([i915#6621]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-adlp-4/igt@i915_pm_rps@basic-api.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-adlp-4/igt@i915_pm_rps@basic-api.html
    - {bat-rpls-1}:       [SKIP][26] ([i915#6621]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-rpls-1/igt@i915_pm_rps@basic-api.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-rpls-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-jsl-1}:         [INCOMPLETE][28] ([i915#5134]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-jsl-1/igt@i915_selftest@live@hangcheck.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/fi-jsl-1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][30] ([i915#6298]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-elk-e7500:       [INCOMPLETE][32] ([i915#6598] / [i915#6601] / [i915#6648]) -> [INCOMPLETE][33] ([i915#6598] / [i915#6648])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#5134]: https://gitlab.freedesktop.org/drm/intel/issues/5134
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
  [i915#6601]: https://gitlab.freedesktop.org/drm/intel/issues/6601
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6642]: https://gitlab.freedesktop.org/drm/intel/issues/6642
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6648]: https://gitlab.freedesktop.org/drm/intel/issues/6648


Build changes
-------------

  * IGT: IGT_6636 -> IGTPW_7662
  * Linux: CI_DRM_12022 -> Patchwork_107477v2

  CI-20190529: 20190529
  CI_DRM_12022: 7d700aafd2532afd10b5bd0d1fd76eb3a0d6610a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_7662: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7662/index.html
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107477v2: 7d700aafd2532afd10b5bd0d1fd76eb3a0d6610a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

82fc4957e8a4 HAX: drm/i915: force INTEL_MEI_GSC and INTEL_MEI_PXP on for CI
f6dd77c10be3 drm/i915/huc: define gsc-compatible HuC fw for DG2
e9a3025daf70 drm/i915/huc: better define HuC status getparam possible return values.
8aa0c22ab89c drm/i915/huc: stall media submission until HuC is loaded
03c7c28167ae drm/i915/huc: track delayed HuC load with a fence
6667eb6e07e3 drm/i915/dg2: setup HuC loading via GSC
24098a0e068b drm/i915/pxp: add huc authentication and loading command
70fa06a6e601 drm/i915/pxp: implement function for sending tee stream command
2aa8e0573314 drm/i915/pxp: load the pxp module when we have a gsc-loaded huc
dee43d9bc578 mei: pxp: support matching with a gfx discrete card
48106de9b86f mei: pxp: add command streamer API to the PXP driver
6d86db89168c mei: bus: extend bus API to support command streamer API
340bf632dafc mei: bus: enable sending gsc commands
946c7de0a387 mei: add support to GSC extended header
2076a2602383 HAX: mei: GSC support for XeHP SDV and DG2 platform

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/index.html

--===============3209890427816655294==
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
<tr><td><b>Series:</b></td><td>drm/i915: HuC loading for DG2 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107477/">https://patchwork.freedesktop.org/series/107477/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12022 -&gt; Patchwork_107477v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Additional (1): bat-dg2-8 <br />
  Missing    (2): bat-dg2-10 fi-rkl-11600 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_107477v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg2-8/igt@gem_huc_copy@huc-copy.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg2-8/igt@i915_module_load@load.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107477v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg2-9/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3595">i915#3595</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg2-9/igt@gem_huc_copy@huc-copy.html">PASS</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg2-11/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3595">i915#3595</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg2-11/igt@gem_huc_copy@huc-copy.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-rkl-guc/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/fi-rkl-guc/igt@i915_pm_rps@basic-api.html">PASS</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg1-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg1-6/igt@i915_pm_rps@basic-api.html">PASS</a></p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-rplp-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-rplp-1/igt@i915_pm_rps@basic-api.html">PASS</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg1-5/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg1-5/igt@i915_pm_rps@basic-api.html">PASS</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg2-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg2-9/igt@i915_pm_rps@basic-api.html">PASS</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg2-11/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-dg2-11/igt@i915_pm_rps@basic-api.html">PASS</a></p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-adlp-4/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-adlp-4/igt@i915_pm_rps@basic-api.html">PASS</a></p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-rpls-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/bat-rpls-1/igt@i915_pm_rps@basic-api.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5134">i915#5134</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6601">i915#6601</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6648">i915#6648</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v2/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6648">i915#6648</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6636 -&gt; IGTPW_7662</li>
<li>Linux: CI_DRM_12022 -&gt; Patchwork_107477v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12022: 7d700aafd2532afd10b5bd0d1fd76eb3a0d6610a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_7662: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7662/index.html<br />
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107477v2: 7d700aafd2532afd10b5bd0d1fd76eb3a0d6610a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>82fc4957e8a4 HAX: drm/i915: force INTEL_MEI_GSC and INTEL_MEI_PXP on for CI<br />
f6dd77c10be3 drm/i915/huc: define gsc-compatible HuC fw for DG2<br />
e9a3025daf70 drm/i915/huc: better define HuC status getparam possible return values.<br />
8aa0c22ab89c drm/i915/huc: stall media submission until HuC is loaded<br />
03c7c28167ae drm/i915/huc: track delayed HuC load with a fence<br />
6667eb6e07e3 drm/i915/dg2: setup HuC loading via GSC<br />
24098a0e068b drm/i915/pxp: add huc authentication and loading command<br />
70fa06a6e601 drm/i915/pxp: implement function for sending tee stream command<br />
2aa8e0573314 drm/i915/pxp: load the pxp module when we have a gsc-loaded huc<br />
dee43d9bc578 mei: pxp: support matching with a gfx discrete card<br />
48106de9b86f mei: pxp: add command streamer API to the PXP driver<br />
6d86db89168c mei: bus: extend bus API to support command streamer API<br />
340bf632dafc mei: bus: enable sending gsc commands<br />
946c7de0a387 mei: add support to GSC extended header<br />
2076a2602383 HAX: mei: GSC support for XeHP SDV and DG2 platform</p>

</body>
</html>

--===============3209890427816655294==--
