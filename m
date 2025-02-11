Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA14DA3132F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 18:34:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B3EB10E732;
	Tue, 11 Feb 2025 17:34:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFF6610E732;
 Tue, 11 Feb 2025 17:34:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8116725570683235301=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_imple?=
 =?utf-8?q?ment_wa=5F18038517565_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Feb 2025 17:34:20 -0000
Message-ID: <173929526077.982894.6914878334075218139@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250211152400.460496-1-vinod.govindapillai@intel.com>
In-Reply-To: <20250211152400.460496-1-vinod.govindapillai@intel.com>
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

--===============8116725570683235301==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: implement wa_18038517565 (rev2)
URL   : https://patchwork.freedesktop.org/series/144184/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16108 -> Patchwork_144184v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/index.html

Participating hosts (41 -> 42)
------------------------------

  Additional (2): fi-glk-j4005 bat-arlh-2 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_144184v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-arlh-2:         NOTRUN -> [SKIP][1] ([i915#11346] / [i915#9318])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@eof:
    - bat-arlh-2:         NOTRUN -> [SKIP][2] ([i915#11345] / [i915#11346]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@fbdev@eof.html

  * igt@fbdev@info:
    - bat-arlh-2:         NOTRUN -> [SKIP][3] ([i915#11346] / [i915#1849])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@fbdev@info.html

  * igt@gem_huc_copy@huc-copy:
    - fi-glk-j4005:       NOTRUN -> [SKIP][4] ([i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][5] ([i915#10213] / [i915#11346] / [i915#11671]) +3 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-glk-j4005:       NOTRUN -> [SKIP][6] ([i915#4613]) +3 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/fi-glk-j4005/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_mmap@basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][7] ([i915#11343] / [i915#11346])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@gem_mmap@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][8] ([i915#10197] / [i915#10211] / [i915#11346] / [i915#11725])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][9] ([i915#11346] / [i915#12637]) +4 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][10] ([i915#10206] / [i915#11346] / [i915#11724])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-tgl-1115g4:      [PASS][11] -> [FAIL][12] ([i915#13633])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_pm_rps@basic-api:
    - bat-arlh-2:         NOTRUN -> [SKIP][13] ([i915#10209] / [i915#11346] / [i915#11681])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         [PASS][14] -> [DMESG-FAIL][15] ([i915#12061] / [i915#12435])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/bat-arlh-3/igt@i915_selftest@live.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-3/igt@i915_selftest@live.html
    - bat-twl-1:          [PASS][16] -> [ABORT][17] ([i915#12919] / [i915#13503])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/bat-twl-1/igt@i915_selftest@live.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-twl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_contexts:
    - bat-twl-1:          [PASS][18] -> [ABORT][19] ([i915#12919])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/bat-twl-1/igt@i915_selftest@live@gt_contexts.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-twl-1/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][20] -> [DMESG-FAIL][21] ([i915#12061])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [PASS][22] -> [DMESG-FAIL][23] ([i915#12061])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-arlh-2:         NOTRUN -> [SKIP][24] ([i915#10200] / [i915#11346] / [i915#11666] / [i915#12203])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - bat-arlh-2:         NOTRUN -> [SKIP][25] ([i915#10200] / [i915#11346] / [i915#11666]) +8 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@too-high:
    - fi-cfl-8109u:       [PASS][26] -> [DMESG-WARN][27] ([i915#11621]) +117 other tests dmesg-warn
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html

  * igt@kms_flip@basic-plain-flip@c-dp1:
    - bat-apl-1:          [PASS][28] -> [DMESG-WARN][29] ([i915#11621]) +1 other test dmesg-warn
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/bat-apl-1/igt@kms_flip@basic-plain-flip@c-dp1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-apl-1/igt@kms_flip@basic-plain-flip@c-dp1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][30] -> [SKIP][31] ([i915#9197]) +2 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@psr-primary-page-flip:
    - fi-glk-j4005:       NOTRUN -> [SKIP][32] +10 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/fi-glk-j4005/igt@kms_psr@psr-primary-page-flip.html
    - bat-arlh-2:         NOTRUN -> [SKIP][33] ([i915#11346]) +32 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-arlh-2:         NOTRUN -> [SKIP][34] ([i915#10208] / [i915#11346] / [i915#8809])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-arlh-2:         NOTRUN -> [SKIP][35] ([i915#10212] / [i915#11346] / [i915#11726])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - bat-arlh-2:         NOTRUN -> [SKIP][36] ([i915#10214] / [i915#11346] / [i915#11726])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-arlh-2:         NOTRUN -> [SKIP][37] ([i915#10216] / [i915#11346] / [i915#11723])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [INCOMPLETE][38] ([i915#12904]) -> [PASS][39] +1 other test pass
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/bat-apl-1/igt@dmabuf@all-tests.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-apl-1/igt@dmabuf@all-tests.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [DMESG-WARN][40] ([i915#11621]) -> [DMESG-WARN][41] ([i915#11621] / [i915#1982])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  
  [i915#10197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197
  [i915#10200]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200
  [i915#10206]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206
  [i915#10208]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
  [i915#10211]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211
  [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
  [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
  [i915#11343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343
  [i915#11345]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345
  [i915#11346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346
  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#11666]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666
  [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723
  [i915#11724]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724
  [i915#11725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725
  [i915#11726]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#13503]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503
  [i915#13633]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318


Build changes
-------------

  * Linux: CI_DRM_16108 -> Patchwork_144184v2

  CI-20190529: 20190529
  CI_DRM_16108: 5a6f3d00770c0c384a79c34a74e049c80d8b235d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8228: 8228
  Patchwork_144184v2: 5a6f3d00770c0c384a79c34a74e049c80d8b235d @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/index.html

--===============8116725570683235301==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: implement wa_18038517565 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/144184/">https://patchwork.freedesktop.org/series/144184/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16108 -&gt; Patchwork_144184v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/index.html</p>
<h2>Participating hosts (41 -&gt; 42)</h2>
<p>Additional (2): fi-glk-j4005 bat-arlh-2 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_144184v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345">i915#11345</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/fi-glk-j4005/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343">i915#11343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725">i915#11725</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724">i915#11724</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633">i915#13633</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-3/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a>)</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/bat-twl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-twl-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919">i915#12919</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503">i915#13503</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/bat-twl-1/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-twl-1/igt@i915_selftest@live@gt_contexts.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919">i915#12919</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203">i915#12203</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) +117 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp1:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/bat-apl-1/igt@kms_flip@basic-plain-flip@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-apl-1/igt@kms_flip@basic-plain-flip@c-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/fi-glk-j4005/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> +10 other tests skip</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726">i915#11726</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726">i915#11726</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-arlh-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723">i915#11723</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@dmabuf@all-tests:<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/bat-apl-1/igt@dmabuf@all-tests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/bat-apl-1/igt@dmabuf@all-tests.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16108/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144184v2/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16108 -&gt; Patchwork_144184v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16108: 5a6f3d00770c0c384a79c34a74e049c80d8b235d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8228: 8228<br />
  Patchwork_144184v2: 5a6f3d00770c0c384a79c34a74e049c80d8b235d @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8116725570683235301==--
