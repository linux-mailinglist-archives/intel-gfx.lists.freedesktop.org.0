Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E74DE4B9539
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 02:06:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E71110E6D2;
	Thu, 17 Feb 2022 01:06:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 06DD810E6CB;
 Thu, 17 Feb 2022 01:06:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03B6EAA0EA;
 Thu, 17 Feb 2022 01:06:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7113197043317010360=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 17 Feb 2022 01:06:04 -0000
Message-ID: <164505996499.18050.13429344508225280466@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Move_bigjoiner_refactoring?=
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

--===============7113197043317010360==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Move bigjoiner refactoring
URL   : https://patchwork.freedesktop.org/series/100195/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11238 -> Patchwork_22286
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22286 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22286, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/index.html

Participating hosts (46 -> 44)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (3): fi-bsw-cyan bat-jsl-2 shard-tglu 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22286:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-hsw-4770:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html
    - fi-ivb-3770:        [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-ivb-3770/igt@kms_force_connector_basic@force-load-detect.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-ivb-3770/igt@kms_force_connector_basic@force-load-detect.html
    - fi-blb-e6850:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-blb-e6850/igt@kms_force_connector_basic@force-load-detect.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-blb-e6850/igt@kms_force_connector_basic@force-load-detect.html
    - fi-bwr-2160:        [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html
    - fi-snb-2600:        [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-snb-2600/igt@kms_force_connector_basic@force-load-detect.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-snb-2600/igt@kms_force_connector_basic@force-load-detect.html
    - fi-elk-e7500:       [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-elk-e7500/igt@kms_force_connector_basic@force-load-detect.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-elk-e7500/igt@kms_force_connector_basic@force-load-detect.html
    - fi-ilk-650:         [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-ilk-650/igt@kms_force_connector_basic@force-load-detect.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-ilk-650/igt@kms_force_connector_basic@force-load-detect.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-pnv-d510/igt@kms_force_connector_basic@force-load-detect.html
    - fi-snb-2520m:       [PASS][16] -> [FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-snb-2520m/igt@kms_force_connector_basic@force-load-detect.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-snb-2520m/igt@kms_force_connector_basic@force-load-detect.html

  
Known issues
------------

  Here are the changes found in Patchwork_22286 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-ivb-3770:        NOTRUN -> [SKIP][18] ([fdo#109271]) +17 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-ivb-3770/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-skl-6600u:       NOTRUN -> [INCOMPLETE][19] ([i915#4547])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-pnv-d510:        NOTRUN -> [SKIP][20] ([fdo#109271]) +57 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@hangcheck:
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][21] ([i915#3921])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [PASS][22] -> [INCOMPLETE][23] ([i915#3921])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-bdw-5557u/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][25] -> [DMESG-WARN][26] ([i915#4269])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-cfl-8109u:       [PASS][27] -> [DMESG-WARN][28] ([i915#295]) +12 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  * igt@kms_psr@cursor_plane_move:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][29] ([fdo#109271]) +13 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - {fi-tgl-dsi}:       [DMESG-WARN][30] ([i915#2867]) -> [PASS][31] +16 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [INCOMPLETE][32] ([i915#3303]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][34] ([i915#4957]) -> [DMESG-FAIL][35] ([i915#4494] / [i915#4957])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957


Build changes
-------------

  * Linux: CI_DRM_11238 -> Patchwork_22286

  CI-20190529: 20190529
  CI_DRM_11238: e141e36b2871c529379f7ec7d5d6ebae3137a51b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6347: 37ea4c86f97c0e05fcb6b04cff72ec927930536e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22286: 3faa720f3c7ea6ac3639ba36f966ff27b0783058 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3faa720f3c7e drm/i915: Make the PIPESC rect relative to the entire bigjoiner area
8c1c2194639e drm/i915: Use bigjoiner_pipes more
6dde6471421f drm/i915: Eliminate bigjoiner boolean
66520ca307e5 drm/i915: Start tracking PIPESRC as a drm_rect
0de07986ecda drm/i915: Fix MSO vs. bigjoiner timings confusion
a537b3ad46e2 drm/i915: Extract intel_crtc_compute_pipe_mode()
da5a00c9434c drm/i915: Extract intel_crtc_compute_pipe_src()
044dcc1af7ce drm/i915: Extract intel_bigjoiner_adjust_timings()
62729761b089 drm/i915: Extract intel_splitter_adjust_timings()
9ffcc136c6b1 drm/i915: Rename variables in intel_crtc_compute_config()
9e28803dae9f drm/i915: Remove nop bigjoiner state copy
d3284529594a drm/i915: Fix cursor coordinates on bigjoiner slave

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/index.html

--===============7113197043317010360==
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
<tr><td><b>Series:</b></td><td>drm/i915: Move bigjoiner refactoring</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100195/">https://patchwork.freedesktop.org/series/100195/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11238 -&gt; Patchwork_22286</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22286 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22286, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/index.html</p>
<h2>Participating hosts (46 -&gt; 44)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (3): fi-bsw-cyan bat-jsl-2 shard-tglu </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22286:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-hsw-4770/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-ivb-3770/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-ivb-3770/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-blb-e6850/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-blb-e6850/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-bwr-2160/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-snb-2600/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-snb-2600/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-elk-e7500/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-elk-e7500/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-ilk-650/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-ilk-650/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-pnv-d510/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-snb-2520m/igt@kms_force_connector_basic@force-load-detect.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-snb-2520m/igt@kms_force_connector_basic@force-load-detect.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22286 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-ivb-3770/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-bdw-5557u/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html">PASS</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11238 -&gt; Patchwork_22286</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11238: e141e36b2871c529379f7ec7d5d6ebae3137a51b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6347: 37ea4c86f97c0e05fcb6b04cff72ec927930536e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22286: 3faa720f3c7ea6ac3639ba36f966ff27b0783058 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3faa720f3c7e drm/i915: Make the PIPESC rect relative to the entire bigjoiner area<br />
8c1c2194639e drm/i915: Use bigjoiner_pipes more<br />
6dde6471421f drm/i915: Eliminate bigjoiner boolean<br />
66520ca307e5 drm/i915: Start tracking PIPESRC as a drm_rect<br />
0de07986ecda drm/i915: Fix MSO vs. bigjoiner timings confusion<br />
a537b3ad46e2 drm/i915: Extract intel_crtc_compute_pipe_mode()<br />
da5a00c9434c drm/i915: Extract intel_crtc_compute_pipe_src()<br />
044dcc1af7ce drm/i915: Extract intel_bigjoiner_adjust_timings()<br />
62729761b089 drm/i915: Extract intel_splitter_adjust_timings()<br />
9ffcc136c6b1 drm/i915: Rename variables in intel_crtc_compute_config()<br />
9e28803dae9f drm/i915: Remove nop bigjoiner state copy<br />
d3284529594a drm/i915: Fix cursor coordinates on bigjoiner slave</p>

</body>
</html>

--===============7113197043317010360==--
