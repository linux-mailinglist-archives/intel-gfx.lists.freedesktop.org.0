Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C66034384D0
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Oct 2021 20:54:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B32C89E63;
	Sat, 23 Oct 2021 18:54:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 67C6C89E63;
 Sat, 23 Oct 2021 18:54:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F2D4AA0ED;
 Sat, 23 Oct 2021 18:54:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6128156969720473299=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 23 Oct 2021 18:54:39 -0000
Message-ID: <163501527935.6910.14495936287304847435@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211023180510.35152-1-matthew.brost@intel.com>
In-Reply-To: <20211023180510.35152-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRG8g?=
 =?utf-8?q?error_capture_async=2C_flush_G2H_processing_on_reset?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6128156969720473299==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Do error capture async, flush G2H processing on reset
URL   : https://patchwork.freedesktop.org/series/96216/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10782 -> Patchwork_21429
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21429 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21429, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/index.html

Participating hosts (38 -> 35)
------------------------------

  Additional (2): fi-tgl-1115g4 fi-pnv-d510 
  Missing    (5): bat-dg1-6 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21429:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - fi-rkl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_21429 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][3] ([fdo#109315])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_cs_nop@nop-gfx0:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][4] ([fdo#109315] / [i915#2575]) +16 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][5] ([fdo#109271]) +17 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][6] ([i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][7] ([i915#1155])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][8] ([fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][9] ([i915#4103]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-modeset@c-dp1:
    - fi-cfl-8109u:       [PASS][10] -> [FAIL][11] ([i915#4165])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][12] ([fdo#109285])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [PASS][13] -> [FAIL][14] ([i915#2546])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][15] ([i915#1072]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][16] ([fdo#109271]) +53 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][17] ([i915#3301])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][18] ([i915#1602] / [i915#2426] / [i915#4312])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-bdw-5557u/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][19] ([i915#3928] / [i915#4312])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-rkl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][20] ([i915#3921]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4165]: https://gitlab.freedesktop.org/drm/intel/issues/4165
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312


Build changes
-------------

  * Linux: CI_DRM_10782 -> Patchwork_21429

  CI-20190529: 20190529
  CI_DRM_10782: 6eff63a9b932a4aa1e1f6e521cd919aaf57c058f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6259: 89629f64da9f12b144f913865b08d2c9efcd10d7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21429: 6e3989feb5a49e7c2be536bd79978860830dafb9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6e3989feb5a4 drm/i915/guc: Refcount context during error capture
5e336f70a919 drm/i915/guc: Flush G2H work queue during reset
d00a78b738bb drm/i915/guc: Do error capture asynchronously

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/index.html

--===============6128156969720473299==
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
<tr><td><b>Series:</b></td><td>Do error capture async, flush G2H processing on reset</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96216/">https://patchwork.freedesktop.org/series/96216/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10782 -&gt; Patchwork_21429</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21429 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21429, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/index.html</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Additional (2): fi-tgl-1115g4 fi-pnv-d510 <br />
  Missing    (5): bat-dg1-6 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21429:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21429 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-gfx0:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4165">i915#4165</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +53 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10782/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21429/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10782 -&gt; Patchwork_21429</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10782: 6eff63a9b932a4aa1e1f6e521cd919aaf57c058f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6259: 89629f64da9f12b144f913865b08d2c9efcd10d7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21429: 6e3989feb5a49e7c2be536bd79978860830dafb9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6e3989feb5a4 drm/i915/guc: Refcount context during error capture<br />
5e336f70a919 drm/i915/guc: Flush G2H work queue during reset<br />
d00a78b738bb drm/i915/guc: Do error capture asynchronously</p>

</body>
</html>

--===============6128156969720473299==--
