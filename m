Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE54BA98C16
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 15:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79FE710E6B8;
	Wed, 23 Apr 2025 13:58:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C12C210E6B7;
 Wed, 23 Apr 2025 13:58:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0788805702908707283=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_series_starting_with_=5Bv?=
 =?utf-8?q?3=2C1/2=5D_drm/i915/display=3A_Ensure_enough_lines_between_delaye?=
 =?utf-8?q?d_VBlank_and_VBlank?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Apr 2025 13:58:29 -0000
Message-ID: <174541670979.750.11079684634712561213@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250423102704.1368310-1-jouni.hogander@intel.com>
In-Reply-To: <20250423102704.1368310-1-jouni.hogander@intel.com>
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

--===============0788805702908707283==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v3,1/2] drm/i915/display: Ensure enough lines between delayed VBlank and VBlank
URL   : https://patchwork.freedesktop.org/series/148127/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16451 -> Patchwork_148127v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_148127v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_148127v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/index.html

Participating hosts (40 -> 43)
------------------------------

  Additional (3): fi-cfl-8109u fi-cfl-guc bat-arlh-2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_148127v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-14:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg2-14/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-dg2-14/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_148127v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@eof:
    - bat-arlh-2:         NOTRUN -> [SKIP][3] ([i915#11345] / [i915#11346]) +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@fbdev@eof.html

  * igt@fbdev@info:
    - bat-arlh-2:         NOTRUN -> [SKIP][4] ([i915#11346] / [i915#1849])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@fbdev@info.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][5] ([i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][6] ([i915#10213] / [i915#11346] / [i915#11671]) +3 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-guc:         NOTRUN -> [SKIP][7] ([i915#4613]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][8] ([i915#4613]) +3 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][9] ([i915#11343] / [i915#11346])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@gem_mmap@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][10] ([i915#10197] / [i915#10211] / [i915#11346] / [i915#11725])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][11] ([i915#11346] / [i915#12637]) +4 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][12] ([i915#10206] / [i915#11346] / [i915#11724])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-arlh-2:         NOTRUN -> [SKIP][13] ([i915#10209] / [i915#11346] / [i915#11681])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][14] -> [DMESG-FAIL][15] ([i915#12061]) +1 other test dmesg-fail
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-mtlp-8/igt@i915_selftest@live.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-arlh-2:         NOTRUN -> [INCOMPLETE][16] ([i915#14046]) +1 other test incomplete
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [PASS][17] -> [DMESG-FAIL][18] ([i915#12061]) +1 other test dmesg-fail
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
    - bat-dg2-11:         [PASS][19] -> [DMESG-FAIL][20] ([i915#12061]) +1 other test dmesg-fail
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  * igt@intel_hwmon@hwmon-read:
    - bat-arlh-2:         NOTRUN -> [SKIP][21] ([i915#11346] / [i915#11680] / [i915#7707]) +1 other test skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@intel_hwmon@hwmon-read.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-arlh-2:         NOTRUN -> [SKIP][22] ([i915#10200] / [i915#11346] / [i915#11666] / [i915#12203])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - bat-arlh-2:         NOTRUN -> [SKIP][23] ([i915#10200] / [i915#11346] / [i915#11666]) +8 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_dsc@dsc-basic:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][24] +12 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/fi-cfl-8109u/igt@kms_dsc@dsc-basic.html

  * igt@kms_psr@psr-cursor-plane-move:
    - fi-cfl-guc:         NOTRUN -> [SKIP][25] +12 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/fi-cfl-guc/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_psr@psr-primary-page-flip:
    - bat-arlh-2:         NOTRUN -> [SKIP][26] ([i915#11346]) +32 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-arlh-2:         NOTRUN -> [SKIP][27] ([i915#10208] / [i915#11346] / [i915#8809])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-arlh-2:         NOTRUN -> [SKIP][28] ([i915#10212] / [i915#11346] / [i915#11726])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - bat-arlh-2:         NOTRUN -> [SKIP][29] ([i915#10214] / [i915#11346] / [i915#11726])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-arlh-2:         NOTRUN -> [SKIP][30] ([i915#10216] / [i915#11346] / [i915#11723])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [DMESG-FAIL][31] ([i915#12061]) -> [PASS][32] +1 other test pass
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-arls-5:         [DMESG-FAIL][33] ([i915#12061]) -> [PASS][34] +1 other test pass
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_pm_rpm@basic-rte:
    - bat-rpls-4:         [DMESG-WARN][35] ([i915#13400]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-rpls-4/igt@kms_pm_rpm@basic-rte.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-rpls-4/igt@kms_pm_rpm@basic-rte.html

  
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
  [i915#11666]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666
  [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
  [i915#11680]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11680
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723
  [i915#11724]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724
  [i915#11725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725
  [i915#11726]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203
  [i915#12637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637
  [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
  [i915#14046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809


Build changes
-------------

  * Linux: CI_DRM_16451 -> Patchwork_148127v1

  CI-20190529: 20190529
  CI_DRM_16451: d6a6684585dd1c86a8ad88d592c73193482cf5a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8332: 8c1b777b5e59af1e17be96470dcc8ff9fb14ff5b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_148127v1: d6a6684585dd1c86a8ad88d592c73193482cf5a1 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/index.html

--===============0788805702908707283==
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
<tr><td><b>Series:</b></td><td>series starting with [v3,1/2] drm/i915/display: Ensure enough lines between delayed VBlank and VBlank</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/148127/">https://patchwork.freedesktop.org/series/148127/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16451 -&gt; Patchwork_148127v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_148127v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_148127v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/index.html</p>
<h2>Participating hosts (40 -&gt; 43)</h2>
<p>Additional (3): fi-cfl-8109u fi-cfl-guc bat-arlh-2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_148127v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg2-14/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-dg2-14/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_148127v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345">i915#11345</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343">i915#11343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725">i915#11725</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724">i915#11724</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046">i915#14046</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11680">i915#11680</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203">i915#12203</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/fi-cfl-8109u/igt@kms_dsc@dsc-basic.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/fi-cfl-guc/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726">i915#11726</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726">i915#11726</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723">i915#11723</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16451/bat-rpls-4/igt@kms_pm_rpm@basic-rte.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400">i915#13400</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148127v1/bat-rpls-4/igt@kms_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16451 -&gt; Patchwork_148127v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16451: d6a6684585dd1c86a8ad88d592c73193482cf5a1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8332: 8c1b777b5e59af1e17be96470dcc8ff9fb14ff5b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_148127v1: d6a6684585dd1c86a8ad88d592c73193482cf5a1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0788805702908707283==--
