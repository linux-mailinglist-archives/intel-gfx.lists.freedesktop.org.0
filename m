Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 207C2708620
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 18:41:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A39410E357;
	Thu, 18 May 2023 16:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AC50610E0CB;
 Thu, 18 May 2023 16:41:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2927A47DF;
 Thu, 18 May 2023 16:41:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7523035491915937100=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Thu, 18 May 2023 16:41:14 -0000
Message-ID: <168442807462.2371.6993286493801093183@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230517-mtl_disable_render_pg-v1-1-6495eebbfb24@intel.com>
In-Reply-To: <20230517-mtl_disable_render_pg-v1-1-6495eebbfb24@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_do_not_enable_render_power-gating_on_MTL_=28rev3?=
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

--===============7523035491915937100==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: do not enable render power-gating on MTL (rev3)
URL   : https://patchwork.freedesktop.org/series/117883/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13163 -> Patchwork_117883v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_117883v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_117883v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/index.html

Participating hosts (37 -> 37)
------------------------------

  Additional (1): bat-adlp-6 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_117883v3:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1:
    - bat-adlp-6:         NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_mocs:
    - {bat-mtlp-8}:       [PASS][2] -> [DMESG-FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13163/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html

  
Known issues
------------

  Here are the changes found in Patchwork_117883v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adlp-6:         NOTRUN -> [SKIP][4] ([i915#7456])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-adlp-6/igt@debugfs_test@basic-hwmon.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-6:         NOTRUN -> [SKIP][5] ([i915#3282])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-adlp-6/igt@gem_tiled_pread_basic.html

  * igt@i915_selftest@live@gt_engines:
    - bat-atsm-1:         [PASS][6] -> [FAIL][7] ([i915#6268])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13163/bat-atsm-1/igt@i915_selftest@live@gt_engines.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-atsm-1/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@hangcheck:
    - bat-adls-5:         [PASS][8] -> [DMESG-WARN][9] ([i915#5591])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13163/bat-adls-5/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-adls-5/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         [PASS][10] -> [DMESG-WARN][11] ([i915#6367])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13163/bat-rpls-2/igt@i915_selftest@live@slpc.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-rpls-2/igt@i915_selftest@live@slpc.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - bat-adlp-6:         NOTRUN -> [SKIP][12] ([i915#7828]) +7 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-adlp-6/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-adlp-6:         NOTRUN -> [SKIP][13] ([i915#4103]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adlp-6:         NOTRUN -> [SKIP][14] ([fdo#109285])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][15] -> [FAIL][16] ([i915#7932]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13163/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-dg2-11:         NOTRUN -> [SKIP][17] ([i915#1845] / [i915#5354]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_psr@primary_mmap_gtt:
    - bat-rplp-1:         NOTRUN -> [SKIP][18] ([i915#1072])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rplp-1:         NOTRUN -> [ABORT][19] ([i915#4579] / [i915#8260])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-7567u:       [DMESG-FAIL][20] ([i915#5334] / [i915#7872]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13163/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - {bat-mtlp-6}:       [ABORT][22] ([i915#4983] / [i915#7920]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13163/bat-mtlp-6/igt@i915_selftest@live@requests.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-mtlp-6/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@kms_psr@sprite_plane_onoff:
    - bat-rplp-1:         [ABORT][24] ([i915#8434] / [i915#8442]) -> [SKIP][25] ([i915#1072])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13163/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#8260]: https://gitlab.freedesktop.org/drm/intel/issues/8260
  [i915#8434]: https://gitlab.freedesktop.org/drm/intel/issues/8434
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442


Build changes
-------------

  * Linux: CI_DRM_13163 -> Patchwork_117883v3

  CI-20190529: 20190529
  CI_DRM_13163: b0e2432ff9ab0f200107e6c566f378cd04de2703 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7295: 34168d9156c5780c9e9790475c894fd829840e32 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117883v3: b0e2432ff9ab0f200107e6c566f378cd04de2703 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3a02db482b56 drm/i915/mtl: do not enable render power-gating on MTL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/index.html

--===============7523035491915937100==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: do not enable render power-gating on MTL (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117883/">https://patchwork.freedesktop.org/series/117883/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13163 -&gt; Patchwork_117883v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_117883v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_117883v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/index.html</p>
<h2>Participating hosts (37 -&gt; 37)</h2>
<p>Additional (1): bat-adlp-6 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_117883v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1:<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gt_mocs:<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13163/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117883v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-adlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-adlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13163/bat-atsm-1/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-atsm-1/igt@i915_selftest@live@gt_engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13163/bat-adls-5/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-adls-5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13163/bat-rpls-2/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-adlp-6/igt@kms_chamelium_hpd@dp-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13163/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8260">i915#8260</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13163/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-mtlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13163/bat-mtlp-6/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-mtlp-6/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@sprite_plane_onoff:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13163/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8434">i915#8434</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117883v3/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13163 -&gt; Patchwork_117883v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13163: b0e2432ff9ab0f200107e6c566f378cd04de2703 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7295: 34168d9156c5780c9e9790475c894fd829840e32 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117883v3: b0e2432ff9ab0f200107e6c566f378cd04de2703 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3a02db482b56 drm/i915/mtl: do not enable render power-gating on MTL</p>

</body>
</html>

--===============7523035491915937100==--
