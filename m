Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 969955ED43A
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 07:27:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D673110E254;
	Wed, 28 Sep 2022 05:26:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5DBD610E254;
 Wed, 28 Sep 2022 05:26:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5439EA0099;
 Wed, 28 Sep 2022 05:26:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2174924024457304414=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Wed, 28 Sep 2022 05:26:44 -0000
Message-ID: <166434280431.594.1530888319950121689@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220927225047.227773-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220927225047.227773-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Do_both_crawl_and_squash_when_changing_cdclk_?=
 =?utf-8?b?KHJldjIp?=
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

--===============2174924024457304414==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Do both crawl and squash when changing cdclk (rev2)
URL   : https://patchwork.freedesktop.org/series/109136/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12193 -> Patchwork_109136v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109136v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109136v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/index.html

Participating hosts (44 -> 44)
------------------------------

  Additional (2): fi-rkl-11600 fi-tgl-dsi 
  Missing    (2): bat-dg2-9 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109136v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_hangman@error-state-basic:
    - fi-blb-e6850:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-blb-e6850/igt@i915_hangman@error-state-basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-blb-e6850/igt@i915_hangman@error-state-basic.html
    - fi-pnv-d510:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-pnv-d510/igt@i915_hangman@error-state-basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-pnv-d510/igt@i915_hangman@error-state-basic.html

  * igt@i915_module_load@load:
    - fi-ilk-650:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-ilk-650/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-ilk-650/igt@i915_module_load@load.html
    - fi-skl-6700k2:      [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-skl-6700k2/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-skl-6700k2/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-cfl-8700k/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-cfl-8700k/igt@i915_module_load@load.html
    - fi-bsw-kefka:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-bsw-kefka/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bsw-kefka/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-cfl-guc/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-cfl-guc/igt@i915_module_load@load.html
    - fi-bdw-5557u:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-bdw-5557u/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bdw-5557u/igt@i915_module_load@load.html
    - fi-cfl-8109u:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-cfl-8109u/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-cfl-8109u/igt@i915_module_load@load.html
    - fi-snb-2600:        [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-snb-2600/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-snb-2600/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-tgl-u2:          [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-tgl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-tgl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-bxt-dsi:         [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-bxt-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bxt-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-adl-ddr5:        [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-adl-ddr5/igt@i915_pm_rpm@basic-pci-d3-state.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-adl-ddr5/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-glk-dsi:         [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-glk-j4005:       [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-glk-j4005/igt@i915_pm_rpm@basic-pci-d3-state.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-glk-j4005/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-rkl-guc:         [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-rkl-11600:       NOTRUN -> [DMESG-WARN][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@i915_pm_rpm@basic-pci-d3-state.html
    - bat-dg1-5:          [PASS][34] -> [DMESG-WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-dg1-5/igt@i915_pm_rpm@basic-pci-d3-state.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-dg1-5/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_busy@basic@flip:
    - fi-elk-e7500:       [PASS][36] -> [INCOMPLETE][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-elk-e7500/igt@kms_busy@basic@flip.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-elk-e7500/igt@kms_busy@basic@flip.html
    - fi-hsw-g3258:       [PASS][38] -> [INCOMPLETE][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-hsw-g3258/igt@kms_busy@basic@flip.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-hsw-g3258/igt@kms_busy@basic@flip.html
    - fi-hsw-4770:        [PASS][40] -> [INCOMPLETE][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-hsw-4770/igt@kms_busy@basic@flip.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-hsw-4770/igt@kms_busy@basic@flip.html
    - fi-ivb-3770:        [PASS][42] -> [INCOMPLETE][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-ivb-3770/igt@kms_busy@basic@flip.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-ivb-3770/igt@kms_busy@basic@flip.html
    - fi-skl-6600u:       [PASS][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-skl-6600u/igt@kms_busy@basic@flip.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-skl-6600u/igt@kms_busy@basic@flip.html
    - fi-snb-2520m:       [PASS][46] -> [INCOMPLETE][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-snb-2520m/igt@kms_busy@basic@flip.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-snb-2520m/igt@kms_busy@basic@flip.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-7567u:       [PASS][48] -> [DMESG-WARN][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
    - fi-bdw-gvtdvm:      [PASS][50] -> [DMESG-WARN][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {bat-dg2-8}:        [PASS][52] -> [DMESG-WARN][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-dg2-8/igt@i915_pm_rpm@basic-pci-d3-state.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-dg2-8/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-adlm-1}:       [PASS][54] -> [DMESG-WARN][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-adlm-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-adlm-1/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-jsl-1}:        [PASS][56] -> [DMESG-WARN][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {fi-jsl-1}:         [PASS][58] -> [DMESG-WARN][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-rpls-1}:       [PASS][60] -> [DMESG-WARN][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-rpls-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-rpls-1/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {fi-ehl-2}:         [PASS][62] -> [DMESG-WARN][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-ehl-2/igt@i915_pm_rpm@basic-pci-d3-state.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-ehl-2/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-adlp-6}:       [PASS][64] -> [DMESG-WARN][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-adlp-6/igt@i915_pm_rpm@basic-pci-d3-state.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-adlp-6/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-rplp-1}:       [PASS][66] -> [DMESG-WARN][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-rplp-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-rplp-1/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-jsl-3}:        [PASS][68] -> [DMESG-WARN][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-jsl-3/igt@i915_pm_rpm@basic-pci-d3-state.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-jsl-3/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-dg2-11}:       [PASS][70] -> [DMESG-WARN][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-dg2-11/igt@i915_pm_rpm@basic-pci-d3-state.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-dg2-11/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-adln-1}:       [PASS][72] -> [DMESG-WARN][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-adln-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-adln-1/igt@i915_pm_rpm@basic-pci-d3-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_109136v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-bsw-nick:        [PASS][74] -> [INCOMPLETE][75] ([i915#4831])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-rkl-11600:       NOTRUN -> [SKIP][76] ([i915#2190])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html

  * igt@gem_tiled_pread_basic:
    - fi-rkl-11600:       NOTRUN -> [SKIP][77] ([i915#3282])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-rkl-11600:       NOTRUN -> [SKIP][78] ([i915#3012])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-rkl-11600:       NOTRUN -> [SKIP][79] ([fdo#111827]) +7 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - fi-rkl-11600:       NOTRUN -> [SKIP][80] ([i915#4103])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-rkl-11600:       NOTRUN -> [SKIP][81] ([fdo#109285] / [i915#4098])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-rkl-11600:       NOTRUN -> [SKIP][82] ([i915#1072]) +3 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-rkl-11600:       NOTRUN -> [SKIP][83] ([i915#3555] / [i915#4098])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][84] ([i915#4312] / [i915#5594])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-hsw-4770/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][85] ([i915#4312])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-skl-6700k2/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][86] ([i915#4312])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-cfl-8109u/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][87] ([i915#4312])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-ivb-3770/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][88] ([i915#4312])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-elk-e7500/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][89] ([i915#4312])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-snb-2600/igt@runner@aborted.html
    - fi-ilk-650:         NOTRUN -> [FAIL][90] ([i915#4312])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-ilk-650/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][91] ([i915#4312])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-tgl-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][92] ([i915#4312])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bxt-dsi/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][93] ([i915#4312])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-skl-6600u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][94] ([i915#4312])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-glk-dsi/igt@runner@aborted.html
    - bat-dg1-5:          NOTRUN -> [FAIL][95] ([i915#4312])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-dg1-5/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][96] ([i915#4312])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bdw-5557u/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][97] ([i915#4312])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-snb-2520m/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][98] ([i915#4312])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-glk-j4005/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][99] ([i915#4312])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-guc/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][100] ([i915#4312])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-kbl-7567u/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][101] ([i915#4312])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-cfl-8700k/igt@runner@aborted.html
    - fi-rkl-11600:       NOTRUN -> [FAIL][102] ([i915#4312])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][103] ([i915#4312])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-hsw-g3258/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][104] ([i915#4312])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][105] ([i915#4312])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bsw-kefka/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][106] ([i915#4312])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-adl-ddr5/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][107] ([i915#4312])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-cfl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4831]: https://gitlab.freedesktop.org/drm/intel/issues/4831
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594


Build changes
-------------

  * Linux: CI_DRM_12193 -> Patchwork_109136v2

  CI-20190529: 20190529
  CI_DRM_12193: 0f0716dcfd8446cde4391475c9c3656ca670b55f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6666: 1e3ecbaa3c56f4c52c62047707eb4942d3a39c44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109136v2: 0f0716dcfd8446cde4391475c9c3656ca670b55f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7ae638da1dc2 drm/i915/display: Do both crawl and squash when changing cdclk

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/index.html

--===============2174924024457304414==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Do both crawl and squash when changing cdclk (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/109136/">https://patchwork.freedesktop.org/series/109136/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12193 -&gt; Patchwork_109136v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109136v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_109136v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/index.html</p>
<h2>Participating hosts (44 -&gt; 44)</h2>
<p>Additional (2): fi-rkl-11600 fi-tgl-dsi <br />
  Missing    (2): bat-dg2-9 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_109136v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-blb-e6850/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-blb-e6850/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-pnv-d510/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-pnv-d510/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-ilk-650/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-ilk-650/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-skl-6700k2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-skl-6700k2/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-cfl-8700k/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-bsw-kefka/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bsw-kefka/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-cfl-guc/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-bdw-5557u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bdw-5557u/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-cfl-8109u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-cfl-8109u/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-snb-2600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-snb-2600/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-tgl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-tgl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-bxt-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bxt-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-adl-ddr5/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-adl-ddr5/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-glk-j4005/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-glk-j4005/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-dg1-5/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-dg1-5/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-elk-e7500/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-elk-e7500/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-hsw-g3258/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-hsw-g3258/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-hsw-4770/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-hsw-4770/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-ivb-3770/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-ivb-3770/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-skl-6600u/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-skl-6600u/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-snb-2520m/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-snb-2520m/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-dg2-8/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-dg2-8/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-adlm-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-adlm-1/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-rpls-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-rpls-1/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-ehl-2/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-ehl-2/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-adlp-6/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-adlp-6/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-rplp-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-rplp-1/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-jsl-3/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-jsl-3/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-dg2-11/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-dg2-11/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/bat-adln-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-adln-1/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109136v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4831">i915#4831</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109136v2/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12193 -&gt; Patchwork_109136v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12193: 0f0716dcfd8446cde4391475c9c3656ca670b55f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6666: 1e3ecbaa3c56f4c52c62047707eb4942d3a39c44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109136v2: 0f0716dcfd8446cde4391475c9c3656ca670b55f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7ae638da1dc2 drm/i915/display: Do both crawl and squash when changing cdclk</p>

</body>
</html>

--===============2174924024457304414==--
