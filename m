Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1D67FB60F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 10:41:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1351C10E46B;
	Tue, 28 Nov 2023 09:41:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0545F10E46B;
 Tue, 28 Nov 2023 09:41:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F26E1A0093;
 Tue, 28 Nov 2023 09:41:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6488315310088130238=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Tue, 28 Nov 2023 09:41:26 -0000
Message-ID: <170116448696.8218.13366694882783185261@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231128083754.20096-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20231128083754.20096-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUUdW?=
 =?utf-8?q?/SAGV_related_fixes?=
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

--===============6488315310088130238==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: QGV/SAGV related fixes
URL   : https://patchwork.freedesktop.org/series/126962/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13931 -> Patchwork_126962v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126962v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126962v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/index.html

Participating hosts (36 -> 33)
------------------------------

  Additional (1): bat-rpls-1 
  Missing    (4): bat-dg2-14 bat-adlm-1 fi-snb-2520m bat-mtlp-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126962v1:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-elk-e7500:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@load:
    - bat-adlp-6:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-adlp-6/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-adlp-6/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-elk-e7500/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-elk-e7500/igt@i915_module_load@load.html
    - bat-adlp-11:        [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-adlp-11/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-adlp-11/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - fi-pnv-d510:        [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-pnv-d510/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-pnv-d510/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-kbl-2:          [PASS][11] -> [DMESG-WARN][12] +42 other tests dmesg-warn
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-kbl-2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@client:
    - fi-kbl-guc:         [PASS][13] -> [DMESG-WARN][14] +42 other tests dmesg-warn
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-kbl-guc/igt@i915_selftest@live@client.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-kbl-guc/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@coherency:
    - bat-dg2-9:          [PASS][15] -> [DMESG-WARN][16] +39 other tests dmesg-warn
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg2-9/igt@i915_selftest@live@coherency.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg2-9/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@gem:
    - fi-rkl-11600:       [PASS][17] -> [DMESG-WARN][18] +42 other tests dmesg-warn
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-rkl-11600/igt@i915_selftest@live@gem.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-rkl-11600/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [PASS][19] -> [DMESG-WARN][20] +42 other tests dmesg-warn
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-6600u:       [PASS][21] -> [DMESG-WARN][22] +38 other tests dmesg-warn
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-ilk-650:         [PASS][23] -> [DMESG-WARN][24] +41 other tests dmesg-warn
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@gt_mocs:
    - fi-glk-j4005:       [PASS][25] -> [DMESG-WARN][26] +42 other tests dmesg-warn
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-1115g4:      [PASS][27] -> [DMESG-WARN][28] +41 other tests dmesg-warn
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@gt_tlb:
    - bat-adlp-9:         [PASS][29] -> [DMESG-WARN][30] +39 other tests dmesg-warn
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html

  * igt@i915_selftest@live@perf:
    - bat-dg2-11:         [PASS][31] -> [DMESG-WARN][32] +40 other tests dmesg-warn
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg2-11/igt@i915_selftest@live@perf.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg2-11/igt@i915_selftest@live@perf.html
    - fi-kbl-x1275:       [PASS][33] -> [DMESG-WARN][34] +41 other tests dmesg-warn
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-kbl-x1275/igt@i915_selftest@live@perf.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-kbl-x1275/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@reset:
    - fi-apl-guc:         [PASS][35] -> [DMESG-WARN][36] +41 other tests dmesg-warn
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-apl-guc/igt@i915_selftest@live@reset.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-apl-guc/igt@i915_selftest@live@reset.html
    - bat-dg1-5:          [PASS][37] -> [DMESG-WARN][38] +42 other tests dmesg-warn
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg1-5/igt@i915_selftest@live@reset.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg1-5/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@ring_submission:
    - fi-cfl-8109u:       [PASS][39] -> [DMESG-WARN][40] +41 other tests dmesg-warn
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][41] -> [DMESG-WARN][42] +42 other tests dmesg-warn
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
    - fi-cfl-8700k:       [PASS][43] -> [DMESG-WARN][44] +42 other tests dmesg-warn
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@uncore:
    - bat-dg1-7:          [PASS][45] -> [DMESG-WARN][46] +42 other tests dmesg-warn
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg1-7/igt@i915_selftest@live@uncore.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg1-7/igt@i915_selftest@live@uncore.html

  * igt@i915_selftest@live@vma:
    - fi-skl-guc:         [PASS][47] -> [DMESG-WARN][48] +42 other tests dmesg-warn
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-skl-guc/igt@i915_selftest@live@vma.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-skl-guc/igt@i915_selftest@live@vma.html

  * igt@i915_selftest@live@workarounds:
    - bat-rpls-1:         NOTRUN -> [DMESG-WARN][49] +40 other tests dmesg-warn
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@i915_selftest@live@workarounds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-dg2-13}:       [PASS][50] -> [DMESG-WARN][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg2-13/igt@i915_module_load@load.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg2-13/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_126962v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-rpls-1:         NOTRUN -> [SKIP][52] ([i915#9318])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@info:
    - bat-rpls-1:         NOTRUN -> [SKIP][53] ([i915#1849] / [i915#2582])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@fbdev@info.html

  * igt@fbdev@write:
    - bat-rpls-1:         NOTRUN -> [SKIP][54] ([i915#2582]) +3 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@fbdev@write.html

  * igt@gem_lmem_swapping@random-engines:
    - bat-rpls-1:         NOTRUN -> [SKIP][55] ([i915#4613]) +3 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_tiled_pread_basic:
    - bat-rpls-1:         NOTRUN -> [SKIP][56] ([i915#3282])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@gem_tiled_pread_basic.html

  * igt@i915_module_load@reload:
    - fi-apl-guc:         [PASS][57] -> [DMESG-WARN][58] ([i915#1982])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-apl-guc/igt@i915_module_load@reload.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-apl-guc/igt@i915_module_load@reload.html
    - bat-adlp-9:         [PASS][59] -> [DMESG-WARN][60] ([i915#1982])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-adlp-9/igt@i915_module_load@reload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-adlp-9/igt@i915_module_load@reload.html
    - bat-dg2-9:          [PASS][61] -> [DMESG-WARN][62] ([i915#1982])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg2-9/igt@i915_module_load@reload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg2-9/igt@i915_module_load@reload.html
    - fi-cfl-8109u:       [PASS][63] -> [DMESG-WARN][64] ([i915#1982])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-cfl-8109u/igt@i915_module_load@reload.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-cfl-8109u/igt@i915_module_load@reload.html

  * igt@i915_pm_rps@basic-api:
    - bat-rpls-1:         NOTRUN -> [SKIP][65] ([i915#6621])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-dg2-9:          [PASS][66] -> [DMESG-WARN][67] ([i915#7699]) +1 other test dmesg-warn
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg2-9/igt@i915_selftest@live@gt_heartbeat.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg2-9/igt@i915_selftest@live@gt_heartbeat.html
    - bat-rpls-1:         NOTRUN -> [DMESG-WARN][68] ([i915#7699]) +1 other test dmesg-warn
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-9:         [PASS][69] -> [DMESG-WARN][70] ([i915#7699]) +1 other test dmesg-warn
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-adlp-9/igt@i915_selftest@live@migrate.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-adlp-9/igt@i915_selftest@live@migrate.html
    - bat-dg2-11:         [PASS][71] -> [DMESG-WARN][72] ([i915#7699]) +1 other test dmesg-warn
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-skl-6600u:       [PASS][73] -> [DMESG-WARN][74] ([i915#1982]) +3 other tests dmesg-warn
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - bat-rpls-1:         NOTRUN -> [SKIP][75] ([i915#1845]) +17 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - bat-rpls-1:         NOTRUN -> [SKIP][76] ([i915#3637]) +3 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-rpls-1:         NOTRUN -> [SKIP][77] ([fdo#109285])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-rpls-1:         NOTRUN -> [SKIP][78] ([i915#1849] / [i915#5354])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][79] -> [ABORT][80] ([i915#8668])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rpls-1:         NOTRUN -> [SKIP][81] ([i915#3555])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-rpls-1:         NOTRUN -> [SKIP][82] ([fdo#109295] / [i915#1845] / [i915#3708])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-write:
    - bat-rpls-1:         NOTRUN -> [SKIP][83] ([fdo#109295] / [i915#3708]) +2 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-dg2-9:          [INCOMPLETE][84] ([i915#9275]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5:
    - bat-adlp-11:        [DMESG-FAIL][86] ([i915#6868]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5:
    - bat-adlp-11:        [FAIL][88] ([i915#9666]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9666]: https://gitlab.freedesktop.org/drm/intel/issues/9666
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9736]: https://gitlab.freedesktop.org/drm/intel/issues/9736


Build changes
-------------

  * Linux: CI_DRM_13931 -> Patchwork_126962v1

  CI-20190529: 20190529
  CI_DRM_13931: 78b2fab242c3badfa58865875274e8992de56370 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7605: 7605
  Patchwork_126962v1: 78b2fab242c3badfa58865875274e8992de56370 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a9c9a0ff0cc6 drm/i915: Disable SAGV on bw init, to force QGV point recalculation
6e050232d077 drm/i915: Extract code required to calculate max qgv/psf gv point
0a28fc5327b1 drm/i915: Add meaningful traces for QGV point info error handling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/index.html

--===============6488315310088130238==
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
<tr><td><b>Series:</b></td><td>QGV/SAGV related fixes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126962/">https://patchwork.freedesktop.org/series/126962/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13931 -&gt; Patchwork_126962v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126962v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126962v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/index.html</p>
<h2>Participating hosts (36 -&gt; 33)</h2>
<p>Additional (1): bat-rpls-1 <br />
  Missing    (4): bat-dg2-14 bat-adlm-1 fi-snb-2520m bat-mtlp-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126962v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-adlp-6/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-elk-e7500/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-adlp-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-pnv-d510/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-pnv-d510/igt@i915_module_load@reload.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-kbl-guc/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-kbl-guc/igt@i915_selftest@live@client.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg2-9/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg2-9/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-rkl-11600/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-rkl-11600/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +42 other tests dmesg-warn</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +38 other tests dmesg-warn</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_tlb:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg2-11/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg2-11/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +40 other tests dmesg-warn</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-kbl-x1275/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-kbl-x1275/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +41 other tests dmesg-warn</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-apl-guc/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-apl-guc/igt@i915_selftest@live@reset.html">DMESG-WARN</a> +41 other tests dmesg-warn</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg1-5/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg1-5/igt@i915_selftest@live@reset.html">DMESG-WARN</a> +42 other tests dmesg-warn</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +42 other tests dmesg-warn</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +42 other tests dmesg-warn</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg1-7/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg1-7/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@vma:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-skl-guc/igt@i915_selftest@live@vma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-skl-guc/igt@i915_selftest@live@vma.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg2-13/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg2-13/igt@i915_module_load@load.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126962v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-apl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-apl-guc/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-adlp-9/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-adlp-9/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg2-9/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg2-9/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-cfl-8109u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-cfl-8109u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg2-9/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg2-9/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 other test dmesg-warn</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 other test dmesg-warn</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-adlp-9/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-adlp-9/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 other test dmesg-warn</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 other test dmesg-warn</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@kms_flip@basic-flip-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-rpls-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13931/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9666">i915#9666</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v1/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13931 -&gt; Patchwork_126962v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13931: 78b2fab242c3badfa58865875274e8992de56370 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7605: 7605<br />
  Patchwork_126962v1: 78b2fab242c3badfa58865875274e8992de56370 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a9c9a0ff0cc6 drm/i915: Disable SAGV on bw init, to force QGV point recalculation<br />
6e050232d077 drm/i915: Extract code required to calculate max qgv/psf gv point<br />
0a28fc5327b1 drm/i915: Add meaningful traces for QGV point info error handling</p>

</body>
</html>

--===============6488315310088130238==--
