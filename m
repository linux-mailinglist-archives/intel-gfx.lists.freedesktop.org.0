Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D1A75712E
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 03:03:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69CB810E2C4;
	Tue, 18 Jul 2023 01:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CEEE510E2C2;
 Tue, 18 Jul 2023 01:03:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C3202A0093;
 Tue, 18 Jul 2023 01:03:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7989646514131131919=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 18 Jul 2023 01:03:25 -0000
Message-ID: <168964220576.22204.291834221429799446@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230717234905.117114-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20230717234905.117114-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/huc=3A_check_HuC_and_GuC_version_compatibility_on_MTL_=28?=
 =?utf-8?q?rev2=29?=
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

--===============7989646514131131919==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/huc: check HuC and GuC version compatibility on MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/120572/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13392 -> Patchwork_120572v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_120572v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_120572v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/index.html

Participating hosts (43 -> 43)
------------------------------

  Additional (1): bat-rpls-2 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_120572v2:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_wait@busy@all-engines:
    - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/fi-kbl-soraka/igt@gem_wait@busy@all-engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/fi-kbl-soraka/igt@gem_wait@busy@all-engines.html

  
Known issues
------------

  Here are the changes found in Patchwork_120572v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-rpls-2:         NOTRUN -> [SKIP][3] ([i915#7456])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@info:
    - bat-rpls-2:         NOTRUN -> [SKIP][4] ([i915#1849] / [i915#2582])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@fbdev@info.html

  * igt@fbdev@read:
    - bat-rpls-2:         NOTRUN -> [SKIP][5] ([i915#2582]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@fbdev@read.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-rpls-2:         NOTRUN -> [SKIP][6] ([i915#4613]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_tiled_pread_basic:
    - bat-rpls-2:         NOTRUN -> [SKIP][7] ([i915#3282])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - bat-rpls-2:         NOTRUN -> [SKIP][8] ([i915#7561])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-cfl-guc:         [PASS][9] -> [FAIL][10] ([i915#7940])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-cfl-8700k:       [PASS][11] -> [FAIL][12] ([i915#7940])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-guc:         [PASS][13] -> [FAIL][14] ([i915#7940])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/fi-skl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_pm_rps@basic-api:
    - bat-rpls-2:         NOTRUN -> [SKIP][15] ([i915#6621])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         NOTRUN -> [DMESG-FAIL][16] ([i915#4258] / [i915#7913])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [PASS][17] -> [DMESG-FAIL][18] ([i915#7269])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-mtlp-8/igt@i915_selftest@live@requests.html
    - bat-rpls-1:         [PASS][19] -> [ABORT][20] ([i915#7911] / [i915#7920] / [i915#7982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/bat-rpls-1/igt@i915_selftest@live@requests.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-1/igt@i915_selftest@live@requests.html
    - bat-adlp-9:         [PASS][21] -> [ABORT][22] ([i915#7913] / [i915#7982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/bat-adlp-9/igt@i915_selftest@live@requests.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-adlp-9/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         NOTRUN -> [DMESG-WARN][23] ([i915#6367])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@i915_selftest@live@slpc.html

  * igt@kms_busy@basic:
    - bat-rpls-2:         NOTRUN -> [SKIP][24] ([i915#1845]) +15 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@kms_busy@basic.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - bat-rpls-2:         NOTRUN -> [SKIP][25] ([i915#7828]) +8 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-rpls-2:         NOTRUN -> [SKIP][26] ([i915#3637]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-rpls-2:         NOTRUN -> [SKIP][27] ([fdo#109285])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-rpls-2:         NOTRUN -> [SKIP][28] ([i915#1849])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_psr@cursor_plane_move:
    - bat-rplp-1:         NOTRUN -> [ABORT][29] ([i915#8434] / [i915#8668])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rplp-1/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@primary_page_flip:
    - bat-rplp-1:         NOTRUN -> [SKIP][30] ([i915#1072])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rplp-1/igt@kms_psr@primary_page_flip.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-rpls-2:         NOTRUN -> [SKIP][31] ([i915#1072]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rpls-2:         NOTRUN -> [SKIP][32] ([i915#3555])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-rpls-2:         NOTRUN -> [SKIP][33] ([fdo#109295] / [i915#1845] / [i915#3708])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-write:
    - bat-rpls-2:         NOTRUN -> [SKIP][34] ([fdo#109295] / [i915#3708]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-cfl-8109u:       [FAIL][35] ([i915#7940]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-rkl-11600:       [FAIL][37] ([i915#7940]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [DMESG-WARN][39] ([i915#7699]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - {bat-dg2-13}:       [DMESG-WARN][41] ([Intel XE#485]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][43] ([i915#8442] / [i915#8668]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-adlp-11:        [DMESG-WARN][45] ([i915#4423]) -> [ABORT][46] ([i915#4423])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/bat-adlp-11/igt@i915_module_load@load.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-adlp-11/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-guc:         [FAIL][47] ([i915#7940]) -> [SKIP][48] ([fdo#109271])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-6:         [DMESG-FAIL][49] ([i915#8497]) -> [DMESG-FAIL][50] ([i915#7269])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/bat-mtlp-6/igt@i915_selftest@live@requests.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-mtlp-6/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#485]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/485
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7269]: https://gitlab.freedesktop.org/drm/intel/issues/7269
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8434]: https://gitlab.freedesktop.org/drm/intel/issues/8434
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8497]: https://gitlab.freedesktop.org/drm/intel/issues/8497
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_13392 -> Patchwork_120572v2

  CI-20190529: 20190529
  CI_DRM_13392: 4903d5c2fbae6ab902d3750aaf6a0264b8391442 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7388: 7388
  Patchwork_120572v2: 4903d5c2fbae6ab902d3750aaf6a0264b8391442 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a32c64ec116d drm/i915/huc: check HuC and GuC version compatibility on MTL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/index.html

--===============7989646514131131919==
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
<tr><td><b>Series:</b></td><td>drm/i915/huc: check HuC and GuC version compatibility on MTL (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/120572/">https://patchwork.freedesktop.org/series/120572/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13392 -&gt; Patchwork_120572v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_120572v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_120572v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/index.html</p>
<h2>Participating hosts (43 -&gt; 43)</h2>
<p>Additional (1): bat-rpls-2 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_120572v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_wait@busy@all-engines:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/fi-kbl-soraka/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/fi-kbl-soraka/igt@gem_wait@busy@all-engines.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_120572v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/fi-skl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/fi-skl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-mtlp-8/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7269">i915#7269</a>)</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>)</p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/bat-adlp-9/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-adlp-9/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8434">i915#8434</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rplp-1/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rpls-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/485">Intel XE#485</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13392/bat-mtlp-6/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8497">i915#8497</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120572v2/bat-mtlp-6/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7269">i915#7269</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13392 -&gt; Patchwork_120572v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13392: 4903d5c2fbae6ab902d3750aaf6a0264b8391442 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7388: 7388<br />
  Patchwork_120572v2: 4903d5c2fbae6ab902d3750aaf6a0264b8391442 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a32c64ec116d drm/i915/huc: check HuC and GuC version compatibility on MTL</p>

</body>
</html>

--===============7989646514131131919==--
