Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2BF7D77A3
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 00:11:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1254410E72C;
	Wed, 25 Oct 2023 22:11:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0E82D10E724;
 Wed, 25 Oct 2023 22:11:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07204AADE0;
 Wed, 25 Oct 2023 22:11:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1308258216224197388=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Wed, 25 Oct 2023 22:11:09 -0000
Message-ID: <169827186999.20488.15836370634627585973@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231025-wabb-v5-0-398e42309e9d@intel.com>
In-Reply-To: <20231025-wabb-v5-0-398e42309e9d@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQXBw?=
 =?utf-8?q?ly_Wa=5F16018031267_/_Wa=5F16018063123?=
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

--===============1308258216224197388==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Apply Wa_16018031267 / Wa_16018063123
URL   : https://patchwork.freedesktop.org/series/125580/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13786 -> Patchwork_125580v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125580v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125580v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/index.html

Participating hosts (38 -> 39)
------------------------------

  Additional (2): bat-adlp-11 bat-dg1-5 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125580v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_softpin@allocator-basic:
    - bat-dg2-11:         [PASS][1] -> [FAIL][2] +3 other tests fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-dg2-11/igt@gem_softpin@allocator-basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg2-11/igt@gem_softpin@allocator-basic.html

  * igt@gem_softpin@allocator-basic-reserve:
    - bat-atsm-1:         [PASS][3] -> [FAIL][4] +2 other tests fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html
    - bat-dg2-9:          [PASS][5] -> [FAIL][6] +3 other tests fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html

  * igt@i915_selftest@live@gtt:
    - bat-atsm-1:         [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-atsm-1/igt@i915_selftest@live@gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-atsm-1/igt@i915_selftest@live@gtt.html
    - fi-cfl-guc:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-cfl-guc/igt@i915_selftest@live@gtt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-cfl-guc/igt@i915_selftest@live@gtt.html
    - bat-jsl-3:          [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-jsl-3/igt@i915_selftest@live@gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-3/igt@i915_selftest@live@gtt.html
    - bat-dg2-9:          [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-dg2-9/igt@i915_selftest@live@gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg2-9/igt@i915_selftest@live@gtt.html
    - fi-kbl-x1275:       [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-kbl-x1275/igt@i915_selftest@live@gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-kbl-x1275/igt@i915_selftest@live@gtt.html
    - fi-cfl-8109u:       [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-cfl-8109u/igt@i915_selftest@live@gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-cfl-8109u/igt@i915_selftest@live@gtt.html
    - bat-mtlp-8:         [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-mtlp-8/igt@i915_selftest@live@gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-mtlp-8/igt@i915_selftest@live@gtt.html
    - fi-kbl-guc:         [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-kbl-guc/igt@i915_selftest@live@gtt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-kbl-guc/igt@i915_selftest@live@gtt.html
    - bat-adlm-1:         [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-adlm-1/igt@i915_selftest@live@gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adlm-1/igt@i915_selftest@live@gtt.html
    - bat-jsl-1:          NOTRUN -> [DMESG-FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-1/igt@i915_selftest@live@gtt.html
    - fi-tgl-1115g4:      [PASS][26] -> [DMESG-FAIL][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-tgl-1115g4/igt@i915_selftest@live@gtt.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-tgl-1115g4/igt@i915_selftest@live@gtt.html
    - fi-bsw-n3050:       [PASS][28] -> [DMESG-FAIL][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-bsw-n3050/igt@i915_selftest@live@gtt.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-bsw-n3050/igt@i915_selftest@live@gtt.html
    - bat-rpls-1:         [PASS][30] -> [DMESG-FAIL][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-rpls-1/igt@i915_selftest@live@gtt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-rpls-1/igt@i915_selftest@live@gtt.html
    - bat-mtlp-6:         [PASS][32] -> [DMESG-FAIL][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-mtlp-6/igt@i915_selftest@live@gtt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-mtlp-6/igt@i915_selftest@live@gtt.html
    - fi-skl-6600u:       [PASS][34] -> [DMESG-FAIL][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-skl-6600u/igt@i915_selftest@live@gtt.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-skl-6600u/igt@i915_selftest@live@gtt.html
    - fi-apl-guc:         [PASS][36] -> [DMESG-FAIL][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-apl-guc/igt@i915_selftest@live@gtt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-apl-guc/igt@i915_selftest@live@gtt.html
    - fi-glk-j4005:       [PASS][38] -> [DMESG-FAIL][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-glk-j4005/igt@i915_selftest@live@gtt.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-glk-j4005/igt@i915_selftest@live@gtt.html
    - bat-adlp-9:         [PASS][40] -> [DMESG-FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-adlp-9/igt@i915_selftest@live@gtt.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adlp-9/igt@i915_selftest@live@gtt.html
    - fi-skl-guc:         [PASS][42] -> [DMESG-FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-skl-guc/igt@i915_selftest@live@gtt.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-skl-guc/igt@i915_selftest@live@gtt.html
    - bat-dg2-11:         [PASS][44] -> [DMESG-FAIL][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-dg2-11/igt@i915_selftest@live@gtt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg2-11/igt@i915_selftest@live@gtt.html
    - fi-kbl-7567u:       [PASS][46] -> [DMESG-FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-kbl-7567u/igt@i915_selftest@live@gtt.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-kbl-7567u/igt@i915_selftest@live@gtt.html
    - fi-cfl-8700k:       [PASS][48] -> [DMESG-FAIL][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-cfl-8700k/igt@i915_selftest@live@gtt.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-cfl-8700k/igt@i915_selftest@live@gtt.html
    - fi-bsw-nick:        [PASS][50] -> [DMESG-FAIL][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-bsw-nick/igt@i915_selftest@live@gtt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-bsw-nick/igt@i915_selftest@live@gtt.html
    - bat-kbl-2:          [PASS][52] -> [DMESG-FAIL][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-kbl-2/igt@i915_selftest@live@gtt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-kbl-2/igt@i915_selftest@live@gtt.html
    - fi-rkl-11600:       [PASS][54] -> [DMESG-FAIL][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-rkl-11600/igt@i915_selftest@live@gtt.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-rkl-11600/igt@i915_selftest@live@gtt.html
    - bat-adls-5:         [PASS][56] -> [DMESG-FAIL][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-adls-5/igt@i915_selftest@live@gtt.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adls-5/igt@i915_selftest@live@gtt.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_softpin@allocator-basic:
    - {bat-dg2-14}:       [PASS][58] -> [FAIL][59] +3 other tests fail
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-dg2-14/igt@gem_softpin@allocator-basic.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg2-14/igt@gem_softpin@allocator-basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_125580v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-hsw-4770:        [PASS][60] -> [FAIL][61] ([i915#8293])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-hsw-4770/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-hsw-4770/boot.html

  
#### Possible fixes ####

  * boot:
    - bat-jsl-1:          [FAIL][62] ([i915#8293]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-jsl-1/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adlp-11:        NOTRUN -> [SKIP][64] ([i915#9318])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adlp-11/igt@debugfs_test@basic-hwmon.html
    - bat-jsl-1:          NOTRUN -> [SKIP][65] ([i915#9318])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-mtlp-8:         [PASS][66] -> [FAIL][67] ([fdo#103375]) +6 other tests fail
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-mtlp-8/igt@gem_exec_suspend@basic-s3@smem.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-mtlp-8/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - bat-jsl-1:          NOTRUN -> [SKIP][68] ([i915#2190])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-jsl-1:          NOTRUN -> [SKIP][69] ([i915#4613]) +3 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][70] ([i915#4083])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@gem_mmap@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][71] ([i915#4077]) +2 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][72] ([i915#4079]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@gem_tiled_pread_basic.html
    - bat-adlp-11:        NOTRUN -> [SKIP][73] ([i915#3282])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adlp-11/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-5:          NOTRUN -> [SKIP][74] ([i915#6621])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg1-5:          NOTRUN -> [ABORT][75] ([i915#9413])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - bat-dg1-5:          NOTRUN -> [SKIP][76] ([i915#4212]) +7 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg1-5:          NOTRUN -> [SKIP][77] ([i915#4215])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-adlp-11:        NOTRUN -> [SKIP][78] ([i915#4103] / [i915#5608]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adlp-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-jsl-1:          NOTRUN -> [SKIP][79] ([i915#4103]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-dg1-5:          NOTRUN -> [SKIP][80] ([i915#4103] / [i915#4213]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-adlp-11:        NOTRUN -> [SKIP][81] ([i915#3555] / [i915#3840])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adlp-11/igt@kms_dsc@dsc-basic.html
    - bat-jsl-1:          NOTRUN -> [SKIP][82] ([i915#3555]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-1/igt@kms_dsc@dsc-basic.html
    - bat-dg1-5:          NOTRUN -> [SKIP][83] ([i915#3555] / [i915#3840])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-jsl-1:          NOTRUN -> [SKIP][84] ([fdo#109285])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg1-5:          NOTRUN -> [SKIP][85] ([fdo#109285])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-adlp-11:        NOTRUN -> [SKIP][86] ([i915#4093]) +3 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adlp-11/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_hdmi_inject@inject-audio:
    - bat-dg1-5:          NOTRUN -> [SKIP][87] ([i915#433])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@kms_hdmi_inject@inject-audio.html
    - bat-adlp-11:        NOTRUN -> [SKIP][88] ([i915#4369])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adlp-11/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-dg1-5:          NOTRUN -> [SKIP][89] ([i915#1072] / [i915#4078]) +3 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-dg1-5:          NOTRUN -> [SKIP][90] ([i915#3555])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-dg1-5:          NOTRUN -> [SKIP][91] ([i915#3708]) +3 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - bat-dg1-5:          NOTRUN -> [SKIP][92] ([i915#3708] / [i915#4077]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@prime_vgem@basic-gtt.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-bsw-nick:        [FAIL][93] ([i915#9276]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][95] ([IGT#3]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4093]: https://gitlab.freedesktop.org/drm/intel/issues/4093
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9276]: https://gitlab.freedesktop.org/drm/intel/issues/9276
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9413]: https://gitlab.freedesktop.org/drm/intel/issues/9413


Build changes
-------------

  * Linux: CI_DRM_13786 -> Patchwork_125580v1

  CI-20190529: 20190529
  CI_DRM_13786: e8d777a5e7e0ec452142ad0073022733f99c1eb7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7557: 18fc864d68d382847596594d7eb3488f2c8fb45e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_125580v1: e8d777a5e7e0ec452142ad0073022733f99c1eb7 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

be77dbcafb35 drm/i915: Set copy engine arbitration for Wa_16018031267 / Wa_16018063123
f313e4b59f98 drm/i915/gt: add selftest to exercise WABB
f1323b19d72d drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
53e5f9133950 drm/i915: Reserve some kernel space per vm

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/index.html

--===============1308258216224197388==
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
<tr><td><b>Series:</b></td><td>Apply Wa_16018031267 / Wa_16018063123</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/125580/">https://patchwork.freedesktop.org/series/125580/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13786 -&gt; Patchwork_125580v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125580v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_125580v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/index.html</p>
<h2>Participating hosts (38 -&gt; 39)</h2>
<p>Additional (2): bat-adlp-11 bat-dg1-5 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_125580v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_softpin@allocator-basic:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-dg2-11/igt@gem_softpin@allocator-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg2-11/igt@gem_softpin@allocator-basic.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>
<p>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html">FAIL</a> +2 other tests fail</p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html">FAIL</a> +3 other tests fail</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>
<p>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-atsm-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-atsm-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-cfl-guc/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-cfl-guc/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-jsl-3/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-3/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-dg2-9/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg2-9/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-kbl-x1275/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-kbl-x1275/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-cfl-8109u/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-cfl-8109u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-mtlp-8/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-mtlp-8/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-kbl-guc/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-kbl-guc/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-adlm-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adlm-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-tgl-1115g4/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-tgl-1115g4/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-bsw-n3050/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-bsw-n3050/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-rpls-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-rpls-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-mtlp-6/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-mtlp-6/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-skl-6600u/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-skl-6600u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-apl-guc/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-apl-guc/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-glk-j4005/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-glk-j4005/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-adlp-9/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adlp-9/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-skl-guc/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-skl-guc/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-dg2-11/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg2-11/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-kbl-7567u/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-kbl-7567u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-cfl-8700k/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-cfl-8700k/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-bsw-nick/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-bsw-nick/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-kbl-2/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-kbl-2/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-rkl-11600/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-rkl-11600/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-adls-5/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adls-5/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_softpin@allocator-basic:<ul>
<li>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-dg2-14/igt@gem_softpin@allocator-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg2-14/igt@gem_softpin@allocator-basic.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125580v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-hsw-4770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-hsw-4770/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-1/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>
<p>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adlp-11/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/bat-mtlp-8/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-mtlp-8/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) +6 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</p>
</li>
<li>
<p>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adlp-11/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9413">i915#9413</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adlp-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>) +1 other test skip</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>
<p>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adlp-11/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +1 other test skip</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adlp-11/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4093">i915#4093</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/433">i915#433</a>)</p>
</li>
<li>
<p>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-adlp-11/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4369">i915#4369</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/bat-dg1-5/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9276">i915#9276</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125580v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13786 -&gt; Patchwork_125580v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13786: e8d777a5e7e0ec452142ad0073022733f99c1eb7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7557: 18fc864d68d382847596594d7eb3488f2c8fb45e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_125580v1: e8d777a5e7e0ec452142ad0073022733f99c1eb7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>be77dbcafb35 drm/i915: Set copy engine arbitration for Wa_16018031267 / Wa_16018063123<br />
f313e4b59f98 drm/i915/gt: add selftest to exercise WABB<br />
f1323b19d72d drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123<br />
53e5f9133950 drm/i915: Reserve some kernel space per vm</p>

</body>
</html>

--===============1308258216224197388==--
