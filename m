Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F8A567236
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 17:13:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A421E8B387;
	Tue,  5 Jul 2022 15:13:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1AAA88B373;
 Tue,  5 Jul 2022 15:13:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13B55A73C7;
 Tue,  5 Jul 2022 15:13:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2949625530692625621=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Tue, 05 Jul 2022 15:13:19 -0000
Message-ID: <165703399904.2013.471993246674013238@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220705122455.3866745-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20220705122455.3866745-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRml4?=
 =?utf-8?q?es_integer_overflow_or_integer_truncation_issues_in_page_lookup?=
 =?utf-8?q?s=2C_ttm_place_configuration_and_scatterlist_creation_=28rev3?=
 =?utf-8?q?=29?=
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

--===============2949625530692625621==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fixes integer overflow or integer truncation issues in page lookups, ttm place configuration and scatterlist creation (rev3)
URL   : https://patchwork.freedesktop.org/series/104704/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11849 -> Patchwork_104704v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/index.html

Participating hosts (43 -> 35)
------------------------------

  Additional (2): fi-kbl-x1275 fi-bxt-dsi 
  Missing    (10): fi-bdw-5557u fi-tgl-u2 bat-dg1-5 bat-dg2-8 bat-dg2-9 fi-apl-guc bat-adlp-4 bat-adln-1 bat-jsl-3 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_104704v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#4613]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html
    - fi-bxt-dsi:         NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#4613]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-bxt-dsi/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_tiled_blits@basic:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][5] ([fdo#109271]) +12 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-bxt-dsi/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [PASS][6] -> [INCOMPLETE][7] ([i915#4983])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][8] -> [INCOMPLETE][9] ([i915#4785])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [PASS][10] -> [INCOMPLETE][11] ([i915#5982])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-snb-2600:        NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-snb-2600/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][13] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-kbl-x1275/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-bxt-dsi/igt@kms_chamelium@hdmi-edid-read.html

  * igt@prime_vgem@basic-userptr:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][15] ([fdo#109271]) +11 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][16] ([fdo#109271] / [i915#4312] / [i915#5594] / [i915#6246])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-hsw-4770/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cfl-8109u:       [DMESG-FAIL][17] ([i915#5334]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][19] ([i915#3921]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       [DMESG-WARN][21] ([i915#3576]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/bat-adlp-6/igt@kms_busy@basic@flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/bat-adlp-6/igt@kms_busy@basic@flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246


Build changes
-------------

  * Linux: CI_DRM_11849 -> Patchwork_104704v3

  CI-20190529: 20190529
  CI_DRM_11849: 66197f3ca0b462799e265b002dc5cf8dcec1c62d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6555: 1a3ffecd400b8f82c35745fa2e07992f6bdeede2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104704v3: 66197f3ca0b462799e265b002dc5cf8dcec1c62d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

911cb519dbe2 drm/i915: Remove truncation warning for large objects
81100ce8b42a drm/i915: Use error code as -E2BIG when the size of gem ttm object is too large
9424b3caef75 drm/i915: Check if the size is too big while creating shmem file
fd2a411180fd drm/i915: Check for integer truncation on the configuration of ttm place
3df0351edf5a drm/i915: Check for integer truncation on scatterlist creation
a180f4d31d1e drm/i915/gem: Typecheck page lookups
8575f0ebc7cc drm: Move and add a few utility macros into drm util header

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/index.html

--===============2949625530692625621==
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
<tr><td><b>Series:</b></td><td>Fixes integer overflow or integer truncation issues in page lookups, ttm place configuration and scatterlist creation (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104704/">https://patchwork.freedesktop.org/series/104704/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11849 -&gt; Patchwork_104704v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/index.html</p>
<h2>Participating hosts (43 -&gt; 35)</h2>
<p>Additional (2): fi-kbl-x1275 fi-bxt-dsi <br />
  Missing    (10): fi-bdw-5557u fi-tgl-u2 bat-dg1-5 bat-dg2-8 bat-dg2-9 fi-apl-guc bat-adlp-4 bat-adln-1 bat-jsl-3 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104704v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-bxt-dsi/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-bxt-dsi/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-snb-2600/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-kbl-x1275/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-bxt-dsi/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v3/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11849 -&gt; Patchwork_104704v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11849: 66197f3ca0b462799e265b002dc5cf8dcec1c62d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6555: 1a3ffecd400b8f82c35745fa2e07992f6bdeede2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104704v3: 66197f3ca0b462799e265b002dc5cf8dcec1c62d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>911cb519dbe2 drm/i915: Remove truncation warning for large objects<br />
81100ce8b42a drm/i915: Use error code as -E2BIG when the size of gem ttm object is too large<br />
9424b3caef75 drm/i915: Check if the size is too big while creating shmem file<br />
fd2a411180fd drm/i915: Check for integer truncation on the configuration of ttm place<br />
3df0351edf5a drm/i915: Check for integer truncation on scatterlist creation<br />
a180f4d31d1e drm/i915/gem: Typecheck page lookups<br />
8575f0ebc7cc drm: Move and add a few utility macros into drm util header</p>

</body>
</html>

--===============2949625530692625621==--
