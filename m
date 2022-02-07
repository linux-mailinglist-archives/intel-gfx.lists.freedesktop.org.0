Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D27A94AC443
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 16:47:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E24EF10E2D3;
	Mon,  7 Feb 2022 15:47:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8ED9210E2D3;
 Mon,  7 Feb 2022 15:47:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8B4AEA47EA;
 Mon,  7 Feb 2022 15:47:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7936984156426594972=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 07 Feb 2022 15:47:42 -0000
Message-ID: <164424886253.23831.8280385554184115463@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220207132700.481-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220207132700.481-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i195=3A_Fix_dbuf_slice_config_l?=
 =?utf-8?q?ookup?=
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

--===============7936984156426594972==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i195: Fix dbuf slice config lookup
URL   : https://patchwork.freedesktop.org/series/99764/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11196 -> Patchwork_22188
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/index.html

Participating hosts (46 -> 44)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (3): fi-bsw-cyan shard-tglu fi-adl-ddr4 

Known issues
------------

  Here are the changes found in Patchwork_22188 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-hsw-4770:        NOTRUN -> [SKIP][1] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_huc_copy@huc-copy:
    - fi-pnv-d510:        NOTRUN -> [SKIP][2] ([fdo#109271]) +57 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html

  * igt@runner@aborted:
    - fi-skl-6600u:       NOTRUN -> [FAIL][3] ([i915#4312])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/fi-skl-6600u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][4] ([i915#3303]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11196/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_flip@basic-flip-vs-dpms@d-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][6] ([i915#3576]) -> [PASS][7] +7 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11196/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - {bat-adlp-6}:       [DMESG-FAIL][8] ([i915#3576]) -> [PASS][9] +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11196/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  
#### Warnings ####

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       [INCOMPLETE][10] ([i915#4838]) -> [FAIL][11] ([i915#4547])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11196/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4838]: https://gitlab.freedesktop.org/drm/intel/issues/4838
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898


Build changes
-------------

  * Linux: CI_DRM_11196 -> Patchwork_22188

  CI-20190529: 20190529
  CI_DRM_11196: c5ed05caee3b679d2d7c2b2c97925847e5bb49f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6339: 9cd99d763440ae75d9981ce4e361d3deb5edb4e4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22188: e9ba68c4b4fdb47bf573e9d24a91ddeb7df665cd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e9ba68c4b4fd drm/i915: Fix mbus join config lookup
19b0a3fa8753 drm/i195: Fix dbuf slice config lookup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/index.html

--===============7936984156426594972==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i195: Fix dbuf slice config lookup</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99764/">https://patchwork.freedesktop.org/series/99764/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11196 -&gt; Patchwork_22188</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/index.html</p>
<h2>Participating hosts (46 -&gt; 44)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (3): fi-bsw-cyan shard-tglu fi-adl-ddr4 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22188 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11196/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11196/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11196/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@primary_page_flip:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11196/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4838">i915#4838</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22188/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11196 -&gt; Patchwork_22188</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11196: c5ed05caee3b679d2d7c2b2c97925847e5bb49f4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6339: 9cd99d763440ae75d9981ce4e361d3deb5edb4e4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22188: e9ba68c4b4fdb47bf573e9d24a91ddeb7df665cd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e9ba68c4b4fd drm/i915: Fix mbus join config lookup<br />
19b0a3fa8753 drm/i195: Fix dbuf slice config lookup</p>

</body>
</html>

--===============7936984156426594972==--
