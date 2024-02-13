Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F141A852B20
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 09:28:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1997310E358;
	Tue, 13 Feb 2024 08:28:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A46BB10E358;
 Tue, 13 Feb 2024 08:28:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1708028710748612662=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Plane_Color_Pipeline_suppor?=
 =?utf-8?q?t_for_Intel_platforms?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Feb 2024 08:28:09 -0000
Message-ID: <170781288967.1201024.15435989141649089834@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240213064835.139464-1-uma.shankar@intel.com>
In-Reply-To: <20240213064835.139464-1-uma.shankar@intel.com>
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

--===============1708028710748612662==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Plane Color Pipeline support for Intel platforms
URL   : https://patchwork.freedesktop.org/series/129811/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14259 -> Patchwork_129811v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129811v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129811v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/index.html

Participating hosts (37 -> 37)
------------------------------

  Additional (2): bat-kbl-2 fi-bsw-n3050 
  Missing    (2): bat-atsm-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129811v1:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - bat-adln-1:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-adln-1/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-adln-1/igt@debugfs_test@read_all_entries.html
    - bat-mtlp-8:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-mtlp-8/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-mtlp-8/igt@debugfs_test@read_all_entries.html
    - bat-dg2-8:          [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-dg2-8/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-dg2-8/igt@debugfs_test@read_all_entries.html
    - bat-adlm-1:         [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-adlm-1/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-adlm-1/igt@debugfs_test@read_all_entries.html
    - fi-tgl-1115g4:      [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html
    - bat-mtlp-6:         [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-mtlp-6/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-mtlp-6/igt@debugfs_test@read_all_entries.html
    - bat-dg1-7:          [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-dg1-7/igt@debugfs_test@read_all_entries.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-dg1-7/igt@debugfs_test@read_all_entries.html
    - bat-adlp-9:         [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-adlp-9/igt@debugfs_test@read_all_entries.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-adlp-9/igt@debugfs_test@read_all_entries.html
    - bat-adlp-6:         [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-adlp-6/igt@debugfs_test@read_all_entries.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-adlp-6/igt@debugfs_test@read_all_entries.html
    - bat-rplp-1:         [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-rplp-1/igt@debugfs_test@read_all_entries.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-rplp-1/igt@debugfs_test@read_all_entries.html
    - fi-rkl-11600:       [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/fi-rkl-11600/igt@debugfs_test@read_all_entries.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/fi-rkl-11600/igt@debugfs_test@read_all_entries.html
    - bat-dg2-9:          [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-dg2-9/igt@debugfs_test@read_all_entries.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-dg2-9/igt@debugfs_test@read_all_entries.html
    - bat-dg2-11:         [PASS][25] -> [ABORT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-dg2-11/igt@debugfs_test@read_all_entries.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-dg2-11/igt@debugfs_test@read_all_entries.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - {bat-arls-2}:       [PASS][27] -> [ABORT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-arls-2/igt@debugfs_test@read_all_entries.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-arls-2/igt@debugfs_test@read_all_entries.html
    - {bat-arls-1}:       [PASS][29] -> [ABORT][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-arls-1/igt@debugfs_test@read_all_entries.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-arls-1/igt@debugfs_test@read_all_entries.html
    - {bat-dg2-14}:       [PASS][31] -> [ABORT][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-dg2-14/igt@debugfs_test@read_all_entries.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-dg2-14/igt@debugfs_test@read_all_entries.html

  
Known issues
------------

  Here are the changes found in Patchwork_129811v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#1849])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][34] ([fdo#109271]) +35 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][35] ([fdo#109271]) +15 other tests skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849


Build changes
-------------

  * Linux: CI_DRM_14259 -> Patchwork_129811v1

  CI-20190529: 20190529
  CI_DRM_14259: e370df7a4fb4125cb8eee1b00ff1592808ed9786 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7710: d87a5d85a60fba1283821d5212c3aece64cb36ba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129811v1: e370df7a4fb4125cb8eee1b00ff1592808ed9786 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

09bd0b77bbd7 drm/i915/color: Enable Plane Color Pipelines
017a6635e63a FIXME: force disable legacy plane color properties for TGL and beyond
0d31f207960c drm/i915/xelpd: Program Plane Post CSC Registers
d334578ae216 drm/i915/color: Program Pre-CSC registers
4baac93472a4 drm/i915: Add register definitions for Plane Post CSC
0278b84fcddd drm/i915/color: Add framework to program PRE/POST CSC LUT
4adf845ffb39 drm/i915: Add register definitions for Plane Degamma
e4e0ee51eb73 drm/i915/color: Add plane CTM callback for TGL and beyond
5b1e0ec4963a drm/i915/color: Add callbacks to set plane CTM
8bdc395f0722 drm/i915/color: Add framework to set colorop
84c0e602ec40 drm/i915/color: Add and attach COLORPIPELINE plane property
dc4540d37dec drm/i915: Define segmented Lut and add capabilities to colorop
8e30794ef70e drm/i915/color: Create a transfer function color pipeline
38931bf215bf drm/i915/color: Add helper to create intel colorop
56c614667088 drm/i915/color: Add helper to allocate intel colorop
ceccf2cc437e drm/i915: Add intel_color_op
915e9ad737a5 drm/i915: Add identifiers for intel color blocks
865ac81cf446 drm: Define helper for adding capability property for 1D LUT
15156b036a92 drm: Define helper to create color ops capability property
8735e9731b82 drm: Add Color ops capability property
3b9b4ac47724 drm: Add Color lut range attributes
02fa32164448 drm: Add 1D LUT color op
d1cc9fb15eb7 drm: Add Enhanced LUT precision structure
34744a006463 drm: Add support for 3x3 CTM
9dd4d733ccb9 drm: Fix error logging in set Color Pipeline
eafdf30a77ef drm: handle NULL next colorop in drm_colorop_set_next_property
dff6c0feb8bf drm: Add missing function declarations
3e7c4452d7f8 drm: color pipeline base work

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/index.html

--===============1708028710748612662==
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
<tr><td><b>Series:</b></td><td>Plane Color Pipeline support for Intel platforms</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129811/">https://patchwork.freedesktop.org/series/129811/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14259 -&gt; Patchwork_129811v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129811v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_129811v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/index.html</p>
<h2>Participating hosts (37 -&gt; 37)</h2>
<p>Additional (2): bat-kbl-2 fi-bsw-n3050 <br />
  Missing    (2): bat-atsm-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129811v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-adln-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-adln-1/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-mtlp-8/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-mtlp-8/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-dg2-8/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-dg2-8/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-adlm-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-adlm-1/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-mtlp-6/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-mtlp-6/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-dg1-7/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-dg1-7/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-adlp-9/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-adlp-9/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-adlp-6/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-adlp-6/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-rplp-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-rplp-1/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/fi-rkl-11600/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/fi-rkl-11600/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-dg2-9/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-dg2-9/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-dg2-11/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-dg2-11/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-arls-2/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-arls-2/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-arls-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-arls-1/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14259/bat-dg2-14/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-dg2-14/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129811v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +15 other tests skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14259 -&gt; Patchwork_129811v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14259: e370df7a4fb4125cb8eee1b00ff1592808ed9786 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7710: d87a5d85a60fba1283821d5212c3aece64cb36ba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129811v1: e370df7a4fb4125cb8eee1b00ff1592808ed9786 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>09bd0b77bbd7 drm/i915/color: Enable Plane Color Pipelines<br />
017a6635e63a FIXME: force disable legacy plane color properties for TGL and beyond<br />
0d31f207960c drm/i915/xelpd: Program Plane Post CSC Registers<br />
d334578ae216 drm/i915/color: Program Pre-CSC registers<br />
4baac93472a4 drm/i915: Add register definitions for Plane Post CSC<br />
0278b84fcddd drm/i915/color: Add framework to program PRE/POST CSC LUT<br />
4adf845ffb39 drm/i915: Add register definitions for Plane Degamma<br />
e4e0ee51eb73 drm/i915/color: Add plane CTM callback for TGL and beyond<br />
5b1e0ec4963a drm/i915/color: Add callbacks to set plane CTM<br />
8bdc395f0722 drm/i915/color: Add framework to set colorop<br />
84c0e602ec40 drm/i915/color: Add and attach COLORPIPELINE plane property<br />
dc4540d37dec drm/i915: Define segmented Lut and add capabilities to colorop<br />
8e30794ef70e drm/i915/color: Create a transfer function color pipeline<br />
38931bf215bf drm/i915/color: Add helper to create intel colorop<br />
56c614667088 drm/i915/color: Add helper to allocate intel colorop<br />
ceccf2cc437e drm/i915: Add intel_color_op<br />
915e9ad737a5 drm/i915: Add identifiers for intel color blocks<br />
865ac81cf446 drm: Define helper for adding capability property for 1D LUT<br />
15156b036a92 drm: Define helper to create color ops capability property<br />
8735e9731b82 drm: Add Color ops capability property<br />
3b9b4ac47724 drm: Add Color lut range attributes<br />
02fa32164448 drm: Add 1D LUT color op<br />
d1cc9fb15eb7 drm: Add Enhanced LUT precision structure<br />
34744a006463 drm: Add support for 3x3 CTM<br />
9dd4d733ccb9 drm: Fix error logging in set Color Pipeline<br />
eafdf30a77ef drm: handle NULL next colorop in drm_colorop_set_next_property<br />
dff6c0feb8bf drm: Add missing function declarations<br />
3e7c4452d7f8 drm: color pipeline base work</p>

</body>
</html>

--===============1708028710748612662==--
