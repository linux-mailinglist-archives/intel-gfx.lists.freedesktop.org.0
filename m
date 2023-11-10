Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5CB7E826B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 20:26:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2586E10E208;
	Fri, 10 Nov 2023 19:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A68A10E208;
 Fri, 10 Nov 2023 19:26:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 93CF3A7DFF;
 Fri, 10 Nov 2023 19:26:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5869297300041569159=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Fri, 10 Nov 2023 19:26:18 -0000
Message-ID: <169964437859.31677.11453058518376663630@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231110101020.4067342-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20231110101020.4067342-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_DSC_fractional_bpp_support_=28rev10=29?=
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

--===============5869297300041569159==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add DSC fractional bpp support (rev10)
URL   : https://patchwork.freedesktop.org/series/111391/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13863 -> Patchwork_111391v10
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/index.html

Participating hosts (33 -> 34)
------------------------------

  Additional (2): fi-kbl-soraka fi-hsw-4770 
  Missing    (1): bat-atsm-1 

Known issues
------------

  Here are the changes found in Patchwork_111391v10 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - bat-adlp-11:        [PASS][1] -> [DMESG-WARN][2] ([i915#7507]) +28 other tests dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-adlp-11/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@debugfs_test@read_all_entries.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-adlp-11:        NOTRUN -> [SKIP][5] ([i915#4613]) +3 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adlp-11:        NOTRUN -> [DMESG-WARN][6] ([i915#7507]) +3 other tests dmesg-warn
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@i915_pm_rpm@module-reload.html

  * igt@i915_pm_rps@basic-api:
    - bat-adlp-11:        NOTRUN -> [SKIP][7] ([i915#6621])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][8] ([i915#1886])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@mman:
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][9] ([i915#9527])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/fi-hsw-4770/igt@i915_selftest@live@mman.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#5190])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][11] ([fdo#109271]) +9 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-adlp-11:        [PASS][12] -> [DMESG-FAIL][13] ([i915#7507]) +22 other tests dmesg-fail
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:
    - fi-hsw-4770:        NOTRUN -> [SKIP][14] ([fdo#109271]) +12 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][15] ([i915#1845] / [i915#9197]) +3 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-5:
    - bat-adlp-11:        NOTRUN -> [DMESG-FAIL][16] ([i915#7507]) +4 other tests dmesg-fail
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-5.html

  * igt@kms_psr@primary_page_flip:
    - bat-adlp-11:        NOTRUN -> [SKIP][17] ([i915#1072]) +3 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@kms_psr@primary_page_flip.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-jsl-3:          [PASS][18] -> [SKIP][19] ([i915#9648]) +3 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-jsl-3/igt@kms_psr@sprite_plane_onoff.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-jsl-3/igt@kms_psr@sprite_plane_onoff.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#1072]) +3 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adlp-11:        NOTRUN -> [SKIP][21] ([i915#3555])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-adlp-11:        NOTRUN -> [SKIP][22] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@prime_vgem@basic-fence-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7507]: https://gitlab.freedesktop.org/drm/intel/issues/7507
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197
  [i915#9527]: https://gitlab.freedesktop.org/drm/intel/issues/9527
  [i915#9648]: https://gitlab.freedesktop.org/drm/intel/issues/9648


Build changes
-------------

  * Linux: CI_DRM_13863 -> Patchwork_111391v10

  CI-20190529: 20190529
  CI_DRM_13863: ba137561f6c6c0e18d87d8ae9ec71f327d6f5168 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7582: 453b9df12fbc9fff561bdb4eb97992983e74c3d4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111391v10: ba137561f6c6c0e18d87d8ae9ec71f327d6f5168 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4571f78e0829 drm/i915/dp_mst: Add support for forcing dsc fractional bpp via debugfs
8c27ee0f67e2 drm/i916/dp_mst: Iterate over the DSC bpps as per DSC precision support
747bf799b061 drm/i915/dp_mst: Use precision of 1/16 for computing bpp
178ce0b254cc drm/i915/dsc: Allow DSC only with fractional bpp when forced from debugfs
92a5d26ddaef drm/i915/dsc: Add debugfs entry to validate DSC fractional bpp
5257e8160960 drm/i915/dp: Iterate over output bpp with fractional step size
abe31e3de7fe drm/i915/dsc/mtl: Add support for fractional bpp
438305b1027f drm/i915/audio: Consider fractional vdsc bpp while computing tu_data
fa25c9aa7568 drm/i915/display: Consider fractional vdsc bpp while computing m_n values
72a1ff216dc5 drm/i915/display: Store compressed bpp in U6.4 format
0551d123ae74 drm/display/dp: Add helper function to get DSC bpp precision

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/index.html

--===============5869297300041569159==
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
<tr><td><b>Series:</b></td><td>Add DSC fractional bpp support (rev10)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111391/">https://patchwork.freedesktop.org/series/111391/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13863 -&gt; Patchwork_111391v10</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/index.html</p>
<h2>Participating hosts (33 -&gt; 34)</h2>
<p>Additional (2): fi-kbl-soraka fi-hsw-4770 <br />
  Missing    (1): bat-atsm-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111391v10 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-adlp-11/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7507">i915#7507</a>) +28 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7507">i915#7507</a>) +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/fi-hsw-4770/igt@i915_selftest@live@mman.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9527">i915#9527</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7507">i915#7507</a>) +22 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-5:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-5.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7507">i915#7507</a>) +4 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-jsl-3/igt@kms_psr@sprite_plane_onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-jsl-3/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9648">i915#9648</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v10/bat-adlp-11/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13863 -&gt; Patchwork_111391v10</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13863: ba137561f6c6c0e18d87d8ae9ec71f327d6f5168 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7582: 453b9df12fbc9fff561bdb4eb97992983e74c3d4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111391v10: ba137561f6c6c0e18d87d8ae9ec71f327d6f5168 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4571f78e0829 drm/i915/dp_mst: Add support for forcing dsc fractional bpp via debugfs<br />
8c27ee0f67e2 drm/i916/dp_mst: Iterate over the DSC bpps as per DSC precision support<br />
747bf799b061 drm/i915/dp_mst: Use precision of 1/16 for computing bpp<br />
178ce0b254cc drm/i915/dsc: Allow DSC only with fractional bpp when forced from debugfs<br />
92a5d26ddaef drm/i915/dsc: Add debugfs entry to validate DSC fractional bpp<br />
5257e8160960 drm/i915/dp: Iterate over output bpp with fractional step size<br />
abe31e3de7fe drm/i915/dsc/mtl: Add support for fractional bpp<br />
438305b1027f drm/i915/audio: Consider fractional vdsc bpp while computing tu_data<br />
fa25c9aa7568 drm/i915/display: Consider fractional vdsc bpp while computing m_n values<br />
72a1ff216dc5 drm/i915/display: Store compressed bpp in U6.4 format<br />
0551d123ae74 drm/display/dp: Add helper function to get DSC bpp precision</p>

</body>
</html>

--===============5869297300041569159==--
