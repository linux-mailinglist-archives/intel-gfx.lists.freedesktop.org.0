Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD8E60EBA1
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 00:35:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C65910E5B4;
	Wed, 26 Oct 2022 22:35:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CE7BA10E5AB;
 Wed, 26 Oct 2022 22:34:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C69FCA0169;
 Wed, 26 Oct 2022 22:34:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1901655476787921754=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@linux.intel.com>
Date: Wed, 26 Oct 2022 22:34:58 -0000
Message-ID: <166682369880.25382.550972598423744609@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221024202422.3924298-1-ashutosh.dixit@intel.com>
In-Reply-To: <20221024202422.3924298-1-ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_CAGF_and_RC6_changes_for_MTL_=28rev11=29?=
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

--===============1901655476787921754==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915: CAGF and RC6 changes for MTL (rev11)
URL   : https://patchwork.freedesktop.org/series/108156/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12288 -> Patchwork_108156v11
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_108156v11 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_108156v11, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/index.html

Participating hosts (41 -> 41)
------------------------------

  Additional (2): fi-kbl-soraka bat-atsm-1 
  Missing    (2): fi-ctg-p8600 fi-icl-u2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108156v11:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gtt:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-kbl-soraka/igt@i915_selftest@live@gtt.html

  
Known issues
------------

  Here are the changes found in Patchwork_108156v11 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271]) +9 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@engines@contexts:
    - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4] ([i915#7311])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/fi-bsw-nick/igt@gem_exec_parallel@engines@contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-bsw-nick/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#4613]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][7] ([i915#5334])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [PASS][8] -> [INCOMPLETE][9] ([i915#4983])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][10] ([i915#1886])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hugepages:
    - fi-cfl-8109u:       [PASS][11] -> [DMESG-FAIL][12] ([i915#7311])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/fi-cfl-8109u/igt@i915_selftest@live@hugepages.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-cfl-8109u/igt@i915_selftest@live@hugepages.html
    - fi-skl-guc:         [PASS][13] -> [DMESG-FAIL][14] ([i915#7311])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/fi-skl-guc/igt@i915_selftest@live@hugepages.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-skl-guc/igt@i915_selftest@live@hugepages.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       NOTRUN -> [INCOMPLETE][15] ([i915#4817])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-4770:        NOTRUN -> [SKIP][16] ([fdo#109271] / [fdo#111827])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][17] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@runner@aborted:
    - fi-cfl-8109u:       NOTRUN -> [FAIL][18] ([i915#4312])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-cfl-8109u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][19] ([i915#4312])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-skl-guc/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][20] ([i915#4312])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_huc_copy@huc-copy:
    - {bat-dg2-8}:        [FAIL][21] ([i915#7029]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/bat-dg2-8/igt@gem_huc_copy@huc-copy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/bat-dg2-8/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rpm@basic-rte:
    - {bat-rplp-1}:       [DMESG-WARN][23] ([i915#7077]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@gt_lrc:
    - {fi-tgl-dsi}:       [INCOMPLETE][25] ([i915#6856] / [i915#7125]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][27] ([i915#4785]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - fi-rkl-11600:       [DMESG-FAIL][29] ([i915#7311]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/fi-rkl-11600/igt@i915_selftest@live@hugepages.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-rkl-11600/igt@i915_selftest@live@hugepages.html
    - {fi-ehl-2}:         [DMESG-FAIL][31] ([i915#7311]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/fi-ehl-2/igt@i915_selftest@live@hugepages.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-ehl-2/igt@i915_selftest@live@hugepages.html
    - {bat-adlm-1}:       [DMESG-FAIL][33] ([i915#7311]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/bat-adlm-1/igt@i915_selftest@live@hugepages.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/bat-adlm-1/igt@i915_selftest@live@hugepages.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6856]: https://gitlab.freedesktop.org/drm/intel/issues/6856
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7030]: https://gitlab.freedesktop.org/drm/intel/issues/7030
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077
  [i915#7125]: https://gitlab.freedesktop.org/drm/intel/issues/7125
  [i915#7311]: https://gitlab.freedesktop.org/drm/intel/issues/7311


Build changes
-------------

  * Linux: CI_DRM_12288 -> Patchwork_108156v11

  CI-20190529: 20190529
  CI_DRM_12288: 61a92db3f6785121281a51f95960a3282d47117d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7025: f8b8e0713f87460a2c050ec8fe18fa487f98e228 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108156v11: 61a92db3f6785121281a51f95960a3282d47117d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4bcf0b00c0e3 drm/i915/mtl: C6 residency and C state type for MTL SAMedia
71ca40ed31ec drm/i915/gt: Use RC6 residency types as arguments to residency functions
a40fb583e653 drm/i915/mtl: Modify CAGF functions for MTL
2015f26e0a91 drm/i915: Use GEN12_RPSTAT register for GT freq
7af6ffffca3d drm/i915/rps: Prefer REG_FIELD_GET in intel_rps_get_cagf

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/index.html

--===============1901655476787921754==
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
<tr><td><b>Series:</b></td><td>i915: CAGF and RC6 changes for MTL (rev11)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108156/">https://patchwork.freedesktop.org/series/108156/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12288 -&gt; Patchwork_108156v11</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_108156v11 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_108156v11, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/index.html</p>
<h2>Participating hosts (41 -&gt; 41)</h2>
<p>Additional (2): fi-kbl-soraka bat-atsm-1 <br />
  Missing    (2): fi-ctg-p8600 fi-icl-u2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_108156v11:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gtt:<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-kbl-soraka/igt@i915_selftest@live@gtt.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108156v11 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/fi-bsw-nick/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-bsw-nick/igt@gem_exec_parallel@engines@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7311">i915#7311</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/fi-cfl-8109u/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-cfl-8109u/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7311">i915#7311</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/fi-skl-guc/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-skl-guc/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7311">i915#7311</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/bat-dg2-8/igt@gem_huc_copy@huc-copy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7029">i915#7029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/bat-dg2-8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7077">i915#7077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6856">i915#6856</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7125">i915#7125</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/fi-rkl-11600/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7311">i915#7311</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-rkl-11600/igt@i915_selftest@live@hugepages.html">PASS</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/fi-ehl-2/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7311">i915#7311</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/fi-ehl-2/igt@i915_selftest@live@hugepages.html">PASS</a></p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12288/bat-adlm-1/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7311">i915#7311</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v11/bat-adlm-1/igt@i915_selftest@live@hugepages.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12288 -&gt; Patchwork_108156v11</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12288: 61a92db3f6785121281a51f95960a3282d47117d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7025: f8b8e0713f87460a2c050ec8fe18fa487f98e228 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108156v11: 61a92db3f6785121281a51f95960a3282d47117d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4bcf0b00c0e3 drm/i915/mtl: C6 residency and C state type for MTL SAMedia<br />
71ca40ed31ec drm/i915/gt: Use RC6 residency types as arguments to residency functions<br />
a40fb583e653 drm/i915/mtl: Modify CAGF functions for MTL<br />
2015f26e0a91 drm/i915: Use GEN12_RPSTAT register for GT freq<br />
7af6ffffca3d drm/i915/rps: Prefer REG_FIELD_GET in intel_rps_get_cagf</p>

</body>
</html>

--===============1901655476787921754==--
