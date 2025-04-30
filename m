Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C6BAA4FD9
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Apr 2025 17:13:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85C8910E136;
	Wed, 30 Apr 2025 15:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39D2710E0FD;
 Wed, 30 Apr 2025 15:13:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9039205457853948965=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_ref=5Ftracker=3A_add_abil?=
 =?utf-8?q?ity_to_register_a_debugfs_file_for_a_ref=5Ftracker=5Fdir?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jeff Layton" <jlayton@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Apr 2025 15:13:40 -0000
Message-ID: <174602602024.30878.18274858940119610602@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250428-reftrack-dbgfs-v5-0-1cbbdf2038bd@kernel.org>
In-Reply-To: <20250428-reftrack-dbgfs-v5-0-1cbbdf2038bd@kernel.org>
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

--===============9039205457853948965==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: ref_tracker: add ability to register a debugfs file for a ref_tracker_dir
URL   : https://patchwork.freedesktop.org/series/148490/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16479 -> Patchwork_148490v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_148490v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_148490v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/index.html

Participating hosts (44 -> 43)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_148490v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-14:         [PASS][1] -> [DMESG-WARN][2] +6 other tests dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-dg2-14/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-dg2-14/igt@i915_pm_rpm@module-reload.html
    - fi-bsw-nick:        [PASS][3] -> [DMESG-WARN][4] +40 other tests dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html
    - bat-kbl-2:          [PASS][5] -> [DMESG-WARN][6] +40 other tests dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
    - bat-adlp-6:         [PASS][7] -> [DMESG-WARN][8] +40 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@client:
    - fi-elk-e7500:       [PASS][9] -> [DMESG-WARN][10] +39 other tests dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-elk-e7500/igt@i915_selftest@live@client.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-elk-e7500/igt@i915_selftest@live@client.html
    - bat-dg2-8:          [PASS][11] -> [DMESG-WARN][12] +44 other tests dmesg-warn
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-dg2-8/igt@i915_selftest@live@client.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-dg2-8/igt@i915_selftest@live@client.html
    - fi-kbl-guc:         [PASS][13] -> [DMESG-WARN][14] +40 other tests dmesg-warn
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-kbl-guc/igt@i915_selftest@live@client.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-kbl-guc/igt@i915_selftest@live@client.html
    - bat-adls-6:         [PASS][15] -> [DMESG-WARN][16] +40 other tests dmesg-warn
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-adls-6/igt@i915_selftest@live@client.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-adls-6/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@coherency:
    - bat-dg2-9:          [PASS][17] -> [DMESG-WARN][18] +42 other tests dmesg-warn
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-dg2-9/igt@i915_selftest@live@coherency.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-dg2-9/igt@i915_selftest@live@coherency.html
    - fi-kbl-x1275:       [PASS][19] -> [DMESG-WARN][20] +40 other tests dmesg-warn
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-kbl-x1275/igt@i915_selftest@live@coherency.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-kbl-x1275/igt@i915_selftest@live@coherency.html
    - bat-adlp-11:        [PASS][21] -> [DMESG-WARN][22] +40 other tests dmesg-warn
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-adlp-11/igt@i915_selftest@live@coherency.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-adlp-11/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@evict:
    - fi-pnv-d510:        [PASS][23] -> [DMESG-WARN][24] +39 other tests dmesg-warn
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-pnv-d510/igt@i915_selftest@live@evict.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-pnv-d510/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gem:
    - fi-rkl-11600:       [PASS][25] -> [DMESG-WARN][26] +40 other tests dmesg-warn
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-rkl-11600/igt@i915_selftest@live@gem.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-rkl-11600/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-arls-6:         [PASS][27] -> [DMESG-WARN][28] +39 other tests dmesg-warn
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-arls-6/igt@i915_selftest@live@gem_contexts.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-arls-6/igt@i915_selftest@live@gem_contexts.html
    - bat-arlh-3:         [PASS][29] -> [DMESG-WARN][30] +41 other tests dmesg-warn
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [PASS][31] -> [DMESG-WARN][32] +44 other tests dmesg-warn
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
    - fi-ilk-650:         [PASS][33] -> [DMESG-WARN][34] +39 other tests dmesg-warn
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-ilk-650/igt@i915_selftest@live@gt_engines.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-ilk-650/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-rpls-4:         [PASS][35] -> [DMESG-WARN][36] +40 other tests dmesg-warn
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-rpls-4/igt@i915_selftest@live@gt_heartbeat.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-rpls-4/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-twl-2:          [PASS][37] -> [DMESG-WARN][38] +40 other tests dmesg-warn
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-twl-2/igt@i915_selftest@live@gt_mocs.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-twl-2/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_tlb:
    - bat-adlp-9:         [PASS][39] -> [DMESG-WARN][40] +40 other tests dmesg-warn
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - bat-mtlp-8:         [PASS][41] -> [DMESG-WARN][42] +39 other tests dmesg-warn
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-mtlp-8/igt@i915_selftest@live@guc_multi_lrc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-mtlp-8/igt@i915_selftest@live@guc_multi_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - bat-atsm-1:         [PASS][43] -> [DMESG-WARN][44] +41 other tests dmesg-warn
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-atsm-1/igt@i915_selftest@live@hangcheck.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-atsm-1/igt@i915_selftest@live@hangcheck.html
    - bat-mtlp-9:         [PASS][45] -> [DMESG-WARN][46] +39 other tests dmesg-warn
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-mtlp-9/igt@i915_selftest@live@hangcheck.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-mtlp-9/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - fi-glk-j4005:       [PASS][47] -> [DMESG-WARN][48] +40 other tests dmesg-warn
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-glk-j4005/igt@i915_selftest@live@hugepages.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-glk-j4005/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-kbl-8809g:       [PASS][49] -> [DMESG-WARN][50] +40 other tests dmesg-warn
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@objects:
    - fi-blb-e6850:       [PASS][51] -> [DMESG-WARN][52] +39 other tests dmesg-warn
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-blb-e6850/igt@i915_selftest@live@objects.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-blb-e6850/igt@i915_selftest@live@objects.html
    - fi-skl-6600u:       [PASS][53] -> [DMESG-WARN][54] +40 other tests dmesg-warn
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-skl-6600u/igt@i915_selftest@live@objects.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-skl-6600u/igt@i915_selftest@live@objects.html

  * igt@i915_selftest@live@perf:
    - bat-dg2-11:         [PASS][55] -> [DMESG-WARN][56] +42 other tests dmesg-warn
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-dg2-11/igt@i915_selftest@live@perf.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-dg2-11/igt@i915_selftest@live@perf.html
    - fi-hsw-4770:        [PASS][57] -> [DMESG-WARN][58] +40 other tests dmesg-warn
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-hsw-4770/igt@i915_selftest@live@perf.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-hsw-4770/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@requests:
    - bat-dg2-14:         NOTRUN -> [DMESG-WARN][59] +35 other tests dmesg-warn
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-dg2-14/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@ring_submission:
    - fi-ivb-3770:        [PASS][60] -> [DMESG-WARN][61] +39 other tests dmesg-warn
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-ivb-3770/igt@i915_selftest@live@ring_submission.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-ivb-3770/igt@i915_selftest@live@ring_submission.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][62] -> [DMESG-WARN][63] +40 other tests dmesg-warn
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
    - bat-twl-1:          [PASS][64] -> [DMESG-WARN][65] +40 other tests dmesg-warn
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-twl-1/igt@i915_selftest@live@sanitycheck.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-twl-1/igt@i915_selftest@live@sanitycheck.html
    - bat-apl-1:          [PASS][66] -> [DMESG-WARN][67] +40 other tests dmesg-warn
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-apl-1/igt@i915_selftest@live@sanitycheck.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-apl-1/igt@i915_selftest@live@sanitycheck.html
    - bat-arls-5:         [PASS][68] -> [DMESG-WARN][69] +41 other tests dmesg-warn
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-arls-5/igt@i915_selftest@live@sanitycheck.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-arls-5/igt@i915_selftest@live@sanitycheck.html
    - bat-rplp-1:         [PASS][70] -> [DMESG-WARN][71] +40 other tests dmesg-warn
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html
    - bat-arlh-2:         [PASS][72] -> [DMESG-WARN][73] +10 other tests dmesg-warn
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-arlh-2/igt@i915_selftest@live@sanitycheck.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-arlh-2/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@slpc:
    - fi-cfl-guc:         [PASS][74] -> [DMESG-WARN][75] +40 other tests dmesg-warn
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-cfl-guc/igt@i915_selftest@live@slpc.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-cfl-guc/igt@i915_selftest@live@slpc.html
    - bat-mtlp-6:         [PASS][76] -> [DMESG-WARN][77] +41 other tests dmesg-warn
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-mtlp-6/igt@i915_selftest@live@slpc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-mtlp-6/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@uncore:
    - bat-dg1-7:          [PASS][78] -> [DMESG-WARN][79] +44 other tests dmesg-warn
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-dg1-7/igt@i915_selftest@live@uncore.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-dg1-7/igt@i915_selftest@live@uncore.html

  * igt@i915_selftest@live@vma:
    - fi-cfl-8700k:       [PASS][80] -> [DMESG-WARN][81] +40 other tests dmesg-warn
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-cfl-8700k/igt@i915_selftest@live@vma.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-cfl-8700k/igt@i915_selftest@live@vma.html

  * igt@i915_selftest@live@workarounds:
    - fi-bsw-n3050:       [PASS][82] -> [DMESG-WARN][83] +40 other tests dmesg-warn
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live@sanitycheck:
    - bat-dg2-14:         [INCOMPLETE][84] -> [DMESG-WARN][85] +1 other test dmesg-warn
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-dg2-14/igt@i915_selftest@live@sanitycheck.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-dg2-14/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-9:         [DMESG-FAIL][86] ([i915#12061]) -> [DMESG-WARN][87] +1 other test dmesg-warn
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
    - bat-arls-6:         [DMESG-FAIL][88] ([i915#12061]) -> [DMESG-WARN][89] +1 other test dmesg-warn
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-arls-6/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_148490v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][90] -> [DMESG-FAIL][91] ([i915#12061]) +1 other test dmesg-fail
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-mtlp-8/igt@i915_selftest@live.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-mtlp-8/igt@i915_selftest@live.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [DMESG-FAIL][92] ([i915#12061] / [i915#13929]) -> [DMESG-FAIL][93] ([i915#12061] / [i915#14204])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-atsm-1/igt@i915_selftest@live.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [DMESG-FAIL][94] ([i915#13929]) -> [DMESG-FAIL][95] ([i915#14204])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-atsm-1/igt@i915_selftest@live@mman.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-atsm-1/igt@i915_selftest@live@mman.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204


Build changes
-------------

  * Linux: CI_DRM_16479 -> Patchwork_148490v1

  CI-20190529: 20190529
  CI_DRM_16479: 1351e9f42d757ef4ce7d2cf2401aa2b5fe36df6d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8346: df3036dadc729bf68aaf85ec697c9a9df797af43 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_148490v1: 1351e9f42d757ef4ce7d2cf2401aa2b5fe36df6d @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/index.html

--===============9039205457853948965==
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
<tr><td><b>Series:</b></td><td>ref_tracker: add ability to register a debugfs file for a ref_tracker_dir</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/148490/">https://patchwork.freedesktop.org/series/148490/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16479 -&gt; Patchwork_148490v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_148490v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_148490v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_148490v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-dg2-14/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-dg2-14/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +6 other tests dmesg-warn</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-elk-e7500/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-elk-e7500/igt@i915_selftest@live@client.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-dg2-8/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-dg2-8/igt@i915_selftest@live@client.html">DMESG-WARN</a> +44 other tests dmesg-warn</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-kbl-guc/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-kbl-guc/igt@i915_selftest@live@client.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-adls-6/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-adls-6/igt@i915_selftest@live@client.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-dg2-9/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-dg2-9/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-kbl-x1275/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-kbl-x1275/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-adlp-11/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-adlp-11/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-pnv-d510/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-pnv-d510/igt@i915_selftest@live@evict.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-rkl-11600/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-rkl-11600/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-arls-6/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-arls-6/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> +44 other tests dmesg-warn</li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-ilk-650/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-ilk-650/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-rpls-4/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-rpls-4/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-twl-2/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-twl-2/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_tlb:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-mtlp-8/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-mtlp-8/igt@i915_selftest@live@guc_multi_lrc.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-mtlp-9/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-mtlp-9/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-glk-j4005/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-glk-j4005/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-blb-e6850/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-blb-e6850/igt@i915_selftest@live@objects.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-skl-6600u/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-skl-6600u/igt@i915_selftest@live@objects.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-dg2-11/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-dg2-11/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-hsw-4770/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-hsw-4770/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-dg2-14/igt@i915_selftest@live@requests.html">DMESG-WARN</a> +35 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-ivb-3770/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-ivb-3770/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-twl-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-twl-1/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-apl-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-apl-1/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-arlh-2/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-arlh-2/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +10 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-cfl-guc/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-cfl-guc/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-mtlp-6/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-mtlp-6/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-dg1-7/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-dg1-7/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +44 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@vma:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-cfl-8700k/igt@i915_selftest@live@vma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-cfl-8700k/igt@i915_selftest@live@vma.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-dg2-14/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-dg2-14/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_148490v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16479/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v1/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16479 -&gt; Patchwork_148490v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16479: 1351e9f42d757ef4ce7d2cf2401aa2b5fe36df6d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8346: df3036dadc729bf68aaf85ec697c9a9df797af43 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_148490v1: 1351e9f42d757ef4ce7d2cf2401aa2b5fe36df6d @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============9039205457853948965==--
