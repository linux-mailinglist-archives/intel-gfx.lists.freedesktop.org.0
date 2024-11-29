Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A86CE9DBFC6
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 08:33:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B99810EDB3;
	Fri, 29 Nov 2024 07:33:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC44510EDB3;
 Fri, 29 Nov 2024 07:33:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1288698349033972251=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/modes=3A_Fix_div-by-?=
 =?utf-8?q?zero_in_drm=5Fmode=5Fvrefresh=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2024 07:33:30 -0000
Message-ID: <173286561075.206830.6674893065603639150@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241129042629.18280-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241129042629.18280-1-ville.syrjala@linux.intel.com>
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

--===============1288698349033972251==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/modes: Fix div-by-zero in drm_mode_vrefresh()
URL   : https://patchwork.freedesktop.org/series/141910/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15761_full -> Patchwork_141910v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_141910v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_141910v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 11)
------------------------------

  Additional (1): shard-dg2-set2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_141910v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_schedule@pi-common:
    - shard-glk:          [PASS][1] -> [FAIL][2] +1 other test fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-glk3/igt@gem_exec_schedule@pi-common.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-glk1/igt@gem_exec_schedule@pi-common.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-glk:          NOTRUN -> [INCOMPLETE][3] +5 other tests incomplete
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-glk2/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_mmap_gtt@flink-race:
    - shard-snb:          [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-snb1/igt@gem_mmap_gtt@flink-race.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-snb1/igt@gem_mmap_gtt@flink-race.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-tglu:         [PASS][6] -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-tglu-3/igt@gem_tiled_swapping@non-threaded.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-9/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_module_load@load:
    - shard-dg2:          ([PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30]) -> ([PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [DMESG-WARN][52], [PASS][53])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-4/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-8/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-2/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-11/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-6/igt@i915_module_load@load.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-11/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-4/igt@i915_module_load@load.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-6/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-5/igt@i915_module_load@load.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-2/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-7/igt@i915_module_load@load.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-1/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-7/igt@i915_module_load@load.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-5/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-3/igt@i915_module_load@load.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-10/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-8/igt@i915_module_load@load.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-10/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-6/igt@i915_module_load@load.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-1/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-10/igt@i915_module_load@load.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-3/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-11/igt@i915_module_load@load.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@i915_module_load@load.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-7/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-4/igt@i915_module_load@load.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-2/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@i915_module_load@load.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-6/igt@i915_module_load@load.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-5/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@i915_module_load@load.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-4/igt@i915_module_load@load.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@i915_module_load@load.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@i915_module_load@load.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-6/igt@i915_module_load@load.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-3/igt@i915_module_load@load.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@i915_module_load@load.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@i915_module_load@load.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-5/igt@i915_module_load@load.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-3/igt@i915_module_load@load.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@i915_module_load@load.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@i915_module_load@load.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-2/igt@i915_module_load@load.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-2/igt@i915_module_load@load.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][54] -> [DMESG-FAIL][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-snb7/igt@i915_pm_rps@reset.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-snb7/igt@i915_pm_rps@reset.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15761_full and Patchwork_141910v1_full:

### New IGT tests (21) ###

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte@pipe-b-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.26] s

  * igt@kms_invalid_mode@overflow-vrefresh:
    - Statuses : 7 pass(s)
    - Exec time: [0.04, 0.45] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.29] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-a-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.05, 0.41] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.04] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.05] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-b-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-b-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-c-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  

