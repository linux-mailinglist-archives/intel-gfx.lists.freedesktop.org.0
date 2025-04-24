Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 817CBA9B9D5
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Apr 2025 23:24:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B143510E14C;
	Thu, 24 Apr 2025 21:24:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2AF410E0CA;
 Thu, 24 Apr 2025 21:24:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3321103800894256001=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/hdcp=3A_refactor?=
 =?utf-8?q?_HDCP_GSC?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Apr 2025 21:24:54 -0000
Message-ID: <174552989497.8616.10845588313546993264@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <cover.1745524803.git.jani.nikula@intel.com>
In-Reply-To: <cover.1745524803.git.jani.nikula@intel.com>
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

--===============3321103800894256001==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: refactor HDCP GSC
URL   : https://patchwork.freedesktop.org/series/148230/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16462 -> Patchwork_148230v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/index.html

Participating hosts (41 -> 42)
------------------------------

  Additional (1): bat-arlh-2 

Known issues
------------

  Here are the changes found in Patchwork_148230v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@eof:
    - bat-arlh-2:         NOTRUN -> [SKIP][1] ([i915#11345] / [i915#11346]) +3 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@fbdev@eof.html

  * igt@fbdev@info:
    - bat-arlh-2:         NOTRUN -> [SKIP][2] ([i915#11346] / [i915#1849])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@fbdev@info.html

  * igt@gem_exec_fence@basic-busy@vecs0:
    - bat-rpls-4:         [PASS][3] -> [DMESG-WARN][4] ([i915#13400]) +1 other test dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16462/bat-rpls-4/igt@gem_exec_fence@basic-busy@vecs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-rpls-4/igt@gem_exec_fence@basic-busy@vecs0.html

  * igt@gem_lmem_swapping@basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][5] ([i915#10213] / [i915#11346] / [i915#11671]) +3 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@gem_lmem_swapping@basic.html

  * igt@gem_mmap@basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][6] ([i915#11343] / [i915#11346])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@gem_mmap@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][7] ([i915#10197] / [i915#10211] / [i915#11346] / [i915#11725])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][8] ([i915#11346] / [i915#12637]) +4 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][9] ([i915#10206] / [i915#11346] / [i915#11724])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@gem_tiled_pread_basic.html

  * igt@i915_module_load@load:
    - bat-twl-2:          [PASS][10] -> [DMESG-WARN][11] ([i915#13736])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16462/bat-twl-2/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-twl-2/igt@i915_module_load@load.html

  * igt@i915_pm_rps@basic-api:
    - bat-arlh-2:         NOTRUN -> [SKIP][12] ([i915#10209] / [i915#11346] / [i915#11681])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live:
    - bat-arlh-2:         NOTRUN -> [ABORT][13] ([i915#13723]) +1 other test abort
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@i915_selftest@live.html

  * igt@intel_hwmon@hwmon-read:
    - bat-arlh-2:         NOTRUN -> [SKIP][14] ([i915#11346] / [i915#11680] / [i915#7707]) +1 other test skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@intel_hwmon@hwmon-read.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-arlh-2:         NOTRUN -> [SKIP][15] ([i915#10200] / [i915#11346] / [i915#11666] / [i915#12203])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - bat-arlh-2:         NOTRUN -> [SKIP][16] ([i915#10200] / [i915#11346] / [i915#11666]) +8 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_psr@psr-primary-page-flip:
    - bat-arlh-2:         NOTRUN -> [SKIP][17] ([i915#11346]) +32 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-arlh-2:         NOTRUN -> [SKIP][18] ([i915#10208] / [i915#11346] / [i915#8809])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-arlh-2:         NOTRUN -> [SKIP][19] ([i915#10212] / [i915#11346] / [i915#11726])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - bat-arlh-2:         NOTRUN -> [SKIP][20] ([i915#10214] / [i915#11346] / [i915#11726])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-arlh-2:         NOTRUN -> [SKIP][21] ([i915#10216] / [i915#11346] / [i915#11723])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [DMESG-FAIL][22] ([i915#12061]) -> [PASS][23] +1 other test pass
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16462/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [DMESG-FAIL][24] ([i915#12061]) -> [PASS][25] +1 other test pass
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16462/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
    - bat-arls-6:         [DMESG-FAIL][26] ([i915#12061]) -> [PASS][27] +1 other test pass
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16462/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arls-6/igt@i915_selftest@live@workarounds.html

  
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
  [i915#13723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723
  [i915#13736]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13736
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809


Build changes
-------------

  * Linux: CI_DRM_16462 -> Patchwork_148230v1

  CI-20190529: 20190529
  CI_DRM_16462: 62267356da69c54c08ef08df02c0afc39aba1c22 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8336: 8336
  Patchwork_148230v1: 62267356da69c54c08ef08df02c0afc39aba1c22 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/index.html

--===============3321103800894256001==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: refactor HDCP GSC</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/148230/">https://patchwork.freedesktop.org/series/148230/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16462 -&gt; Patchwork_148230v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/index.html</p>
<h2>Participating hosts (41 -&gt; 42)</h2>
<p>Additional (1): bat-arlh-2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_148230v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345">i915#11345</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vecs0:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16462/bat-rpls-4/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-rpls-4/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400">i915#13400</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343">i915#11343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725">i915#11725</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724">i915#11724</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16462/bat-twl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-twl-2/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13736">i915#13736</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723">i915#13723</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11680">i915#11680</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203">i915#12203</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726">i915#11726</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726">i915#11726</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arlh-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723">i915#11723</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16462/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16462/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16462/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148230v1/bat-arls-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16462 -&gt; Patchwork_148230v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16462: 62267356da69c54c08ef08df02c0afc39aba1c22 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8336: 8336<br />
  Patchwork_148230v1: 62267356da69c54c08ef08df02c0afc39aba1c22 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3321103800894256001==--
