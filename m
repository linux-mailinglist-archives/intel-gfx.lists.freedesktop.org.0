Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77979BD7713
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 07:36:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCD3010E538;
	Tue, 14 Oct 2025 05:36:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 97596180aaec (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE48510E538;
 Tue, 14 Oct 2025 05:36:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6284747673804485018=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_Preparatory_patches_for_g?=
 =?utf-8?q?uardband_optimization_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Oct 2025 05:36:00 -0000
Message-ID: <176042016077.9427.13728886726277335085@97596180aaec>
X-Patchwork-Hint: ignore
References: <20251014041628.1291117-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251014041628.1291117-1-ankit.k.nautiyal@intel.com>
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

--===============6284747673804485018==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Preparatory patches for guardband optimization (rev4)
URL   : https://patchwork.freedesktop.org/series/155661/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17352 -> Patchwork_155661v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_155661v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - fi-bsw-nick:        NOTRUN -> [SKIP][1] ([i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-bsw-nick/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [SKIP][2] +24 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][3] ([i915#4613]) +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-kbl-7567u/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [PASS][4] -> [DMESG-FAIL][5] ([i915#12061]) +1 other test dmesg-fail
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - fi-bsw-nick:        NOTRUN -> [SKIP][6] ([i915#11190]) +16 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-bsw-nick/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][7] +21 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-bsw-n3050/igt@kms_psr@psr-primary-mmap-gtt.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-7567u:       [ABORT][8] ([i915#180]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         [INCOMPLETE][10] ([i915#14764] / [i915#14818] / [i915#14837] / [i915#14838]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/bat-arlh-3/igt@i915_selftest@live.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gem:
    - bat-arlh-3:         [INCOMPLETE][12] ([i915#15126]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/bat-arlh-3/igt@i915_selftest@live@gem.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/bat-arlh-3/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-cfl-8109u:       [DMESG-WARN][14] ([i915#13735]) -> [PASS][15] +32 other tests pass
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [DMESG-FAIL][16] ([i915#12061]) -> [PASS][17] +1 other test pass
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@too-high:
    - fi-kbl-7567u:       [DMESG-WARN][18] ([i915#13735]) -> [PASS][19] +41 other tests pass
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/fi-kbl-7567u/igt@kms_addfb_basic@too-high.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-kbl-7567u/igt@kms_addfb_basic@too-high.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-7567u:       [DMESG-WARN][20] ([i915#13735] / [i915#180]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/fi-kbl-7567u/igt@kms_busy@basic@flip.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-kbl-7567u/igt@kms_busy@basic@flip.html

  * igt@kms_pipe_crc_basic@read-crc:
    - fi-cfl-8109u:       [DMESG-WARN][22] ([i915#13890]) -> [PASS][23] +48 other tests pass
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [DMESG-WARN][24] ([i915#13735] / [i915#13890] / [i915#180]) -> [PASS][25] +49 other tests pass
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [DMESG-FAIL][26] ([i915#12061] / [i915#14204]) -> [DMESG-FAIL][27] ([i915#12061] / [i915#13929])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/bat-atsm-1/igt@i915_selftest@live.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [DMESG-FAIL][28] ([i915#14204]) -> [DMESG-FAIL][29] ([i915#13929])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/bat-atsm-1/igt@i915_selftest@live@mman.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/bat-atsm-1/igt@i915_selftest@live@mman.html

  
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
  [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
  [i915#14764]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14764
  [i915#14818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14818
  [i915#14837]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14837
  [i915#14838]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14838
  [i915#15126]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15126
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613


Build changes
-------------

  * Linux: CI_DRM_17352 -> Patchwork_155661v4

  CI-20190529: 20190529
  CI_DRM_17352: c917f7d11493984be9f381ca0a7667bd3e587ada @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8582: 8582
  Patchwork_155661v4: c917f7d11493984be9f381ca0a7667bd3e587ada @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/index.html

--===============6284747673804485018==
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
<tr><td><b>Series:</b></td><td>Preparatory patches for guardband optimization (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/155661/">https://patchwork.freedesktop.org/series/155661/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17352 -&gt; Patchwork_155661v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_155661v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-bsw-nick/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +24 other tests skip</li>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-kbl-7567u/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-bsw-nick/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-bsw-n3050/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> +21 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/bat-arlh-3/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14764">i915#14764</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14818">i915#14818</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14837">i915#14837</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14838">i915#14838</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/bat-arlh-3/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/bat-arlh-3/igt@i915_selftest@live@gem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15126">i915#15126</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/bat-arlh-3/igt@i915_selftest@live@gem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">PASS</a> +32 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/fi-kbl-7567u/igt@kms_addfb_basic@too-high.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-kbl-7567u/igt@kms_addfb_basic@too-high.html">PASS</a> +41 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/fi-kbl-7567u/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-kbl-7567u/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html">PASS</a> +48 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> +49 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17352/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155661v4/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17352 -&gt; Patchwork_155661v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17352: c917f7d11493984be9f381ca0a7667bd3e587ada @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8582: 8582<br />
  Patchwork_155661v4: c917f7d11493984be9f381ca0a7667bd3e587ada @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6284747673804485018==--