Known issues
------------

  Here are the changes found in Patchwork_141910v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@crc32:
    - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#6230])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@api_intel_bb@crc32.html
    - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#6230])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-7/igt@api_intel_bb@crc32.html

  * igt@drm_fdinfo@busy-hang@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#8414]) +15 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@drm_fdinfo@busy-hang@bcs0.html
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#8414]) +9 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@drm_fdinfo@busy-hang@bcs0.html

  * igt@drm_fdinfo@busy-hang@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#8414]) +6 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-7/igt@drm_fdinfo@busy-hang@rcs0.html

  * igt@gem_basic@multigpu-create-close:
    - shard-tglu-1:       NOTRUN -> [SKIP][61] ([i915#7697])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#9323]) +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-tglu:         NOTRUN -> [SKIP][63] ([i915#3555] / [i915#9323])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-9/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#9323])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][65] ([i915#12392] / [i915#7297])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-4/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu-1:       NOTRUN -> [SKIP][66] ([i915#6335])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-set-pat:
    - shard-tglu:         NOTRUN -> [SKIP][67] ([i915#8562])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-2/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_freq@sysfs:
    - shard-dg2:          [PASS][68] -> [FAIL][69] ([i915#9561]) +1 other test fail
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-3/igt@gem_ctx_freq@sysfs.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-3/igt@gem_ctx_freq@sysfs.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#8555])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-5/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#8555]) +2 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
    - shard-snb:          NOTRUN -> [SKIP][72] ([i915#1099])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-snb7/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#5882]) +7 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#280])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-3/igt@gem_ctx_sseu@invalid-args.html
    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#280])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglu:         NOTRUN -> [SKIP][76] ([i915#280])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          [PASS][77] -> [ABORT][78] ([i915#10030] / [i915#7975] / [i915#8213])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-8/igt@gem_eio@hibernate.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-7/igt@gem_eio@hibernate.html

  * igt@gem_eio@reset-stress:
    - shard-dg2:          [PASS][79] -> [FAIL][80] ([i915#12543] / [i915#5784])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-4/igt@gem_eio@reset-stress.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#4812])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-4/igt@gem_exec_balancer@bonded-semaphore.html
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#4812])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#4525])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-3/igt@gem_exec_balancer@parallel-ordering.html
    - shard-tglu:         NOTRUN -> [FAIL][84] ([i915#6117])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#6334]) +2 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-glk:          NOTRUN -> [SKIP][86] ([i915#6334]) +1 other test skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-glk1/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_fence@submit:
    - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#4812]) +2 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@gem_exec_fence@submit.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#3539])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-12/igt@gem_exec_flush@basic-uc-prw-default.html
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#3539])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#3539] / [i915#4852]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@gem_exec_flush@basic-wb-ro-before-default.html

  * igt@gem_exec_flush@basic-wb-ro-default:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#3539] / [i915#4852]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-2/igt@gem_exec_flush@basic-wb-ro-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#3281]) +8 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@gem_exec_reloc@basic-cpu-gtt.html
    - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#3281])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-7/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_exec_reloc@basic-scanout:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#3281]) +4 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-5/igt@gem_exec_reloc@basic-scanout.html

  * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#3281]) +12 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#4537] / [i915#4812])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-4/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-rkl:          [PASS][97] -> [DMESG-FAIL][98] ([i915#12964]) +1 other test dmesg-fail
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-rkl-1/igt@gem_exec_suspend@basic-s3.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-7/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#4860]) +2 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@gem_fence_thrash@bo-copy.html
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#4860]) +3 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#4860])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-tglu:         NOTRUN -> [SKIP][102] ([i915#4613]) +2 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-2/igt@gem_lmem_swapping@heavy-random.html
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#4613])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-3/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglu-1:       NOTRUN -> [SKIP][104] ([i915#4613]) +2 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#4613]) +1 other test skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-1/igt@gem_lmem_swapping@verify.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-glk:          NOTRUN -> [SKIP][106] ([i915#4613]) +5 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-glk3/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_media_vme:
    - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#284])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@gem_media_vme.html
    - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#284])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-7/igt@gem_media_vme.html

  * igt@gem_mmap@big-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#4083]) +3 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-4/igt@gem_mmap@big-bo.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#4077]) +11 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_gtt@medium-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#4077]) +16 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@gem_mmap_gtt@medium-copy-odd.html
    - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#4077]) +2 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-3/igt@gem_mmap_gtt@medium-copy-odd.html

  * igt@gem_mmap_wc@write-prefaulted:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#4083]) +8 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-2/igt@gem_mmap_wc@write-prefaulted.html

  * igt@gem_mmap_wc@write-read:
    - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#4083]) +9 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@gem_mmap_wc@write-read.html

  * igt@gem_pread@snoop:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#3282]) +3 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-2/igt@gem_pread@snoop.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#3282]) +2 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@gem_pwrite@basic-exhaustion.html
    - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#3282]) +6 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@gem_pwrite@basic-exhaustion.html
    - shard-tglu:         NOTRUN -> [WARN][118] ([i915#2658])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-3/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#4270]) +1 other test skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#13033])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-rkl:          NOTRUN -> [TIMEOUT][121] ([i915#12917] / [i915#12964])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-4/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#4270]) +5 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_readwrite@new-obj:
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#3282])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-6/igt@gem_readwrite@new-obj.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#8428])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-4/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#5190] / [i915#8428]) +7 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-6/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#4079]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_softpin@evict-snoop:
    - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#4885])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-4/igt@gem_softpin@evict-snoop.html
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#4885])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@gem_softpin@evict-snoop.html

  * igt@gem_tiled_pread_basic:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#4079]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-3/igt@gem_tiled_pread_basic.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#3297] / [i915#4880])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
    - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#3297] / [i915#4880])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#3297])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#3297])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#2527]) +1 other test skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-3/igt@gen9_exec_parse@bb-oversize.html
    - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#2856])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-2/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#2527] / [i915#2856]) +3 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-8/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#2856]) +3 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-2/igt@gen9_exec_parse@shadow-peek.html
    - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#2527]) +4 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#2527] / [i915#2856]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][140] -> [ABORT][141] ([i915#9820])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [PASS][142] -> [ABORT][143] ([i915#12817] / [i915#13010] / [i915#9820])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-10/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          NOTRUN -> [ABORT][144] ([i915#9820])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-tglu-1:       NOTRUN -> [SKIP][145] ([i915#6412])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#8399])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-3/igt@i915_pm_freq_api@freq-reset-multiple.html
    - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#8399])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-8/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglu:         NOTRUN -> [WARN][148] ([i915#2681]) +4 other tests warn
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          NOTRUN -> [FAIL][149] ([i915#12548] / [i915#3591]) +1 other test fail
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          NOTRUN -> [FAIL][150] ([i915#12739] / [i915#3591])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg1:          NOTRUN -> [SKIP][151] ([i915#11681] / [i915#6621])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@thresholds-park:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#11681])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-6/igt@i915_pm_rps@thresholds-park.html

  * igt@i915_power@sanity:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#7984])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-3/igt@i915_power@sanity.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#5723])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-1/igt@i915_query@test-query-geometry-subslices.html
    - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#5723])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-12/igt@i915_query@test-query-geometry-subslices.html
    - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#5723])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-9/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][157] ([i915#9311]) +1 other test dmesg-warn
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-glk:          NOTRUN -> [INCOMPLETE][158] ([i915#4817])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-glk8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#4212])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#8709]) +3 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#8709]) +7 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#9531])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-glk:          NOTRUN -> [SKIP][163] ([i915#1769])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-glk9/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#5286]) +7 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-7/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#5286]) +3 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-4/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#4538] / [i915#5286]) +7 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-tglu-1:       NOTRUN -> [SKIP][167] ([i915#5286]) +2 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#3638]) +7 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#4538] / [i915#5190]) +8 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][170] ([i915#4538]) +7 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][171] +6 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#10307] / [i915#10434] / [i915#6095])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#10307] / [i915#6095]) +185 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#6095]) +34 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#6095]) +86 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#6095]) +25 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#6095]) +59 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#6095]) +14 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-3/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#6095]) +181 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#12313]) +3 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
    - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#12313]) +2 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-5/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#3742])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#11616] / [i915#7213]) +4 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#4087]) +3 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2.html

  * igt@kms_chamelium_color@gamma:
    - shard-tglu:         NOTRUN -> [SKIP][185] +70 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-3/igt@kms_chamelium_color@gamma.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#7828]) +2 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-2/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:
    - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#7828]) +7 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-9/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#7828]) +8 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-6/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-crc-single:
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#7828]) +2 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-7/igt@kms_chamelium_frames@hdmi-crc-single.html

  * igt@kms_chamelium_frames@vga-frame-dump:
    - shard-tglu-1:       NOTRUN -> [SKIP][190] ([i915#7828]) +2 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_chamelium_frames@vga-frame-dump.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
    - shard-dg1:          NOTRUN -> [SKIP][191] ([i915#7828]) +13 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html

  * igt@kms_color@deep-color:
    - shard-tglu-1:       NOTRUN -> [SKIP][192] ([i915#3555] / [i915#9979])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-5/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#3299])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-5/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][195] ([i915#3116] / [i915#3299])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#3299]) +1 other test skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-12/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#7116] / [i915#9424])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#7118])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-4/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#7118] / [i915#9424])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-5/igt@kms_content_protection@type1.html
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#7118] / [i915#9424])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-4/igt@kms_content_protection@type1.html
    - shard-tglu-1:       NOTRUN -> [SKIP][201] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-128x42:
    - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#8814])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-offscreen-128x42.html

  * igt@kms_cursor_crc@cursor-onscreen-256x256:
    - shard-rkl:          [PASS][203] -> [DMESG-WARN][204] ([i915#12964]) +46 other tests dmesg-warn
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-256x256.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-256x256.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][205] ([i915#13049])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#3555])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-tglu:         NOTRUN -> [SKIP][207] ([i915#3555]) +2 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-9/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#13049]) +1 other test skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#13049])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
    - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#13049])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#13049])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-2/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-toggle:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][212] ([i915#12917] / [i915#12964])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-1/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-snb:          [PASS][213] -> [SKIP][214] +1 other test skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-snb4/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-mtlp:         [PASS][215] -> [FAIL][216] ([i915#2346])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg1:          NOTRUN -> [SKIP][217] ([i915#9067])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-tglu:         NOTRUN -> [SKIP][218] ([i915#9067])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#4103] / [i915#4213])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
    - shard-dg1:          NOTRUN -> [SKIP][220] ([i915#4103] / [i915#4213])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@torture-bo@pipe-a:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][221] ([i915#12964]) +21 other tests dmesg-warn
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@kms_cursor_legacy@torture-bo@pipe-a.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#8588])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-6/igt@kms_display_modes@mst-extended-mode-negative.html
    - shard-dg1:          NOTRUN -> [SKIP][223] ([i915#8588])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dp_aux_dev:
    - shard-dg1:          NOTRUN -> [SKIP][224] ([i915#1257])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@kms_dp_aux_dev.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          [PASS][225] -> [SKIP][226] ([i915#12402])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-10/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-4/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#8812])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg1:          NOTRUN -> [SKIP][228] ([i915#3840])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
    - shard-tglu:         NOTRUN -> [SKIP][229] ([i915#3840])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#3555] / [i915#3840])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-7/igt@kms_dsc@dsc-with-bpc.html
    - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#3555] / [i915#3840])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-4/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#3555] / [i915#3840])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-tglu:         NOTRUN -> [SKIP][233] ([i915#3555] / [i915#3840])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-7/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#3840] / [i915#9053])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_feature_discovery@chamelium:
    - shard-mtlp:         NOTRUN -> [SKIP][235] ([i915#4854])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-8/igt@kms_feature_discovery@chamelium.html
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#4854])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@kms_feature_discovery@chamelium.html
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#4854])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-5/igt@kms_feature_discovery@chamelium.html
    - shard-dg1:          NOTRUN -> [SKIP][238] ([i915#4854])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-12/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-4x:
    - shard-tglu-1:       NOTRUN -> [SKIP][239] ([i915#1839])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#9337])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-3/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg1:          NOTRUN -> [SKIP][241] ([i915#658])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][242] ([i915#3637]) +7 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-10/igt@kms_flip@2x-blocking-absolute-wf_vblank.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-mtlp:         NOTRUN -> [SKIP][243] ([i915#3637]) +2 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-2/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-panning-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#9934]) +6 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@kms_flip@2x-flip-vs-panning-interruptible.html
    - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#9934]) +3 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@kms_flip@2x-flip-vs-panning-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][246] ([i915#3637]) +4 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
    - shard-snb:          [PASS][247] -> [FAIL][248] ([i915#11989]) +1 other test fail
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-snb4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-snb1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][249] ([i915#9934]) +7 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-12/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1:
    - shard-tglu:         [PASS][250] -> [FAIL][251] ([i915#11989]) +2 other tests fail
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-tglu-4/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-10/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-snb:          [PASS][252] -> [FAIL][253] ([i915#13027]) +1 other test fail
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-snb7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-snb4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg1:          NOTRUN -> [SKIP][254] ([i915#8381])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#8381])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          NOTRUN -> [INCOMPLETE][256] ([i915#4839])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-glk3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][257] ([i915#12745])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-glk3/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@d-hdmi-a4:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][258] ([i915#4423]) +2 other tests dmesg-warn
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_flip@flip-vs-suspend@d-hdmi-a4.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][259] ([i915#2587] / [i915#2672]) +3 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][260] ([i915#2672] / [i915#3555]) +6 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][261] ([i915#2587] / [i915#2672] / [i915#3555])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][262] ([i915#2672]) +3 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][263] ([i915#2587] / [i915#2672]) +6 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][264] ([i915#2672] / [i915#3555]) +2 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#2672] / [i915#3555]) +3 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
    - shard-dg1:          NOTRUN -> [SKIP][266] ([i915#2672] / [i915#3555]) +5 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
    - shard-mtlp:         NOTRUN -> [SKIP][267] ([i915#2672] / [i915#3555] / [i915#8813])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
    - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#2672] / [i915#3555])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][269] ([i915#2672] / [i915#8813])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][270] ([i915#2672]) +3 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
    - shard-dg1:          NOTRUN -> [SKIP][271] ([i915#2587] / [i915#2672]) +5 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#2672] / [i915#3555] / [i915#5190]) +2 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-dg1:          [PASS][273] -> [DMESG-WARN][274] ([i915#4423]) +4 other tests dmesg-warn
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-dg2:          [PASS][275] -> [FAIL][276] ([i915#6880])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
    - shard-mtlp:         NOTRUN -> [SKIP][277] ([i915#1825]) +8 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#5354]) +29 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][279] ([i915#10056])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-glk8/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#10433] / [i915#3458])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][281] ([i915#8708]) +17 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][282] ([i915#8708]) +19 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-tglu-1:       NOTRUN -> [SKIP][283] +38 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][284] ([i915#3023]) +15 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
    - shard-snb:          NOTRUN -> [SKIP][285] +72 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][286] ([i915#8708]) +3 other tests skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#1825]) +19 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#3458]) +14 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][289] ([i915#3458]) +21 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-tglu:         [PASS][290] -> [SKIP][291] ([i915#13012] / [i915#13030])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-tglu-5/igt@kms_hdmi_inject@inject-audio.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg2:          [PASS][292] -> [SKIP][293] ([i915#3555] / [i915#8228])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-10/igt@kms_hdr@bpc-switch-suspend.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#3555] / [i915#8228]) +1 other test skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-7/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-tglu:         NOTRUN -> [SKIP][295] ([i915#3555] / [i915#8228]) +2 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-4/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-swap:
    - shard-dg1:          NOTRUN -> [SKIP][296] ([i915#3555] / [i915#8228]) +4 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][297] ([i915#3555] / [i915#8228]) +1 other test skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][298] ([i915#12388])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][299] ([i915#12394])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-9/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][300] ([i915#10656])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][301] ([i915#12339])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2:          NOTRUN -> [SKIP][302] ([i915#6301])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@kms_panel_fitting@atomic-fastset.html
    - shard-dg1:          NOTRUN -> [SKIP][303] ([i915#6301])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
    - shard-dg2:          NOTRUN -> [SKIP][304] +15 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-5/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html

  * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
    - shard-dg1:          NOTRUN -> [SKIP][305] +49 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][306] ([i915#9809])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-4/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
    - shard-dg2:          NOTRUN -> [SKIP][307] ([i915#5354] / [i915#9423])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][308] ([i915#8292])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers:
    - shard-mtlp:         NOTRUN -> [SKIP][309] ([i915#12247]) +4 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-dg1:          NOTRUN -> [SKIP][310] ([i915#12247]) +4 other tests skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:
    - shard-dg2:          NOTRUN -> [SKIP][311] ([i915#12247] / [i915#9423])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-tglu:         NOTRUN -> [SKIP][312] ([i915#12247] / [i915#6953]) +2 other tests skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][313] ([i915#12247]) +11 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][314] ([i915#12247] / [i915#3555] / [i915#9423])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
    - shard-rkl:          NOTRUN -> [SKIP][315] ([i915#12247] / [i915#3555])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][316] ([i915#12247]) +4 other tests skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][317] ([i915#12247]) +7 other tests skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][318] ([i915#12343])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_pm_backlight@brightness-with-dpms.html
    - shard-tglu:         NOTRUN -> [SKIP][319] ([i915#12343])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-4/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade:
    - shard-dg1:          NOTRUN -> [SKIP][320] ([i915#5354])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu-1:       NOTRUN -> [SKIP][321] ([i915#9685])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-dg1:          NOTRUN -> [SKIP][322] ([i915#3828])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [PASS][323] -> [FAIL][324] ([i915#9295])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-tglu-4/igt@kms_pm_dc@dc6-dpms.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][325] ([i915#3361])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          NOTRUN -> [FAIL][326] ([i915#8717])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-2/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [PASS][327] -> [SKIP][328] ([i915#9519]) +1 other test skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][329] ([i915#9519])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-5/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [PASS][330] -> [SKIP][331] ([i915#9519])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:
    - shard-snb:          NOTRUN -> [SKIP][332] ([i915#11520]) +1 other test skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-snb2/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html
    - shard-dg1:          NOTRUN -> [SKIP][333] ([i915#11520]) +9 other tests skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][334] ([i915#11520]) +7 other tests skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-5/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][335] ([i915#11520]) +4 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][336] ([i915#9808])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-3/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1.html

  * igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][337] ([i915#11520]) +12 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-glk1/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html
    - shard-mtlp:         NOTRUN -> [SKIP][338] ([i915#12316]) +3 other tests skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-5/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][339] ([i915#11520]) +3 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-5/igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][340] ([i915#11520]) +7 other tests skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-tglu-1:       NOTRUN -> [SKIP][341] ([i915#9683])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-tglu:         NOTRUN -> [SKIP][342] ([i915#9683]) +1 other test skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-8/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-mtlp:         NOTRUN -> [SKIP][343] ([i915#4348])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-8/igt@kms_psr2_su@page_flip-xrgb8888.html
    - shard-dg2:          NOTRUN -> [SKIP][344] ([i915#9683])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-6/igt@kms_psr2_su@page_flip-xrgb8888.html
    - shard-rkl:          NOTRUN -> [SKIP][345] ([i915#9683])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-5/igt@kms_psr2_su@page_flip-xrgb8888.html
    - shard-dg1:          NOTRUN -> [SKIP][346] ([i915#9683])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr-primary-render:
    - shard-dg1:          NOTRUN -> [SKIP][347] ([i915#1072] / [i915#9732]) +25 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_psr@fbc-psr-primary-render.html

  * igt@kms_psr@fbc-psr2-cursor-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][348] ([i915#9732]) +16 other tests skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-2/igt@kms_psr@fbc-psr2-cursor-mmap-cpu.html

  * igt@kms_psr@pr-cursor-plane-move:
    - shard-mtlp:         NOTRUN -> [SKIP][349] ([i915#9688]) +4 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-8/igt@kms_psr@pr-cursor-plane-move.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-dg2:          NOTRUN -> [SKIP][350] ([i915#1072] / [i915#9732]) +16 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-3/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_psr@psr2-cursor-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][351] ([i915#1072] / [i915#9732]) +12 other tests skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-7/igt@kms_psr@psr2-cursor-mmap-gtt.html

  * igt@kms_psr@psr2-primary-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][352] ([i915#9732]) +7 other tests skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_psr@psr2-primary-mmap-cpu.html

  * igt@kms_psr@psr2-sprite-plane-onoff:
    - shard-glk:          NOTRUN -> [SKIP][353] +398 other tests skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-glk2/igt@kms_psr@psr2-sprite-plane-onoff.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglu:         NOTRUN -> [SKIP][354] ([i915#9685]) +1 other test skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-tglu-1:       NOTRUN -> [SKIP][355] ([i915#5289])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][356] ([i915#12755]) +1 other test skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-dg1:          NOTRUN -> [SKIP][357] ([i915#3555]) +2 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-tglu:         NOTRUN -> [SKIP][358] ([i915#8623])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][359] ([i915#8623])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flip-basic:
    - shard-dg2:          NOTRUN -> [SKIP][360] ([i915#3555])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-7/igt@kms_vrr@flip-basic.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu-1:       NOTRUN -> [SKIP][361] ([i915#9906])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@max-min:
    - shard-tglu:         NOTRUN -> [SKIP][362] ([i915#9906]) +1 other test skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-5/igt@kms_vrr@max-min.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-dg1:          NOTRUN -> [SKIP][363] ([i915#2437] / [i915#4423] / [i915#9412])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-tglu:         NOTRUN -> [SKIP][364] ([i915#2437])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-10/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-dg1:          NOTRUN -> [SKIP][365] ([i915#2437] / [i915#9412]) +1 other test skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
    - shard-tglu:         NOTRUN -> [SKIP][366] ([i915#2437] / [i915#9412]) +1 other test skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-4/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-dg1:          NOTRUN -> [SKIP][367] ([i915#2437])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-dg2:          NOTRUN -> [SKIP][368] ([i915#2437] / [i915#9412])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg1:          NOTRUN -> [FAIL][369] ([i915#12549] / [i915#6806]) +1 other test fail
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@module-unload:
    - shard-tglu:         [PASS][370] -> [ABORT][371] ([i915#13010])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-tglu-5/igt@perf_pmu@module-unload.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-4/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@semaphore-busy@vcs1:
    - shard-dg1:          [PASS][372] -> [FAIL][373] ([i915#4349]) +3 other tests fail
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg1-12/igt@perf_pmu@semaphore-busy@vcs1.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@perf_pmu@semaphore-busy@vcs1.html

  * igt@perf_pmu@semaphore-busy@vecs0:
    - shard-mtlp:         [PASS][374] -> [FAIL][375] ([i915#4349]) +4 other tests fail
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-mtlp-2/igt@perf_pmu@semaphore-busy@vecs0.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-7/igt@perf_pmu@semaphore-busy@vecs0.html
    - shard-dg2:          [PASS][376] -> [FAIL][377] ([i915#4349]) +5 other tests fail
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-4/igt@perf_pmu@semaphore-busy@vecs0.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@perf_pmu@semaphore-busy@vecs0.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-dg1:          NOTRUN -> [SKIP][378] ([i915#3708]) +1 other test skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg2:          NOTRUN -> [SKIP][379] ([i915#3708] / [i915#4077])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][380] ([i915#3291] / [i915#3708])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-dg2:          NOTRUN -> [SKIP][381] ([i915#3708])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-dg1:          NOTRUN -> [SKIP][382] ([i915#9917])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-rkl:          NOTRUN -> [SKIP][383] +11 other tests skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-7/igt@tools_test@sysfs_l3_parity.html
    - shard-dg1:          NOTRUN -> [SKIP][384] ([i915#4818])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@tools_test@sysfs_l3_parity.html
    - shard-mtlp:         NOTRUN -> [SKIP][385] ([i915#4818])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-3/igt@tools_test@sysfs_l3_parity.html
    - shard-dg2:          NOTRUN -> [SKIP][386] ([i915#4818])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-5/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-tglu:         [ABORT][387] ([i915#12817] / [i915#5507]) -> [PASS][388]
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-tglu-10/igt@device_reset@unbind-reset-rebind.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-8/igt@device_reset@unbind-reset-rebind.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][389] ([i915#7297]) -> [PASS][390]
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_ctx_persistence@hostile:
    - shard-rkl:          [FAIL][391] ([i915#11980] / [i915#12580]) -> [PASS][392]
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-rkl-1/igt@gem_ctx_persistence@hostile.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-5/igt@gem_ctx_persistence@hostile.html
    - shard-tglu:         [FAIL][393] ([i915#11980] / [i915#12580]) -> [PASS][394]
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-tglu-9/igt@gem_ctx_persistence@hostile.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-9/igt@gem_ctx_persistence@hostile.html

  * igt@gem_eio@kms:
    - shard-tglu:         [DMESG-WARN][395] -> [PASS][396]
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-tglu-10/igt@gem_eio@kms.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-9/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][397] ([i915#12543] / [i915#5784]) -> [PASS][398]
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg1-12/igt@gem_eio@reset-stress.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@gem_eio@reset-stress.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg2:          [ABORT][399] ([i915#7975] / [i915#8213]) -> [PASS][400] +1 other test pass
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-tglu:         [SKIP][401] ([i915#4270]) -> [PASS][402]
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-tglu-5/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-3/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [ABORT][403] ([i915#9820]) -> [PASS][404]
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-rkl:          [FAIL][405] ([i915#12942]) -> [PASS][406] +1 other test pass
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-4/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_selftest@live:
    - shard-rkl:          [DMESG-FAIL][407] -> [PASS][408] +1 other test pass
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-rkl-7/igt@i915_selftest@live.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@sanitycheck:
    - shard-tglu:         [ABORT][409] ([i915#13010]) -> [PASS][410] +2 other tests pass
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-tglu-10/igt@i915_selftest@live@sanitycheck.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@i915_selftest@live@sanitycheck.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-rkl:          [INCOMPLETE][411] -> [PASS][412]
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-rkl-5/igt@kms_async_flips@async-flip-suspend-resume.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-7/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-dg2:          [FAIL][413] ([i915#5956]) -> [PASS][414]
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-10/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-4/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][415] ([i915#11808]) -> [PASS][416] +1 other test pass
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-tglu-10/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [DMESG-FAIL][417] ([i915#11627]) -> [PASS][418]
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          [INCOMPLETE][419] -> [PASS][420]
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-glk5/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-glk4/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-onscreen-64x21:
    - shard-rkl:          [DMESG-WARN][421] ([i915#12917] / [i915#12964]) -> [PASS][422]
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-64x21.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-64x21.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-snb:          [SKIP][423] -> [PASS][424]
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-snb2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-snb4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-pwrite:
    - shard-rkl:          [DMESG-WARN][425] ([i915#12964]) -> [PASS][426] +65 other tests pass
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-rkl-1/igt@kms_draw_crc@draw-method-pwrite.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-7/igt@kms_draw_crc@draw-method-pwrite.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-snb:          [FAIL][427] ([i915#11989]) -> [PASS][428] +1 other test pass
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-snb4/igt@kms_flip@2x-wf_vblank-ts-check.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-snb7/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
    - shard-mtlp:         [FAIL][429] ([i915#11989]) -> [PASS][430] +1 other test pass
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-mtlp-8/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-4/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-dg2:          [FAIL][431] ([i915#6880]) -> [PASS][432]
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][433] ([i915#3555] / [i915#8228]) -> [PASS][434] +1 other test pass
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-4/igt@kms_hdr@static-toggle-suspend.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][435] ([i915#9519]) -> [PASS][436] +2 other tests pass
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          [SKIP][437] ([i915#9519]) -> [PASS][438] +1 other test pass
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@perf_pmu@all-busy-idle-check-all:
    - shard-mtlp:         [FAIL][439] ([i915#11943]) -> [PASS][440]
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-mtlp-8/igt@perf_pmu@all-busy-idle-check-all.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-6/igt@perf_pm

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/index.html

--===============1288698349033972251==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/modes: Fix div-by-zero in drm_mode_vrefr=
esh()</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/141910/">https://patchwork.freedesktop.org/series/141910/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_141910v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_141910v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15761_full -&gt; Patchwork_141910v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_141910v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_141910v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): shard-dg2-set2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
141910v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_schedule@pi-common:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-glk3/igt@gem_exec_schedule@pi-common.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/s=
hard-glk1/igt@gem_exec_schedule@pi-common.html">FAIL</a> +1 other test fail=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-glk2/igt@gem_exec_suspend@basic-s3@s=
mem.html">INCOMPLETE</a> +5 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@flink-race:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-snb1/igt@gem_mmap_gtt@flink-race.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard=
-snb1/igt@gem_mmap_gtt@flink-race.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-tglu-3/igt@gem_tiled_swapping@non-threaded.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1419=
10v1/shard-tglu-9/igt@gem_tiled_swapping@non-threaded.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15761/shard-dg2-4/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-8/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15761/shard-dg2-2/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/sha=
rd-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-6/igt@i915_module_load@=
load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_15761/shard-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-4/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_15761/shard-dg2-6/igt@i915_module_load@load.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shar=
d-dg2-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-2/igt@i915_module_load@lo=
ad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15761/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-1/igt@i915_m=
odule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15761/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2=
-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-3/igt@i915_module_load@load.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15=
761/shard-dg2-10/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-8/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_15761/shard-dg2-10/igt@i915_module_load@load.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-6/=
igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_15761/shard-dg2-1/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761=
/shard-dg2-10/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/shard-dg2-3/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15761/shard-dg2-11/igt@i915_module_load@load.html">PASS</a>) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/sh=
ard-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@i915_module=
_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_141910v1/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/sh=
ard-dg2-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-2/igt@i915_module=
_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_141910v1/shard-dg2-11/igt@i915_module_load@load.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/s=
hard-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-6/igt@i915_modu=
le_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_141910v1/shard-dg2-5/igt@i915_module_load@load.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/=
shard-dg2-10/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-4/igt@i915_mod=
ule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_141910v1/shard-dg2-11/igt@i915_module_load@load.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v=
1/shard-dg2-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-6/igt@i915_mo=
dule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_141910v1/shard-dg2-3/igt@i915_module_load@load.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v=
1/shard-dg2-10/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@i915_m=
odule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_141910v1/shard-dg2-5/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910=
v1/shard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@i915_m=
odule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14191=
0v1/shard-dg2-2/igt@i915_module_load@load.html">DMESG-WARN</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-2/igt=
@i915_module_load@load.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-snb7/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-snb7/=
igt@i915_pm_rps@reset.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15761_full and Patchwork_1=
41910v1_full:</p>
<h3>New IGT tests (21)</h3>
<ul>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.26] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.04, 0.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.29] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.05, 0.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_141910v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@api_intel_bb@crc32.html">=
SKIP</a> ([i915#6230])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-7/igt@api_intel_bb@crc32.html">=
SKIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@drm_fdinfo@busy-hang@bcs0=
.html">SKIP</a> ([i915#8414]) +15 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@drm_fdinfo@busy-hang@bcs0=
.html">SKIP</a> ([i915#8414]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-7/igt@drm_fdinfo@busy-hang@rcs0=
.html">SKIP</a> ([i915#8414]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@gem_basic@multigpu-create=
-close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> ([i915#9323]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-9/igt@gem_ccs@ctrl-surf-copy.ht=
ml">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-7/igt@gem_ccs@ctrl-surf-copy-ne=
w-ctx.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-4/igt@gem_ccs@suspend-resume@til=
e4-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#12392] / [i91=
5#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@gem_create@create-ext-cpu=
-access-big.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-2/igt@gem_create@create-ext-set=
-pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-dg2-3/igt@gem_ctx_freq@sysfs.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2=
-3/igt@gem_ctx_freq@sysfs.html">FAIL</a> ([i915#9561]) +1 other test fail</=
li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-5/igt@gem_ctx_persistence@heart=
beat-hostile.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@gem_ctx_persistence@heart=
beat-many.html">SKIP</a> ([i915#8555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-snb7/igt@gem_ctx_persistence@legacy-=
engines-hostile-preempt.html">SKIP</a> ([i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@gem_ctx_persistence@satur=
ated-hostile-nopreempt.html">SKIP</a> ([i915#5882]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-3/igt@gem_ctx_sseu@invalid-args.=
html">SKIP</a> ([i915#280])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@gem_ctx_sseu@mmap-args.ht=
ml">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-dg2-8/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-=
7/igt@gem_eio@hibernate.html">ABORT</a> ([i915#10030] / [i915#7975] / [i915=
#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-dg2-4/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-d=
g2-8/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#12543] / [i915#5784])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-4/igt@gem_exec_balancer@bonded-=
semaphore.html">SKIP</a> ([i915#4812])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@gem_exec_balancer@bonded-=
semaphore.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-3/igt@gem_exec_balancer@parallel=
-ordering.html">SKIP</a> ([i915#4525])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@gem_exec_balancer@paralle=
l-ordering.html">FAIL</a> ([i915#6117])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@gem_exec_capture@capture-=
invisible.html">SKIP</a> ([i915#6334]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-glk1/igt@gem_exec_capture@capture-in=
visible@smem0.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@gem_exec_fence@submit.htm=
l">SKIP</a> ([i915#4812]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-12/igt@gem_exec_flush@basic-uc-p=
rw-default.html">SKIP</a> ([i915#3539])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@gem_exec_flush@basic-uc-p=
rw-default.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@gem_exec_flush@basic-wb-r=
o-before-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-2/igt@gem_exec_flush@basic-wb-ro=
-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@gem_exec_reloc@basic-cpu-=
gtt.html">SKIP</a> ([i915#3281]) +8 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-7/igt@gem_exec_reloc@basic-cpu-=
gtt.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-5/igt@gem_exec_reloc@basic-scano=
ut.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@gem_exec_reloc@basic-wc-c=
pu-noreloc.html">SKIP</a> ([i915#3281]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-4/igt@gem_exec_schedule@preempt-=
queue.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-rkl-1/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/sh=
ard-rkl-7/igt@gem_exec_suspend@basic-s3.html">DMESG-FAIL</a> ([i915#12964])=
 +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@gem_fence_thrash@bo-copy.h=
tml">SKIP</a> ([i915#4860]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@gem_fence_thrash@bo-copy.=
html">SKIP</a> ([i915#4860]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no=
-spare-fences-interruptible.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-2/igt@gem_lmem_swapping@heavy-r=
andom.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-3/igt@gem_lmem_swapping@heavy-r=
andom.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@gem_lmem_swapping@paralle=
l-random-verify.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-1/igt@gem_lmem_swapping@verify.h=
tml">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-glk3/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> ([i915#4613]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-7/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@big-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-4/igt@gem_mmap@big-bo.html">SKI=
P</a> ([i915#4083]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@gem_mmap_gtt@cpuset-big-c=
opy.html">SKIP</a> ([i915#4077]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@gem_mmap_gtt@medium-copy-=
odd.html">SKIP</a> ([i915#4077]) +16 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-3/igt@gem_mmap_gtt@medium-copy-=
odd.html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-prefaulted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-2/igt@gem_mmap_wc@write-prefault=
ed.html">SKIP</a> ([i915#4083]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@gem_mmap_wc@write-read.ht=
ml">SKIP</a> ([i915#4083]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-2/igt@gem_pread@snoop.html">SKIP=
</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@gem_pwrite@basic-exhaustio=
n.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@gem_pwrite@basic-exhausti=
on.html">SKIP</a> ([i915#3282]) +6 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-3/igt@gem_pwrite@basic-exhausti=
on.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@gem_pxp@create-valid-prot=
ected-context.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@gem_pxp@hw-rejects-pxp-bu=
ffer.html">SKIP</a> ([i915#13033])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-4/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">TIMEOUT</a> ([i915#12917] / [i915#12964])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@gem_pxp@verify-pxp-key-ch=
ange-after-suspend-resume.html">SKIP</a> ([i915#4270]) +5 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-6/igt@gem_readwrite@new-obj.htm=
l">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-4/igt@gem_render_copy@y-tiled-t=
o-vebox-linear.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-6/igt@gem_render_copy@yf-tiled-m=
c-ccs-to-vebox-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +7 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@gem_set_tiling_vs_gtt.htm=
l">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-4/igt@gem_softpin@evict-snoop.h=
tml">SKIP</a> ([i915#4885])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-3/igt@gem_tiled_pread_basic.html=
">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-6/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap-busy.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@gem_userptr_blits@map-fix=
ed-invalidate-overlap-busy.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@gem_userptr_blits@unsync-=
unmap-after-close.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@gem_userptr_blits@unsync-=
unmap-cycles.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-3/igt@gen9_exec_parse@bb-oversiz=
e.html">SKIP</a> ([i915#2527]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-2/igt@gen9_exec_parse@bb-oversi=
ze.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-8/igt@gen9_exec_parse@cmd-cross=
ing-page.html">SKIP</a> ([i915#2527] / [i915#2856]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-2/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> ([i915#2856]) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@gen9_exec_parse@shadow-pe=
ek.html">SKIP</a> ([i915#2527]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@gen9_exec_parse@valid-reg=
isters.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_141910v1/shard-rkl-2/igt@i915_module_load@reload-with-fault-injecti=
on.html">ABORT</a> ([i915#9820])</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_141910v1/shard-tglu-10/igt@i915_module_load@reload-with-fault-inje=
ction.html">ABORT</a> ([i915#12817] / [i915#13010] / [i915#9820])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@i915_module_load@reload-w=
ith-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@i915_module_load@resize-b=
ar.html">SKIP</a> ([i915#6412])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-3/igt@i915_pm_freq_api@freq-rese=
t-multiple.html">SKIP</a> ([i915#8399])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-8/igt@i915_pm_freq_api@freq-res=
et-multiple.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-7/igt@i915_pm_rc6_residency@rc6=
-idle.html">WARN</a> ([i915#2681]) +4 other tests warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6=
-idle@gt0-vcs0.html">FAIL</a> ([i915#12548] / [i915#3591]) +1 other test fa=
il</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6=
-idle@gt0-vecs0.html">FAIL</a> ([i915#12739] / [i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@i915_pm_rps@min-max-confi=
g-loaded.html">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-6/igt@i915_pm_rps@thresholds-par=
k.html">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-3/igt@i915_power@sanity.html">SK=
IP</a> ([i915#7984])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-1/igt@i915_query@test-query-geom=
etry-subslices.html">SKIP</a> ([i915#5723])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-12/igt@i915_query@test-query-geo=
metry-subslices.html">SKIP</a> ([i915#5723])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-9/igt@i915_query@test-query-geo=
metry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@i915_selftest@mock@memory_=
region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-glk8/igt@i915_suspend@basic-s3-witho=
ut-i915.html">INCOMPLETE</a> ([i915#4817])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_addfb_basic@addfb25-x=
-tiled-mismatch-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-1/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> ([i915#87=
09]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-r=
c-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> ([i915#8709=
]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-4/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-glk9/igt@kms_atomic_transition@plane=
-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-7/igt@kms_big_fb@4-tiled-32bpp-=
rotate-270.html">SKIP</a> ([i915#5286]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-4/igt@kms_big_fb@4-tiled-8bpp-ro=
tate-90.html">SKIP</a> ([i915#5286]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i9=
15#5286]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-async-flip.html">SKIP</a> ([i915#5286]) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@kms_big_fb@linear-8bpp-ro=
tate-270.html">SKIP</a> ([i915#3638]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_big_fb@y-tiled-32bpp-=
rotate-90.html">SKIP</a> ([i915#4538] / [i915#5190]) +8 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-180.html">SKIP</a> ([i915#4538]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-64bpp=
-rotate-180.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-t=
iled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#1043=
4] / [i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@kms_ccs@bad-pixel-format-4=
-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +185 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4=
-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +34 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +86 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#6095]) +25 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-1:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-8/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#6095]) +59 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-3/igt@kms_ccs@random-ccs-data-4=
-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html">SKIP</a> ([i915#6095]) +14 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4=
-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#6095]) +181 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_ccs@random-ccs-data-4=
-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) +3 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-5/igt@kms_ccs@random-ccs-data-4=
-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_cdclk@mode-transition=
.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-1.html">SKIP</a> ([i915#11616] / [i915#7213]) +4 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_cdclk@plane-scaling@p=
ipe-d-hdmi-a-2.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@gamma:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-3/igt@kms_chamelium_color@gamma=
.html">SKIP</a> +70 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-2/igt@kms_chamelium_edid@dp-mod=
e-timings.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-9/igt@kms_chamelium_edid@hdmi-e=
did-stress-resolution-4k.html">SKIP</a> ([i915#7828]) +7 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-6/igt@kms_chamelium_frames@hdmi-=
crc-fast.html">SKIP</a> ([i915#7828]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-single:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-7/igt@kms_chamelium_frames@hdmi-=
crc-single.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@vga-frame-dump:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_chamelium_frames@vga-=
frame-dump.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_chamelium_hpd@hdmi-hp=
d-storm-disable.html">SKIP</a> ([i915#7828]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_color@deep-color.html=
">SKIP</a> ([i915#3555] / [i915#9979])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-5/igt@kms_content_protection@at=
omic-dpms.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9=
424]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-5/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_content_protection@dp=
-mst-lic-type-1.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-12/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> ([i915#3299]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_content_protection@le=
gacy.html">SKIP</a> ([i915#7116] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-4/igt@kms_content_protection@srm=
.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-5/igt@kms_content_protection@typ=
e1.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-4/igt@kms_content_protection@typ=
e1.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_content_protection@ty=
pe1.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-128x42:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-off=
screen-128x42.html">SKIP</a> ([i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x256:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-256x256.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_141910v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-256x256.html">DME=
SG-WARN</a> ([i915#12964]) +46 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_cursor_crc@cursor-ons=
creen-512x512.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rand=
om-32x10.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-9/igt@kms_cursor_crc@cursor-ran=
dom-32x32.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> ([i915#13049]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rap=
id-movement-512x512.html">SKIP</a> ([i915#13049])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_cursor_crc@cursor-rap=
id-movement-512x512.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-2/igt@kms_cursor_crc@cursor-sli=
ding-512x170.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-toggle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-1/igt@kms_cursor_legacy@cursora-=
vs-flipa-toggle.html">DMESG-WARN</a> ([i915#12917] / [i915#12964])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-snb4/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_141910v1/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html"=
>SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-varying-siz=
e.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_141910v1/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-varyin=
g-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i91=
5#4103] / [i915#4213])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i91=
5#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-bo@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@kms_cursor_legacy@torture-=
bo@pipe-a.html">DMESG-WARN</a> ([i915#12964]) +21 other tests dmesg-warn</l=
i>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-6/igt@kms_display_modes@mst-exte=
nded-mode-negative.html">SKIP</a> ([i915#8588])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_display_modes@mst-ext=
ended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@kms_dp_aux_dev.html">SKIP=
</a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-dg2-10/igt@kms_dp_linktrain_fallback@dp-fallback.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_141910v1/shard-dg2-4/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP=
</a> ([i915#12402])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_draw_crc@draw-method-=
mmap-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a> ([i915#3840])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-2/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-7/igt@kms_dsc@dsc-with-bpc.html"=
>SKIP</a> ([i915#3555] / [i915#3840])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-4/igt@kms_dsc@dsc-with-bpc.html"=
>SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_dsc@dsc-with-bpc-form=
ats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-7/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-4/igt@kms_dsc@dsc-with-output-fo=
rmats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-8/igt@kms_feature_discovery@cha=
melium.html">SKIP</a> ([i915#4854])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@kms_feature_discovery@cham=
elium.html">SKIP</a> ([i915#4854])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-5/igt@kms_feature_discovery@cham=
elium.html">SKIP</a> ([i915#4854])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-12/igt@kms_feature_discovery@cha=
melium.html">SKIP</a> ([i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_feature_discovery@dis=
play-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-3/igt@kms_feature_discovery@dp-m=
st.html">SKIP</a> ([i915#9337])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_feature_discovery@psr=
2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-10/igt@kms_flip@2x-blocking-abs=
olute-wf_vblank.html">SKIP</a> ([i915#3637]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-2/igt@kms_flip@2x-blocking-wf_v=
blank.html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@kms_flip@2x-flip-vs-panni=
ng-interruptible.html">SKIP</a> ([i915#9934]) +6 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@kms_flip@2x-flip-vs-pannin=
g-interruptible.html">SKIP</a> ([i915#9934]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb=
-recreate-interruptible.html">SKIP</a> ([i915#3637]) +4 other tests skip</l=
i>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-snb4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptib=
le.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_141910v1/shard-snb1/igt@kms_flip@2x-plain-flip-fb-recreate-inter=
ruptible.html">FAIL</a> ([i915#11989]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-12/igt@kms_flip@2x-plain-flip-ts=
-check-interruptible.html">SKIP</a> ([i915#9934]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-tglu-4/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_141910v1/shard-tglu-10/igt@kms_flip@flip-vs-absolute-wf_vblank@a-=
hdmi-a1.html">FAIL</a> ([i915#11989]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-snb7/igt@kms_flip@flip-vs-expired-vblank-interruptible.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_141910v1/shard-snb4/igt@kms_flip@flip-vs-expired-vblank-interruptib=
le.html">FAIL</a> ([i915#13027]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_flip@flip-vs-fences.h=
tml">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_flip@flip-vs-fences-i=
nterruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-glk3/igt@kms_flip@flip-vs-suspend-in=
terruptible.html">INCOMPLETE</a> ([i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-glk3/igt@kms_flip@flip-vs-suspend-in=
terruptible@a-hdmi-a1.html">INCOMPLETE</a> ([i915#12745])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@d-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_flip@flip-vs-suspend@=
d-hdmi-a4.html">DMESG-WARN</a> ([i915#4423]) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2587] / [i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i9=
15#3555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2587] / [i9=
15#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([=
i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2587] / [i915#2672]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#=
3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3=
555]) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#=
3555]) +5 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#=
3555] / [i915#8813])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3=
555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#2672] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i9=
15#2672]) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2587] / [i915#2672]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#35=
55] / [i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur=
-indfb-move.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-=
1p-primscrn-cur-indfb-move.html">DMESG-WARN</a> ([i915#4423]) +4 other test=
s dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indf=
b-msflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-=
1p-primscrn-indfb-msflip-blt.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#1825]) +8 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> ([i915#5354]) +29 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-glk8/igt@kms_frontbuffer_tracking@fb=
c-suspend.html">INCOMPLETE</a> ([i915#10056])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-4/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#10433] / [i=
915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +17 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +19=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> +38 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-3/igt@kms_frontbuffer_tracking@p=
sr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> ([i915#3023]) +15 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-snb7/igt@kms_frontbuffer_tracking@ps=
r-2p-primscrn-indfb-plflip-blt.html">SKIP</a> +72 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +3 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-3/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([i915#1825]) +19 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@kms_frontbuffer_tracking@p=
sr-indfb-scaledprimary.html">SKIP</a> ([i915#3458]) +14 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_frontbuffer_tracking@=
psr-rgb101010-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +21 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-tglu-5/igt@kms_hdmi_inject@inject-audio.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v=
1/shard-tglu-6/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> ([i915#13012=
] / [i915#13030])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-dg2-10/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/=
shard-dg2-3/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> ([i915#3555] / [i=
915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-7/igt@kms_hdr@invalid-hdr.html">=
SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-4/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> ([i915#3555] / [i915#8228]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_hdr@static-swap.html"=
>SKIP</a> ([i915#3555] / [i915#8228]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_joiner@basic-force-bi=
g-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-9/igt@kms_joiner@basic-force-ul=
tra-joiner.html">SKIP</a> ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@kms_joiner@invalid-modese=
t-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_joiner@invalid-modese=
t-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> ([i915#6301])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@kms_panel_fitting@atomic-=
fastset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-5/igt@kms_pipe_b_c_ivb@disable-p=
ipe-b-enable-pipe-c.html">SKIP</a> +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_pipe_b_c_ivb@enable-p=
ipe-c-while-b-has-3-lanes.html">SKIP</a> +49 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-4/igt@kms_plane_scaling@2x-scal=
er-multi-pipe.html">SKIP</a> ([i915#9809])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_plane_scaling@2x-scal=
er-multi-pipe.html">SKIP</a> ([i915#5354] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-dp-4.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-4/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-modifiers.html">SKIP</a> ([i915#12247]) +4 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-17/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-75-with-rotation@pipe-a.html">SKIP</a> ([i915#12247]) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#942=
3])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i=
915#6953]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#1224=
7]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#35=
55] / [i915#9423])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#355=
5])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-2/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25@pipe-a.html">SKIP</a> ([i915#12247]) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247]) +7=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_pm_backlight@brightne=
ss-with-dpms.html">SKIP</a> ([i915#12343])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-4/igt@kms_pm_backlight@brightne=
ss-with-dpms.html">SKIP</a> ([i915#12343])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_pm_backlight@fade.htm=
l">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@kms_pm_dc@dc5-retention-f=
lops.html">SKIP</a> ([i915#3828])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-tglu-4/igt@kms_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tg=
lu-7/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#9295])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html">S=
KIP</a> ([i915#3361])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-2/igt@kms_pm_rpm@i2c.html">FAIL<=
/a> ([i915#8717])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shar=
d-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519]) +1 other t=
est skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-5/igt@kms_pm_rpm@modeset-non-lp=
sp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
41910v1/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (=
[i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-snb2/igt@kms_psr2_sf@fbc-pr-cursor-p=
lane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +1 other test skip</l=
i>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_psr2_sf@fbc-pr-cursor=
-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +9 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-5/igt@kms_psr2_sf@fbc-pr-overla=
y-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +7 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-primar=
y-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +4 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-3/igt@kms_psr2_sf@fbc-psr2-prim=
ary-plane-update-sf-dmg-area@pipe-a-edp-1.html">SKIP</a> ([i915#9808])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-glk1/igt@kms_psr2_sf@pr-plane-move-s=
f-dmg-area.html">SKIP</a> ([i915#11520]) +12 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-5/igt@kms_psr2_sf@pr-plane-move=
-sf-dmg-area.html">SKIP</a> ([i915#12316]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-5/igt@kms_psr2_sf@psr2-plane-mov=
e-sf-dmg-area.html">SKIP</a> ([i915#11520]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_psr2_sf@psr2-primary-=
plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +7 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_psr2_su@frontbuffer-x=
rgb8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-8/igt@kms_psr2_su@page_flip-p01=
0.html">SKIP</a> ([i915#9683]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-8/igt@kms_psr2_su@page_flip-xrg=
b8888.html">SKIP</a> ([i915#4348])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-6/igt@kms_psr2_su@page_flip-xrgb=
8888.html">SKIP</a> ([i915#9683])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-5/igt@kms_psr2_su@page_flip-xrgb=
8888.html">SKIP</a> ([i915#9683])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_psr2_su@page_flip-xrg=
b8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_psr@fbc-psr-primary-r=
ender.html">SKIP</a> ([i915#1072] / [i915#9732]) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-2/igt@kms_psr@fbc-psr2-cursor-m=
map-cpu.html">SKIP</a> ([i915#9732]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-plane-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-8/igt@kms_psr@pr-cursor-plane-m=
ove.html">SKIP</a> ([i915#9688]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-3/igt@kms_psr@psr2-cursor-blt.ht=
ml">SKIP</a> ([i915#1072] / [i915#9732]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-7/igt@kms_psr@psr2-cursor-mmap-g=
tt.html">SKIP</a> ([i915#1072] / [i915#9732]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_psr@psr2-primary-mmap=
-cpu.html">SKIP</a> ([i915#9732]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-plane-onoff:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-glk2/igt@kms_psr@psr2-sprite-plane-o=
noff.html">SKIP</a> +398 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@kms_psr_stress_test@flip-=
primary-invalidate-overlay.html">SKIP</a> ([i915#9685]) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_rotation_crc@primary-=
4-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@kms_rotation_crc@sprite-r=
otation-90.html">SKIP</a> ([i915#12755]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@kms_scaling_modes@scaling=
-mode-center.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-6/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-7/igt@kms_vrr@flip-basic.html">S=
KIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-1/igt@kms_vrr@flip-basic-fastse=
t.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-5/igt@kms_vrr@max-min.html">SKI=
P</a> ([i915#9906]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_writeback@writeback-c=
heck-output-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#4423] / [i915#9=
412])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-10/igt@kms_writeback@writeback-=
fb-id.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@kms_writeback@writeback-f=
b-id-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412]) +1 other test s=
kip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-4/igt@kms_writeback@writeback-f=
b-id-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412]) +1 other test s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-18/igt@kms_writeback@writeback-i=
nvalid-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@kms_writeback@writeback-pi=
xel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@perf_pmu@frequency@gt0.ht=
ml">FAIL</a> ([i915#12549] / [i915#6806]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-tglu-5/igt@perf_pmu@module-unload.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shar=
d-tglu-4/igt@perf_pmu@module-unload.html">ABORT</a> ([i915#13010])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@semaphore-busy@vcs1:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-dg1-12/igt@perf_pmu@semaphore-busy@vcs1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v=
1/shard-dg1-18/igt@perf_pmu@semaphore-busy@vcs1.html">FAIL</a> ([i915#4349]=
) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@semaphore-busy@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-mtlp-2/igt@perf_pmu@semaphore-busy@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910=
v1/shard-mtlp-7/igt@perf_pmu@semaphore-busy@vecs0.html">FAIL</a> ([i915#434=
9]) +4 other tests fail</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-dg2-4/igt@perf_pmu@semaphore-busy@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v=
1/shard-dg2-10/igt@perf_pmu@semaphore-busy@vecs0.html">FAIL</a> ([i915#4349=
]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@prime_vgem@basic-fence-fl=
ip.html">SKIP</a> ([i915#3708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@prime_vgem@basic-fence-mm=
ap.html">SKIP</a> ([i915#3708] / [i915#4077])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@prime_vgem@basic-fence-re=
ad.html">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-1/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-13/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-rkl-7/igt@tools_test@sysfs_l3_parity=
.html">SKIP</a> +11 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg1-14/igt@tools_test@sysfs_l3_parit=
y.html">SKIP</a> ([i915#4818])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-mtlp-3/igt@tools_test@sysfs_l3_parit=
y.html">SKIP</a> ([i915#4818])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-dg2-5/igt@tools_test@sysfs_l3_parity=
.html">SKIP</a> ([i915#4818])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-tglu-10/igt@device_reset@unbind-reset-rebind.html">ABOR=
T</a> ([i915#12817] / [i915#5507]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-8/igt@device_reset@unbind-r=
eset-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-4/igt@gem_cc=
s@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-rkl-1/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([=
i915#11980] / [i915#12580]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_141910v1/shard-rkl-5/igt@gem_ctx_persistence@hostile.h=
tml">PASS</a></li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-tglu-9/igt@gem_ctx_persistence@hostile.html">FAIL</a> (=
[i915#11980] / [i915#12580]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_141910v1/shard-tglu-9/igt@gem_ctx_persistence@hostile=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-tglu-10/igt@gem_eio@kms.html">DMESG-WARN</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tg=
lu-9/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-dg1-12/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#1=
2543] / [i915#5784]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_141910v1/shard-dg1-18/igt@gem_eio@reset-stress.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices.html">ABORT=
</a> ([i915#7975] / [i915#8213]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_141910v1/shard-dg2-11/igt@gem_exec_suspend@basic-=
s4-devices.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-tglu-5/igt@gem_pxp@verify-pxp-stale-buf-optout-executio=
n.html">SKIP</a> ([i915#4270]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141910v1/shard-tglu-3/igt@gem_pxp@verify-pxp-stale-=
buf-optout-execution.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-glk8/igt@i915_module_load@reload-with-fault-injection.h=
tml">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_141910v1/shard-glk9/igt@i915_module_load@reload-with-=
fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-accuracy.html">FAIL=
</a> ([i915#12942]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_141910v1/shard-rkl-4/igt@i915_pm_rc6_residency@rc6-accuracy.ht=
ml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-rkl-7/igt@i915_selftest@live.html">DMESG-FAIL</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/sha=
rd-rkl-3/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-tglu-10/igt@i915_selftest@live@sanitycheck.html">ABORT<=
/a> ([i915#13010]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_141910v1/shard-tglu-6/igt@i915_selftest@live@sanitycheck.html">=
PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-rkl-5/igt@kms_async_flips@async-flip-suspend-resume.htm=
l">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_141910v1/shard-rkl-7/igt@kms_async_flips@async-flip-suspend-resu=
me.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-dg2-10/igt@kms_atomic_transition@plane-toggle-modeset-t=
ransition.html">FAIL</a> ([i915#5956]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-4/igt@kms_atomic_transit=
ion@plane-toggle-modeset-transition.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-=
1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-tglu-10/igt@kms_atomic_transition@plane-toggle-modeset-=
transition@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#11808]) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-tglu-3/igt=
@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html=
">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">DMESG-FAIL</a> ([i915#11627]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-mtlp-8/igt@kms_big_fb=
@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-glk5/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-=
a-hdmi-a-1.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_141910v1/shard-glk4/igt@kms_ccs@crc-primary-suspen=
d-yf-tiled-ccs@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-64x21:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-64x21.html">DM=
ESG-WARN</a> ([i915#12917] / [i915#12964]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_141910v1/shard-rkl-7/igt@kms_cursor_crc=
@cursor-onscreen-64x21.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-snb2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.htm=
l">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_141910v1/shard-snb4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-rkl-1/igt@kms_draw_crc@draw-method-pwrite.html">DMESG-W=
ARN</a> ([i915#12964]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_141910v1/shard-rkl-7/igt@kms_draw_crc@draw-method-pwrite.ht=
ml">PASS</a> +65 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-snb4/igt@kms_flip@2x-wf_vblank-ts-check.html">FAIL</a> =
([i915#11989]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_141910v1/shard-snb7/igt@kms_flip@2x-wf_vblank-ts-check.html">PASS</=
a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-mtlp-8/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.h=
tml">FAIL</a> ([i915#11989]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_141910v1/shard-mtlp-4/igt@kms_flip@flip-vs-blocking-w=
f-vblank@a-edp1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-mul=
tidraw.html">FAIL</a> ([i915#6880]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_141910v1/shard-dg2-8/igt@kms_frontbuffer_track=
ing@fbc-1p-pri-indfb-multidraw.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-dg2-4/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> =
([i915#3555] / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_141910v1/shard-dg2-10/igt@kms_hdr@static-toggle-suspen=
d.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#95=
19]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
1910v1/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +2 other tests p=
ass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915=
#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_141910v1/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> +1 other t=
est pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@all-busy-idle-check-all:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15761/shard-mtlp-8/igt@perf_pmu@all-busy-idle-check-all.html">FAIL<=
/a> ([i915#11943]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_141910v1/shard-mtlp-6/igt@perf_pm">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============1288698349033972251==--
