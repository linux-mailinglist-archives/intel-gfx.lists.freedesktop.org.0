Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F608C7BB0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 19:55:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 518B010E1C0;
	Thu, 16 May 2024 17:55:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2B3789F5F;
 Thu, 16 May 2024 17:55:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7516359662976236243=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_ACPI=3A_video=3A_Fix_name_c?=
 =?utf-8?q?ollision_with_architecture=27s_video=2Eo?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 16 May 2024 17:55:47 -0000
Message-ID: <171588214785.2122196.593374158749534337@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240516124317.710-1-tzimmermann@suse.de>
In-Reply-To: <20240516124317.710-1-tzimmermann@suse.de>
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

--===============7516359662976236243==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: ACPI: video: Fix name collision with architecture's video.o
URL   : https://patchwork.freedesktop.org/series/133694/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14775 -> Patchwork_133694v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/index.html

Participating hosts (41 -> 41)
------------------------------

  Additional (4): fi-elk-e7500 bat-jsl-3 bat-jsl-1 bat-arls-3 
  Missing    (4): bat-adlp-9 bat-mtlp-9 fi-snb-2520m fi-kbl-8809g 

Known issues
------------

  Here are the changes found in Patchwork_133694v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-jsl-3:          NOTRUN -> [SKIP][1] ([i915#9318])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-3/igt@debugfs_test@basic-hwmon.html
    - bat-jsl-1:          NOTRUN -> [SKIP][2] ([i915#9318])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html
    - bat-arls-3:         NOTRUN -> [SKIP][3] ([i915#9318])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@debugfs_test@basic-hwmon.html

  * igt@gem_huc_copy@huc-copy:
    - bat-jsl-1:          NOTRUN -> [SKIP][4] ([i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html
    - bat-jsl-3:          NOTRUN -> [SKIP][5] ([i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - bat-jsl-3:          NOTRUN -> [SKIP][6] ([i915#4613]) +3 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-3/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-arls-3:         NOTRUN -> [SKIP][7] ([i915#10213]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-jsl-1:          NOTRUN -> [SKIP][8] ([i915#4613]) +3 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-arls-3:         NOTRUN -> [SKIP][9] ([i915#4083])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@gem_mmap@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-arls-3:         NOTRUN -> [SKIP][10] ([i915#10197] / [i915#10211] / [i915#4079])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-arls-3:         NOTRUN -> [SKIP][11] ([i915#10196] / [i915#4077]) +2 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-arls-3:         NOTRUN -> [SKIP][12] ([i915#10206] / [i915#4079])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-arls-3:         NOTRUN -> [SKIP][13] ([i915#10209])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@i915_pm_rps@basic-api.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - bat-arls-3:         NOTRUN -> [SKIP][14] ([i915#10200]) +9 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-arls-3:         NOTRUN -> [SKIP][15] ([i915#10202]) +1 other test skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-jsl-3:          NOTRUN -> [SKIP][16] ([i915#4103]) +1 other test skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-jsl-1:          NOTRUN -> [SKIP][17] ([i915#4103]) +1 other test skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-arls-3:         NOTRUN -> [SKIP][18] ([i915#9886])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@kms_dsc@dsc-basic.html
    - bat-jsl-1:          NOTRUN -> [SKIP][19] ([i915#3555] / [i915#9886])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-1/igt@kms_dsc@dsc-basic.html
    - bat-jsl-3:          NOTRUN -> [SKIP][20] ([i915#3555] / [i915#9886])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-3/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-arls-3:         NOTRUN -> [SKIP][21] ([i915#10207])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@kms_force_connector_basic@force-load-detect.html
    - bat-jsl-3:          NOTRUN -> [SKIP][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html
    - bat-jsl-1:          NOTRUN -> [SKIP][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-arls-3:         NOTRUN -> [SKIP][24] ([i915#9812])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-elk-e7500:       NOTRUN -> [SKIP][25] +24 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/fi-elk-e7500/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - bat-arls-3:         NOTRUN -> [SKIP][26] ([i915#9732]) +3 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@kms_psr@psr-primary-mmap-gtt.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-jsl-3:          NOTRUN -> [SKIP][27] ([i915#3555])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-jsl-1:          NOTRUN -> [SKIP][28] ([i915#3555])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-arls-3:         NOTRUN -> [SKIP][29] ([i915#10208] / [i915#8809])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-arls-3:         NOTRUN -> [SKIP][30] ([i915#10196] / [i915#3708] / [i915#4077]) +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-arls-3:         NOTRUN -> [SKIP][31] ([i915#10212] / [i915#3708])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - bat-arls-3:         NOTRUN -> [SKIP][32] ([i915#10214] / [i915#3708])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-arls-3:         NOTRUN -> [SKIP][33] ([i915#10216] / [i915#3708])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@core_auth@basic-auth:
    - {bat-apl-1}:        [DMESG-WARN][34] ([i915#1982]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/bat-apl-1/igt@core_auth@basic-auth.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-apl-1/igt@core_auth@basic-auth.html

  * igt@i915_selftest@live@active:
    - bat-arls-1:         [DMESG-WARN][36] ([i915#10999]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/bat-arls-1/igt@i915_selftest@live@active.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-1/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@objects:
    - bat-arls-1:         [DMESG-FAIL][38] ([i915#10262]) -> [PASS][39] +22 other tests pass
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/bat-arls-1/igt@i915_selftest@live@objects.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-1/igt@i915_selftest@live@objects.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10196
  [i915#10197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197
  [i915#10200]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200
  [i915#10202]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10202
  [i915#10206]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206
  [i915#10207]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10207
  [i915#10208]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
  [i915#10211]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211
  [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
  [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
  [i915#10262]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262
  [i915#10999]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10999
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_14775 -> Patchwork_133694v1

  CI-20190529: 20190529
  CI_DRM_14775: 3b6a503228b84c010794599203ac3e1e3d349bab @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7858: 133c90d6aabcd90871e36946317c90ee83c2f847 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133694v1: 3b6a503228b84c010794599203ac3e1e3d349bab @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/index.html

--===============7516359662976236243==
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
<tr><td><b>Series:</b></td><td>ACPI: video: Fix name collision with architecture&#x27;s video.o</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133694/">https://patchwork.freedesktop.org/series/133694/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14775 -&gt; Patchwork_133694v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/index.html</p>
<h2>Participating hosts (41 -&gt; 41)</h2>
<p>Additional (4): fi-elk-e7500 bat-jsl-3 bat-jsl-1 bat-arls-3 <br />
  Missing    (4): bat-adlp-9 bat-mtlp-9 fi-snb-2520m fi-kbl-8809g </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133694v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-3/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>)</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>)</li>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-3/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-3/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10196">i915#10196</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10202">i915#10202</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>)</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>)</li>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-3/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10207">i915#10207</a>)</li>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/fi-elk-e7500/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10196">i915#10196</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-3/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/bat-apl-1/igt@core_auth@basic-auth.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-apl-1/igt@core_auth@basic-auth.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/bat-arls-1/igt@i915_selftest@live@active.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10999">i915#10999</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-1/igt@i915_selftest@live@active.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/bat-arls-1/igt@i915_selftest@live@objects.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262">i915#10262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133694v1/bat-arls-1/igt@i915_selftest@live@objects.html">PASS</a> +22 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14775 -&gt; Patchwork_133694v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14775: 3b6a503228b84c010794599203ac3e1e3d349bab @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7858: 133c90d6aabcd90871e36946317c90ee83c2f847 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133694v1: 3b6a503228b84c010794599203ac3e1e3d349bab @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7516359662976236243==--
