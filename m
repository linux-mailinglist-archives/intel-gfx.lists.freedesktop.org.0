Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEA7B24798
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 12:44:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7392510E6F1;
	Wed, 13 Aug 2025 10:44:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2162510E0CB;
 Wed, 13 Aug 2025 10:44:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6924498967173436082=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_series_starting_with_=5BR?=
 =?utf-8?q?FC=2C1/2=5D_drm/i915/debugfs=3A_use_new_debugfs_device-centered_f?=
 =?utf-8?q?unctions_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Brahmajit Das" <listout@listout.xyz>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Aug 2025 10:44:51 -0000
Message-ID: <175508189112.232154.9757204882051982936@1538d3639d33>
X-Patchwork-Hint: ignore
References: <32c55ab0b1452a1fd8ef49e8a1ca640ad5bd9d76@intel.com>
In-Reply-To: <32c55ab0b1452a1fd8ef49e8a1ca640ad5bd9d76@intel.com>
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

--===============6924498967173436082==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [RFC,1/2] drm/i915/debugfs: use new debugfs device-centered functions (rev2)
URL   : https://patchwork.freedesktop.org/series/152777/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16994 -> Patchwork_152777v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_152777v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_152777v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/index.html

Participating hosts (43 -> 43)
------------------------------

  Additional (1): bat-adls-6 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_152777v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - bat-atsm-1:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-atsm-1/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-atsm-1/igt@i915_pm_rpm@module-reload.html

  * igt@kms_dsc@dsc-basic:
    - bat-dg2-9:          [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-dg2-9/igt@kms_dsc@dsc-basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-dg2-9/igt@kms_dsc@dsc-basic.html
    - fi-cfl-8109u:       NOTRUN -> [ABORT][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-cfl-8109u/igt@kms_dsc@dsc-basic.html
    - bat-dg2-8:          [PASS][6] -> [ABORT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-dg2-8/igt@kms_dsc@dsc-basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-dg2-8/igt@kms_dsc@dsc-basic.html
    - bat-adls-6:         NOTRUN -> [ABORT][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-adls-6/igt@kms_dsc@dsc-basic.html
    - bat-adlp-6:         [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-adlp-6/igt@kms_dsc@dsc-basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-adlp-6/igt@kms_dsc@dsc-basic.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-rkl-11600:       [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-rkl-11600/igt@kms_pm_rpm@basic-pci-d3-state.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-rkl-11600/igt@kms_pm_rpm@basic-pci-d3-state.html

  
#### Warnings ####

  * igt@kms_dsc@dsc-basic:
    - bat-dg2-11:         [SKIP][13] ([i915#3555] / [i915#3840]) -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-dg2-11/igt@kms_dsc@dsc-basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-dg2-11/igt@kms_dsc@dsc-basic.html
    - bat-rpls-4:         [SKIP][15] ([i915#3555] / [i915#3840] / [i915#9886]) -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-rpls-4/igt@kms_dsc@dsc-basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-rpls-4/igt@kms_dsc@dsc-basic.html
    - fi-kbl-7567u:       [SKIP][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html
    - fi-cfl-8700k:       [SKIP][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-cfl-8700k/igt@kms_dsc@dsc-basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-cfl-8700k/igt@kms_dsc@dsc-basic.html
    - bat-twl-1:          [SKIP][21] ([i915#9886]) -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-twl-1/igt@kms_dsc@dsc-basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-twl-1/igt@kms_dsc@dsc-basic.html
    - bat-apl-1:          [SKIP][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-apl-1/igt@kms_dsc@dsc-basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-apl-1/igt@kms_dsc@dsc-basic.html
    - bat-dg2-14:         [SKIP][25] ([i915#3555] / [i915#3840]) -> [ABORT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-dg2-14/igt@kms_dsc@dsc-basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-dg2-14/igt@kms_dsc@dsc-basic.html
    - fi-elk-e7500:       [SKIP][27] -> [ABORT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-elk-e7500/igt@kms_dsc@dsc-basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-elk-e7500/igt@kms_dsc@dsc-basic.html
    - bat-arls-5:         [SKIP][29] ([i915#9886]) -> [ABORT][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-arls-5/igt@kms_dsc@dsc-basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-arls-5/igt@kms_dsc@dsc-basic.html
    - bat-rplp-1:         [SKIP][31] ([i915#3555] / [i915#3840]) -> [ABORT][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-rplp-1/igt@kms_dsc@dsc-basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-rplp-1/igt@kms_dsc@dsc-basic.html
    - fi-tgl-1115g4:      [SKIP][33] ([i915#3555] / [i915#3840]) -> [ABORT][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-tgl-1115g4/igt@kms_dsc@dsc-basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-tgl-1115g4/igt@kms_dsc@dsc-basic.html
    - fi-cfl-guc:         [SKIP][35] -> [ABORT][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-cfl-guc/igt@kms_dsc@dsc-basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-cfl-guc/igt@kms_dsc@dsc-basic.html
    - bat-mtlp-9:         [SKIP][37] ([i915#3555] / [i915#3840] / [i915#9159]) -> [ABORT][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-mtlp-9/igt@kms_dsc@dsc-basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-mtlp-9/igt@kms_dsc@dsc-basic.html
    - bat-arls-6:         [SKIP][39] ([i915#9886]) -> [ABORT][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-arls-6/igt@kms_dsc@dsc-basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-arls-6/igt@kms_dsc@dsc-basic.html
    - fi-hsw-4770:        [SKIP][41] -> [ABORT][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-hsw-4770/igt@kms_dsc@dsc-basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-hsw-4770/igt@kms_dsc@dsc-basic.html
    - fi-ivb-3770:        [SKIP][43] -> [ABORT][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-ivb-3770/igt@kms_dsc@dsc-basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-ivb-3770/igt@kms_dsc@dsc-basic.html
    - bat-mtlp-8:         [SKIP][45] ([i915#3555] / [i915#3840] / [i915#9159]) -> [ABORT][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-mtlp-8/igt@kms_dsc@dsc-basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-mtlp-8/igt@kms_dsc@dsc-basic.html
    - fi-ilk-650:         [SKIP][47] -> [ABORT][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-ilk-650/igt@kms_dsc@dsc-basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-ilk-650/igt@kms_dsc@dsc-basic.html
    - bat-jsl-1:          [SKIP][49] ([i915#3555] / [i915#9886]) -> [ABORT][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-jsl-1/igt@kms_dsc@dsc-basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-jsl-1/igt@kms_dsc@dsc-basic.html
    - fi-bsw-n3050:       [SKIP][51] -> [ABORT][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-bsw-n3050/igt@kms_dsc@dsc-basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-bsw-n3050/igt@kms_dsc@dsc-basic.html
    - fi-skl-6600u:       [SKIP][53] -> [ABORT][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-skl-6600u/igt@kms_dsc@dsc-basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-skl-6600u/igt@kms_dsc@dsc-basic.html
    - bat-arlh-3:         [SKIP][55] ([i915#9886]) -> [ABORT][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-arlh-3/igt@kms_dsc@dsc-basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-arlh-3/igt@kms_dsc@dsc-basic.html
    - fi-pnv-d510:        [SKIP][57] -> [ABORT][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-pnv-d510/igt@kms_dsc@dsc-basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-pnv-d510/igt@kms_dsc@dsc-basic.html
    - bat-dg1-7:          [SKIP][59] ([i915#3555] / [i915#3840]) -> [ABORT][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-dg1-7/igt@kms_dsc@dsc-basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-dg1-7/igt@kms_dsc@dsc-basic.html
    - fi-glk-j4005:       [SKIP][61] -> [ABORT][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-glk-j4005/igt@kms_dsc@dsc-basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-glk-j4005/igt@kms_dsc@dsc-basic.html
    - bat-adlp-9:         [SKIP][63] ([i915#3555] / [i915#3840]) -> [ABORT][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-adlp-9/igt@kms_dsc@dsc-basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-adlp-9/igt@kms_dsc@dsc-basic.html
    - bat-twl-2:          [SKIP][65] ([i915#9886]) -> [ABORT][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-twl-2/igt@kms_dsc@dsc-basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-twl-2/igt@kms_dsc@dsc-basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_152777v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][67] ([i915#2190])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_tiled_pread_basic:
    - bat-adls-6:         NOTRUN -> [SKIP][68] ([i915#3282])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-adls-6/igt@gem_tiled_pread_basic.html

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [PASS][69] -> [DMESG-WARN][70] ([i915#13494])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-mtlp-9/igt@i915_module_load@load.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-mtlp-9/igt@i915_module_load@load.html

  * igt@intel_hwmon@hwmon-read:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][71] +3 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-cfl-8109u/igt@intel_hwmon@hwmon-read.html
    - bat-adls-6:         NOTRUN -> [SKIP][72] ([i915#7707]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-adls-6/igt@intel_hwmon@hwmon-read.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - fi-cfl-8109u:       NOTRUN -> [DMESG-WARN][73] ([i915#13735]) +38 other tests dmesg-warn
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-adls-6:         NOTRUN -> [SKIP][74] ([i915#4103]) +1 other test skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-adls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-cfl-8109u:       NOTRUN -> [DMESG-WARN][75] ([i915#13735] / [i915#13890]) +7 other tests dmesg-warn
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-8809g:       [PASS][76] -> [ABORT][77] ([i915#10553])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-bsw-nick:        [PASS][78] -> [ABORT][79] ([i915#10553])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-bsw-nick/igt@kms_pm_rpm@basic-pci-d3-state.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-bsw-nick/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-guc:         [PASS][80] -> [ABORT][81] ([i915#10553])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-kbl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-kbl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-mtlp-6:         [PASS][82] -> [ABORT][83] ([i915#10553])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-dg1-6:          [PASS][84] -> [ABORT][85] ([i915#10553])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-dg1-6/igt@kms_pm_rpm@basic-pci-d3-state.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-dg1-6/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-kbl-2:          [PASS][86] -> [ABORT][87] ([i915#10553])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-kbl-2/igt@kms_pm_rpm@basic-pci-d3-state.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-kbl-2/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-arlh-2:         [PASS][88] -> [ABORT][89] ([i915#10553])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-arlh-2/igt@kms_pm_rpm@basic-pci-d3-state.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-arlh-2/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-x1275:       [PASS][90] -> [ABORT][91] ([i915#10553])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-kbl-x1275/igt@kms_pm_rpm@basic-pci-d3-state.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-kbl-x1275/igt@kms_pm_rpm@basic-pci-d3-state.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - fi-cfl-8109u:       [ABORT][92] ([i915#14804]) -> [DMESG-WARN][93] ([i915#13735] / [i915#13890])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-cfl-8109u/igt@i915_module_load@load.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-cfl-8109u/igt@i915_module_load@load.html

  
  [i915#10553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
  [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
  [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
  [i915#14804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_16994 -> Patchwork_152777v2

  CI-20190529: 20190529
  CI_DRM_16994: 546fc742f08b8dbd3fa1486933c9b15085e11d13 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8493: 8493
  Patchwork_152777v2: 546fc742f08b8dbd3fa1486933c9b15085e11d13 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/index.html

--===============6924498967173436082==
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
<tr><td><b>Series:</b></td><td>series starting with [RFC,1/2] drm/i915/debugfs: use new debugfs device-centered functions (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/152777/">https://patchwork.freedesktop.org/series/152777/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16994 -&gt; Patchwork_152777v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_152777v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_152777v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/index.html</p>
<h2>Participating hosts (43 -&gt; 43)</h2>
<p>Additional (1): bat-adls-6 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_152777v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-atsm-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-atsm-1/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-dg2-9/igt@kms_dsc@dsc-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-dg2-9/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-cfl-8109u/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-dg2-8/igt@kms_dsc@dsc-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-dg2-8/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-adls-6/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-adlp-6/igt@kms_dsc@dsc-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-adlp-6/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-rkl-11600/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-rkl-11600/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_dsc@dsc-basic:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-dg2-11/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-dg2-11/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-rpls-4/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-rpls-4/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-cfl-8700k/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-cfl-8700k/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-twl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-twl-1/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-apl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-apl-1/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-dg2-14/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-dg2-14/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-elk-e7500/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-elk-e7500/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-arls-5/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-arls-5/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-rplp-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-rplp-1/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-tgl-1115g4/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-tgl-1115g4/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-cfl-guc/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-cfl-guc/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-mtlp-9/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159">i915#9159</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-mtlp-9/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-arls-6/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-arls-6/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-hsw-4770/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-hsw-4770/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-ivb-3770/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-ivb-3770/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-mtlp-8/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159">i915#9159</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-mtlp-8/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-ilk-650/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-ilk-650/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-jsl-1/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-bsw-n3050/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-bsw-n3050/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-skl-6600u/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-skl-6600u/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-arlh-3/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-arlh-3/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-pnv-d510/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-pnv-d510/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-dg1-7/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-dg1-7/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-glk-j4005/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-glk-j4005/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-adlp-9/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-adlp-9/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-twl-2/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-twl-2/igt@kms_dsc@dsc-basic.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_152777v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-adls-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-mtlp-9/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494">i915#13494</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-cfl-8109u/igt@intel_hwmon@hwmon-read.html">SKIP</a> +3 other tests skip</li>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-adls-6/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a>) +38 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-adls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a>) +7 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-bsw-nick/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-bsw-nick/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-kbl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-kbl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-dg1-6/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-dg1-6/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-kbl-2/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-kbl-2/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/bat-arlh-2/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/bat-arlh-2/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-kbl-x1275/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-kbl-x1275/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/fi-cfl-8109u/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152777v2/fi-cfl-8109u/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16994 -&gt; Patchwork_152777v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16994: 546fc742f08b8dbd3fa1486933c9b15085e11d13 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8493: 8493<br />
  Patchwork_152777v2: 546fc742f08b8dbd3fa1486933c9b15085e11d13 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6924498967173436082==--
