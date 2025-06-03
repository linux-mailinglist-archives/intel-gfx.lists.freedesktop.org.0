Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE027ACC6E7
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 14:45:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82AAA10E95A;
	Tue,  3 Jun 2025 12:45:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6C3F10E955;
 Tue,  3 Jun 2025 12:45:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1274851575730963369=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_ref=5Ftracker=3A_add_abil?=
 =?utf-8?q?ity_to_register_a_debugfs_file_for_a_ref=5Ftracker=5Fdir_=28rev9?=
 =?utf-8?q?=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jeff Layton" <jlayton@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Jun 2025 12:45:33 -0000
Message-ID: <174895473386.43118.3704275649238783088@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250603-reftrack-dbgfs-v13-0-7b2a425019d8@kernel.org>
In-Reply-To: <20250603-reftrack-dbgfs-v13-0-7b2a425019d8@kernel.org>
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

--===============1274851575730963369==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: ref_tracker: add ability to register a debugfs file for a ref_tracker_dir (rev9)
URL   : https://patchwork.freedesktop.org/series/148490/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16637 -> Patchwork_148490v9
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_148490v9 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_148490v9, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/index.html

Participating hosts (42 -> 42)
------------------------------

  Additional (1): bat-arlh-2 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_148490v9:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-14:         [PASS][1] -> [DMESG-WARN][2] +44 other tests dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-dg2-14/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-dg2-14/igt@i915_pm_rpm@module-reload.html
    - fi-bsw-nick:        [PASS][3] -> [DMESG-WARN][4] +40 other tests dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html
    - bat-kbl-2:          [PASS][5] -> [DMESG-WARN][6] +40 other tests dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
    - bat-adlp-6:         [PASS][7] -> [DMESG-WARN][8] +40 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-adlp-6/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@client:
    - fi-elk-e7500:       [PASS][9] -> [DMESG-WARN][10] +39 other tests dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-elk-e7500/igt@i915_selftest@live@client.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-elk-e7500/igt@i915_selftest@live@client.html
    - fi-kbl-guc:         [PASS][11] -> [DMESG-WARN][12] +39 other tests dmesg-warn
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-kbl-guc/igt@i915_selftest@live@client.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-kbl-guc/igt@i915_selftest@live@client.html
    - bat-adls-6:         [PASS][13] -> [DMESG-WARN][14] +40 other tests dmesg-warn
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-adls-6/igt@i915_selftest@live@client.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-adls-6/igt@i915_selftest@live@client.html
    - bat-dg1-7:          [PASS][15] -> [DMESG-WARN][16] +15 other tests dmesg-warn
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-dg1-7/igt@i915_selftest@live@client.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-dg1-7/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@coherency:
    - fi-kbl-x1275:       [PASS][17] -> [DMESG-WARN][18] +39 other tests dmesg-warn
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-kbl-x1275/igt@i915_selftest@live@coherency.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-kbl-x1275/igt@i915_selftest@live@coherency.html
    - bat-adlp-11:        [PASS][19] -> [DMESG-WARN][20] +40 other tests dmesg-warn
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-adlp-11/igt@i915_selftest@live@coherency.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-adlp-11/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@evict:
    - fi-pnv-d510:        [PASS][21] -> [DMESG-WARN][22] +39 other tests dmesg-warn
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-pnv-d510/igt@i915_selftest@live@evict.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-pnv-d510/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gem:
    - fi-rkl-11600:       [PASS][23] -> [DMESG-WARN][24] +40 other tests dmesg-warn
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-rkl-11600/igt@i915_selftest@live@gem.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-rkl-11600/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-arls-6:         [PASS][25] -> [DMESG-WARN][26] +38 other tests dmesg-warn
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-arls-6/igt@i915_selftest@live@gem_contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arls-6/igt@i915_selftest@live@gem_contexts.html
    - bat-arlh-3:         [PASS][27] -> [DMESG-WARN][28] +38 other tests dmesg-warn
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [PASS][29] -> [DMESG-WARN][30] +44 other tests dmesg-warn
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
    - fi-ilk-650:         [PASS][31] -> [DMESG-WARN][32] +38 other tests dmesg-warn
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-ilk-650/igt@i915_selftest@live@gt_engines.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-ilk-650/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-twl-2:          [PASS][33] -> [DMESG-WARN][34] +38 other tests dmesg-warn
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-twl-2/igt@i915_selftest@live@gt_mocs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-twl-2/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-1115g4:      [PASS][35] -> [DMESG-WARN][36] +40 other tests dmesg-warn
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@gt_tlb:
    - bat-adlp-9:         [PASS][37] -> [DMESG-WARN][38] +40 other tests dmesg-warn
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html

  * igt@i915_selftest@live@guc_hang:
    - bat-dg2-9:          [PASS][39] -> [DMESG-WARN][40] +15 other tests dmesg-warn
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-dg2-9/igt@i915_selftest@live@guc_hang.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-dg2-9/igt@i915_selftest@live@guc_hang.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - bat-mtlp-8:         [PASS][41] -> [DMESG-WARN][42] +38 other tests dmesg-warn
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-mtlp-8/igt@i915_selftest@live@guc_multi_lrc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-mtlp-8/igt@i915_selftest@live@guc_multi_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - bat-atsm-1:         [PASS][43] -> [DMESG-WARN][44] +41 other tests dmesg-warn
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-atsm-1/igt@i915_selftest@live@hangcheck.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-atsm-1/igt@i915_selftest@live@hangcheck.html
    - bat-mtlp-9:         [PASS][45] -> [DMESG-WARN][46] +20 other tests dmesg-warn
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-mtlp-9/igt@i915_selftest@live@hangcheck.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-mtlp-9/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-cfl-8109u:       [PASS][47] -> [DMESG-WARN][48] +38 other tests dmesg-warn
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
    - fi-kbl-8809g:       [PASS][49] -> [DMESG-WARN][50] +40 other tests dmesg-warn
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@objects:
    - fi-blb-e6850:       [PASS][51] -> [DMESG-WARN][52] +38 other tests dmesg-warn
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-blb-e6850/igt@i915_selftest@live@objects.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-blb-e6850/igt@i915_selftest@live@objects.html
    - fi-skl-6600u:       [PASS][53] -> [DMESG-WARN][54] +40 other tests dmesg-warn
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-skl-6600u/igt@i915_selftest@live@objects.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-skl-6600u/igt@i915_selftest@live@objects.html

  * igt@i915_selftest@live@perf:
    - bat-dg2-11:         [PASS][55] -> [DMESG-WARN][56] +42 other tests dmesg-warn
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-dg2-11/igt@i915_selftest@live@perf.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-dg2-11/igt@i915_selftest@live@perf.html
    - fi-hsw-4770:        [PASS][57] -> [DMESG-WARN][58] +39 other tests dmesg-warn
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-hsw-4770/igt@i915_selftest@live@perf.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-hsw-4770/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@ring_submission:
    - fi-ivb-3770:        [PASS][59] -> [DMESG-WARN][60] +39 other tests dmesg-warn
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-ivb-3770/igt@i915_selftest@live@ring_submission.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-ivb-3770/igt@i915_selftest@live@ring_submission.html
    - bat-dg2-8:          [PASS][61] -> [DMESG-WARN][62] +15 other tests dmesg-warn
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-dg2-8/igt@i915_selftest@live@ring_submission.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-dg2-8/igt@i915_selftest@live@ring_submission.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][63] -> [DMESG-WARN][64] +40 other tests dmesg-warn
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
    - bat-twl-1:          [PASS][65] -> [DMESG-WARN][66] +39 other tests dmesg-warn
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-twl-1/igt@i915_selftest@live@sanitycheck.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-twl-1/igt@i915_selftest@live@sanitycheck.html
    - bat-apl-1:          [PASS][67] -> [DMESG-WARN][68] +39 other tests dmesg-warn
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-apl-1/igt@i915_selftest@live@sanitycheck.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-apl-1/igt@i915_selftest@live@sanitycheck.html
    - bat-arls-5:         [PASS][69] -> [DMESG-WARN][70] +38 other tests dmesg-warn
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-arls-5/igt@i915_selftest@live@sanitycheck.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arls-5/igt@i915_selftest@live@sanitycheck.html
    - bat-rplp-1:         [PASS][71] -> [DMESG-WARN][72] +40 other tests dmesg-warn
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html
    - bat-arlh-2:         NOTRUN -> [DMESG-WARN][73] +22 other tests dmesg-warn
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@slpc:
    - fi-cfl-guc:         [PASS][74] -> [DMESG-WARN][75] +40 other tests dmesg-warn
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-cfl-guc/igt@i915_selftest@live@slpc.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-cfl-guc/igt@i915_selftest@live@slpc.html
    - bat-mtlp-6:         [PASS][76] -> [DMESG-WARN][77] +38 other tests dmesg-warn
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-mtlp-6/igt@i915_selftest@live@slpc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-mtlp-6/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@vma:
    - fi-cfl-8700k:       [PASS][78] -> [DMESG-WARN][79] +40 other tests dmesg-warn
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-cfl-8700k/igt@i915_selftest@live@vma.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-cfl-8700k/igt@i915_selftest@live@vma.html

  * igt@i915_selftest@live@workarounds:
    - fi-bsw-n3050:       [PASS][80] -> [DMESG-WARN][81] +40 other tests dmesg-warn
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - bat-twl-1:          [DMESG-WARN][82] ([i915#13736]) -> [DMESG-WARN][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-twl-1/igt@i915_module_load@reload.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-twl-1/igt@i915_module_load@reload.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         [DMESG-FAIL][84] ([i915#14243]) -> [DMESG-WARN][85] +1 other test dmesg-warn
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-arlh-3/igt@i915_selftest@live.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-3/igt@i915_selftest@live.html
    - bat-mtlp-9:         [DMESG-FAIL][86] ([i915#12061]) -> [DMESG-WARN][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-mtlp-9/igt@i915_selftest@live.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-mtlp-9/igt@i915_selftest@live.html

  * igt@i915_selftest@live@late_gt_pm:
    - bat-twl-2:          [ABORT][88] ([i915#14357]) -> [DMESG-WARN][89] +1 other test dmesg-warn
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-twl-2/igt@i915_selftest@live@late_gt_pm.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-twl-2/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [DMESG-FAIL][90] ([i915#12061]) -> [DMESG-WARN][91] +1 other test dmesg-warn
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-6:         [DMESG-FAIL][92] ([i915#12061]) -> [DMESG-WARN][93] +1 other test dmesg-warn
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
    - bat-dg2-11:         [DMESG-FAIL][94] ([i915#12061]) -> [DMESG-WARN][95] +1 other test dmesg-warn
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-dg2-11/igt@i915_selftest@live@workarounds.html
    - bat-arls-6:         [DMESG-FAIL][96] ([i915#12061]) -> [DMESG-WARN][97] +1 other test dmesg-warn
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arls-6/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_148490v9 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@eof:
    - bat-arlh-2:         NOTRUN -> [SKIP][98] ([i915#11345] / [i915#11346]) +3 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@fbdev@eof.html

  * igt@fbdev@info:
    - bat-arlh-2:         NOTRUN -> [SKIP][99] ([i915#11346] / [i915#1849])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][100] ([i915#10213] / [i915#11346] / [i915#11671]) +3 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@gem_lmem_swapping@basic.html

  * igt@gem_mmap@basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][101] ([i915#11343] / [i915#11346])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@gem_mmap@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][102] ([i915#10197] / [i915#10211] / [i915#11346] / [i915#11725])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][103] ([i915#11346] / [i915#12637]) +4 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-arlh-2:         NOTRUN -> [SKIP][104] ([i915#10206] / [i915#11346] / [i915#11724])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-arlh-2:         NOTRUN -> [SKIP][105] ([i915#10209] / [i915#11346] / [i915#11681])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live:
    - bat-arlh-2:         NOTRUN -> [ABORT][106] ([i915#13723]) +1 other test abort
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@i915_selftest@live.html

  * igt@intel_hwmon@hwmon-read:
    - bat-arlh-2:         NOTRUN -> [SKIP][107] ([i915#11346] / [i915#11680] / [i915#7707]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@intel_hwmon@hwmon-read.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-arlh-2:         NOTRUN -> [SKIP][108] ([i915#10200] / [i915#11346] / [i915#11666] / [i915#12203])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - bat-arlh-2:         NOTRUN -> [SKIP][109] ([i915#10200] / [i915#11346] / [i915#11666]) +8 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_hdmi_inject@inject-audio:
    - bat-arls-6:         [PASS][110] -> [FAIL][111] ([i915#13930])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-arls-6/igt@kms_hdmi_inject@inject-audio.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arls-6/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_psr@psr-primary-page-flip:
    - bat-arlh-2:         NOTRUN -> [SKIP][112] ([i915#11346]) +32 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-arlh-2:         NOTRUN -> [SKIP][113] ([i915#10208] / [i915#11346] / [i915#8809])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-arlh-2:         NOTRUN -> [SKIP][114] ([i915#10212] / [i915#11346] / [i915#11726])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - bat-arlh-2:         NOTRUN -> [SKIP][115] ([i915#10214] / [i915#11346] / [i915#11726])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-arlh-2:         NOTRUN -> [SKIP][116] ([i915#10216] / [i915#11346] / [i915#11723])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-9:         [DMESG-FAIL][117] ([i915#12061]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
  [i915#10197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197
  [i915#10200]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200
  [i915#10206]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206
  [i915#10208]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
  [i915#10211]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211
  [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
  [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
  [i915#11343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343
  [i915#11345]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345
  [i915#11346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346
  [i915#11666]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666
  [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
  [i915#11680]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11680
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723
  [i915#11724]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724
  [i915#11725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725
  [i915#11726]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203
  [i915#12637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637
  [i915#13723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723
  [i915#13736]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13736
  [i915#13930]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13930
  [i915#14243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243
  [i915#14357]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14357
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809


Build changes
-------------

  * Linux: CI_DRM_16637 -> Patchwork_148490v9

  CI-20190529: 20190529
  CI_DRM_16637: bea2a0d35dc29d6ae8a4e44506af9b563f012211 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8392: 8392
  Patchwork_148490v9: bea2a0d35dc29d6ae8a4e44506af9b563f012211 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/index.html

--===============1274851575730963369==
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
<tr><td><b>Series:</b></td><td>ref_tracker: add ability to register a debugfs file for a ref_tracker_dir (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/148490/">https://patchwork.freedesktop.org/series/148490/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16637 -&gt; Patchwork_148490v9</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_148490v9 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_148490v9, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/index.html</p>
<h2>Participating hosts (42 -&gt; 42)</h2>
<p>Additional (1): bat-arlh-2 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_148490v9:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-dg2-14/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-dg2-14/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +44 other tests dmesg-warn</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-elk-e7500/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-elk-e7500/igt@i915_selftest@live@client.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-kbl-guc/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-kbl-guc/igt@i915_selftest@live@client.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-adls-6/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-adls-6/igt@i915_selftest@live@client.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-dg1-7/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-dg1-7/igt@i915_selftest@live@client.html">DMESG-WARN</a> +15 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-kbl-x1275/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-kbl-x1275/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-adlp-11/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-adlp-11/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-pnv-d510/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-pnv-d510/igt@i915_selftest@live@evict.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-rkl-11600/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-rkl-11600/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-arls-6/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arls-6/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> +44 other tests dmesg-warn</li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-ilk-650/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-ilk-650/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-twl-2/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-twl-2/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_tlb:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_hang:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-dg2-9/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-dg2-9/igt@i915_selftest@live@guc_hang.html">DMESG-WARN</a> +15 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-mtlp-8/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-mtlp-8/igt@i915_selftest@live@guc_multi_lrc.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-mtlp-9/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-mtlp-9/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +20 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-blb-e6850/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-blb-e6850/igt@i915_selftest@live@objects.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-skl-6600u/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-skl-6600u/igt@i915_selftest@live@objects.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-dg2-11/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-dg2-11/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-hsw-4770/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-hsw-4770/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-ivb-3770/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-ivb-3770/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-dg2-8/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-dg2-8/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> +15 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-twl-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-twl-1/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-apl-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-apl-1/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +22 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-cfl-guc/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-cfl-guc/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-mtlp-6/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-mtlp-6/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@vma:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-cfl-8700k/igt@i915_selftest@live@vma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-cfl-8700k/igt@i915_selftest@live@vma.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-twl-1/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13736">i915#13736</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-twl-1/igt@i915_module_load@reload.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-arlh-3/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243">i915#14243</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-3/igt@i915_selftest@live.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-mtlp-9/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-mtlp-9/igt@i915_selftest@live.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-twl-2/igt@i915_selftest@live@late_gt_pm.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14357">i915#14357</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-twl-2/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_148490v9 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345">i915#11345</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343">i915#11343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725">i915#11725</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724">i915#11724</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723">i915#13723</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11680">i915#11680</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203">i915#12203</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-arls-6/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arls-6/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13930">i915#13930</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726">i915#11726</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726">i915#11726</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-arlh-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723">i915#11723</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16637/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16637 -&gt; Patchwork_148490v9</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16637: bea2a0d35dc29d6ae8a4e44506af9b563f012211 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8392: 8392<br />
  Patchwork_148490v9: bea2a0d35dc29d6ae8a4e44506af9b563f012211 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1274851575730963369==--
