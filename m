Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC56879C41
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 20:30:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B30110E1DD;
	Tue, 12 Mar 2024 19:30:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6415410E1DD;
 Tue, 12 Mar 2024 19:30:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2485979771398014566=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Enable_LNL_display_=28rev2?=
 =?utf-8?q?=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Mar 2024 19:30:35 -0000
Message-ID: <171027183540.714564.12244487421345093090@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240312163639.172321-1-gustavo.sousa@intel.com>
In-Reply-To: <20240312163639.172321-1-gustavo.sousa@intel.com>
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

--===============2485979771398014566==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable LNL display (rev2)
URL   : https://patchwork.freedesktop.org/series/130689/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14421 -> Patchwork_130689v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/index.html

Participating hosts (36 -> 31)
------------------------------

  Additional (1): fi-glk-j4005 
  Missing    (6): bat-dg1-7 bat-kbl-2 fi-snb-2520m fi-kbl-8809g bat-dg2-14 bat-mtlp-8 

New tests
---------

  New tests have been introduced between CI_DRM_14421 and Patchwork_130689v2:

### New IGT tests (1) ###

  * igt@kms_force_connector_basic:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_130689v2 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - bat-jsl-1:          [FAIL][1] ([i915#8293]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/bat-jsl-1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-jsl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-jsl-1:          NOTRUN -> [SKIP][3] ([i915#9318])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-jsl-1/igt@debugfs_test@basic-hwmon.html

  * igt@gem_huc_copy@huc-copy:
    - bat-jsl-1:          NOTRUN -> [SKIP][4] ([i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-jsl-1/igt@gem_huc_copy@huc-copy.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][5] ([i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][6] ([i915#4613]) +3 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/fi-glk-j4005/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-arls-2:         NOTRUN -> [SKIP][7] ([i915#10213]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@gem_lmem_swapping@verify-random.html
    - bat-jsl-1:          NOTRUN -> [SKIP][8] ([i915#4613]) +3 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_pm_rps@basic-api:
    - bat-arls-2:         NOTRUN -> [SKIP][9] ([i915#10209])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@hangcheck:
    - bat-rpls-3:         [PASS][10] -> [DMESG-WARN][11] ([i915#5591])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][12] +10 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-jsl-1:          NOTRUN -> [SKIP][13] ([i915#4103]) +1 other test skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-arls-2:         NOTRUN -> [SKIP][14] ([i915#9886])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@kms_dsc@dsc-basic.html
    - bat-jsl-1:          NOTRUN -> [SKIP][15] ([i915#3555] / [i915#9886])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-jsl-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-arls-2:         NOTRUN -> [SKIP][16] ([i915#10207])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@kms_force_connector_basic@force-load-detect.html
    - bat-jsl-1:          NOTRUN -> [SKIP][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@psr-primary-mmap-gtt@edp-1:
    - bat-arls-2:         NOTRUN -> [SKIP][18] ([i915#10196] / [i915#4077] / [i915#9688])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-arls-2:         NOTRUN -> [SKIP][19] ([i915#10208] / [i915#8809])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-jsl-1:          NOTRUN -> [SKIP][20] ([i915#3555])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-arls-2:         NOTRUN -> [SKIP][21] ([i915#10196] / [i915#3708] / [i915#4077]) +1 other test skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-arls-2:         NOTRUN -> [SKIP][22] ([i915#10212] / [i915#3708])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - bat-arls-2:         NOTRUN -> [SKIP][23] ([i915#10214] / [i915#3708])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-arls-2:         NOTRUN -> [SKIP][24] ([i915#10216] / [i915#3708])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - bat-arls-2:         [ABORT][25] ([i915#10237]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/bat-arls-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  
  [i915#10196]: https://gitlab.freedesktop.org/drm/intel/issues/10196
  [i915#10207]: https://gitlab.freedesktop.org/drm/intel/issues/10207
  [i915#10208]: https://gitlab.freedesktop.org/drm/intel/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/intel/issues/10209
  [i915#10212]: https://gitlab.freedesktop.org/drm/intel/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/intel/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/intel/issues/10214
  [i915#10216]: https://gitlab.freedesktop.org/drm/intel/issues/10216
  [i915#10237]: https://gitlab.freedesktop.org/drm/intel/issues/10237
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9886]: https://gitlab.freedesktop.org/drm/intel/issues/9886


Build changes
-------------

  * Linux: CI_DRM_14421 -> Patchwork_130689v2

  CI-20190529: 20190529
  CI_DRM_14421: 1dfbf3ced62236dd318c701e3f21f5a33c226d0d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7756: 7756
  Patchwork_130689v2: 1dfbf3ced62236dd318c701e3f21f5a33c226d0d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

01acc8321587 drm/xe/lnl: Enable display support
b0e490cfcc21 drm/i915/xe2lpd: Load DMC
4183c63fbead drm/i915/xe2lpd: Support MDCLK:CDCLK ratio changes
3d4fd2ad26fd drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state
5a218ac93329 drm/i915: Extract intel_dbuf_mdclk_cdclk_ratio_update()
e1b09ac50281 drm/i915/cdclk: Only compute squash waveform when necessary
bd9f45f657e2 drm/i915/cdclk: Add and use mdclk_source_is_cdclk_pll()
3342011f55e2 drm/i915/cdclk: Rename lnl_cdclk_table to xe2lpd_cdclk_table

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/index.html

--===============2485979771398014566==
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
<tr><td><b>Series:</b></td><td>Enable LNL display (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130689/">https://patchwork.freedesktop.org/series/130689/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14421 -&gt; Patchwork_130689v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/index.html</p>
<h2>Participating hosts (36 -&gt; 31)</h2>
<p>Additional (1): fi-glk-j4005 <br />
  Missing    (6): bat-dg1-7 bat-kbl-2 fi-snb-2520m fi-kbl-8809g bat-dg2-14 bat-mtlp-8 </p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_14421 and Patchwork_130689v2:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_force_connector_basic:<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130689v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-jsl-1/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10213">i915#10213</a>) +3 other tests skip</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10209">i915#10209</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9886">i915#9886</a>)</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9886">i915#9886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10207">i915#10207</a>)</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt@edp-1:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10196">i915#10196</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9688">i915#9688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10196">i915#10196</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/bat-arls-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10237">i915#10237</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/bat-arls-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14421 -&gt; Patchwork_130689v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14421: 1dfbf3ced62236dd318c701e3f21f5a33c226d0d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7756: 7756<br />
  Patchwork_130689v2: 1dfbf3ced62236dd318c701e3f21f5a33c226d0d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>01acc8321587 drm/xe/lnl: Enable display support<br />
b0e490cfcc21 drm/i915/xe2lpd: Load DMC<br />
4183c63fbead drm/i915/xe2lpd: Support MDCLK:CDCLK ratio changes<br />
3d4fd2ad26fd drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state<br />
5a218ac93329 drm/i915: Extract intel_dbuf_mdclk_cdclk_ratio_update()<br />
e1b09ac50281 drm/i915/cdclk: Only compute squash waveform when necessary<br />
bd9f45f657e2 drm/i915/cdclk: Add and use mdclk_source_is_cdclk_pll()<br />
3342011f55e2 drm/i915/cdclk: Rename lnl_cdclk_table to xe2lpd_cdclk_table</p>

</body>
</html>

--===============2485979771398014566==--
