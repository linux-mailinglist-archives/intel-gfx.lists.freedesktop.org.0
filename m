Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A45959C054
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 15:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B56E714BEBA;
	Mon, 22 Aug 2022 13:17:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 20C4314A016;
 Mon, 22 Aug 2022 13:17:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18137A66C9;
 Mon, 22 Aug 2022 13:17:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7022522275058285138=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Mon, 22 Aug 2022 13:17:44 -0000
Message-ID: <166117426409.28448.15232172212656068744@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220822105426.3521960-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20220822105426.3521960-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSGFu?=
 =?utf-8?q?dle_BPC_for_HDMI2=2E1_PCON_without_DSC1=2E2_sink_and_other_fixe?=
 =?utf-8?q?s?=
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

--===============7022522275058285138==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Handle BPC for HDMI2.1 PCON without DSC1.2 sink and other fixes
URL   : https://patchwork.freedesktop.org/series/107550/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12009 -> Patchwork_107550v1
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_107550v1 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107550v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/index.html

Participating hosts (34 -> 36)
------------------------------

  Additional (3): fi-kbl-soraka bat-dg2-8 fi-hsw-4770 
  Missing    (1): bat-dg2-10 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107550v1:

### IGT changes ###

#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-kbl-7567u:       [INCOMPLETE][1] ([i915#6598]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/fi-kbl-7567u/igt@i915_suspend@basic-s3-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-kbl-7567u/igt@i915_suspend@basic-s3-without-i915.html
    - fi-hsw-g3258:       [INCOMPLETE][3] ([i915#4817] / [i915#6598]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/fi-hsw-g3258/igt@i915_suspend@basic-s3-without-i915.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-hsw-g3258/igt@i915_suspend@basic-s3-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_107550v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_softpin@allocator-basic-reserve:
    - fi-hsw-4770:        NOTRUN -> [SKIP][5] ([fdo#109271]) +9 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#3012])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][7] ([i915#4785])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
    - bat-dg1-6:          [PASS][8] -> [DMESG-FAIL][9] ([i915#4494] / [i915#4957])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][10] ([i915#6598] / [i915#6601])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-hsw-4770:        NOTRUN -> [SKIP][11] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#1072]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  * igt@runner@aborted:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][13] ([i915#6219])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-kbl-soraka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][14] ([i915#2582]) -> [PASS][15] +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/bat-rpls-2/igt@fbdev@read.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/bat-rpls-2/igt@fbdev@read.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][16] ([i915#2867]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cfl-8109u:       [DMESG-FAIL][18] ([i915#5334]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - {bat-rpls-1}:       [INCOMPLETE][20] ([i915#6380]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/bat-rpls-1/igt@i915_selftest@live@requests.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/bat-rpls-1/igt@i915_selftest@live@requests.html
    - fi-pnv-d510:        [DMESG-FAIL][22] ([i915#4528]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@kms_frontbuffer_tracking@basic:
    - {bat-rpls-2}:       [SKIP][24] ([i915#1849]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_vgem@basic-fence-flip:
    - {bat-rpls-2}:       [SKIP][26] ([fdo#109295] / [i915#1845] / [i915#3708]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5153]: https://gitlab.freedesktop.org/drm/intel/issues/5153
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5950]: https://gitlab.freedesktop.org/drm/intel/issues/5950
  [i915#6219]: https://gitlab.freedesktop.org/drm/intel/issues/6219
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6380]: https://gitlab.freedesktop.org/drm/intel/issues/6380
  [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
  [i915#6601]: https://gitlab.freedesktop.org/drm/intel/issues/6601
  [i915#6642]: https://gitlab.freedesktop.org/drm/intel/issues/6642
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645


Build changes
-------------

  * Linux: CI_DRM_12009 -> Patchwork_107550v1

  CI-20190529: 20190529
  CI_DRM_12009: bd2720860fed88141880c48f4dccce77cc7f7591 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6633: 40ec79634da4dc7e94309fc9c6043aff3fafc801 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107550v1: bd2720860fed88141880c48f4dccce77cc7f7591 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7732ce753cfe drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP
0d6819604d2e drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC
cdfdc886b8fa drm/i915/dp: Fix DFP RGB->YCBCR conversion
770ee03f5d0c drm/i915/dp: Reset frl trained flag before restarting FRL training
43bc53a410d5 drm/i915/dp: Add helper to check DSC1.2 for HDMI2.1 DFP

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/index.html

--===============7022522275058285138==
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
<tr><td><b>Series:</b></td><td>Handle BPC for HDMI2.1 PCON without DSC1.2 sink and other fixes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107550/">https://patchwork.freedesktop.org/series/107550/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12009 -&gt; Patchwork_107550v1</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_107550v1 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_107550v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/index.html</p>
<h2>Participating hosts (34 -&gt; 36)</h2>
<p>Additional (3): fi-kbl-soraka bat-dg2-8 fi-hsw-4770 <br />
  Missing    (1): bat-dg2-10 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_107550v1:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/fi-kbl-7567u/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-kbl-7567u/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/fi-hsw-g3258/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-hsw-g3258/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107550v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6601">i915#6601</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/bat-rpls-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6380">i915#6380</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12009/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v1/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12009 -&gt; Patchwork_107550v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12009: bd2720860fed88141880c48f4dccce77cc7f7591 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6633: 40ec79634da4dc7e94309fc9c6043aff3fafc801 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107550v1: bd2720860fed88141880c48f4dccce77cc7f7591 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7732ce753cfe drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP<br />
0d6819604d2e drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC<br />
cdfdc886b8fa drm/i915/dp: Fix DFP RGB-&gt;YCBCR conversion<br />
770ee03f5d0c drm/i915/dp: Reset frl trained flag before restarting FRL training<br />
43bc53a410d5 drm/i915/dp: Add helper to check DSC1.2 for HDMI2.1 DFP</p>

</body>
</html>

--===============7022522275058285138==--
