Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A474C78014D
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 00:53:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F60E10E02D;
	Thu, 17 Aug 2023 22:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1EF2910E02D;
 Thu, 17 Aug 2023 22:53:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 12659AADD5;
 Thu, 17 Aug 2023 22:53:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1585531551733525321=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Thu, 17 Aug 2023 22:53:43 -0000
Message-ID: <169231282304.12434.7003361554276019327@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230817142459.89764-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230817142459.89764-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRFND?=
 =?utf-8?q?_misc_fixes_=28rev8=29?=
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

--===============1585531551733525321==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: DSC misc fixes (rev8)
URL   : https://patchwork.freedesktop.org/series/117662/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13533 -> Patchwork_117662v8
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/index.html

Participating hosts (38 -> 37)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_117662v8 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-rpls-2:         NOTRUN -> [SKIP][1] ([i915#1845])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_psr@primary_mmap_gtt:
    - bat-rplp-1:         NOTRUN -> [ABORT][2] ([i915#8442] / [i915#8469] / [i915#8668])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-rplp-1:         NOTRUN -> [SKIP][3] ([i915#1072])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@mman:
    - bat-rpls-2:         [TIMEOUT][4] ([i915#6794] / [i915#7392]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13533/bat-rpls-2/igt@i915_selftest@live@mman.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/bat-rpls-2/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-2:         [WARN][6] ([i915#8747]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13533/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-2:         [ABORT][8] ([i915#6687] / [i915#7978] / [i915#8668]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13533/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-adlp-11:        [DMESG-WARN][10] ([i915#4423]) -> [ABORT][11] ([i915#4423])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13533/bat-adlp-11/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/bat-adlp-11/igt@i915_module_load@load.html

  * igt@kms_psr@cursor_plane_move:
    - bat-rplp-1:         [ABORT][12] -> [SKIP][13] ([i915#1072])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13533/bat-rplp-1/igt@kms_psr@cursor_plane_move.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/bat-rplp-1/igt@kms_psr@cursor_plane_move.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8469]: https://gitlab.freedesktop.org/drm/intel/issues/8469
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8747]: https://gitlab.freedesktop.org/drm/intel/issues/8747


Build changes
-------------

  * Linux: CI_DRM_13533 -> Patchwork_117662v8

  CI-20190529: 20190529
  CI_DRM_13533: 49921a9fbaaf428bcfab14d5e4b7f1ce23d30633 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7443: 953448dbf2e63918a8eced9707f65fc0a19a9c85 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117662v8: 49921a9fbaaf428bcfab14d5e4b7f1ce23d30633 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9fe901e550d6 drm/i915/dp: Check if force_dsc_output_format is possible
5c704f9b3639 drm/i915/dp: Check src/sink compressed bpp limit for edp
a0fed3eb86f2 drm/i915/dp: Get optimal link config to have best compressed bpp
c0e113eb33c6 drm/i915/dp: Separate out function to get compressed bpp with joiner
7b7f4080684a drm/i915/dp: Add DSC BPC/BPP constraints while selecting pipe bpp with DSC
1fdaa3fd9aea drm/i915/dp: Separate out functions for edp/DP for computing DSC bpp
d4d5c8ed9f76 drm/i915/dp: Rename helper to get DSC max pipe_bpp
5c8efdb1a167 drm/i915/dp: Avoid left shift of DSC output bpp by 4
7163e4466d63 drm/i915/dp: Check min bpc DSC limits for dsc_force_bpc also
aa6b86ae0051 drm/i915/dp: Add functions to get min/max src input bpc with DSC
44ed2f15e21c drm/i915/dp: Avoid forcing DSC BPC for MST case
c253e6b0d5d1 drm/i915/dp: Remove extra logs for printing DSC info
42dab2b358ff drm/i915/intel_cdclk: Add vdsc with bigjoiner constraints on min_cdlck
81c456f5d97a drm/i915/dp: Update Bigjoiner interface bits for computing compressed bpp
e6a2232cef22 drm/i915/dp: Use consistent name for link bpp and compressed bpp
9be5f5f00756 drm/i915/dp_mst: Use output_format to get the final link bpp
71e8c843a460 drm/i915/dp: Move compressed bpp check with 420 format inside the helper
cf31deffbff7 drm/i915/dp: Consider output_format while computing dsc bpp

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/index.html

--===============1585531551733525321==
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
<tr><td><b>Series:</b></td><td>DSC misc fixes (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117662/">https://patchwork.freedesktop.org/series/117662/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13533 -&gt; Patchwork_117662v8</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117662v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8469">i915#8469</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13533/bat-rpls-2/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/bat-rpls-2/igt@i915_selftest@live@mman.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13533/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8747">i915#8747</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13533/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13533/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13533/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v8/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13533 -&gt; Patchwork_117662v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13533: 49921a9fbaaf428bcfab14d5e4b7f1ce23d30633 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7443: 953448dbf2e63918a8eced9707f65fc0a19a9c85 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117662v8: 49921a9fbaaf428bcfab14d5e4b7f1ce23d30633 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9fe901e550d6 drm/i915/dp: Check if force_dsc_output_format is possible<br />
5c704f9b3639 drm/i915/dp: Check src/sink compressed bpp limit for edp<br />
a0fed3eb86f2 drm/i915/dp: Get optimal link config to have best compressed bpp<br />
c0e113eb33c6 drm/i915/dp: Separate out function to get compressed bpp with joiner<br />
7b7f4080684a drm/i915/dp: Add DSC BPC/BPP constraints while selecting pipe bpp with DSC<br />
1fdaa3fd9aea drm/i915/dp: Separate out functions for edp/DP for computing DSC bpp<br />
d4d5c8ed9f76 drm/i915/dp: Rename helper to get DSC max pipe_bpp<br />
5c8efdb1a167 drm/i915/dp: Avoid left shift of DSC output bpp by 4<br />
7163e4466d63 drm/i915/dp: Check min bpc DSC limits for dsc_force_bpc also<br />
aa6b86ae0051 drm/i915/dp: Add functions to get min/max src input bpc with DSC<br />
44ed2f15e21c drm/i915/dp: Avoid forcing DSC BPC for MST case<br />
c253e6b0d5d1 drm/i915/dp: Remove extra logs for printing DSC info<br />
42dab2b358ff drm/i915/intel_cdclk: Add vdsc with bigjoiner constraints on min_cdlck<br />
81c456f5d97a drm/i915/dp: Update Bigjoiner interface bits for computing compressed bpp<br />
e6a2232cef22 drm/i915/dp: Use consistent name for link bpp and compressed bpp<br />
9be5f5f00756 drm/i915/dp_mst: Use output_format to get the final link bpp<br />
71e8c843a460 drm/i915/dp: Move compressed bpp check with 420 format inside the helper<br />
cf31deffbff7 drm/i915/dp: Consider output_format while computing dsc bpp</p>

</body>
</html>

--===============1585531551733525321==--
