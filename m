Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D96A6B15679
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 02:29:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A30A10E346;
	Wed, 30 Jul 2025 00:29:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE53410E346;
 Wed, 30 Jul 2025 00:29:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8299139184167416442=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/guc=3A_Include_t?=
 =?utf-8?q?he_GuC_registers_in_the_error_state?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Jul 2025 00:29:06 -0000
Message-ID: <175383534696.197849.2397102037563868570@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250729233305.1246875-2-daniele.ceraolospurio@intel.com>
In-Reply-To: <20250729233305.1246875-2-daniele.ceraolospurio@intel.com>
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

--===============8299139184167416442==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Include the GuC registers in the error state
URL   : https://patchwork.freedesktop.org/series/152250/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16938 -> Patchwork_152250v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_152250v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_152250v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/index.html

Participating hosts (44 -> 43)
------------------------------

  Additional (1): bat-dg1-7 
  Missing    (2): bat-atsm-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_152250v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live:
    - bat-dg2-8:          [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-8/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-8/igt@i915_selftest@live.html
    - bat-dg1-7:          NOTRUN -> [ABORT][3] +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@i915_selftest@live.html
    - bat-adlp-9:         [PASS][4] -> [ABORT][5] +1 other test abort
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-adlp-9/igt@i915_selftest@live.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-adlp-9/igt@i915_selftest@live.html
    - bat-twl-1:          [PASS][6] -> [ABORT][7] +1 other test abort
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-twl-1/igt@i915_selftest@live.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-twl-1/igt@i915_selftest@live.html
    - bat-rplp-1:         [PASS][8] -> [ABORT][9] +1 other test abort
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-rplp-1/igt@i915_selftest@live.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-rplp-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@guc_hang:
    - bat-dg2-9:          [PASS][10] -> [ABORT][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-9/igt@i915_selftest@live@guc_hang.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-9/igt@i915_selftest@live@guc_hang.html
    - bat-adlp-11:        [PASS][12] -> [INCOMPLETE][13] +1 other test incomplete
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-adlp-11/igt@i915_selftest@live@guc_hang.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-adlp-11/igt@i915_selftest@live@guc_hang.html
    - bat-dg1-6:          [PASS][14] -> [ABORT][15] +1 other test abort
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg1-6/igt@i915_selftest@live@guc_hang.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-6/igt@i915_selftest@live@guc_hang.html
    - bat-adlp-6:         [PASS][16] -> [ABORT][17] +1 other test abort
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-adlp-6/igt@i915_selftest@live@guc_hang.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-adlp-6/igt@i915_selftest@live@guc_hang.html
    - bat-twl-2:          [PASS][18] -> [ABORT][19] +1 other test abort
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-twl-2/igt@i915_selftest@live@guc_hang.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-twl-2/igt@i915_selftest@live@guc_hang.html
    - bat-dg2-11:         [PASS][20] -> [ABORT][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-11/igt@i915_selftest@live@guc_hang.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-11/igt@i915_selftest@live@guc_hang.html
    - bat-dg2-14:         [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-14/igt@i915_selftest@live@guc_hang.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-14/igt@i915_selftest@live@guc_hang.html

  
New tests
---------

  New tests have been introduced between CI_DRM_16938 and Patchwork_152250v1:

### New IGT tests (2) ###

  * igt@i915_selftest@addfb25-x-tiled-mismatch-legacy:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_selftest@basic-with_fd_dup:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_152250v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap@basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][24] ([i915#4083])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@gem_mmap@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][25] ([i915#4077]) +2 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][26] ([i915#4079]) +1 other test skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-7:          NOTRUN -> [SKIP][27] ([i915#11681] / [i915#6621])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live:
    - bat-dg2-11:         [PASS][28] -> [ABORT][29] ([i915#12061])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-11/igt@i915_selftest@live.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-11/igt@i915_selftest@live.html
    - bat-dg2-14:         [PASS][30] -> [INCOMPLETE][31] ([i915#12061])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-14/igt@i915_selftest@live.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-14/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [PASS][32] -> [DMESG-FAIL][33] ([i915#12061])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html
    - bat-dg2-14:         [PASS][34] -> [DMESG-FAIL][35] ([i915#12061])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg1-7:          NOTRUN -> [SKIP][36] ([i915#4215])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - bat-dg1-7:          NOTRUN -> [SKIP][37] ([i915#4212]) +7 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-dg1-7:          NOTRUN -> [SKIP][38] ([i915#4103] / [i915#4213]) +1 other test skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][39] ([i915#3555] / [i915#3840])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-dg1-7:          NOTRUN -> [SKIP][40]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-dg1-7:          NOTRUN -> [SKIP][41] ([i915#5354])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-primary-page-flip:
    - bat-dg1-7:          NOTRUN -> [SKIP][42] ([i915#1072] / [i915#9732]) +3 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-dg1-7:          NOTRUN -> [SKIP][43] ([i915#3555])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg1-7:          NOTRUN -> [SKIP][44] ([i915#3708] / [i915#4077]) +1 other test skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-dg1-7:          NOTRUN -> [SKIP][45] ([i915#3708]) +3 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@prime_vgem@basic-fence-read.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests@dma_fence_chain:
    - fi-bsw-n3050:       [ABORT][46] ([i915#12904]) -> [PASS][47] +1 other test pass
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@i915_module_load@reload:
    - bat-adlp-6:         [DMESG-WARN][48] -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-adlp-6/igt@i915_module_load@reload.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-adlp-6/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [DMESG-WARN][50] ([i915#13735]) -> [PASS][51] +79 other tests pass
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-2:         [DMESG-FAIL][52] ([i915#12061]) -> [PASS][53] +1 other test pass
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-arlh-2/igt@i915_selftest@live@workarounds.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-arlh-2/igt@i915_selftest@live@workarounds.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-7567u:       [DMESG-WARN][54] ([i915#13735] / [i915#180]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/fi-kbl-7567u/igt@kms_busy@basic@flip.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/fi-kbl-7567u/igt@kms_busy@basic@flip.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [DMESG-WARN][56] ([i915#13735] / [i915#13890] / [i915#180]) -> [PASS][57] +52 other tests pass
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-dg2-9:          [DMESG-FAIL][58] ([i915#12061]) -> [ABORT][59] ([i915#12061])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-9/igt@i915_selftest@live.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-9/igt@i915_selftest@live.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
  [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732


Build changes
-------------

  * Linux: CI_DRM_16938 -> Patchwork_152250v1

  CI-20190529: 20190529
  CI_DRM_16938: b6a72d53a8082ee6ef701042e7cb8a93d6a2b678 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8478: 3e7c2bd685397f852853878aef4d9c1e4889a28b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_152250v1: b6a72d53a8082ee6ef701042e7cb8a93d6a2b678 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/index.html

--===============8299139184167416442==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Include the GuC registers in the error state</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/152250/">https://patchwork.freedesktop.org/series/152250/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16938 -&gt; Patchwork_152250v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_152250v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_152250v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Additional (1): bat-dg1-7 <br />
  Missing    (2): bat-atsm-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_152250v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-8/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-adlp-9/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-adlp-9/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-twl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-twl-1/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-rplp-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-rplp-1/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_hang:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-9/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-9/igt@i915_selftest@live@guc_hang.html">ABORT</a></li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-adlp-11/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-adlp-11/igt@i915_selftest@live@guc_hang.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg1-6/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-6/igt@i915_selftest@live@guc_hang.html">ABORT</a> +1 other test abort</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-adlp-6/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-adlp-6/igt@i915_selftest@live@guc_hang.html">ABORT</a> +1 other test abort</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-twl-2/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-twl-2/igt@i915_selftest@live@guc_hang.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-11/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-11/igt@i915_selftest@live@guc_hang.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-14/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-14/igt@i915_selftest@live@guc_hang.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_16938 and Patchwork_152250v1:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@i915_selftest@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@basic-with_fd_dup:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_152250v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-11/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-11/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-14/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-14/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg1-7/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence_chain:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-adlp-6/igt@i915_module_load@reload.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-adlp-6/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> +79 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-arlh-2/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-arlh-2/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/fi-kbl-7567u/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/fi-kbl-7567u/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> +52 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16938/bat-dg2-9/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152250v1/bat-dg2-9/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16938 -&gt; Patchwork_152250v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16938: b6a72d53a8082ee6ef701042e7cb8a93d6a2b678 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8478: 3e7c2bd685397f852853878aef4d9c1e4889a28b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_152250v1: b6a72d53a8082ee6ef701042e7cb8a93d6a2b678 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8299139184167416442==--
