Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AB112D252
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 17:53:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1468289FF7;
	Mon, 30 Dec 2019 16:53:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B64B86E043;
 Mon, 30 Dec 2019 16:53:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE0A2A010F;
 Mon, 30 Dec 2019 16:53:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 30 Dec 2019 16:53:38 -0000
Message-ID: <157772481868.15516.9279855325218671260@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191230160112.3838434-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191230160112.3838434-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/selftests=3A_Flush_the_con?=
 =?utf-8?q?text_worker?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/6] drm/i915/selftests: Flush the context worker
URL   : https://patchwork.freedesktop.org/series/71497/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7656 -> Patchwork_15947
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15947 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15947, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15947:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-cml-s:           [PASS][1] -> [SKIP][2] +21 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-cml-s/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-cml-s/igt@debugfs_test@read_all_entries.html

  * igt@gem_ringfill@basic-default:
    - fi-icl-u2:          [PASS][3] -> [SKIP][4] +63 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-u2/igt@gem_ringfill@basic-default.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-u2/igt@gem_ringfill@basic-default.html

  * igt@gem_ringfill@basic-default-forked:
    - fi-tgl-y:           NOTRUN -> [SKIP][5] +65 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-tgl-y/igt@gem_ringfill@basic-default-forked.html

  * igt@gem_ringfill@basic-default-interruptible:
    - fi-icl-y:           [PASS][6] -> [SKIP][7] +63 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-y/igt@gem_ringfill@basic-default-interruptible.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-y/igt@gem_ringfill@basic-default-interruptible.html

  * igt@gem_sync@basic-all:
    - fi-icl-guc:         [PASS][8] -> [SKIP][9] +63 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-guc/igt@gem_sync@basic-all.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-guc/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-each:
    - fi-cml-u2:          [PASS][10] -> [SKIP][11] +63 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-cml-u2/igt@gem_sync@basic-each.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-cml-u2/igt@gem_sync@basic-each.html

  * igt@gem_wait@basic-busy-all:
    - fi-icl-u3:          [PASS][12] -> [SKIP][13] +63 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-u3/igt@gem_wait@basic-busy-all.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-u3/igt@gem_wait@basic-busy-all.html

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       [PASS][14] -> [DMESG-WARN][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-kbl-8809g/igt@i915_module_load@reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-kbl-8809g/igt@i915_module_load@reload.html
    - fi-cml-u2:          [PASS][16] -> [DMESG-WARN][17] +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-cml-u2/igt@i915_module_load@reload.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-cml-u2/igt@i915_module_load@reload.html
    - fi-cfl-8700k:       [PASS][18] -> [DMESG-WARN][19] +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-cfl-8700k/igt@i915_module_load@reload.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-cfl-8700k/igt@i915_module_load@reload.html
    - fi-apl-guc:         [PASS][20] -> [DMESG-WARN][21] +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-apl-guc/igt@i915_module_load@reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-apl-guc/igt@i915_module_load@reload.html
    - fi-bxt-dsi:         [PASS][22] -> [DMESG-WARN][23] +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-bxt-dsi/igt@i915_module_load@reload.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-bxt-dsi/igt@i915_module_load@reload.html
    - fi-whl-u:           [PASS][24] -> [DMESG-WARN][25] +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-whl-u/igt@i915_module_load@reload.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-whl-u/igt@i915_module_load@reload.html
    - fi-skl-6600u:       [PASS][26] -> [DMESG-WARN][27] +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-skl-6600u/igt@i915_module_load@reload.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-bsw-n3050:       [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-bsw-n3050/igt@i915_module_load@reload.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-bsw-n3050/igt@i915_module_load@reload.html
    - fi-bdw-5557u:       [PASS][30] -> [DMESG-WARN][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-bdw-5557u/igt@i915_module_load@reload.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-bdw-5557u/igt@i915_module_load@reload.html

  * igt@i915_module_load@reload-no-display:
    - fi-skl-6770hq:      [PASS][32] -> [DMESG-WARN][33] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-skl-6770hq/igt@i915_module_load@reload-no-display.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-skl-6770hq/igt@i915_module_load@reload-no-display.html
    - fi-cfl-guc:         [PASS][34] -> [DMESG-WARN][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-cfl-guc/igt@i915_module_load@reload-no-display.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-cfl-guc/igt@i915_module_load@reload-no-display.html
    - fi-skl-6700k2:      [PASS][36] -> [DMESG-WARN][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-skl-6700k2/igt@i915_module_load@reload-no-display.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-skl-6700k2/igt@i915_module_load@reload-no-display.html
    - fi-cml-s:           NOTRUN -> [DMESG-WARN][38] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-cml-s/igt@i915_module_load@reload-no-display.html
    - fi-kbl-guc:         [PASS][39] -> [DMESG-WARN][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-kbl-guc/igt@i915_module_load@reload-no-display.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-kbl-guc/igt@i915_module_load@reload-no-display.html
    - fi-skl-guc:         [PASS][41] -> [DMESG-WARN][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-skl-guc/igt@i915_module_load@reload-no-display.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-skl-guc/igt@i915_module_load@reload-no-display.html
    - fi-bdw-5557u:       [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-bdw-5557u/igt@i915_module_load@reload-no-display.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-bdw-5557u/igt@i915_module_load@reload-no-display.html
    - fi-bsw-nick:        [PASS][45] -> [DMESG-WARN][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-bsw-nick/igt@i915_module_load@reload-no-display.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-bsw-nick/igt@i915_module_load@reload-no-display.html

  * igt@i915_pm_rpm@module-reload:
    - fi-tgl-y:           NOTRUN -> [DMESG-WARN][47] +8 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-tgl-y/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_coherency:
    - fi-icl-guc:         [PASS][48] -> [DMESG-FAIL][49] +6 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-guc/igt@i915_selftest@live_coherency.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-guc/igt@i915_selftest@live_coherency.html

  * igt@i915_selftest@live_gt_contexts:
    - fi-icl-guc:         [PASS][50] -> [DMESG-WARN][51] +24 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-guc/igt@i915_selftest@live_gt_contexts.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-guc/igt@i915_selftest@live_gt_contexts.html

  * igt@i915_selftest@live_gt_engines:
    - fi-bsw-kefka:       NOTRUN -> [DMESG-FAIL][52] +5 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-bsw-kefka/igt@i915_selftest@live_gt_engines.html
    - fi-tgl-y:           NOTRUN -> [DMESG-FAIL][53] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-tgl-y/igt@i915_selftest@live_gt_engines.html
    - fi-icl-u2:          [PASS][54] -> [DMESG-FAIL][55] +6 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-u2/igt@i915_selftest@live_gt_engines.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-u2/igt@i915_selftest@live_gt_engines.html

  * igt@i915_selftest@live_gt_mocs:
    - fi-icl-y:           [PASS][56] -> [DMESG-FAIL][57] +6 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-y/igt@i915_selftest@live_gt_mocs.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-y/igt@i915_selftest@live_gt_mocs.html

  * igt@i915_selftest@live_gt_pm:
    - fi-icl-y:           [PASS][58] -> [DMESG-WARN][59] +24 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-y/igt@i915_selftest@live_gt_pm.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-y/igt@i915_selftest@live_gt_pm.html

  * igt@i915_selftest@live_gt_timelines:
    - fi-icl-dsi:         [PASS][60] -> [DMESG-WARN][61] +24 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-dsi/igt@i915_selftest@live_gt_timelines.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-dsi/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_selftest@live_hugepages:
    - fi-icl-u2:          [PASS][62] -> [DMESG-WARN][63] +21 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-u2/igt@i915_selftest@live_hugepages.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-u2/igt@i915_selftest@live_hugepages.html

  * igt@i915_selftest@live_late_gt_pm:
    - fi-bsw-kefka:       NOTRUN -> [DMESG-WARN][64] +27 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-bsw-kefka/igt@i915_selftest@live_late_gt_pm.html

  * igt@i915_selftest@live_reset:
    - fi-icl-dsi:         [PASS][65] -> [DMESG-FAIL][66] +6 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-dsi/igt@i915_selftest@live_reset.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-dsi/igt@i915_selftest@live_reset.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-icl-u3:          [PASS][67] -> [DMESG-WARN][68] +24 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html

  * igt@i915_selftest@live_uncore:
    - fi-icl-u3:          [PASS][69] -> [DMESG-FAIL][70] +6 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-u3/igt@i915_selftest@live_uncore.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-u3/igt@i915_selftest@live_uncore.html

  * igt@prime_vgem@basic-fence-read:
    - fi-cml-s:           NOTRUN -> [SKIP][71] +42 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-cml-s/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-wait-default:
    - fi-icl-dsi:         [PASS][72] -> [SKIP][73] +63 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-dsi/igt@prime_vgem@basic-wait-default.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-dsi/igt@prime_vgem@basic-wait-default.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][74]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-bsw-nick/igt@runner@aborted.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-u2:          [SKIP][75] ([fdo#109315]) -> [SKIP][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-u2/igt@amdgpu/amd_prime@amd-to-i915.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-u2/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-icl-y:           [SKIP][77] ([fdo#109315]) -> [SKIP][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-y/igt@amdgpu/amd_prime@amd-to-i915.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-y/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-icl-u3:          [SKIP][79] ([fdo#109315]) -> [SKIP][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-icl-guc:         [SKIP][81] ([fdo#109315]) -> [SKIP][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-guc/igt@amdgpu/amd_prime@amd-to-i915.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-guc/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-icl-dsi:         [SKIP][83] ([fdo#109315]) -> [SKIP][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-dsi/igt@amdgpu/amd_prime@i915-to-amd.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-dsi/igt@amdgpu/amd_prime@i915-to-amd.html
    - fi-cml-u2:          [SKIP][85] ([fdo#109315]) -> [SKIP][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-cml-u2/igt@amdgpu/amd_prime@i915-to-amd.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-cml-u2/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [DMESG-WARN][87] ([fdo#111764]) -> [SKIP][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@amdgpu/amd_prime@i915-to-amd:
    - {fi-tgl-guc}:       [SKIP][89] ([fdo#109315]) -> [SKIP][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-tgl-guc/igt@amdgpu/amd_prime@i915-to-amd.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-tgl-guc/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@gem_ctx_create@basic:
    - {fi-tgl-guc}:       [PASS][91] -> [SKIP][92] +62 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-tgl-guc/igt@gem_ctx_create@basic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-tgl-guc/igt@gem_ctx_create@basic.html

  * igt@i915_module_load@reload:
    - {fi-kbl-7560u}:     NOTRUN -> [DMESG-WARN][93] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-kbl-7560u/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_gt_timelines:
    - {fi-tgl-guc}:       [PASS][94] -> [DMESG-WARN][95] +8 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-tgl-guc/igt@i915_selftest@live_gt_timelines.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-tgl-guc/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_selftest@live_uncore:
    - {fi-tgl-guc}:       [PASS][96] -> [DMESG-FAIL][97] +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-tgl-guc/igt@i915_selftest@live_uncore.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-tgl-guc/igt@i915_selftest@live_uncore.html

  * igt@kms_busy@basic-flip-pipe-a:
    - {fi-tgl-guc}:       [DMESG-WARN][98] ([i915#402]) -> [SKIP][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-tgl-guc/igt@kms_busy@basic-flip-pipe-a.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-tgl-guc/igt@kms_busy@basic-flip-pipe-a.html

  
Known issues
------------

  Here are the changes found in Patchwork_15947 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-all:
    - fi-bsw-nick:        [PASS][100] -> [SKIP][101] ([fdo#109271]) +54 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-bsw-nick/igt@gem_busy@busy-all.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-bsw-nick/igt@gem_busy@busy-all.html

  * igt@gem_close_race@basic-threads:
    - fi-skl-6600u:       [PASS][102] -> [SKIP][103] ([fdo#109271]) +63 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-skl-6600u/igt@gem_close_race@basic-threads.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-skl-6600u/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_switch@legacy-render:
    - fi-apl-guc:         [PASS][104] -> [SKIP][105] ([fdo#109271]) +63 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-apl-guc/igt@gem_ctx_switch@legacy-render.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-apl-guc/igt@gem_ctx_switch@legacy-render.html

  * igt@gem_exec_basic@basic-all:
    - fi-cfl-guc:         [PASS][106] -> [SKIP][107] ([fdo#109271]) +63 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-cfl-guc/igt@gem_exec_basic@basic-all.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-cfl-guc/igt@gem_exec_basic@basic-all.html
    - fi-skl-6770hq:      [PASS][108] -> [SKIP][109] ([fdo#109271]) +63 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-skl-6770hq/igt@gem_exec_basic@basic-all.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-skl-6770hq/igt@gem_exec_basic@basic-all.html

  * igt@gem_exec_fence@basic-wait-default:
    - fi-bxt-dsi:         [PASS][110] -> [SKIP][111] ([fdo#109271]) +62 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-bxt-dsi/igt@gem_exec_fence@basic-wait-default.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-bxt-dsi/igt@gem_exec_fence@basic-wait-default.html

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-x1275:       [PASS][112] -> [SKIP][113] ([fdo#109271]) +51 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-kbl-8809g:       [PASS][114] -> [SKIP][115] ([fdo#109271]) +55 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_render_linear_blits@basic:
    - fi-cfl-8700k:       [PASS][116] -> [SKIP][117] ([fdo#109271]) +63 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html

  * igt@gem_ringfill@basic-default:
    - fi-skl-6700k2:      [PASS][118] -> [SKIP][119] ([fdo#109271]) +63 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-skl-6700k2/igt@gem_ringfill@basic-default.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-skl-6700k2/igt@gem_ringfill@basic-default.html

  * igt@gem_sync@basic-each:
    - fi-whl-u:           [PASS][120] -> [SKIP][121] ([fdo#109271]) +63 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-whl-u/igt@gem_sync@basic-each.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-whl-u/igt@gem_sync@basic-each.html

  * igt@i915_module_load@reload-no-display:
    - fi-kbl-x1275:       [PASS][122] -> [DMESG-WARN][123] ([i915#62] / [i915#92])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-kbl-x1275/igt@i915_module_load@reload-no-display.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-kbl-x1275/igt@i915_module_load@reload-no-display.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-8809g:       [PASS][124] -> [DMESG-WARN][125] ([i915#889]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-kbl-8809g/igt@i915_module_load@reload-with-fault-injection.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-kbl-8809g/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       [PASS][126] -> [DMESG-WARN][127] ([i915#889]) +23 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][128] -> [DMESG-FAIL][129] ([i915#563])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_client:
    - fi-skl-guc:         [PASS][130] -> [DMESG-WARN][131] ([i915#889]) +23 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-skl-guc/igt@i915_selftest@live_client.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-skl-guc/igt@i915_selftest@live_client.html
    - fi-kbl-guc:         [PASS][132] -> [DMESG-WARN][133] ([i915#889]) +23 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-kbl-guc/igt@i915_selftest@live_client.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-kbl-guc/igt@i915_selftest@live_client.html

  * igt@i915_selftest@live_coherency:
    - fi-cfl-guc:         [PASS][134] -> [DMESG-FAIL][135] ([i915#889]) +7 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-cfl-guc/igt@i915_selftest@live_coherency.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-cfl-guc/igt@i915_selftest@live_coherency.html

  * igt@i915_selftest@live_evict:
    - fi-cml-u2:          [PASS][136] -> [DMESG-WARN][137] ([i915#889]) +23 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-cml-u2/igt@i915_selftest@live_evict.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-cml-u2/igt@i915_selftest@live_evict.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-apl-guc:         [PASS][138] -> [DMESG-WARN][139] ([i915#889]) +23 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-apl-guc/igt@i915_selftest@live_gem_contexts.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-apl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_engines:
    - fi-kbl-guc:         [PASS][140] -> [DMESG-FAIL][141] ([i915#889]) +7 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-kbl-guc/igt@i915_selftest@live_gt_engines.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-kbl-guc/igt@i915_selftest@live_gt_engines.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-whl-u:           [PASS][142] -> [DMESG-FAIL][143] ([i915#889]) +7 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-whl-u/igt@i915_selftest@live_gt_lrc.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-whl-u/igt@i915_selftest@live_gt_lrc.html
    - fi-skl-6600u:       [PASS][144] -> [DMESG-FAIL][145] ([i915#889]) +7 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_selftest@live_gt_timelines:
    - fi-cfl-guc:         [PASS][146] -> [DMESG-WARN][147] ([i915#889]) +23 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-cfl-guc/igt@i915_selftest@live_gt_timelines.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-cfl-guc/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_selftest@live_gtt:
    - fi-skl-guc:         [PASS][148] -> [DMESG-FAIL][149] ([i915#889]) +7 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-skl-guc/igt@i915_selftest@live_gtt.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-skl-guc/igt@i915_selftest@live_gtt.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-y:           [PASS][150] -> [DMESG-FAIL][151] ([i915#419])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-y/igt@i915_selftest@live_hangcheck.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-y/igt@i915_selftest@live_hangcheck.html
    - fi-icl-u2:          [PASS][152] -> [DMESG-FAIL][153] ([i915#419])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-u2/igt@i915_selftest@live_hangcheck.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-u2/igt@i915_selftest@live_hangcheck.html
    - fi-icl-dsi:         [PASS][154] -> [DMESG-FAIL][155] ([i915#419])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-dsi/igt@i915_selftest@live_hangcheck.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-dsi/igt@i915_selftest@live_hangcheck.html
    - fi-icl-guc:         [PASS][156] -> [DMESG-FAIL][157] ([i915#419])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-guc/igt@i915_selftest@live_hangcheck.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-guc/igt@i915_selftest@live_hangcheck.html
    - fi-icl-u3:          [PASS][158] -> [DMESG-FAIL][159] ([i915#419])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-u3/igt@i915_selftest@live_hangcheck.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-u3/igt@i915_selftest@live_hangcheck.html

  * igt@i915_selftest@live_requests:
    - fi-icl-guc:         [PASS][160] -> [DMESG-WARN][161] ([fdo#109644] / [fdo#110464])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-guc/igt@i915_selftest@live_requests.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-guc/igt@i915_selftest@live_requests.html
    - fi-icl-dsi:         [PASS][162] -> [DMESG-WARN][163] ([fdo#109644] / [fdo#110464])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-dsi/igt@i915_selftest@live_requests.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-dsi/igt@i915_selftest@live_requests.html
    - fi-icl-u2:          [PASS][164] -> [DMESG-WARN][165] ([fdo#109644] / [fdo#110464])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-u2/igt@i915_selftest@live_requests.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-u2/igt@i915_selftest@live_requests.html
    - fi-icl-y:           [PASS][166] -> [DMESG-WARN][167] ([fdo#109644] / [fdo#110464])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-y/igt@i915_selftest@live_requests.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-y/igt@i915_selftest@live_requests.html
    - fi-icl-u3:          [PASS][168] -> [DMESG-WARN][169] ([fdo#109644] / [fdo#110464])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-icl-u3/igt@i915_selftest@live_requests.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-icl-u3/igt@i915_selftest@live_requests.html

  * igt@i915_selftest@live_reset:
    - fi-apl-guc:         [PASS][170] -> [DMESG-FAIL][171] ([i915#889]) +7 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-apl-guc/igt@i915_selftest@live_reset.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-apl-guc/igt@i915_selftest@live_reset.html
    - fi-cml-u2:          [PASS][172] -> [DMESG-FAIL][173] ([i915#889]) +7 similar issues
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-cml-u2/igt@i915_selftest@live_reset.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/fi-cml-u2/igt@i915_selftest@live_reset.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-whl-u:           [PASS][174] -> [DMESG-WARN][175] ([i915#889]) +23 similar issues
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7656/fi-whl-u/ig

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15947/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
