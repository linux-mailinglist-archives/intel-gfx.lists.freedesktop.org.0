Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0907D805B1F
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 18:30:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03DDB10E033;
	Tue,  5 Dec 2023 17:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D967910E033;
 Tue,  5 Dec 2023 17:29:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CFF6CAADDD;
 Tue,  5 Dec 2023 17:29:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0139805212371302099=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Date: Tue, 05 Dec 2023 17:29:53 -0000
Message-ID: <170179739383.24285.11560416546628941038@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231205132003.1535960-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20231205132003.1535960-1-chaitanya.kumar.borah@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmV2?=
 =?utf-8?q?ert_=22debugfs=3A_annotate_debugfs_handlers_vs=2E_removal_with_?=
 =?utf-8?q?lockdep=22?=
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

--===============0139805212371302099==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "debugfs: annotate debugfs handlers vs. removal with lockdep"
URL   : https://patchwork.freedesktop.org/series/127359/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13982 -> Patchwork_127359v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127359v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127359v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/index.html

Participating hosts (37 -> 33)
------------------------------

  Missing    (4): bat-dg2-8 bat-kbl-2 bat-dg2-9 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127359v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-mtlp-6:         NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-mtlp-6/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
Known issues
------------

  Here are the changes found in Patchwork_127359v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-bsw-n3050:       [PASS][2] -> [FAIL][3] ([i915#8293])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-bsw-n3050/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-bsw-n3050/boot.html
    - bat-jsl-1:          [PASS][4] -> [FAIL][5] ([i915#8293])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-jsl-1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-jsl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adlp-6:         NOTRUN -> [SKIP][6] ([i915#9318])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-6/igt@debugfs_test@basic-hwmon.html

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html
    - bat-jsl-3:          NOTRUN -> [SKIP][8] ([i915#4613]) +3 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-jsl-3/igt@gem_lmem_swapping@basic.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
    - bat-adlp-9:         NOTRUN -> [SKIP][10] ([i915#4613]) +3 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-9/igt@gem_lmem_swapping@basic.html
    - fi-skl-guc:         NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html
    - fi-elk-e7500:       NOTRUN -> [SKIP][14] ([fdo#109271]) +4 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-elk-e7500/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [SKIP][15] ([fdo#109271]) +3 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][16] ([i915#4613]) +3 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][17] ([i915#4613]) +3 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-skl-6600u:       NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html
    - bat-adls-5:         NOTRUN -> [SKIP][19] ([i915#4613]) +3 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adls-5/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-guc:         NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][21] ([i915#4613]) +3 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][24] ([fdo#109271]) +4 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-ivb-3770/igt@gem_lmem_swapping@verify-random.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][25] ([i915#4613]) +3 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-guc/igt@gem_lmem_swapping@verify-random.html
    - fi-ilk-650:         NOTRUN -> [SKIP][27] ([fdo#109271]) +4 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-ilk-650/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-6:         NOTRUN -> [SKIP][28] ([i915#3282])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-6/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-blb-e6850:       NOTRUN -> [SKIP][29] ([fdo#109271]) +4 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-blb-e6850/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - bat-adls-5:         NOTRUN -> [DMESG-WARN][30] ([i915#5591])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adls-5/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-tgl-1115g4:      NOTRUN -> [INCOMPLETE][31] ([i915#7443])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html
    - bat-atsm-1:         NOTRUN -> [SKIP][32] ([i915#6645])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][33] ([i915#6645])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-mtlp-6/igt@i915_suspend@basic-s3-without-i915.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][34] ([fdo#109271]) +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-x1275/igt@i915_suspend@basic-s3-without-i915.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][35] ([i915#6645])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-adlp-6:         NOTRUN -> [SKIP][36] ([i915#4103] / [i915#5608]) +1 other test skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-adlp-6:         NOTRUN -> [SKIP][37] ([i915#3555] / [i915#3840])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-6/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@basic-flip-vs-modeset@b-dp6:
    - bat-adlp-11:        [PASS][38] -> [FAIL][39] ([i915#6121]) +3 other tests fail
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@b-dp6.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@b-dp6.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adlp-6:         NOTRUN -> [SKIP][40] ([fdo#109285])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [PASS][41] -> [FAIL][42] ([IGT#3])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - fi-kbl-guc:         NOTRUN -> [SKIP][43] ([fdo#109271])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-guc/igt@kms_pipe_crc_basic@suspend-read-crc.html
    - bat-atsm-1:         NOTRUN -> [SKIP][44] ([i915#1836])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_pm_backlight@basic-brightness@edp-1:
    - bat-adlp-6:         NOTRUN -> [ABORT][45] ([i915#8668])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-6/igt@kms_pm_backlight@basic-brightness@edp-1.html
    - bat-rplp-1:         NOTRUN -> [ABORT][46] ([i915#8668])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-cfl-guc:         [ABORT][47] ([i915#8213] / [i915#8668]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
    - bat-mtlp-6:         [ABORT][49] ([i915#8213] / [i915#8668]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-x1275:       [ABORT][51] ([i915#8213] / [i915#8668] / [i915#9793]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-kbl-x1275/igt@core_hotunplug@unbind-rebind.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-x1275/igt@core_hotunplug@unbind-rebind.html
    - bat-mtlp-8:         [ABORT][53] ([i915#8213] / [i915#8668]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-mtlp-8/igt@core_hotunplug@unbind-rebind.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-mtlp-8/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8700k:       [ABORT][55] ([i915#8213] / [i915#8668]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
    - fi-blb-e6850:       [ABORT][57] ([i915#9793]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html
    - fi-rkl-11600:       [ABORT][59] ([i915#8213]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html
    - fi-skl-6600u:       [ABORT][61] ([i915#8668]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html
    - bat-adls-5:         [ABORT][63] ([i915#9793]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-adls-5/igt@core_hotunplug@unbind-rebind.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adls-5/igt@core_hotunplug@unbind-rebind.html
    - fi-apl-guc:         [ABORT][65] ([i915#8213] / [i915#8668]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html
    - bat-atsm-1:         [ABORT][67] ([i915#8213]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-atsm-1/igt@core_hotunplug@unbind-rebind.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-atsm-1/igt@core_hotunplug@unbind-rebind.html
    - bat-dg1-7:          [ABORT][69] ([i915#8213]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-dg1-7/igt@core_hotunplug@unbind-rebind.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-dg1-7/igt@core_hotunplug@unbind-rebind.html
    - bat-jsl-3:          [ABORT][71] ([i915#9793]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-jsl-3/igt@core_hotunplug@unbind-rebind.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-jsl-3/igt@core_hotunplug@unbind-rebind.html
    - fi-glk-j4005:       [ABORT][73] ([i915#8213] / [i915#8668]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html
    - bat-adlp-9:         [ABORT][75] ([i915#8213] / [i915#8668]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-adlp-9/igt@core_hotunplug@unbind-rebind.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-9/igt@core_hotunplug@unbind-rebind.html
    - fi-skl-guc:         [ABORT][77] ([i915#8668]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html
    - bat-dg2-11:         [ABORT][79] ([i915#8213]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8109u:       [ABORT][81] ([i915#8213] / [i915#8668]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7567u:       [ABORT][83] ([i915#8668] / [i915#9793]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
    - fi-ivb-3770:        [ABORT][85] ([i915#9793]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html
    - fi-elk-e7500:       [ABORT][87] ([i915#9793]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html
    - fi-bsw-nick:        [ABORT][89] ([i915#9793]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-guc:         [ABORT][91] ([i915#8668] / [i915#9793]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-kbl-guc/igt@core_hotunplug@unbind-rebind.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-ilk-650:         [ABORT][93] ([i915#9793]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html
    - fi-tgl-1115g4:      [ABORT][95] ([i915#8213]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@load:
    - bat-adlp-6:         [INCOMPLETE][97] ([i915#8449]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-adlp-6/igt@i915_module_load@load.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-6/igt@i915_module_load@load.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - bat-adlp-11:        [DMESG-WARN][99] ([i915#6868]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - bat-adlp-11:        [SKIP][101] -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][103] ([i915#8668]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8449]: https://gitlab.freedesktop.org/drm/intel/issues/8449
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9793]: https://gitlab.freedesktop.org/drm/intel/issues/9793


Build changes
-------------

  * Linux: CI_DRM_13982 -> Patchwork_127359v1

  CI-20190529: 20190529
  CI_DRM_13982: 16108300001d366d485520d91f9894a3d34d8fa2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7620: 6714b814e7f82743abf45c33361fbe057a22880a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127359v1: 16108300001d366d485520d91f9894a3d34d8fa2 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4f25d945fdd8 Revert "debugfs: annotate debugfs handlers vs. removal with lockdep"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/index.html

--===============0139805212371302099==
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
<tr><td><b>Series:</b></td><td>Revert &quot;debugfs: annotate debugfs handlers vs. removal with lockdep&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127359/">https://patchwork.freedesktop.org/series/127359/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13982 -&gt; Patchwork_127359v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127359v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_127359v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/index.html</p>
<h2>Participating hosts (37 -&gt; 33)</h2>
<p>Missing    (4): bat-dg2-8 bat-kbl-2 bat-dg2-9 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_127359v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc:<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-mtlp-6/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127359v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-bsw-n3050/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-bsw-n3050/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-jsl-3/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-9/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-elk-e7500/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>bat-adls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adls-5/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-ivb-3770/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 other tests skip</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-ilk-650/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-blb-e6850/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-adls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adls-5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7443">i915#7443</a>)</p>
</li>
<li>
<p>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-mtlp-6/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-x1275/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 other test skip</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-6/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dp6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@b-dp6.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@b-dp6.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-guc/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1836">i915#1836</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness@edp-1:</p>
<ul>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-6/igt@kms_pm_backlight@basic-brightness@edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</p>
</li>
<li>
<p>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-kbl-x1275/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9793">i915#9793</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-x1275/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-mtlp-8/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-mtlp-8/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9793">i915#9793</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-adls-5/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9793">i915#9793</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adls-5/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-atsm-1/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-atsm-1/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-dg1-7/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-dg1-7/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-jsl-3/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9793">i915#9793</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-jsl-3/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-adlp-9/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-9/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9793">i915#9793</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9793">i915#9793</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9793">i915#9793</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9793">i915#9793</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-kbl-guc/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9793">i915#9793</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-kbl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9793">i915#9793</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-adlp-6/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8449">i915#8449</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-6/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13982 -&gt; Patchwork_127359v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13982: 16108300001d366d485520d91f9894a3d34d8fa2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7620: 6714b814e7f82743abf45c33361fbe057a22880a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127359v1: 16108300001d366d485520d91f9894a3d34d8fa2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4f25d945fdd8 Revert "debugfs: annotate debugfs handlers vs. removal with lockdep"</p>

</body>
</html>

--===============0139805212371302099==--
