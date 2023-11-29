Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EACB67FD927
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 15:21:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9891C10E542;
	Wed, 29 Nov 2023 14:21:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E121B10E542;
 Wed, 29 Nov 2023 14:21:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D91ACAA917;
 Wed, 29 Nov 2023 14:21:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2491694239900895171=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 29 Nov 2023 14:21:03 -0000
Message-ID: <170126766385.12091.18189369584989199755@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231128083754.20096-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20231128083754.20096-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUUdW?=
 =?utf-8?q?/SAGV_related_fixes_=28rev2=29?=
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

--===============2491694239900895171==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: QGV/SAGV related fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/126962/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13945 -> Patchwork_126962v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126962v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126962v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/index.html

Participating hosts (37 -> 38)
------------------------------

  Additional (2): bat-mtlp-8 fi-pnv-d510 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126962v2:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-pnv-d510:        NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-pnv-d510/igt@core_hotunplug@unbind-rebind.html
    - fi-elk-e7500:       [PASS][2] -> [ABORT][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-skl-6600u:       [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-skl-6600u/igt@gem_exec_suspend@basic-s0@smem.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-skl-6600u/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_module_load@load:
    - fi-elk-e7500:       [PASS][6] -> [DMESG-WARN][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-elk-e7500/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-elk-e7500/igt@i915_module_load@load.html
    - bat-adlp-11:        [PASS][8] -> [DMESG-WARN][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-adlp-11/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-adlp-11/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-kbl-2:          [PASS][10] -> [DMESG-WARN][11] +42 other tests dmesg-warn
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-kbl-2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@client:
    - fi-kbl-guc:         [PASS][12] -> [DMESG-WARN][13] +42 other tests dmesg-warn
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-kbl-guc/igt@i915_selftest@live@client.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-kbl-guc/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@coherency:
    - bat-dg2-9:          [PASS][14] -> [DMESG-WARN][15] +40 other tests dmesg-warn
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg2-9/igt@i915_selftest@live@coherency.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg2-9/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@gem:
    - fi-rkl-11600:       [PASS][16] -> [DMESG-WARN][17] +42 other tests dmesg-warn
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-rkl-11600/igt@i915_selftest@live@gem.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-rkl-11600/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [PASS][18] -> [DMESG-WARN][19] +42 other tests dmesg-warn
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-6600u:       [PASS][20] -> [DMESG-WARN][21] +38 other tests dmesg-warn
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-ilk-650:         [PASS][22] -> [DMESG-WARN][23] +41 other tests dmesg-warn
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@gt_mocs:
    - fi-glk-j4005:       [PASS][24] -> [DMESG-WARN][25] +42 other tests dmesg-warn
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-1115g4:      [PASS][26] -> [DMESG-WARN][27] +41 other tests dmesg-warn
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@gt_tlb:
    - bat-adlp-9:         [PASS][28] -> [DMESG-WARN][29] +40 other tests dmesg-warn
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html

  * igt@i915_selftest@live@perf:
    - bat-dg2-11:         [PASS][30] -> [DMESG-WARN][31] +39 other tests dmesg-warn
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg2-11/igt@i915_selftest@live@perf.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg2-11/igt@i915_selftest@live@perf.html
    - fi-kbl-x1275:       [PASS][32] -> [DMESG-WARN][33] +41 other tests dmesg-warn
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-kbl-x1275/igt@i915_selftest@live@perf.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-kbl-x1275/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@reset:
    - fi-apl-guc:         [PASS][34] -> [DMESG-WARN][35] +40 other tests dmesg-warn
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-apl-guc/igt@i915_selftest@live@reset.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-apl-guc/igt@i915_selftest@live@reset.html
    - bat-dg1-5:          [PASS][36] -> [DMESG-WARN][37] +42 other tests dmesg-warn
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg1-5/igt@i915_selftest@live@reset.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg1-5/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@ring_submission:
    - fi-cfl-8109u:       [PASS][38] -> [DMESG-WARN][39] +41 other tests dmesg-warn
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][40] -> [DMESG-WARN][41] +40 other tests dmesg-warn
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
    - fi-cfl-8700k:       [PASS][42] -> [DMESG-WARN][43] +42 other tests dmesg-warn
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@uncore:
    - bat-dg1-7:          [PASS][44] -> [DMESG-WARN][45] +42 other tests dmesg-warn
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg1-7/igt@i915_selftest@live@uncore.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg1-7/igt@i915_selftest@live@uncore.html

  * igt@i915_selftest@live@vma:
    - fi-skl-guc:         [PASS][46] -> [DMESG-WARN][47] +42 other tests dmesg-warn
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-skl-guc/igt@i915_selftest@live@vma.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-skl-guc/igt@i915_selftest@live@vma.html

  * igt@i915_selftest@live@workarounds:
    - bat-rpls-1:         [PASS][48] -> [DMESG-WARN][49] +40 other tests dmesg-warn
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-rpls-1/igt@i915_selftest@live@workarounds.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-rpls-1/igt@i915_selftest@live@workarounds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-dg2-13}:       [PASS][50] -> [DMESG-WARN][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg2-13/igt@i915_module_load@load.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg2-13/igt@i915_module_load@load.html
    - {bat-dg2-14}:       [PASS][52] -> [DMESG-WARN][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg2-14/igt@i915_module_load@load.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg2-14/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_126962v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-mtlp-8:         NOTRUN -> [SKIP][54] ([i915#9318])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-mtlp-8:         NOTRUN -> [SKIP][55] ([i915#4613]) +3 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-mtlp-8:         NOTRUN -> [SKIP][56] ([i915#4083])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-mtlp-8:         NOTRUN -> [SKIP][57] ([i915#4077]) +2 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-mtlp-8:         NOTRUN -> [SKIP][58] ([i915#4079]) +1 other test skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html

  * igt@i915_module_load@load:
    - bat-adlp-6:         [PASS][59] -> [DMESG-WARN][60] ([i915#1982])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-adlp-6/igt@i915_module_load@load.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-adlp-6/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - fi-apl-guc:         [PASS][61] -> [DMESG-WARN][62] ([i915#1982]) +1 other test dmesg-warn
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-apl-guc/igt@i915_module_load@reload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-apl-guc/igt@i915_module_load@reload.html
    - bat-dg2-11:         [PASS][63] -> [DMESG-WARN][64] ([i915#1982])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg2-11/igt@i915_module_load@reload.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg2-11/igt@i915_module_load@reload.html
    - fi-cfl-8109u:       [PASS][65] -> [DMESG-WARN][66] ([i915#1982])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-cfl-8109u/igt@i915_module_load@reload.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-cfl-8109u/igt@i915_module_load@reload.html

  * igt@i915_pm_rps@basic-api:
    - bat-mtlp-8:         NOTRUN -> [SKIP][67] ([i915#6621])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-dg2-9:          [PASS][68] -> [DMESG-WARN][69] ([i915#7699]) +1 other test dmesg-warn
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg2-9/igt@i915_selftest@live@gt_heartbeat.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg2-9/igt@i915_selftest@live@gt_heartbeat.html
    - bat-rpls-1:         [PASS][70] -> [DMESG-WARN][71] ([i915#7699]) +1 other test dmesg-warn
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-rpls-1/igt@i915_selftest@live@gt_heartbeat.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-rpls-1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - bat-adls-5:         [PASS][72] -> [DMESG-WARN][73] ([i915#5591])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-adls-5/igt@i915_selftest@live@hangcheck.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-adls-5/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-9:         [PASS][74] -> [DMESG-WARN][75] ([i915#7699]) +1 other test dmesg-warn
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-adlp-9/igt@i915_selftest@live@migrate.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-adlp-9/igt@i915_selftest@live@migrate.html
    - bat-dg2-11:         [PASS][76] -> [DMESG-WARN][77] ([i915#7699]) +1 other test dmesg-warn
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-kbl-7567u:       [PASS][78] -> [DMESG-WARN][79] ([i915#1982]) +1 other test dmesg-warn
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-skl-6600u:       [PASS][80] -> [DMESG-WARN][81] ([i915#1982]) +3 other tests dmesg-warn
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][82] ([i915#6645])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-mtlp-8:         NOTRUN -> [SKIP][83] ([i915#5190])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-mtlp-8:         NOTRUN -> [SKIP][84] ([i915#4212]) +8 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-mtlp-8:         NOTRUN -> [SKIP][85] ([i915#4213]) +1 other test skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-mtlp-8:         NOTRUN -> [SKIP][86] ([i915#3555] / [i915#3840] / [i915#4098] / [i915#9159])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-mtlp-8:         NOTRUN -> [SKIP][87] ([fdo#109285])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-mtlp-8:         NOTRUN -> [SKIP][88] ([i915#5274])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-pnv-d510:        NOTRUN -> [SKIP][89] ([fdo#109271]) +20 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-pnv-d510/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][90] -> [ABORT][91] ([i915#8668])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-mtlp-8:         NOTRUN -> [SKIP][92] ([i915#3555] / [i915#8809])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-mtlp-8:         NOTRUN -> [SKIP][93] ([i915#3708] / [i915#4077]) +1 other test skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-mtlp-8:         NOTRUN -> [SKIP][94] ([i915#3708]) +2 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-mtlp-6:         [SKIP][95] ([i915#9741]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_ctx_create@basic-files:
    - bat-mtlp-6:         [SKIP][97] ([i915#2575]) -> [PASS][98] +68 other tests pass
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_ctx_create@basic-files.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@gem_ctx_create@basic-files.html

  * igt@i915_pm_rpm@module-reload:
    - bat-mtlp-6:         [SKIP][99] ([i915#9641]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-mtlp-6:         [DMESG-FAIL][101] ([i915#9579]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-mtlp-6:         [DMESG-FAIL][103] ([i915#7699]) -> [PASS][104] +1 other test pass
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_selftest@live@gt_heartbeat.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@slpc:
    - bat-mtlp-6:         [DMESG-FAIL][105] ([i915#9748]) -> [PASS][106] +35 other tests pass
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_selftest@live@slpc.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-mtlp-6:         [DMESG-WARN][107] ([i915#9748]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_suspend@basic-s2idle-without-i915.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][109] ([IGT#3]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  * {igt@kms_pm_rpm@basic-pci-d3-state}:
    - bat-mtlp-6:         [SKIP][111] ([i915#9710]) -> [PASS][112] +1 other test pass
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html

  
#### Warnings ####

  * igt@debugfs_test@basic-hwmon:
    - bat-mtlp-6:         [SKIP][113] ([i915#2575]) -> [SKIP][114] ([i915#9318])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-mtlp-6:         [SKIP][115] ([i915#9643]) -> [SKIP][116] ([i915#4613]) +3 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-mtlp-6:         [SKIP][117] ([i915#2575]) -> [SKIP][118] ([i915#4083])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_mmap@basic.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@gem_mmap@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-mtlp-6:         [SKIP][119] ([i915#2575]) -> [SKIP][120] ([i915#4077]) +2 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_tiled_blits@basic.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-mtlp-6:         [SKIP][121] ([i915#2575]) -> [SKIP][122] ([i915#4079]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_tiled_pread_basic.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-mtlp-6:         [SKIP][123] ([i915#2575]) -> [SKIP][124] ([i915#6621])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_pm_rps@basic-api.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@i915_pm_rps@basic-api.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - bat-mtlp-6:         [SKIP][125] ([i915#2575]) -> [SKIP][126] ([i915#4212]) +8 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-mtlp-6:         [SKIP][127] ([i915#2575]) -> [SKIP][128] ([i915#5190])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - bat-mtlp-6:         [SKIP][129] ([i915#2575]) -> [SKIP][130] ([i915#1845]) +12 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-mtlp-6:         [SKIP][131] ([i915#2575]) -> [SKIP][132] ([i915#3637]) +3 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-mtlp-6:         [SKIP][133] ([i915#2575]) -> [SKIP][134] ([fdo#109285])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-mtlp-6:         [SKIP][135] ([i915#2575]) -> [SKIP][136] ([i915#5274])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-mtlp-6:         [SKIP][137] ([i915#2575]) -> [SKIP][138] ([i915#4342] / [i915#5354])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-mtlp-6:         [SKIP][139] ([i915#2575]) -> [SKIP][140] ([i915#1845] / [i915#4078]) +4 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-mtlp-6:         [SKIP][141] ([i915#2575]) -> [SKIP][142] ([i915#3555] / [i915#8809])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-mtlp-6:         [SKIP][143] ([i915#2575]) -> [SKIP][144] ([i915#1845] / [i915#3708])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-mtlp-6:         [SKIP][145] ([i915#2575]) -> [SKIP][146] ([i915#3708] / [i915#4077]) +1 other test skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - bat-mtlp-6:         [SKIP][147] ([i915#2575]) -> [SKIP][148] ([i915#3708]) +2 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@prime_vgem@basic-write.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@prime_vgem@basic-write.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#8981]: https://gitlab.freedesktop.org/drm/intel/issues/8981
  [i915#9159]: https://gitlab.freedesktop.org/drm/intel/issues/9159
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9579]: https://gitlab.freedesktop.org/drm/intel/issues/9579
  [i915#9641]: https://gitlab.freedesktop.org/drm/intel/issues/9641
  [i915#9643]: https://gitlab.freedesktop.org/drm/intel/issues/9643
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9710]: https://gitlab.freedesktop.org/drm/intel/issues/9710
  [i915#9736]: https://gitlab.freedesktop.org/drm/intel/issues/9736
  [i915#9741]: https://gitlab.freedesktop.org/drm/intel/issues/9741
  [i915#9748]: https://gitlab.freedesktop.org/drm/intel/issues/9748


Build changes
-------------

  * Linux: CI_DRM_13945 -> Patchwork_126962v2

  CI-20190529: 20190529
  CI_DRM_13945: bd217b949594a93bbb922958e0c26cfe6884cc7b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7609: 72a759595100b8d167ca78cd2d62e9acd97e36bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126962v2: bd217b949594a93bbb922958e0c26cfe6884cc7b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6b0ecf9113ce drm/i915: Disable SAGV on bw init, to force QGV point recalculation
3e1ef29a194b drm/i915: Extract code required to calculate max qgv/psf gv point
218b2b1baa7c drm/i915: Add meaningful traces for QGV point info error handling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/index.html

--===============2491694239900895171==
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
<tr><td><b>Series:</b></td><td>QGV/SAGV related fixes (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126962/">https://patchwork.freedesktop.org/series/126962/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13945 -&gt; Patchwork_126962v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126962v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126962v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/index.html</p>
<h2>Participating hosts (37 -&gt; 38)</h2>
<p>Additional (2): bat-mtlp-8 fi-pnv-d510 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126962v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-pnv-d510/igt@core_hotunplug@unbind-rebind.html">ABORT</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-skl-6600u/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-skl-6600u/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-elk-e7500/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-adlp-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-kbl-guc/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-kbl-guc/igt@i915_selftest@live@client.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg2-9/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg2-9/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-rkl-11600/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-rkl-11600/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +42 other tests dmesg-warn</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +38 other tests dmesg-warn</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_tlb:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg2-11/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg2-11/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +39 other tests dmesg-warn</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-kbl-x1275/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-kbl-x1275/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +41 other tests dmesg-warn</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-apl-guc/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-apl-guc/igt@i915_selftest@live@reset.html">DMESG-WARN</a> +40 other tests dmesg-warn</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg1-5/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg1-5/igt@i915_selftest@live@reset.html">DMESG-WARN</a> +42 other tests dmesg-warn</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +40 other tests dmesg-warn</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +42 other tests dmesg-warn</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg1-7/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg1-7/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@vma:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-skl-guc/igt@i915_selftest@live@vma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-skl-guc/igt@i915_selftest@live@vma.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-rpls-1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-rpls-1/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg2-13/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg2-13/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg2-14/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg2-14/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126962v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-adlp-6/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-apl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-apl-guc/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 other test dmesg-warn</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg2-11/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg2-11/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-cfl-8109u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-cfl-8109u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg2-9/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg2-9/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 other test dmesg-warn</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-rpls-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-rpls-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 other test dmesg-warn</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-adls-5/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-adls-5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-adlp-9/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-adlp-9/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 other test dmesg-warn</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 other test dmesg-warn</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +3 other tests dmesg-warn</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9159">i915#9159</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-pnv-d510/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9741">i915#9741</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_ctx_create@basic-files.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@gem_ctx_create@basic-files.html">PASS</a> +68 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9641">i915#9641</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9579">i915#9579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9748">i915#9748</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@i915_selftest@live@slpc.html">PASS</a> +35 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9748">i915#9748</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@basic-pci-d3-state}:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9710">i915#9710</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9643">i915#9643</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4342">i915#4342</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13945/bat-mtlp-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v2/bat-mtlp-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13945 -&gt; Patchwork_126962v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13945: bd217b949594a93bbb922958e0c26cfe6884cc7b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7609: 72a759595100b8d167ca78cd2d62e9acd97e36bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126962v2: bd217b949594a93bbb922958e0c26cfe6884cc7b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6b0ecf9113ce drm/i915: Disable SAGV on bw init, to force QGV point recalculation<br />
3e1ef29a194b drm/i915: Extract code required to calculate max qgv/psf gv point<br />
218b2b1baa7c drm/i915: Add meaningful traces for QGV point info error handling</p>

</body>
</html>

--===============2491694239900895171==--
