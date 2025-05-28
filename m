Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2EFAC6CDD
	for <lists+intel-gfx@lfdr.de>; Wed, 28 May 2025 17:34:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23F1110E61B;
	Wed, 28 May 2025 15:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 559A410E617;
 Wed, 28 May 2025 15:34:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8689804989465987059=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_ref=5Ftracker=3A_add_abil?=
 =?utf-8?q?ity_to_register_a_debugfs_file_for_a_ref=5Ftracker=5Fdir_=28rev7?=
 =?utf-8?q?=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jeff Layton" <jlayton@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 28 May 2025 15:34:31 -0000
Message-ID: <174844647134.28899.10529455285538338796@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250528-reftrack-dbgfs-v11-0-94ae0b165841@kernel.org>
In-Reply-To: <20250528-reftrack-dbgfs-v11-0-94ae0b165841@kernel.org>
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

--===============8689804989465987059==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: ref_tracker: add ability to register a debugfs file for a ref_tracker_dir (rev7)
URL   : https://patchwork.freedesktop.org/series/148490/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16602 -> Patchwork_148490v7
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_148490v7 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_148490v7, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/index.html

Participating hosts (44 -> 44)
------------------------------

  Additional (1): bat-rpls-4 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_148490v7:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-14:         [PASS][1] -> [DMESG-WARN][2] +44 other tests dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-dg2-14/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-dg2-14/igt@i915_pm_rpm@module-reload.html
    - fi-bsw-nick:        [PASS][3] -> [DMESG-WARN][4] +40 other tests dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html
    - bat-kbl-2:          [PASS][5] -> [DMESG-WARN][6] +40 other tests dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-kbl-2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@client:
    - fi-elk-e7500:       [PASS][7] -> [DMESG-WARN][8] +39 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-elk-e7500/igt@i915_selftest@live@client.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-elk-e7500/igt@i915_selftest@live@client.html
    - bat-dg2-8:          [PASS][9] -> [DMESG-WARN][10] +44 other tests dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-dg2-8/igt@i915_selftest@live@client.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-dg2-8/igt@i915_selftest@live@client.html
    - fi-kbl-guc:         [PASS][11] -> [DMESG-WARN][12] +40 other tests dmesg-warn
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-kbl-guc/igt@i915_selftest@live@client.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-kbl-guc/igt@i915_selftest@live@client.html
    - bat-adls-6:         [PASS][13] -> [DMESG-WARN][14] +40 other tests dmesg-warn
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-adls-6/igt@i915_selftest@live@client.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-adls-6/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@coherency:
    - bat-dg2-9:          [PASS][15] -> [DMESG-WARN][16] +42 other tests dmesg-warn
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-dg2-9/igt@i915_selftest@live@coherency.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-dg2-9/igt@i915_selftest@live@coherency.html
    - fi-kbl-x1275:       [PASS][17] -> [DMESG-WARN][18] +39 other tests dmesg-warn
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-kbl-x1275/igt@i915_selftest@live@coherency.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-kbl-x1275/igt@i915_selftest@live@coherency.html
    - bat-adlp-11:        [PASS][19] -> [DMESG-WARN][20] +40 other tests dmesg-warn
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-adlp-11/igt@i915_selftest@live@coherency.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-adlp-11/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@evict:
    - fi-pnv-d510:        [PASS][21] -> [DMESG-WARN][22] +39 other tests dmesg-warn
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-pnv-d510/igt@i915_selftest@live@evict.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-pnv-d510/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-arls-6:         [PASS][23] -> [DMESG-WARN][24] +40 other tests dmesg-warn
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-arls-6/igt@i915_selftest@live@gem_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-arls-6/igt@i915_selftest@live@gem_contexts.html
    - bat-arlh-3:         [PASS][25] -> [DMESG-WARN][26] +38 other tests dmesg-warn
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [PASS][27] -> [DMESG-WARN][28] +44 other tests dmesg-warn
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
    - fi-ilk-650:         [PASS][29] -> [DMESG-WARN][30] +38 other tests dmesg-warn
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-ilk-650/igt@i915_selftest@live@gt_engines.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-ilk-650/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-rpls-4:         NOTRUN -> [DMESG-WARN][31] +40 other tests dmesg-warn
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@i915_selftest@live@gt_heartbeat.html
    - bat-arlh-2:         NOTRUN -> [DMESG-WARN][32] +27 other tests dmesg-warn
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-arlh-2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-twl-2:          [PASS][33] -> [DMESG-WARN][34] +37 other tests dmesg-warn
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-twl-2/igt@i915_selftest@live@gt_mocs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-twl-2/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-1115g4:      [PASS][35] -> [DMESG-WARN][36] +40 other tests dmesg-warn
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@gt_tlb:
    - bat-adlp-9:         [PASS][37] -> [DMESG-WARN][38] +40 other tests dmesg-warn
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html

  * igt@i915_selftest@live@guc_hang:
    - bat-twl-2:          [PASS][39] -> [ABORT][40] +1 other test abort
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-twl-2/igt@i915_selftest@live@guc_hang.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-twl-2/igt@i915_selftest@live@guc_hang.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - bat-mtlp-8:         [PASS][41] -> [DMESG-WARN][42] +40 other tests dmesg-warn
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-mtlp-8/igt@i915_selftest@live@guc_multi_lrc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-mtlp-8/igt@i915_selftest@live@guc_multi_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - bat-atsm-1:         [PASS][43] -> [DMESG-WARN][44] +41 other tests dmesg-warn
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-atsm-1/igt@i915_selftest@live@hangcheck.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-atsm-1/igt@i915_selftest@live@hangcheck.html
    - bat-mtlp-9:         [PASS][45] -> [DMESG-WARN][46] +40 other tests dmesg-warn
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-mtlp-9/igt@i915_selftest@live@hangcheck.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-mtlp-9/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - fi-glk-j4005:       [PASS][47] -> [DMESG-WARN][48] +40 other tests dmesg-warn
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-glk-j4005/igt@i915_selftest@live@hugepages.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-glk-j4005/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-cfl-8109u:       [PASS][49] -> [DMESG-WARN][50] +40 other tests dmesg-warn
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
    - fi-kbl-8809g:       [PASS][51] -> [DMESG-WARN][52] +40 other tests dmesg-warn
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@objects:
    - fi-blb-e6850:       [PASS][53] -> [DMESG-WARN][54] +39 other tests dmesg-warn
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-blb-e6850/igt@i915_selftest@live@objects.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-blb-e6850/igt@i915_selftest@live@objects.html
    - bat-adlp-6:         [PASS][55] -> [DMESG-WARN][56] +39 other tests dmesg-warn
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-adlp-6/igt@i915_selftest@live@objects.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-adlp-6/igt@i915_selftest@live@objects.html
    - fi-skl-6600u:       [PASS][57] -> [DMESG-WARN][58] +40 other tests dmesg-warn
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-skl-6600u/igt@i915_selftest@live@objects.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-skl-6600u/igt@i915_selftest@live@objects.html

  * igt@i915_selftest@live@perf:
    - bat-dg2-11:         [PASS][59] -> [DMESG-WARN][60] +42 other tests dmesg-warn
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-dg2-11/igt@i915_selftest@live@perf.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-dg2-11/igt@i915_selftest@live@perf.html
    - fi-hsw-4770:        [PASS][61] -> [DMESG-WARN][62] +39 other tests dmesg-warn
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-hsw-4770/igt@i915_selftest@live@perf.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-hsw-4770/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@ring_submission:
    - fi-ivb-3770:        [PASS][63] -> [DMESG-WARN][64] +39 other tests dmesg-warn
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-ivb-3770/igt@i915_selftest@live@ring_submission.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-ivb-3770/igt@i915_selftest@live@ring_submission.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][65] -> [DMESG-WARN][66] +40 other tests dmesg-warn
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
    - bat-twl-1:          [PASS][67] -> [DMESG-WARN][68] +40 other tests dmesg-warn
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-twl-1/igt@i915_selftest@live@sanitycheck.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-twl-1/igt@i915_selftest@live@sanitycheck.html
    - bat-apl-1:          [PASS][69] -> [DMESG-WARN][70] +40 other tests dmesg-warn
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-apl-1/igt@i915_selftest@live@sanitycheck.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-apl-1/igt@i915_selftest@live@sanitycheck.html
    - bat-arls-5:         [PASS][71] -> [DMESG-WARN][72] +38 other tests dmesg-warn
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-arls-5/igt@i915_selftest@live@sanitycheck.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-arls-5/igt@i915_selftest@live@sanitycheck.html
    - bat-rplp-1:         [PASS][73] -> [DMESG-WARN][74] +40 other tests dmesg-warn
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html
    - bat-arlh-2:         [PASS][75] -> [DMESG-WARN][76] +10 other tests dmesg-warn
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-arlh-2/igt@i915_selftest@live@sanitycheck.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-arlh-2/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@slpc:
    - fi-cfl-guc:         [PASS][77] -> [DMESG-WARN][78] +40 other tests dmesg-warn
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-cfl-guc/igt@i915_selftest@live@slpc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-cfl-guc/igt@i915_selftest@live@slpc.html
    - bat-mtlp-6:         [PASS][79] -> [DMESG-WARN][80] +40 other tests dmesg-warn
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-mtlp-6/igt@i915_selftest@live@slpc.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-mtlp-6/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@uncore:
    - bat-dg1-7:          [PASS][81] -> [DMESG-WARN][82] +44 other tests dmesg-warn
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-dg1-7/igt@i915_selftest@live@uncore.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-dg1-7/igt@i915_selftest@live@uncore.html

  * igt@i915_selftest@live@vma:
    - fi-cfl-8700k:       [PASS][83] -> [DMESG-WARN][84] +40 other tests dmesg-warn
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-cfl-8700k/igt@i915_selftest@live@vma.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-cfl-8700k/igt@i915_selftest@live@vma.html

  * igt@i915_selftest@live@workarounds:
    - fi-bsw-n3050:       [PASS][85] -> [DMESG-WARN][86] +40 other tests dmesg-warn
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arlh-2:         [INCOMPLETE][87] ([i915#14046]) -> [DMESG-WARN][88] +1 other test dmesg-warn
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-arlh-2/igt@i915_selftest@live.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-arlh-2/igt@i915_selftest@live.html

  
Known issues
------------

  Here are the changes found in Patchwork_148490v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-rpls-4:         NOTRUN -> [SKIP][89] ([i915#4613]) +3 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_tiled_pread_basic:
    - bat-rpls-4:         NOTRUN -> [SKIP][90] ([i915#3282])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@gem_tiled_pread_basic.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [PASS][91] -> [DMESG-FAIL][92] ([i915#12061]) +1 other test dmesg-fail
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  * igt@intel_hwmon@hwmon-read:
    - bat-rpls-4:         NOTRUN -> [SKIP][93] ([i915#7707]) +1 other test skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@intel_hwmon@hwmon-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-rpls-4:         NOTRUN -> [SKIP][94] ([i915#4103]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-rpls-4:         NOTRUN -> [SKIP][95] ([i915#3555] / [i915#3840] / [i915#9886])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-rpls-4:         NOTRUN -> [SKIP][96]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-rpls-4:         NOTRUN -> [SKIP][97] ([i915#5354])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-primary-page-flip:
    - bat-rpls-4:         NOTRUN -> [SKIP][98] ([i915#1072] / [i915#9732]) +3 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rpls-4:         NOTRUN -> [SKIP][99] ([i915#3555])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-read:
    - bat-rpls-4:         NOTRUN -> [SKIP][100] ([i915#3708]) +2 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@prime_vgem@basic-read.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#14046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_16602 -> Patchwork_148490v7

  CI-20190529: 20190529
  CI_DRM_16602: 6ffa054d5495d030899b3e4f223ecf9fa1d3a640 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8380: 8380
  Patchwork_148490v7: 6ffa054d5495d030899b3e4f223ecf9fa1d3a640 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/index.html

--===============8689804989465987059==
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
<tr><td><b>Series:</b></td><td>ref_tracker: add ability to register a debugfs file for a ref_tracker_dir (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/148490/">https://patchwork.freedesktop.org/series/148490/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16602 -&gt; Patchwork_148490v7</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_148490v7 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_148490v7, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/index.html</p>
<h2>Participating hosts (44 -&gt; 44)</h2>
<p>Additional (1): bat-rpls-4 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_148490v7:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-dg2-14/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-dg2-14/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +44 other tests dmesg-warn</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-elk-e7500/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-elk-e7500/igt@i915_selftest@live@client.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-dg2-8/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-dg2-8/igt@i915_selftest@live@client.html">DMESG-WARN</a> +44 other tests dmesg-warn</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-kbl-guc/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-kbl-guc/igt@i915_selftest@live@client.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-adls-6/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-adls-6/igt@i915_selftest@live@client.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-dg2-9/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-dg2-9/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-kbl-x1275/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-kbl-x1275/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-adlp-11/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-adlp-11/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-pnv-d510/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-pnv-d510/igt@i915_selftest@live@evict.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-arls-6/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-arls-6/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> +44 other tests dmesg-warn</li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-ilk-650/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-ilk-650/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-arlh-2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> +27 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-twl-2/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-twl-2/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> +37 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_tlb:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_hang:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-twl-2/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-twl-2/igt@i915_selftest@live@guc_hang.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-mtlp-8/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-mtlp-8/igt@i915_selftest@live@guc_multi_lrc.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-mtlp-9/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-mtlp-9/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-glk-j4005/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-glk-j4005/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-blb-e6850/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-blb-e6850/igt@i915_selftest@live@objects.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-adlp-6/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-adlp-6/igt@i915_selftest@live@objects.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-skl-6600u/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-skl-6600u/igt@i915_selftest@live@objects.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-dg2-11/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-dg2-11/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-hsw-4770/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-hsw-4770/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-ivb-3770/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-ivb-3770/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-twl-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-twl-1/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-apl-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-apl-1/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-arlh-2/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-arlh-2/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +10 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-cfl-guc/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-cfl-guc/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-mtlp-6/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-mtlp-6/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-dg1-7/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-dg1-7/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +44 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@vma:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-cfl-8700k/igt@i915_selftest@live@vma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-cfl-8700k/igt@i915_selftest@live@vma.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-arlh-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046">i915#14046</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-arlh-2/igt@i915_selftest@live.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_148490v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16602/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-rpls-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v7/bat-rpls-4/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16602 -&gt; Patchwork_148490v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16602: 6ffa054d5495d030899b3e4f223ecf9fa1d3a640 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8380: 8380<br />
  Patchwork_148490v7: 6ffa054d5495d030899b3e4f223ecf9fa1d3a640 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8689804989465987059==--
