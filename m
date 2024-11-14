Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EFA9C824B
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2024 06:05:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B15E710E0E4;
	Thu, 14 Nov 2024 05:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3037710E0E4;
 Thu, 14 Nov 2024 05:05:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7079735263884679748=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_series_starting_with_=5B1/2?=
 =?utf-8?q?=5D_drm/i915/watermark=3A_Refactor_dpkgc_code?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Nov 2024 05:05:11 -0000
Message-ID: <173156071118.3944581.16598142664266203567@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241114043040.1396947-1-suraj.kandpal@intel.com>
In-Reply-To: <20241114043040.1396947-1-suraj.kandpal@intel.com>
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

--===============7079735263884679748==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/watermark: Refactor dpkgc code
URL   : https://patchwork.freedesktop.org/series/141335/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15692 -> Patchwork_141335v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/index.html

Participating hosts (41 -> 45)
------------------------------

  Additional (5): bat-mtlp-9 bat-adlp-11 bat-atsm-1 fi-pnv-d510 bat-dg2-13 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_141335v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adlp-11:        NOTRUN -> [SKIP][1] ([i915#9318])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@eof:
    - bat-adlp-11:        NOTRUN -> [SKIP][2] ([i915#2582]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@fbdev@eof.html

  * igt@fbdev@info:
    - bat-adlp-11:        NOTRUN -> [SKIP][3] ([i915#1849] / [i915#2582])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@fbdev@info.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-adlp-11:        NOTRUN -> [SKIP][4] ([i915#4613]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][5] ([i915#4083])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@gem_mmap@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][6] ([i915#4079]) +1 other test skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][7] ([i915#4077]) +4 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-11:        NOTRUN -> [SKIP][8] ([i915#3282])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-atsm-1:         NOTRUN -> [SKIP][9] ([i915#6621])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@i915_pm_rps@basic-api.html
    - bat-adlp-11:        NOTRUN -> [SKIP][10] ([i915#6621])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         [PASS][11] -> [ABORT][12] ([i915#10341])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15692/bat-arlh-3/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][13] -> [ABORT][14] ([i915#12061])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15692/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@size-max:
    - bat-atsm-1:         NOTRUN -> [SKIP][15] ([i915#6077]) +37 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@kms_addfb_basic@size-max.html

  * igt@kms_chamelium_edid@vga-edid-read:
    - bat-dg2-13:         NOTRUN -> [SKIP][16] ([Intel XE#484] / [i915#4550]) +1 other test skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-dg2-13/igt@kms_chamelium_edid@vga-edid-read.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - bat-atsm-1:         NOTRUN -> [SKIP][17] ([i915#6078]) +22 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-adlp-11:        NOTRUN -> [SKIP][18] ([i915#3637]) +3 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-atsm-1:         NOTRUN -> [SKIP][19] ([i915#6093]) +4 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-adlp-11:        NOTRUN -> [SKIP][20] ([i915#4093]) +3 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-adlp-11:        NOTRUN -> [SKIP][21] ([i915#4342] / [i915#5354])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_hdmi_inject@inject-audio:
    - bat-adlp-11:        NOTRUN -> [SKIP][22] ([i915#4369])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-adlp-11:        NOTRUN -> [SKIP][23] ([i915#10470]) +16 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-atsm-1:         NOTRUN -> [SKIP][24] ([i915#1836]) +6 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-adlp-11:        NOTRUN -> [SKIP][25] ([i915#9812])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_prop_blob@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][26] ([i915#7357])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@kms_prop_blob@basic.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - fi-pnv-d510:        NOTRUN -> [SKIP][27] +33 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html

  * igt@kms_psr@psr-primary-page-flip:
    - bat-adlp-11:        NOTRUN -> [SKIP][28] ([i915#1072] / [i915#9732]) +3 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adlp-11:        NOTRUN -> [SKIP][29] ([i915#3555])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-atsm-1:         NOTRUN -> [SKIP][30] ([i915#6094])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-adlp-11:        NOTRUN -> [SKIP][31] ([i915#10470] / [i915#3708])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-write:
    - bat-adlp-11:        NOTRUN -> [SKIP][32] ([i915#3291] / [i915#3708]) +2 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@prime_vgem@basic-write.html
    - bat-atsm-1:         NOTRUN -> [SKIP][33] +2 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@prime_vgem@basic-write.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#484]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/484
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#10470]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10470
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12799]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12799
  [i915#1836]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1836
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4093]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4093
  [i915#4342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342
  [i915#4369]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4369
  [i915#4550]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4550
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#6077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6077
  [i915#6078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6078
  [i915#6093]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6093
  [i915#6094]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6094
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#7357]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7357
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812


Build changes
-------------

  * Linux: CI_DRM_15692 -> Patchwork_141335v1

  CI-20190529: 20190529
  CI_DRM_15692: 52166ab72753e6d0d496539d050a5f54d9f2278b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8107: 0362b0deec80daaecdfa3dd0676dcabb6f14bd9c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_141335v1: 52166ab72753e6d0d496539d050a5f54d9f2278b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/index.html

--===============7079735263884679748==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/watermark: Refactor dpkgc code</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/141335/">https://patchwork.freedesktop.org/series/141335/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15692 -&gt; Patchwork_141335v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/index.html</p>
<h2>Participating hosts (41 -&gt; 45)</h2>
<p>Additional (5): bat-mtlp-9 bat-adlp-11 bat-atsm-1 fi-pnv-d510 bat-dg2-13 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_141335v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15692/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-arlh-3/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15692/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@size-max:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@kms_addfb_basic@size-max.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6077">i915#6077</a>) +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@vga-edid-read:</p>
<ul>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-dg2-13/igt@kms_chamelium_edid@vga-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/484">Intel XE#484</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4550">i915#4550</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6078">i915#6078</a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6093">i915#6093</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4093">i915#4093</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342">i915#4342</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4369">i915#4369</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10470">i915#10470</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1836">i915#1836</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prop_blob@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@kms_prop_blob@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7357">i915#7357</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6094">i915#6094</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10470">i915#10470</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-adlp-11/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +2 other tests skip</li>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141335v1/bat-atsm-1/igt@prime_vgem@basic-write.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15692 -&gt; Patchwork_141335v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15692: 52166ab72753e6d0d496539d050a5f54d9f2278b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8107: 0362b0deec80daaecdfa3dd0676dcabb6f14bd9c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_141335v1: 52166ab72753e6d0d496539d050a5f54d9f2278b @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7079735263884679748==--
