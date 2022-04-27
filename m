Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46128510E02
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 03:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 950A710E13E;
	Wed, 27 Apr 2022 01:34:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A8E010E13E;
 Wed, 27 Apr 2022 01:34:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 88310AA0EA;
 Wed, 27 Apr 2022 01:34:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5720241598339722591=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Wed, 27 Apr 2022 01:34:53 -0000
Message-ID: <165102329355.24236.16157592398420076236@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220427003515.3944267-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20220427003515.3944267-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pmu=3A_Use_existing_uncore_helper_to_read_gpm=5Ftimestamp?=
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

--===============5720241598339722591==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pmu: Use existing uncore helper to read gpm_timestamp
URL   : https://patchwork.freedesktop.org/series/103189/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11550 -> Patchwork_103189v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/index.html

Participating hosts (43 -> 44)
------------------------------

  Additional (3): fi-kbl-x1275 bat-adlm-1 bat-dg1-6 
  Missing    (2): fi-hsw-4770 fi-bsw-cyan 

Known issues
------------

  Here are the changes found in Patchwork_103189v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-dg1-6:          NOTRUN -> [INCOMPLETE][1] ([i915#5827])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/bat-dg1-6/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [PASS][2] -> [INCOMPLETE][3] ([i915#146])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [PASS][6] -> [DMESG-WARN][7] ([i915#1982])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-kbl-soraka/igt@i915_module_load@reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [PASS][8] -> [INCOMPLETE][9] ([i915#4983])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-1115g4:      [PASS][10] -> [DMESG-FAIL][11] ([i915#3987])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#533])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_page_flip:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][14] ([fdo#109271]) +12 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-kbl-x1275/igt@kms_psr@primary_page_flip.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cfl-guc:         [DMESG-FAIL][15] ([i915#5334]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][17] ([i915#3921]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - {bat-rpls-1}:       [DMESG-WARN][19] ([i915#5278]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-rpls-1/igt@i915_selftest@live@hugepages.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/bat-rpls-1/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-1}:       [DMESG-FAIL][21] ([i915#4983]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-rpls-1/igt@i915_selftest@live@reset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  
#### Warnings ####

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-kbl-7567u:       [SKIP][23] ([fdo#109271] / [i915#5341]) -> [SKIP][24] ([fdo#109271])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-pnv-d510:        [SKIP][25] ([fdo#109271] / [i915#5341]) -> [SKIP][26] ([fdo#109271])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-snb-2520m:       [SKIP][27] ([fdo#109271] / [i915#5341]) -> [SKIP][28] ([fdo#109271])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-bsw-kefka:       [SKIP][29] ([fdo#109271] / [i915#5341]) -> [SKIP][30] ([fdo#109271])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bsw-kefka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-bsw-kefka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-kbl-8809g:       [SKIP][31] ([fdo#109271] / [i915#5341]) -> [SKIP][32] ([fdo#109271])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-bsw-nick:        [SKIP][33] ([fdo#109271] / [i915#5341]) -> [SKIP][34] ([fdo#109271])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-bwr-2160:        [SKIP][35] ([fdo#109271] / [i915#5341]) -> [SKIP][36] ([fdo#109271])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-snb-2600:        [SKIP][37] ([fdo#109271] / [i915#5341]) -> [SKIP][38] ([fdo#109271])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-elk-e7500:       [SKIP][39] ([fdo#109271] / [i915#5341]) -> [SKIP][40] ([fdo#109271])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-blb-e6850:       [SKIP][41] ([fdo#109271] / [i915#5341]) -> [SKIP][42] ([fdo#109271])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-ilk-650:         [SKIP][43] ([fdo#109271] / [i915#5341]) -> [SKIP][44] ([fdo#109271])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5087]: https://gitlab.freedesktop.org/drm/intel/issues/5087
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#5329]: https://gitlab.freedesktop.org/drm/intel/issues/5329
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5414]: https://gitlab.freedesktop.org/drm/intel/issues/5414
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#5827]: https://gitlab.freedesktop.org/drm/intel/issues/5827
  [i915#5829]: https://gitlab.freedesktop.org/drm/intel/issues/5829


Build changes
-------------

  * Linux: CI_DRM_11550 -> Patchwork_103189v1

  CI-20190529: 20190529
  CI_DRM_11550: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6451: f055bd83bd831a938d639718c2359516224f15f9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103189v1: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f59d285dfe96 drm/i915/pmu: Use existing uncore helper to read gpm_timestamp

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/index.html

--===============5720241598339722591==
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
<tr><td><b>Series:</b></td><td>drm/i915/pmu: Use existing uncore helper to read gpm_timestamp</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103189/">https://patchwork.freedesktop.org/series/103189/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11550 -&gt; Patchwork_103189v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/index.html</p>
<h2>Participating hosts (43 -&gt; 44)</h2>
<p>Additional (3): fi-kbl-x1275 bat-adlm-1 bat-dg1-6 <br />
  Missing    (2): fi-hsw-4770 fi-bsw-cyan </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103189v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/bat-dg1-6/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5827">i915#5827</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3987">i915#3987</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-kbl-x1275/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +12 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-rpls-1/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5278">i915#5278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/bat-rpls-1/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-rpls-1/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bsw-kefka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-bsw-kefka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103189v1/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11550 -&gt; Patchwork_103189v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11550: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6451: f055bd83bd831a938d639718c2359516224f15f9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103189v1: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f59d285dfe96 drm/i915/pmu: Use existing uncore helper to read gpm_timestamp</p>

</body>
</html>

--===============5720241598339722591==--
