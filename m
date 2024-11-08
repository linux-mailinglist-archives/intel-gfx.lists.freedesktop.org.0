Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 022DE9C197F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 10:49:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A34B410E952;
	Fri,  8 Nov 2024 09:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C10A610E952;
 Fri,  8 Nov 2024 09:49:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7435772231138435674=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/watermark=3A_Modif?=
 =?utf-8?q?y_latency_programmed_into_PKG=5FC=5FLATENCY?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 08 Nov 2024 09:49:00 -0000
Message-ID: <173105934078.1426263.7426367194921501170@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241108085048.919665-1-suraj.kandpal@intel.com>
In-Reply-To: <20241108085048.919665-1-suraj.kandpal@intel.com>
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

--===============7435772231138435674==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/watermark: Modify latency programmed into PKG_C_LATENCY
URL   : https://patchwork.freedesktop.org/series/141091/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15656 -> Patchwork_141091v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_141091v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_141091v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/index.html

Participating hosts (44 -> 43)
------------------------------

  Additional (1): bat-arls-5 
  Missing    (2): fi-rkl-11600 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_141091v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_dsc@dsc-basic:
    - bat-arls-5:         NOTRUN -> [SKIP][1] +16 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_dsc@dsc-basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_141091v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-arls-5:         NOTRUN -> [SKIP][2] ([i915#9318])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@eof:
    - bat-arls-5:         NOTRUN -> [SKIP][3] ([i915#11191] / [i915#11345]) +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@fbdev@eof.html

  * igt@fbdev@info:
    - bat-arls-5:         NOTRUN -> [SKIP][4] ([i915#1849])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@fbdev@info.html

  * igt@gem_lmem_swapping@basic:
    - bat-arls-5:         NOTRUN -> [SKIP][5] ([i915#10213] / [i915#11671]) +3 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@gem_lmem_swapping@basic.html

  * igt@gem_mmap@basic:
    - bat-arls-5:         NOTRUN -> [SKIP][6] ([i915#11343] / [i915#4083])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@gem_mmap@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-arls-5:         NOTRUN -> [SKIP][7] ([i915#10197] / [i915#10211] / [i915#4079])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-arls-5:         NOTRUN -> [SKIP][8] ([i915#12637] / [i915#4077]) +2 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-arls-5:         NOTRUN -> [SKIP][9] ([i915#10206] / [i915#4079])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-arls-5:         NOTRUN -> [SKIP][10] ([i915#10209] / [i915#11681])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         [PASS][11] -> [ABORT][12] ([i915#10341])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15656/bat-arlh-3/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-arls-5:         NOTRUN -> [DMESG-WARN][13] ([i915#12727]) +33 other tests dmesg-warn
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-arls-5:         NOTRUN -> [DMESG-WARN][14] ([i915#10341] / [i915#12727])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@sanitycheck:
    - bat-arls-5:         NOTRUN -> [DMESG-WARN][15] ([i915#10341]) +6 other tests dmesg-warn
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][16] -> [ABORT][17] ([i915#12061])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15656/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-arls-5:         NOTRUN -> [SKIP][18] ([i915#10200] / [i915#12203])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - bat-arls-5:         NOTRUN -> [SKIP][19] ([i915#10200]) +8 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - bat-dg2-13:         [PASS][20] -> [DMESG-WARN][21] ([i915#12253])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15656/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - bat-arls-5:         NOTRUN -> [SKIP][22] ([i915#3637]) +3 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-arls-5:         NOTRUN -> [SKIP][23] ([i915#10207])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-arls-5:         NOTRUN -> [SKIP][24] ([i915#4342] / [i915#5354])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-arls-5:         NOTRUN -> [SKIP][25] ([i915#9812])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-primary-page-flip:
    - bat-arls-5:         NOTRUN -> [SKIP][26] ([i915#9732]) +3 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-arls-5:         NOTRUN -> [SKIP][27] ([i915#10208] / [i915#8809])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-arls-5:         NOTRUN -> [SKIP][28] ([i915#3708])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-read:
    - bat-arls-5:         NOTRUN -> [SKIP][29] ([i915#10212] / [i915#3708])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - bat-arls-5:         NOTRUN -> [SKIP][30] ([i915#12637] / [i915#3708] / [i915#4077]) +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - bat-arls-5:         NOTRUN -> [SKIP][31] ([i915#10214] / [i915#3708])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-arls-5:         NOTRUN -> [SKIP][32] ([i915#10216] / [i915#3708])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [ABORT][33] ([i915#12061]) -> [PASS][34] +1 other test pass
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15656/bat-mtlp-8/igt@i915_selftest@live.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-mtlp-8/igt@i915_selftest@live.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197
  [i915#10200]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200
  [i915#10206]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206
  [i915#10207]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10207
  [i915#10208]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
  [i915#10211]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211
  [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
  [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#11191]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11191
  [i915#11343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343
  [i915#11345]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345
  [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203
  [i915#12253]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253
  [i915#12637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637
  [i915#12727]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12727
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812


Build changes
-------------

  * Linux: CI_DRM_15656 -> Patchwork_141091v1

  CI-20190529: 20190529
  CI_DRM_15656: 5f445c6723de9ac7087170f4ee8fcb2050ab8346 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8100: 84e42580f918da926481fd2fb37be01451d6ee9a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_141091v1: 5f445c6723de9ac7087170f4ee8fcb2050ab8346 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/index.html

--===============7435772231138435674==
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
<tr><td><b>Series:</b></td><td>drm/i915/watermark: Modify latency programmed into PKG_C_LATENCY</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/141091/">https://patchwork.freedesktop.org/series/141091/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15656 -&gt; Patchwork_141091v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_141091v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_141091v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Additional (1): bat-arls-5 <br />
  Missing    (2): fi-rkl-11600 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_141091v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_dsc@dsc-basic:<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_dsc@dsc-basic.html">SKIP</a> +16 other tests skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_141091v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11191">i915#11191</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345">i915#11345</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343">i915#11343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15656/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arlh-3/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12727">i915#12727</a>) +33 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12727">i915#12727</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>) +6 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15656/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203">i915#12203</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_addfb_basic@clobberred-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15656/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253">i915#12253</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10207">i915#10207</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342">i915#4342</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-arls-5/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15656/bat-mtlp-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141091v1/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15656 -&gt; Patchwork_141091v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15656: 5f445c6723de9ac7087170f4ee8fcb2050ab8346 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8100: 84e42580f918da926481fd2fb37be01451d6ee9a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_141091v1: 5f445c6723de9ac7087170f4ee8fcb2050ab8346 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7435772231138435674==--
