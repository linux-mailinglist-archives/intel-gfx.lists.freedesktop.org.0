Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF93C7DA30B
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Oct 2023 00:01:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9038410E06C;
	Fri, 27 Oct 2023 22:01:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 166DD10E06C;
 Fri, 27 Oct 2023 22:01:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 105F6AADF4;
 Fri, 27 Oct 2023 22:01:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0996920336791850509=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 27 Oct 2023 22:01:25 -0000
Message-ID: <169844408503.19709.11672289498399876047@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231012124033.26983-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231012124033.26983-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Move_the_g45_PEG_band_gap_HPD_workaround_to_the_HPD_co?=
 =?utf-8?b?ZGUgKHJldjUp?=
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

--===============0996920336791850509==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Move the g45 PEG band gap HPD workaround to the HPD code (rev5)
URL   : https://patchwork.freedesktop.org/series/125053/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13806 -> Patchwork_125053v5
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125053v5 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125053v5, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/index.html

Participating hosts (37 -> 36)
------------------------------

  Additional (2): fi-kbl-soraka bat-dg2-9 
  Missing    (3): bat-mtlp-8 fi-tgl-1115g4 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125053v5:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-11:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13806/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-11/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_125053v5 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-jsl-1:          [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13806/bat-jsl-1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-jsl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-dg2-9:          NOTRUN -> [INCOMPLETE][5] ([i915#9275])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@gem_mmap@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][8] ([i915#4083])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][9] ([i915#4077]) +2 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][10] ([i915#4079]) +1 other test skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@gem_render_tiled_blits@basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg2-9:          NOTRUN -> [SKIP][11] ([i915#6621])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][12] ([i915#1886])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][13] ([i915#5190])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][14] ([i915#4215] / [i915#5190])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - bat-dg2-9:          NOTRUN -> [SKIP][15] ([i915#4212]) +6 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - bat-dg2-9:          NOTRUN -> [SKIP][16] ([i915#4212] / [i915#5608])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][17] ([i915#4103] / [i915#4213] / [i915#5608]) +1 other test skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][18] ([fdo#109271]) +9 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-dg2-9:          NOTRUN -> [SKIP][19] ([fdo#109285])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-dg2-9:          NOTRUN -> [SKIP][20] ([i915#5274])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [PASS][21] -> [FAIL][22] ([IGT#3])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13806/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][23] ([i915#1845] / [i915#9197]) +1 other test skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-dg2-9:          NOTRUN -> [SKIP][24] ([i915#1072]) +3 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-dg2-9:          NOTRUN -> [SKIP][25] ([i915#3555] / [i915#4098])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg2-9:          NOTRUN -> [SKIP][26] ([i915#3708])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg2-9:          NOTRUN -> [SKIP][27] ([i915#3708] / [i915#4077]) +1 other test skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - bat-dg2-9:          NOTRUN -> [SKIP][28] ([i915#3291] / [i915#3708]) +2 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [DMESG-FAIL][29] ([i915#7699]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13806/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][31] ([i915#8668]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13806/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275


Build changes
-------------

  * Linux: CI_DRM_13806 -> Patchwork_125053v5

  CI-20190529: 20190529
  CI_DRM_13806: b7816c393496dc4497c1327310821407f7171d8b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7562: 5e82a8ee42d58c5e183c3d4208ae4ccd977a4830 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_125053v5: b7816c393496dc4497c1327310821407f7171d8b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

10ff6d83a4db drm/i915: Move the g45 PEG band gap HPD workaround to the HPD code

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/index.html

--===============0996920336791850509==
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
<tr><td><b>Series:</b></td><td>drm/i915: Move the g45 PEG band gap HPD workaround to the HPD code (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/125053/">https://patchwork.freedesktop.org/series/125053/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13806 -&gt; Patchwork_125053v5</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125053v5 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_125053v5, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Additional (2): fi-kbl-soraka bat-dg2-9 <br />
  Missing    (3): bat-mtlp-8 fi-tgl-1115g4 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_125053v5:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13806/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125053v5 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13806/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13806/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-9/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13806/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13806/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125053v5/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13806 -&gt; Patchwork_125053v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13806: b7816c393496dc4497c1327310821407f7171d8b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7562: 5e82a8ee42d58c5e183c3d4208ae4ccd977a4830 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_125053v5: b7816c393496dc4497c1327310821407f7171d8b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>10ff6d83a4db drm/i915: Move the g45 PEG band gap HPD workaround to the HPD code</p>

</body>
</html>

--===============0996920336791850509==--
