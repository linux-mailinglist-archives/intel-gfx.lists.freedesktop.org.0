Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE310786C8D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 12:07:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F247410E4B9;
	Thu, 24 Aug 2023 10:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3D63E10E4B9;
 Thu, 24 Aug 2023 10:07:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 33D15AADDD;
 Thu, 24 Aug 2023 10:07:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4882072188383357232=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 24 Aug 2023 10:07:20 -0000
Message-ID: <169287164018.13341.12287305548147657115@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230824080517.693621-1-imre.deak@intel.com>
In-Reply-To: <20230824080517.693621-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_BW_management_on_shared_display_links_=28rev2?=
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

--===============4882072188383357232==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Improve BW management on shared display links (rev2)
URL   : https://patchwork.freedesktop.org/series/122589/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13559 -> Patchwork_122589v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/index.html

Participating hosts (39 -> 39)
------------------------------

  Additional (1): fi-tgl-1115g4 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_122589v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][1] ([i915#7456])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@debugfs_test@basic-hwmon.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][2] ([i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][3] ([i915#4613]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][4] ([i915#3546] / [i915#7561])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-tgl-1115g4:      NOTRUN -> [INCOMPLETE][5] ([i915#7443] / [i915#8102])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][6] ([i915#4103]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][7] ([fdo#109285])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][8] -> [ABORT][9] ([i915#8442] / [i915#8668])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13559/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  * igt@kms_psr@cursor_plane_move:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][10] ([fdo#110189]) +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@kms_psr@cursor_plane_move.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][11] ([i915#3555])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html

  
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#8102]: https://gitlab.freedesktop.org/drm/intel/issues/8102
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_13559 -> Patchwork_122589v2

  CI-20190529: 20190529
  CI_DRM_13559: 2e6e7e62e019d89689eb44307fcc07f2c59e9b01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7451: 5d48d1fb231f449fe2f80cda14ea7a1ecfda59fa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_122589v2: 2e6e7e62e019d89689eb44307fcc07f2c59e9b01 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e3478c50e968 drm/i915/dp_mst: Check BW limitations only after all streams are computed
700a29615b43 drm/i915/dp_mst: Improve BW sharing between MST streams
84e2b6789606 drm/i915/dp_mst: Allow DSC only for sink ports of the first branch device
208883f49eca drm/i915/dp_mst: Add missing DSC compression disabling
1429dea9970a drm/i915/dp_mst: Enable DSC decompression if any stream needs this
720aea68d0b8 drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled
b811e10ece42 drm/i915/dp_mst: Program the DSC PPS SDP for each stream
8cfd941097a8 drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
e2abf4c73d92 drm/i915/dp_mst: Fix PBN calculation with FEC overhead
ace2416aad2d drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations
9bafd9e9afe2 drm/dp_mst: Factor out a helper to check the atomic state of a topology manager
440743b441a5 drm/dp_mst: Add helper to determine if an MST port is downstream of another port
f72a472cce7f drm/dp_mst: Add a way to calculate PBN values with FEC overhead
624222638024 drm/dp_mst: Fix fractional bpp scaling in drm_dp_calc_pbn_mode()
97aecb8ea0f3 drm/i915/fdi: Improve FDI BW sharing between pipe B and C
176ff291481f drm/i915: Factor out a helper to check/compute all the CRTC states
4e02241b9a81 drm/i915: Add helper to modeset a set of pipes
bcfeef839b83 drm/i915/dp: Limit the output link bpp in DSC mode
6b6ff443f6e5 drm/i915/dp: Update the link bpp limits for DSC mode
0e4fa365aa01 drm/i915/dp: Skip computing a non-DSC link config if DSC is needed
cc61b1ccd329 drm/i915/dp: Track the pipe and link bpp limits separately
2f0b0efb6c70 drm/i915/dp: Factor out helpers to compute the link limits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/index.html

--===============4882072188383357232==
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
<tr><td><b>Series:</b></td><td>drm/i915: Improve BW management on shared display links (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122589/">https://patchwork.freedesktop.org/series/122589/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13559 -&gt; Patchwork_122589v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/index.html</p>
<h2>Participating hosts (39 -&gt; 39)</h2>
<p>Additional (1): fi-tgl-1115g4 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122589v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7443">i915#7443</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8102">i915#8102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13559/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v2/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13559 -&gt; Patchwork_122589v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13559: 2e6e7e62e019d89689eb44307fcc07f2c59e9b01 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7451: 5d48d1fb231f449fe2f80cda14ea7a1ecfda59fa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_122589v2: 2e6e7e62e019d89689eb44307fcc07f2c59e9b01 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e3478c50e968 drm/i915/dp_mst: Check BW limitations only after all streams are computed<br />
700a29615b43 drm/i915/dp_mst: Improve BW sharing between MST streams<br />
84e2b6789606 drm/i915/dp_mst: Allow DSC only for sink ports of the first branch device<br />
208883f49eca drm/i915/dp_mst: Add missing DSC compression disabling<br />
1429dea9970a drm/i915/dp_mst: Enable DSC decompression if any stream needs this<br />
720aea68d0b8 drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled<br />
b811e10ece42 drm/i915/dp_mst: Program the DSC PPS SDP for each stream<br />
8cfd941097a8 drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms<br />
e2abf4c73d92 drm/i915/dp_mst: Fix PBN calculation with FEC overhead<br />
ace2416aad2d drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations<br />
9bafd9e9afe2 drm/dp_mst: Factor out a helper to check the atomic state of a topology manager<br />
440743b441a5 drm/dp_mst: Add helper to determine if an MST port is downstream of another port<br />
f72a472cce7f drm/dp_mst: Add a way to calculate PBN values with FEC overhead<br />
624222638024 drm/dp_mst: Fix fractional bpp scaling in drm_dp_calc_pbn_mode()<br />
97aecb8ea0f3 drm/i915/fdi: Improve FDI BW sharing between pipe B and C<br />
176ff291481f drm/i915: Factor out a helper to check/compute all the CRTC states<br />
4e02241b9a81 drm/i915: Add helper to modeset a set of pipes<br />
bcfeef839b83 drm/i915/dp: Limit the output link bpp in DSC mode<br />
6b6ff443f6e5 drm/i915/dp: Update the link bpp limits for DSC mode<br />
0e4fa365aa01 drm/i915/dp: Skip computing a non-DSC link config if DSC is needed<br />
cc61b1ccd329 drm/i915/dp: Track the pipe and link bpp limits separately<br />
2f0b0efb6c70 drm/i915/dp: Factor out helpers to compute the link limits</p>

</body>
</html>

--===============4882072188383357232==--
