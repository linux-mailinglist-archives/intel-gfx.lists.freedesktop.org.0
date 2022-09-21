Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B157C5BFB0D
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 11:33:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1114110E364;
	Wed, 21 Sep 2022 09:33:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9E81C10E364;
 Wed, 21 Sep 2022 09:33:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 95DA3A73C7;
 Wed, 21 Sep 2022 09:33:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0705387414801997193=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Wed, 21 Sep 2022 09:33:27 -0000
Message-ID: <166375280758.11600.7266313256265973139@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220921074901.3651252-1-fei.yang@intel.com>
In-Reply-To: <20220921074901.3651252-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/guc=3A_Define_CTB_based_TL?=
 =?utf-8?q?B_invalidation_routines?=
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

--===============0705387414801997193==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915/guc: Define CTB based TLB invalidation routines
URL   : https://patchwork.freedesktop.org/series/108818/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12163 -> Patchwork_108818v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_108818v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_108818v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/index.html

Participating hosts (42 -> 44)
------------------------------

  Additional (3): fi-icl-u2 fi-tgl-dsi fi-tgl-u2 
  Missing    (1): fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108818v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - bat-dg1-5:          [PASS][1] -> [DMESG-WARN][2] +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/bat-dg1-5/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/bat-dg1-5/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@migrate:
    - fi-rkl-guc:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-rkl-guc/igt@i915_selftest@live@migrate.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-rkl-guc/igt@i915_selftest@live@migrate.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_lrc:
    - {fi-tgl-dsi}:       NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_108818v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-icl-u2:          NOTRUN -> [SKIP][6] ([i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][7] ([i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-icl-u2:          NOTRUN -> [SKIP][8] ([i915#4613]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-tgl-u2:          NOTRUN -> [SKIP][9] ([fdo#109284] / [fdo#111827]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-tgl-u2/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          NOTRUN -> [SKIP][10] ([fdo#111827]) +8 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - fi-tgl-u2:          NOTRUN -> [SKIP][11] ([i915#4103])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
    - fi-icl-u2:          NOTRUN -> [SKIP][12] ([i915#4103])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-icl-u2:          NOTRUN -> [WARN][13] ([i915#6008])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-u2:          NOTRUN -> [SKIP][14] ([fdo#109285])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html
    - fi-icl-u2:          NOTRUN -> [SKIP][15] ([fdo#109285])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-icl-u2:          NOTRUN -> [SKIP][16] ([i915#3555])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][17] ([i915#3555])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-tgl-u2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][18] ([fdo#109295] / [i915#3301])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-adlm-1}:       [DMESG-WARN][19] ([i915#2867]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-hsw-4770:        [DMESG-FAIL][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#6008]: https://gitlab.freedesktop.org/drm/intel/issues/6008
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6380]: https://gitlab.freedesktop.org/drm/intel/issues/6380
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434


Build changes
-------------

  * Linux: CI_DRM_12163 -> Patchwork_108818v1

  CI-20190529: 20190529
  CI_DRM_12163: 8a052348946d9ec1b368ddcc1d3db5f2fc486f75 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6659: 1becf700a737a7a98555a0cfbe8566355377afb2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108818v1: 8a052348946d9ec1b368ddcc1d3db5f2fc486f75 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e478edd832f3 drm/i915/guc: enable GuC GGTT invalidation from the start
83a09193dec2 drm/i915: Add support for GuC tlb invalidation
a64ec818a637 drm/i915/xehpsdv: Define GuC Based full TLB invalidation routine
51ff726d238a drm/i915/guc: Define CTB based TLB invalidation routines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/index.html

--===============0705387414801997193==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915/guc: Define CTB based TLB invalidation routines</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108818/">https://patchwork.freedesktop.org/series/108818/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12163 -&gt; Patchwork_108818v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_108818v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_108818v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/index.html</p>
<h2>Participating hosts (42 -&gt; 44)</h2>
<p>Additional (3): fi-icl-u2 fi-tgl-dsi fi-tgl-u2 <br />
  Missing    (1): fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_108818v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/bat-dg1-5/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/bat-dg1-5/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-rkl-guc/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-rkl-guc/igt@i915_selftest@live@migrate.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gt_lrc:<ul>
<li>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108818v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-tgl-u2/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6008">i915#6008</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-tgl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108818v1/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12163 -&gt; Patchwork_108818v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12163: 8a052348946d9ec1b368ddcc1d3db5f2fc486f75 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6659: 1becf700a737a7a98555a0cfbe8566355377afb2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108818v1: 8a052348946d9ec1b368ddcc1d3db5f2fc486f75 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e478edd832f3 drm/i915/guc: enable GuC GGTT invalidation from the start<br />
83a09193dec2 drm/i915: Add support for GuC tlb invalidation<br />
a64ec818a637 drm/i915/xehpsdv: Define GuC Based full TLB invalidation routine<br />
51ff726d238a drm/i915/guc: Define CTB based TLB invalidation routines</p>

</body>
</html>

--===============0705387414801997193==--
