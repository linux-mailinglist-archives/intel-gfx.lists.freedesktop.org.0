Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F86ADDB9D
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 20:45:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09F8410E0D0;
	Tue, 17 Jun 2025 18:45:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54EA810E0D0;
 Tue, 17 Jun 2025 18:45:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1805190832275395180=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/dmc=3A_Deal_with?=
 =?utf-8?q?_loss_of_pipe_DMC_state_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Jun 2025 18:45:27 -0000
Message-ID: <175018592734.88664.8974595884114536837@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
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

--===============1805190832275395180==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dmc: Deal with loss of pipe DMC state (rev3)
URL   : https://patchwork.freedesktop.org/series/150111/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16715 -> Patchwork_150111v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/index.html

Participating hosts (44 -> 44)
------------------------------

  Additional (1): bat-atsm-1 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_150111v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-atsm-1:         NOTRUN -> [SKIP][1] ([i915#1849] / [i915#2582])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@fbdev@info.html

  * igt@fbdev@read:
    - bat-atsm-1:         NOTRUN -> [SKIP][2] ([i915#2582]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@fbdev@read.html

  * igt@gem_mmap@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][3] ([i915#4083])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@gem_mmap@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][4] ([i915#4079]) +1 other test skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][5] ([i915#4077]) +4 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-atsm-1:         NOTRUN -> [SKIP][6] ([i915#6621])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live:
    - bat-dg2-8:          [PASS][7] -> [ABORT][8] ([i915#14201] / [i915#14429])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16715/bat-dg2-8/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-dg2-8/igt@i915_selftest@live.html
    - bat-arlh-3:         [PASS][9] -> [DMESG-FAIL][10] ([i915#14243]) +1 other test dmesg-fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16715/bat-arlh-3/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-arlh-3/igt@i915_selftest@live.html
    - bat-atsm-1:         NOTRUN -> [DMESG-FAIL][11] ([i915#12061] / [i915#13929])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_contexts:
    - bat-dg2-8:          [PASS][12] -> [ABORT][13] ([i915#14201])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16715/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         NOTRUN -> [DMESG-FAIL][14] ([i915#13929])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@workarounds:
    - bat-atsm-1:         NOTRUN -> [DMESG-FAIL][15] ([i915#12061])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@size-max:
    - bat-atsm-1:         NOTRUN -> [SKIP][16] ([i915#6077]) +37 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@kms_addfb_basic@size-max.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - bat-atsm-1:         NOTRUN -> [SKIP][17] ([i915#6078]) +22 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-atsm-1:         NOTRUN -> [SKIP][18] ([i915#6093]) +4 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-atsm-1:         NOTRUN -> [SKIP][19] ([i915#1836]) +6 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_prop_blob@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][20] ([i915#7357])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@kms_prop_blob@basic.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-atsm-1:         NOTRUN -> [SKIP][21] ([i915#6094])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-write:
    - bat-atsm-1:         NOTRUN -> [SKIP][22] +2 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [DMESG-FAIL][23] ([i915#12061]) -> [PASS][24] +1 other test pass
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16715/bat-mtlp-8/igt@i915_selftest@live.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-dg2-11:         [ABORT][25] ([i915#14201]) -> [PASS][26] +1 other test pass
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16715/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [DMESG-WARN][27] ([i915#13735]) -> [PASS][28] +81 other tests pass
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16715/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-7567u:       [DMESG-WARN][29] ([i915#13735] / [i915#180]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16715/fi-kbl-7567u/igt@kms_busy@basic@flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/fi-kbl-7567u/igt@kms_busy@basic@flip.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [DMESG-WARN][31] ([i915#13735] / [i915#13890] / [i915#180]) -> [PASS][32] +52 other tests pass
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16715/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
  [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14201]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201
  [i915#14243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243
  [i915#14429]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14429
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1836]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1836
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#6077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6077
  [i915#6078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6078
  [i915#6093]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6093
  [i915#6094]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6094
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#7357]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7357


Build changes
-------------

  * Linux: CI_DRM_16715 -> Patchwork_150111v3

  CI-20190529: 20190529
  CI_DRM_16715: eb615557c4565c6236cd13b9cd164d472df1d0ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8413: 8413
  Patchwork_150111v3: eb615557c4565c6236cd13b9cd164d472df1d0ed @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/index.html

--===============1805190832275395180==
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
<tr><td><b>Series:</b></td><td>drm/i915/dmc: Deal with loss of pipe DMC state (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/150111/">https://patchwork.freedesktop.org/series/150111/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16715 -&gt; Patchwork_150111v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/index.html</p>
<h2>Participating hosts (44 -&gt; 44)</h2>
<p>Additional (1): bat-atsm-1 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_150111v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16715/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-dg2-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14429">i915#14429</a>)</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16715/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-arlh-3/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243">i915#14243</a>) +1 other test dmesg-fail</li>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16715/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@size-max:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@kms_addfb_basic@size-max.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6077">i915#6077</a>) +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6078">i915#6078</a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6093">i915#6093</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1836">i915#1836</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prop_blob@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@kms_prop_blob@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7357">i915#7357</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6094">i915#6094</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-atsm-1/igt@prime_vgem@basic-write.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16715/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16715/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16715/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> +81 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16715/fi-kbl-7567u/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/fi-kbl-7567u/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16715/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150111v3/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> +52 other tests pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16715 -&gt; Patchwork_150111v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16715: eb615557c4565c6236cd13b9cd164d472df1d0ed @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8413: 8413<br />
  Patchwork_150111v3: eb615557c4565c6236cd13b9cd164d472df1d0ed @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1805190832275395180==--
