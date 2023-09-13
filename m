Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E65179EA43
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 15:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB3B510E4C2;
	Wed, 13 Sep 2023 13:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E5A8210E4C2;
 Wed, 13 Sep 2023 13:57:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DCED2AADE0;
 Wed, 13 Sep 2023 13:57:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1281301214955934497=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Wed, 13 Sep 2023 13:57:46 -0000
Message-ID: <169461346689.31252.3200190386548942260@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230913100430.3433969-1-jouni.hogander@intel.com>
In-Reply-To: <20230913100430.3433969-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_runtime_suspended_boolean_from_intel=5Fruntime?=
 =?utf-8?q?=5Fpm_struct?=
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

--===============1281301214955934497==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove runtime suspended boolean from intel_runtime_pm struct
URL   : https://patchwork.freedesktop.org/series/123637/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13624 -> Patchwork_123637v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_123637v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_123637v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/index.html

Participating hosts (17 -> 38)
------------------------------

  Additional (21): fi-kbl-soraka fi-rkl-11600 bat-dg1-5 fi-pnv-d510 bat-rpls-1 fi-skl-6600u fi-bsw-n3050 bat-adlm-1 bat-adln-1 fi-ivb-3770 fi-bsw-nick fi-kbl-7567u bat-adlp-9 fi-skl-guc fi-glk-j4005 bat-mtlp-8 bat-jsl-1 bat-mtlp-6 fi-kbl-guc fi-kbl-x1275 fi-cfl-8109u 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_123637v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-1:         NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_123637v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-mtlp-8:         NOTRUN -> [SKIP][2] ([i915#9318])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html
    - bat-adlp-9:         NOTRUN -> [SKIP][3] ([i915#9318])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@debugfs_test@basic-hwmon.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][4] ([i915#9318])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html
    - bat-adln-1:         NOTRUN -> [SKIP][5] ([i915#9318])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adln-1/igt@debugfs_test@basic-hwmon.html
    - bat-adlm-1:         NOTRUN -> [SKIP][6] ([i915#3826])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@debugfs_test@basic-hwmon.html
    - bat-jsl-1:          NOTRUN -> [SKIP][7] ([i915#9318])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html
    - bat-rpls-1:         NOTRUN -> [SKIP][8] ([i915#9318])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@debugfs_test@basic-hwmon.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][9] ([i915#9318])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-7567u:       NOTRUN -> [ABORT][10] ([i915#8913])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html

  * igt@fbdev@eof:
    - bat-adlm-1:         NOTRUN -> [SKIP][11] ([i915#2582]) +3 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@fbdev@eof.html

  * igt@fbdev@info:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#1849])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-x1275/igt@fbdev@info.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#1849])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-guc/igt@fbdev@info.html
    - bat-rpls-1:         NOTRUN -> [SKIP][14] ([i915#1849] / [i915#2582])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@fbdev@info.html
    - bat-adlm-1:         NOTRUN -> [SKIP][15] ([i915#1849] / [i915#2582])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@fbdev@info.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][16] ([i915#1849] / [i915#2582])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@fbdev@info.html

  * igt@fbdev@write:
    - bat-rpls-1:         NOTRUN -> [SKIP][17] ([i915#2582]) +3 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@fbdev@write.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][18] ([i915#2582]) +3 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@fbdev@write.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#2190])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
    - bat-jsl-1:          NOTRUN -> [SKIP][20] ([i915#2190])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][21] ([i915#2190])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#2190])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#2190])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#2190])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#2190])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
    - bat-adlp-9:         NOTRUN -> [SKIP][27] ([i915#4613]) +3 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@gem_lmem_swapping@basic.html
    - fi-skl-guc:         NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [SKIP][30] ([fdo#109271]) +17 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-adlm-1:         NOTRUN -> [SKIP][31] ([i915#4613]) +3 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][32] ([i915#4613]) +3 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][33] ([fdo#109271]) +17 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html
    - bat-rpls-1:         NOTRUN -> [SKIP][34] ([i915#4613]) +3 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@gem_lmem_swapping@random-engines.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-mtlp-6:         NOTRUN -> [SKIP][36] ([i915#4613]) +3 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][39] ([i915#4613]) +3 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-guc/igt@gem_lmem_swapping@verify-random.html
    - bat-jsl-1:          NOTRUN -> [SKIP][41] ([i915#4613]) +3 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][42] ([i915#4083])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@gem_mmap@basic.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][43] ([i915#4083])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@gem_mmap@basic.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][44] ([i915#4083])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-mtlp-8:         NOTRUN -> [SKIP][45] ([i915#4077]) +3 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-mtlp-8:         NOTRUN -> [SKIP][46] ([i915#4079]) +1 other test skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-mtlp-6:         NOTRUN -> [SKIP][47] ([i915#4077]) +2 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][48] ([i915#4077]) +2 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - fi-rkl-11600:       NOTRUN -> [SKIP][49] ([i915#3282])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html
    - bat-dg1-5:          NOTRUN -> [SKIP][50] ([i915#4079]) +1 other test skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@gem_tiled_pread_basic.html
    - bat-adlp-9:         NOTRUN -> [SKIP][51] ([i915#3282])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@gem_tiled_pread_basic.html
    - bat-adln-1:         NOTRUN -> [SKIP][52] ([i915#3282])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adln-1/igt@gem_tiled_pread_basic.html
    - bat-adlm-1:         NOTRUN -> [SKIP][53] ([i915#3282])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@gem_tiled_pread_basic.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][54] ([i915#4079]) +1 other test skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@gem_tiled_pread_basic.html
    - bat-rpls-1:         NOTRUN -> [SKIP][55] ([i915#3282])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-adlp-9:         NOTRUN -> [SKIP][56] ([i915#6621])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@i915_pm_rps@basic-api.html
    - bat-dg1-5:          NOTRUN -> [SKIP][57] ([i915#6621])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@i915_pm_rps@basic-api.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][58] ([i915#6621])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@i915_pm_rps@basic-api.html
    - bat-adlm-1:         NOTRUN -> [SKIP][59] ([i915#6621])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@i915_pm_rps@basic-api.html
    - bat-rpls-1:         NOTRUN -> [SKIP][60] ([i915#6621])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@i915_pm_rps@basic-api.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][61] ([i915#6621])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_engines:
    - bat-mtlp-8:         NOTRUN -> [FAIL][62] ([i915#9278] / [i915#9290])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@i915_selftest@live@gt_engines.html
    - bat-mtlp-6:         NOTRUN -> [FAIL][63] ([i915#9278] / [i915#9290])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_pm:
    - bat-mtlp-6:         NOTRUN -> [DMESG-FAIL][64] ([i915#9270])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][65] ([i915#1886] / [i915#7913])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
    - bat-mtlp-8:         NOTRUN -> [DMESG-FAIL][66] ([i915#9270])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         NOTRUN -> [ABORT][67] ([i915#9262])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@i915_selftest@live@requests.html
    - bat-mtlp-6:         NOTRUN -> [ABORT][68] ([i915#9262])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-ivb-3770:        NOTRUN -> [DMESG-WARN][69] ([i915#8841]) +6 other tests dmesg-warn
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - bat-mtlp-6:         NOTRUN -> [SKIP][70] ([i915#4212]) +8 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-mtlp-8:         NOTRUN -> [SKIP][71] ([i915#5190])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][72] ([i915#5190])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - bat-dg1-5:          NOTRUN -> [SKIP][73] ([i915#4212]) +7 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-mtlp-8:         NOTRUN -> [SKIP][74] ([i915#4212]) +8 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg1-5:          NOTRUN -> [SKIP][75] ([i915#4215])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][76] ([fdo#109271]) +8 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - bat-adlp-9:         NOTRUN -> [SKIP][77] ([i915#4103]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][78] ([fdo#109271]) +8 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - bat-adln-1:         NOTRUN -> [SKIP][79] ([i915#4213]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adln-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-rkl-11600:       NOTRUN -> [SKIP][80] ([i915#4103]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][81] ([fdo#109271]) +9 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-cfl-8109u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][82] ([i915#4213]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-jsl-1:          NOTRUN -> [SKIP][83] ([i915#4103]) +1 other test skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-dg1-5:          NOTRUN -> [SKIP][84] ([i915#4103] / [i915#4213]) +1 other test skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - bat-rpls-1:         NOTRUN -> [SKIP][85] ([i915#1845]) +15 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][86] ([i915#1845]) +11 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - bat-adlm-1:         NOTRUN -> [SKIP][87] ([i915#1845]) +16 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-kbl-guc:         NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#1845]) +8 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-mtlp-6:         NOTRUN -> [SKIP][89] ([i915#3637]) +3 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - bat-rpls-1:         NOTRUN -> [SKIP][90] ([i915#3637]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_flip@basic-plain-flip:
    - bat-adlm-1:         NOTRUN -> [SKIP][91] ([i915#3637]) +3 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@kms_flip@basic-plain-flip.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adln-1:         NOTRUN -> [SKIP][92] ([fdo#109285])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adln-1/igt@kms_force_connector_basic@force-load-detect.html
    - bat-adlm-1:         NOTRUN -> [SKIP][93] ([fdo#109285])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@kms_force_connector_basic@force-load-detect.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][94] ([fdo#109285] / [i915#4098])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][95] ([fdo#109285])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][96] ([fdo#109285])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@kms_force_connector_basic@force-load-detect.html
    - bat-jsl-1:          NOTRUN -> [SKIP][97] ([fdo#109285])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html
    - bat-rpls-1:         NOTRUN -> [SKIP][98] ([fdo#109285])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg1-5:          NOTRUN -> [SKIP][99] ([fdo#109285])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html
    - bat-adlp-9:         NOTRUN -> [SKIP][100] ([fdo#109285])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-mtlp-8:         NOTRUN -> [SKIP][101] ([i915#5274])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][102] ([i915#5274])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-adlm-1:         NOTRUN -> [SKIP][103] ([i915#1849])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@kms_frontbuffer_tracking@basic.html
    - bat-rpls-1:         NOTRUN -> [SKIP][104] ([i915#1849])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@kms_frontbuffer_tracking@basic.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][105] ([i915#4342])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][106] ([i915#9276])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-skl-guc:         NOTRUN -> [FAIL][107] ([IGT#3])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-skl-guc/igt@kms_hdmi_inject@inject-audio.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][108] ([IGT#3])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-bsw-nick/igt@kms_hdmi_inject@inject-audio.html
    - bat-dg1-5:          NOTRUN -> [SKIP][109] ([i915#433])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@kms_hdmi_inject@inject-audio.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][110] ([IGT#3] / [i915#6121])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][111] ([IGT#3])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-bsw-n3050/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-2:
    - fi-skl-guc:         NOTRUN -> [SKIP][112] ([fdo#109271]) +11 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-2.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1:
    - fi-skl-6600u:       NOTRUN -> [SKIP][113] ([fdo#109271]) +7 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - bat-mtlp-6:         NOTRUN -> [SKIP][114] ([i915#1845] / [i915#4078]) +3 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][115] ([i915#1845]) +2 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][116] ([fdo#109271]) +35 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - fi-kbl-guc:         NOTRUN -> [SKIP][117] ([fdo#109271]) +24 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-guc/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_psr@cursor_plane_move:
    - bat-adln-1:         NOTRUN -> [ABORT][118] ([i915#8668])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adln-1/igt@kms_psr@cursor_plane_move.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][119] ([fdo#109271]) +20 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-ivb-3770/igt@kms_psr@cursor_plane_move.html
    - bat-adlm-1:         NOTRUN -> [SKIP][120] ([i915#1072]) +3 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@kms_psr@cursor_plane_move.html
    - bat-rpls-1:         NOTRUN -> [SKIP][121] ([i915#1072]) +3 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@kms_psr@cursor_plane_move.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][122] ([i915#1072]) +3 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][123] ([fdo#109271]) +30 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-adlp-9:         NOTRUN -> [SKIP][124] ([i915#1072]) +3 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@kms_psr@sprite_plane_onoff.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][125] ([i915#1072]) +3 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html
    - bat-dg1-5:          NOTRUN -> [SKIP][126] ([i915#1072] / [i915#4078]) +3 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adlp-9:         NOTRUN -> [SKIP][127] ([i915#3555])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][128] ([i915#3555] / [i915#4098])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg1-5:          NOTRUN -> [SKIP][129] ([i915#3555])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][130] ([i915#3555] / [i915#8809])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adlm-1:         NOTRUN -> [SKIP][131] ([i915#3555])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-jsl-1:          NOTRUN -> [SKIP][132] ([i915#3555])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-rpls-1:         NOTRUN -> [SKIP][133] ([i915#3555])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][134] ([i915#3555] / [i915#8809])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-adlm-1:         NOTRUN -> [SKIP][135] ([i915#1845] / [i915#3708])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@prime_vgem@basic-fence-flip.html
    - bat-rpls-1:         NOTRUN -> [SKIP][136] ([fdo#109295] / [i915#1845] / [i915#3708])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@prime_vgem@basic-fence-flip.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][137] ([i915#1845] / [i915#3708])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-mtlp-6:         NOTRUN -> [SKIP][138] ([i915#3708] / [i915#4077]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][139] ([i915#3708] / [i915#4077]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-mtlp-8:         NOTRUN -> [SKIP][140] ([i915#3708]) +2 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html
    - bat-adlp-9:         NOTRUN -> [SKIP][141] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@prime_vgem@basic-fence-read.html
    - bat-dg1-5:          NOTRUN -> [SKIP][142] ([i915#3708]) +3 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - bat-dg1-5:          NOTRUN -> [SKIP][143] ([i915#3708] / [i915#4077]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - fi-rkl-11600:       NOTRUN -> [SKIP][144] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-adlm-1:         NOTRUN -> [SKIP][145] ([i915#3708]) +2 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@prime_vgem@basic-write.html
    - bat-rpls-1:         NOTRUN -> [SKIP][146] ([fdo#109295] / [i915#3708]) +2 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@prime_vgem@basic-write.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][147] ([i915#3708]) +2 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@prime_vgem@basic-write.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8913]: https://gitlab.freedesktop.org/drm/intel/issues/8913
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9270]: https://gitlab.freedesktop.org/drm/intel/issues/9270
  [i915#9276]: https://gitlab.freedesktop.org/drm/intel/issues/9276
  [i915#9278]: https://gitlab.freedesktop.org/drm/intel/issues/9278
  [i915#9290]: https://gitlab.freedesktop.org/drm/intel/issues/9290
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318


Build changes
-------------

  * Linux: CI_DRM_13624 -> Patchwork_123637v1

  CI-20190529: 20190529
  CI_DRM_13624: b1437a4f8f383c0849a00b0bbed5f58a02aab487 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7485: 31ec677ca24e7ed86e35f367f40a29d3d9f51c06 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_123637v1: b1437a4f8f383c0849a00b0bbed5f58a02aab487 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

40c7911dbd6b drm/i915: Remove runtime suspended boolean from intel_runtime_pm struct

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/index.html

--===============1281301214955934497==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove runtime suspended boolean from intel_runtime_pm struct</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123637/">https://patchwork.freedesktop.org/series/123637/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13624 -&gt; Patchwork_123637v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_123637v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_123637v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/index.html</p>
<h2>Participating hosts (17 -&gt; 38)</h2>
<p>Additional (21): fi-kbl-soraka fi-rkl-11600 bat-dg1-5 fi-pnv-d510 bat-rpls-1 fi-skl-6600u fi-bsw-n3050 bat-adlm-1 bat-adln-1 fi-ivb-3770 fi-bsw-nick fi-kbl-7567u bat-adlp-9 fi-skl-guc fi-glk-j4005 bat-mtlp-8 bat-jsl-1 bat-mtlp-6 fi-kbl-guc fi-kbl-x1275 fi-cfl-8109u </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_123637v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123637v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adln-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3826">i915#3826</a>)</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8913">i915#8913</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-x1275/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-guc/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>)</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +3 other tests skip</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 other tests skip</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 other tests skip</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adln-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@i915_selftest@live@gt_engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9278">i915#9278</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9290">i915#9290</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@i915_selftest@live@gt_engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9278">i915#9278</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9290">i915#9290</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9270">i915#9270</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9270">i915#9270</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) +6 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +8 other tests skip</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 other tests skip</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 other tests skip</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adln-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-cfl-8109u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 other tests skip</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +15 other tests skip</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +11 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@kms_flip@basic-flip-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@kms_flip@basic-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adln-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4342">i915#4342</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9276">i915#9276</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-skl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-bsw-nick/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/433">i915#433</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-bsw-n3050/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-2:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-kbl-guc/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adln-1/igt@kms_psr@cursor_plane_move.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-ivb-3770/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +20 other tests skip</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlp-9/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-dg1-5/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/fi-rkl-11600/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-adlm-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-rpls-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</p>
</li>
<li>
<p>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123637v1/bat-mtlp-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13624 -&gt; Patchwork_123637v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13624: b1437a4f8f383c0849a00b0bbed5f58a02aab487 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7485: 31ec677ca24e7ed86e35f367f40a29d3d9f51c06 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_123637v1: b1437a4f8f383c0849a00b0bbed5f58a02aab487 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>40c7911dbd6b drm/i915: Remove runtime suspended boolean from intel_runtime_pm struct</p>

</body>
</html>

--===============1281301214955934497==--
