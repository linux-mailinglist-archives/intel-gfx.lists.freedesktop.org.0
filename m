Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9508D583AAD
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 10:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 211F796809;
	Thu, 28 Jul 2022 08:52:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B6D2C91767;
 Thu, 28 Jul 2022 08:52:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AEA89A7DFC;
 Thu, 28 Jul 2022 08:52:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4606255038658287287=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 28 Jul 2022 08:52:22 -0000
Message-ID: <165899834268.21234.3235603755503138704@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220727164523.1621361-1-imre.deak@intel.com>
In-Reply-To: <20220727164523.1621361-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/d12+=3A_Disable_DMC_h?=
 =?utf-8?q?andlers_during_loading/disabling_the_firmware_=28rev3=29?=
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

--===============4606255038658287287==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915/d12+: Disable DMC handlers during loading/disabling the firmware (rev3)
URL   : https://patchwork.freedesktop.org/series/106767/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11946 -> Patchwork_106767v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/index.html

Participating hosts (38 -> 36)
------------------------------

  Additional (2): fi-hsw-4770 bat-jsl-1 
  Missing    (4): bat-dg2-8 bat-dg2-9 fi-bdw-samus bat-dg1-5 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_106767v3:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@migrate:
    - {bat-rpls-1}:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/bat-rpls-1/igt@i915_selftest@live@migrate.html

  
Known issues
------------

  Here are the changes found in Patchwork_106767v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#3012])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bdw-gvtdvm:      [PASS][3] -> [DMESG-FAIL][4] ([i915#6217])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-bdw-gvtdvm/igt@i915_selftest@live@late_gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-bdw-gvtdvm/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][5] -> [DMESG-FAIL][6] ([i915#4528])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][7] ([fdo#109271]) +9 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-hsw-4770:        NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#1072]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  * igt@runner@aborted:
    - fi-blb-e6850:       NOTRUN -> [FAIL][10] ([fdo#109271] / [i915#2403] / [i915#4312])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-blb-e6850/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][11] ([i915#4312])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-bdw-gvtdvm/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-guc:         [FAIL][12] ([i915#6253]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-kbl-guc/igt@debugfs_test@read_all_entries.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-kbl-guc/igt@debugfs_test@read_all_entries.html

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][14] ([i915#2582]) -> [PASS][15] +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@fbdev@read.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/bat-rpls-2/igt@fbdev@read.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-adlm-1}:       [DMESG-WARN][16] ([i915#2867]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@requests:
    - {bat-rpls-1}:       [INCOMPLETE][18] ([i915#6380]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-1/igt@i915_selftest@live@requests.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@kms_frontbuffer_tracking@basic:
    - {bat-rpls-2}:       [SKIP][20] ([i915#1849]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_vgem@basic-fence-flip:
    - {bat-rpls-2}:       [SKIP][22] ([fdo#109295] / [i915#1845] / [i915#3708]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3003]: https://gitlab.freedesktop.org/drm/intel/issues/3003
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#5950]: https://gitlab.freedesktop.org/drm/intel/issues/5950
  [i915#6106]: https://gitlab.freedesktop.org/drm/intel/issues/6106
  [i915#6217]: https://gitlab.freedesktop.org/drm/intel/issues/6217
  [i915#6253]: https://gitlab.freedesktop.org/drm/intel/issues/6253
  [i915#6380]: https://gitlab.freedesktop.org/drm/intel/issues/6380


Build changes
-------------

  * Linux: CI_DRM_11946 -> Patchwork_106767v3

  CI-20190529: 20190529
  CI_DRM_11946: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6598: 97e103419021d0863db527e3f2cf39ccdd132db5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106767v3: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c4269f779f65 drm/i915/d13: Add Wa_16015201720 disabling clock gating for PIPEDMC-A/B
4453d2fde852 drm/i915/d12+: Disable DMC handlers during loading/disabling the firmware

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/index.html

--===============4606255038658287287==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915/d12+: Disable DMC handlers during loading/disabling the firmware (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106767/">https://patchwork.freedesktop.org/series/106767/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11946 -&gt; Patchwork_106767v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Additional (2): fi-hsw-4770 bat-jsl-1 <br />
  Missing    (4): bat-dg2-8 bat-dg2-9 fi-bdw-samus bat-dg1-5 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_106767v3:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>{bat-rpls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/bat-rpls-1/igt@i915_selftest@live@migrate.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106767v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-bdw-gvtdvm/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-bdw-gvtdvm/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6217">i915#6217</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-kbl-guc/igt@debugfs_test@read_all_entries.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6253">i915#6253</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/fi-kbl-guc/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6380">i915#6380</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11946 -&gt; Patchwork_106767v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11946: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6598: 97e103419021d0863db527e3f2cf39ccdd132db5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106767v3: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c4269f779f65 drm/i915/d13: Add Wa_16015201720 disabling clock gating for PIPEDMC-A/B<br />
4453d2fde852 drm/i915/d12+: Disable DMC handlers during loading/disabling the firmware</p>

</body>
</html>

--===============4606255038658287287==--
