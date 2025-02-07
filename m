Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA28A2C3C2
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 14:36:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9482710EAFD;
	Fri,  7 Feb 2025 13:36:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6A3910EAF0;
 Fri,  7 Feb 2025 13:36:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3491666266962637928=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_Enable_Aux_based_Nits_br?=
 =?utf-8?q?ightness_control_for_eDP_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 07 Feb 2025 13:36:23 -0000
Message-ID: <173893538379.2654556.8584500026982521928@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250206063253.2827017-1-suraj.kandpal@intel.com>
In-Reply-To: <20250206063253.2827017-1-suraj.kandpal@intel.com>
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

--===============3491666266962637928==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable Aux based Nits brightness control for eDP (rev3)
URL   : https://patchwork.freedesktop.org/series/143909/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16077_full -> Patchwork_143909v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_143909v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_143909v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_143909v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_compute@compute-square:
    - shard-dg2:          NOTRUN -> [FAIL][1] +1 other test fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-3/igt@gem_compute@compute-square.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-glk:          NOTRUN -> [ABORT][2] +1 other test abort
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk1/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-snb:          NOTRUN -> [FAIL][3] +1 other test fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-snb4/igt@gem_tiled_swapping@non-threaded.html
    - shard-glk:          NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk6/igt@gem_tiled_swapping@non-threaded.html

  * igt@kms_lease@lease-invalid-plane:
    - shard-rkl:          NOTRUN -> [SKIP][5] +141 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@kms_lease@lease-invalid-plane.html

  * igt@perf_pmu@invalid-init:
    - shard-rkl:          NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@perf_pmu@invalid-init.html
    - shard-dg1:          NOTRUN -> [FAIL][7] +2 other tests fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@perf_pmu@invalid-init.html
    - shard-tglu:         NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-8/igt@perf_pmu@invalid-init.html
    - shard-mtlp:         NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@perf_pmu@invalid-init.html

  * igt@perf_pmu@module-unload:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@perf_pmu@module-unload.html
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@perf_pmu@module-unload.html

  
New tests
---------

  New tests have been introduced between CI_DRM_16077_full and Patchwork_143909v3_full:

### New IGT tests (1) ###

  * igt@kms_cursor_crc@cursor-random-256x256@pipe-a-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [4.38] s

  

Known issues
------------

  Here are the changes found in Patchwork_143909v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#8411]) +3 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-3/igt@api_intel_bb@blit-reloc-purge-cache.html
    - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#8411]) +3 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#6230])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-4/igt@api_intel_bb@crc32.html
    - shard-dg1:          NOTRUN -> [SKIP][15] ([i915#6230])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@api_intel_bb@crc32.html
    - shard-tglu:         NOTRUN -> [SKIP][16] ([i915#6230])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-4/igt@api_intel_bb@crc32.html

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#8411]) +2 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@debugfs_test@basic-hwmon:
    - shard-mtlp:         NOTRUN -> [SKIP][18] ([i915#9318])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-6/igt@debugfs_test@basic-hwmon.html
    - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#9318])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@debugfs_test@basic-hwmon.html
    - shard-tglu:         NOTRUN -> [SKIP][20] ([i915#9318])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-8/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg1:          NOTRUN -> [SKIP][21] ([i915#11078])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@device_reset@cold-reset-bound.html
    - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#11078]) +1 other test skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-7/igt@device_reset@cold-reset-bound.html
    - shard-mtlp:         NOTRUN -> [SKIP][23] ([i915#11078]) +1 other test skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@device_reset@cold-reset-bound.html
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#11078]) +1 other test skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#11078])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-7/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          NOTRUN -> [ABORT][26] ([i915#11814] / [i915#11815] / [i915#9413])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@busy-check-all@bcs0:
    - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#8414]) +27 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@drm_fdinfo@busy-check-all@bcs0.html

  * igt@drm_fdinfo@busy-hang@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#8414]) +54 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-6/igt@drm_fdinfo@busy-hang@rcs0.html

  * igt@drm_fdinfo@most-busy-check-all@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#8414]) +42 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@drm_fdinfo@most-busy-check-all@bcs0.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2-9:        NOTRUN -> [SKIP][30] ([i915#8414]) +9 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@drm_fdinfo@virtual-busy-all.html

  * igt@fbdev@unaligned-read:
    - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#2582]) +1 other test skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@fbdev@unaligned-read.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#7697]) +2 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-6/igt@gem_basic@multigpu-create-close.html
    - shard-dg1:          NOTRUN -> [SKIP][33] ([i915#7697]) +2 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_basic@multigpu-create-close.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#3936])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_busy@semaphore.html
    - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#3936])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@gem_busy@semaphore.html
    - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#3936])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_busy@semaphore.html

  * igt@gem_caching@writes:
    - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#4873]) +2 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_caching@writes.html
    - shard-rkl:          NOTRUN -> [DMESG-WARN][38] ([i915#12917] / [i915#12964])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_caching@writes.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#3555] / [i915#9323])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#3555] / [i915#9323]) +1 other test skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@gem_ccs@ctrl-surf-copy.html
    - shard-tglu:         NOTRUN -> [SKIP][41] ([i915#3555] / [i915#9323]) +1 other test skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-9/igt@gem_ccs@ctrl-surf-copy.html
    - shard-mtlp:         NOTRUN -> [SKIP][42] ([i915#3555] / [i915#9323]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-tglu-1:       NOTRUN -> [SKIP][43] ([i915#9323])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#13008])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@gem_ccs@large-ctrl-surf-copy.html
    - shard-dg1:          NOTRUN -> [SKIP][45] ([i915#13008])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@gem_ccs@large-ctrl-surf-copy.html
    - shard-tglu:         NOTRUN -> [SKIP][46] ([i915#13008])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-9/igt@gem_ccs@large-ctrl-surf-copy.html
    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#13008])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][48] ([i915#13356])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-6/igt@gem_ccs@suspend-resume.html
    - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#9323]) +2 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-4/igt@gem_ccs@suspend-resume.html
    - shard-dg1:          NOTRUN -> [SKIP][50] ([i915#9323]) +1 other test skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@gem_ccs@suspend-resume.html
    - shard-tglu:         NOTRUN -> [SKIP][51] ([i915#9323]) +1 other test skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-6/igt@gem_ccs@suspend-resume.html
    - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#9323]) +2 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][53] ([i915#12392])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-6/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-tglu:         NOTRUN -> [SKIP][54] ([i915#7697]) +2 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-8/igt@gem_close_race@multigpu-basic-process.html
    - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#7697]) +2 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#7697]) +2 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu-1:       NOTRUN -> [SKIP][57] ([i915#6335])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-tglu:         NOTRUN -> [SKIP][58] ([i915#6335])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-10/igt@gem_create@create-ext-cpu-access-sanity-check.html
    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#6335]) +1 other test skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@gem_create@create-ext-cpu-access-sanity-check.html
    - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#6335]) +1 other test skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#8562])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-2/igt@gem_create@create-ext-set-pat.html
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#8562])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@gem_create@create-ext-set-pat.html
    - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#8562])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@gem_create@create-ext-set-pat.html
    - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#8562])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@hang:
    - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#8555]) +5 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#8555]) +5 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-hostile.html
    - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#8555]) +3 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@processes:
    - shard-snb:          NOTRUN -> [SKIP][68] ([i915#1099]) +22 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-snb7/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#5882]) +7 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-2/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1:
    - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#5882]) +6 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#280]) +2 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_ctx_sseu@invalid-sseu.html
    - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#280]) +3 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-6/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#280]) +2 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@gem_ctx_sseu@mmap-args.html
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#280]) +2 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@gem_ctx_sseu@mmap-args.html
    - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#280]) +2 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-9/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-dg1:          NOTRUN -> [ABORT][76] ([i915#7975])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@gem_eio@hibernate.html
    - shard-tglu:         NOTRUN -> [ABORT][77] ([i915#7975]) +2 other tests abort
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-8/igt@gem_eio@hibernate.html
    - shard-mtlp:         NOTRUN -> [ABORT][78] ([i915#7975]) +2 other tests abort
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@gem_eio@hibernate.html

  * igt@gem_eio@in-flight-internal-10ms:
    - shard-mtlp:         NOTRUN -> [ABORT][79] ([i915#13193])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_eio@in-flight-internal-10ms.html

  * igt@gem_eio@in-flight-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][80] ([i915#13197] / [i915#13390])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk8/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@kms:
    - shard-dg1:          NOTRUN -> [FAIL][81] ([i915#5784])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          NOTRUN -> [FAIL][82] ([i915#8898]) +1 other test fail
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-snb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#4771]) +2 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_exec_balancer@bonded-dual.html
    - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#4771])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-dg2-9:        NOTRUN -> [SKIP][85] ([i915#4771])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-dg2-9:        NOTRUN -> [SKIP][86] ([i915#4812])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4771]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-2/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#4812]) +6 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4036])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@gem_exec_balancer@invalid-bonds.html
    - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#4036])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_exec_balancer@invalid-bonds.html
    - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#4036])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@parallel:
    - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#4525]) +7 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-3/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#4525]) +7 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_big@single:
    - shard-tglu:         NOTRUN -> [ABORT][94] ([i915#11713])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-8/igt@gem_exec_big@single.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#6334]) +2 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-glk:          NOTRUN -> [SKIP][96] ([i915#6334]) +1 other test skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk4/igt@gem_exec_capture@capture-invisible@smem0.html
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#6334]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-7/igt@gem_exec_capture@capture-invisible@smem0.html
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#6334]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@gem_exec_capture@capture-invisible@smem0.html
    - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#6334]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#6344])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@gem_exec_capture@capture-recoverable.html
    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#6344])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-2/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fence@concurrent:
    - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#4812]) +8 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-2/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#3711])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#3539] / [i915#4852]) +10 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_flush@basic-uc-ro-default:
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#3539] / [i915#4852]) +7 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_exec_flush@basic-uc-ro-default.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#3539]) +1 other test skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@gem_exec_flush@basic-uc-set-default.html
    - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#3539]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-dg2-9:        NOTRUN -> [SKIP][108] ([i915#3539] / [i915#4852])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#5107])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-8/igt@gem_exec_params@rsvd2-dirt.html
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#5107])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_params@secure-non-root:
    - shard-dg2-9:        NOTRUN -> [SKIP][111] +8 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#3281]) +46 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#3281]) +47 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-dg2-9:        NOTRUN -> [SKIP][114] ([i915#3281]) +3 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#3281]) +50 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#3281]) +34 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html

  * igt@gem_exec_schedule@deep@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#4537])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_exec_schedule@deep@rcs0.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#4537] / [i915#4812]) +4 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#4537] / [i915#4812]) +4 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#7276])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_exec_schedule@semaphore-power.html
    - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#4812]) +12 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][122] ([i915#11441] / [i915#13304])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][123] ([i915#11441])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-5/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-glk:          NOTRUN -> [INCOMPLETE][124] ([i915#13196]) +1 other test incomplete
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk2/igt@gem_exec_suspend@basic-s3.html
    - shard-dg2:          NOTRUN -> [INCOMPLETE][125] ([i915#13196]) +1 other test incomplete
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-11/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg2:          NOTRUN -> [ABORT][126] ([i915#7975]) +2 other tests abort
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@gem_exec_suspend@basic-s4-devices.html
    - shard-rkl:          NOTRUN -> [ABORT][127] ([i915#7975]) +2 other tests abort
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#4860]) +8 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#4860]) +9 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg2-9:        NOTRUN -> [SKIP][130] ([i915#4860])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#4860]) +10 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#2190])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-7/igt@gem_huc_copy@huc-copy.html
    - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#2190])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#4613] / [i915#7582])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@gem_lmem_evict@dontneed-evict-race.html
    - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#4613] / [i915#7582])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-9/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@basic:
    - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#4613]) +18 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#4613]) +16 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#4613]) +17 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-7/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          NOTRUN -> [TIMEOUT][139] ([i915#5493]) +1 other test timeout
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
    - shard-dg1:          NOTRUN -> [TIMEOUT][140] ([i915#5493]) +1 other test timeout
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-glk:          NOTRUN -> [SKIP][141] ([i915#4613]) +10 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk1/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#12193]) +1 other test skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#4565]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html

  * igt@gem_media_vme:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#284])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-11/igt@gem_media_vme.html
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#284])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-4/igt@gem_media_vme.html
    - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#284])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@gem_media_vme.html
    - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#284])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-4/igt@gem_media_vme.html
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#284])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@gem_media_vme.html

  * igt@gem_mmap@bad-size:
    - shard-mtlp:         NOTRUN -> [SKIP][149] ([i915#4083]) +23 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_mmap@bad-size.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#4077]) +61 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#4077]) +63 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-dg2-9:        NOTRUN -> [SKIP][152] ([i915#4077]) +1 other test skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_wc@bad-offset:
    - shard-dg2-9:        NOTRUN -> [SKIP][153] ([i915#4083]) +1 other test skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_mmap_wc@bad-offset.html

  * igt@gem_mmap_wc@copy:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#4083]) +22 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_mmap_wc@copy.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#1850])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_mmap_wc@write-read:
    - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#4083]) +17 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_mmap_wc@write-read.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#3282]) +31 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][158] ([i915#2658]) +1 other test warn
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-snb4/igt@gem_pread@exhaustion.html
    - shard-tglu:         NOTRUN -> [WARN][159] ([i915#2658]) +1 other test warn
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@gem_pread@exhaustion.html

  * igt@gem_pread@self:
    - shard-dg2-9:        NOTRUN -> [SKIP][160] ([i915#3282])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_pread@self.html

  * igt@gem_pread@snoop:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#3282]) +24 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_pread@snoop.html
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#3282]) +16 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@gem_pread@snoop.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          NOTRUN -> [WARN][163] ([i915#2658])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk9/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg1:          NOTRUN -> [SKIP][164] ([i915#4270]) +17 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@gem_pxp@display-protected-crc.html
    - shard-dg2-9:        NOTRUN -> [SKIP][165] ([i915#4270])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-rkl:          NOTRUN -> [TIMEOUT][166] ([i915#12917] / [i915#12964]) +10 other tests timeout
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_pxp@hw-rejects-pxp-buffer.html
    - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#13398]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-2/igt@gem_pxp@hw-rejects-pxp-buffer.html
    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#13398]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#4270]) +17 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@gem_pxp@regular-baseline-src-copy-readible.html
    - shard-rkl:          NOTRUN -> [TIMEOUT][170] ([i915#12964]) +2 other tests timeout
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#4270])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_readwrite@read-bad-handle:
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#3282]) +23 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@gem_readwrite@read-bad-handle.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][173] ([i915#5190] / [i915#8428]) +4 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#8428]) +33 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#5190] / [i915#8428]) +26 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#4079]) +6 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
    - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#8411]) +6 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#4079]) +6 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-dg2-9:        NOTRUN -> [SKIP][179] ([i915#4079])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#4885]) +1 other test skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_softpin@evict-snoop.html
    - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#4885]) +1 other test skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@gem_softpin@evict-snoop.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#4885]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_pread_basic:
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#4079]) +7 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@gem_tiled_pread_basic.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-rkl:          NOTRUN -> [FAIL][184] ([i915#12941])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_tiled_swapping@non-threaded.html
    - shard-tglu:         NOTRUN -> [FAIL][185] ([i915#12941])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-8/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#4879])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@gem_unfence_active_buffers.html
    - shard-dg1:          NOTRUN -> [SKIP][187] ([i915#4879])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@gem_unfence_active_buffers.html
    - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#4879])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@access-control:
    - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#3297]) +16 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#3297]) +10 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@gem_userptr_blits@create-destroy-unsync.html
    - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#3297]) +9 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-9/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#3297] / [i915#3323])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-9/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-dg2-9:        NOTRUN -> [SKIP][193] ([i915#3297]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#3297] / [i915#3323])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#3297]) +10 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@gem_userptr_blits@dmabuf-unsync.html
    - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#3297]) +7 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#3282] / [i915#3297])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@gem_userptr_blits@forbidden-operations.html
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#3282] / [i915#3297])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@gem_userptr_blits@forbidden-operations.html
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#3282] / [i915#3297])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#3297] / [i915#4880]) +2 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2-9:        NOTRUN -> [SKIP][201] ([i915#3297] / [i915#4880])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#3281] / [i915#3297])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@gem_userptr_blits@relocations.html
    - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#3281] / [i915#3297])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_userptr_blits@relocations.html
    - shard-mtlp:         NOTRUN -> [SKIP][204] ([i915#3281] / [i915#3297])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#3297] / [i915#4958])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@gem_userptr_blits@sd-probe.html
    - shard-dg1:          NOTRUN -> [SKIP][206] ([i915#3297] / [i915#4958])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-tglu-1:       NOTRUN -> [SKIP][207] ([i915#3297]) +1 other test skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-glk:          NOTRUN -> [INCOMPLETE][208] ([i915#13356])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk6/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-dg2-9:        NOTRUN -> [SKIP][209] ([i915#2856])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-tglu-1:       NOTRUN -> [SKIP][210] ([i915#2527] / [i915#2856]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-large:
    - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#2527]) +14 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#2527]) +17 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#2856]) +16 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-tglu:         NOTRUN -> [SKIP][214] ([i915#2527] / [i915#2856]) +15 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-10/igt@gen9_exec_parse@unaligned-jump.html
    - shard-mtlp:         NOTRUN -> [SKIP][215] ([i915#2856]) +17 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-2/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_fb_tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#4881]) +1 other test skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@i915_fb_tiling.html

  * igt@i915_module_load@load:
    - shard-glk:          ([PASS][217], [PASS][218], [PASS][219], [PASS][220], [PASS][221], [PASS][222], [PASS][223], [PASS][224], [PASS][225], [PASS][226], [PASS][227], [PASS][228], [PASS][229], [PASS][230], [PASS][231], [PASS][232], [PASS][233], [PASS][234], [PASS][235], [PASS][236], [PASS][237], [PASS][238], [PASS][239], [PASS][240], [PASS][241]) -> ([PASS][242], [PASS][243], [PASS][244], [PASS][245], [PASS][246], [PASS][247], [PASS][248], [PASS][249], [PASS][250], [PASS][251], [PASS][252], [DMESG-WARN][253], [PASS][254], [PASS][255], [PASS][256], [PASS][257], [PASS][258], [PASS][259], [PASS][260], [PASS][261], [PASS][262], [PASS][263], [PASS][264], [PASS][265], [PASS][266], [PASS][267], [PASS][268], [PASS][269], [PASS][270], [PASS][271], [PASS][272]) ([i915#118])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk4/igt@i915_module_load@load.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk4/igt@i915_module_load@load.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk4/igt@i915_module_load@load.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk6/igt@i915_module_load@load.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk3/igt@i915_module_load@load.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk3/igt@i915_module_load@load.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk3/igt@i915_module_load@load.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk6/igt@i915_module_load@load.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk2/igt@i915_module_load@load.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk6/igt@i915_module_load@load.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk2/igt@i915_module_load@load.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk2/igt@i915_module_load@load.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk1/igt@i915_module_load@load.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk1/igt@i915_module_load@load.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk7/igt@i915_module_load@load.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk7/igt@i915_module_load@load.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk1/igt@i915_module_load@load.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk7/igt@i915_module_load@load.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk8/igt@i915_module_load@load.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk8/igt@i915_module_load@load.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk8/igt@i915_module_load@load.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk8/igt@i915_module_load@load.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk9/igt@i915_module_load@load.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk9/igt@i915_module_load@load.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk9/igt@i915_module_load@load.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk9/igt@i915_module_load@load.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk3/igt@i915_module_load@load.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk1/igt@i915_module_load@load.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk9/igt@i915_module_load@load.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk3/igt@i915_module_load@load.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk2/igt@i915_module_load@load.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk2/igt@i915_module_load@load.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk3/igt@i915_module_load@load.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk4/igt@i915_module_load@load.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk4/igt@i915_module_load@load.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk1/igt@i915_module_load@load.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk7/igt@i915_module_load@load.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk7/igt@i915_module_load@load.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk2/igt@i915_module_load@load.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk6/igt@i915_module_load@load.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk8/igt@i915_module_load@load.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk7/igt@i915_module_load@load.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk1/igt@i915_module_load@load.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk6/igt@i915_module_load@load.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk8/igt@i915_module_load@load.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk6/igt@i915_module_load@load.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk2/igt@i915_module_load@load.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk9/igt@i915_module_load@load.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk8/igt@i915_module_load@load.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk6/igt@i915_module_load@load.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk8/igt@i915_module_load@load.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk1/igt@i915_module_load@load.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk9/igt@i915_module_load@load.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk3/igt@i915_module_load@load.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk4/igt@i915_module_load@load.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk7/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          NOTRUN -> [ABORT][273] ([i915#9820])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         NOTRUN -> [ABORT][274] ([i915#12817] / [i915#9820])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         NOTRUN -> [ABORT][275] ([i915#10131])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          NOTRUN -> [SKIP][276] ([i915#6412])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-7/igt@i915_module_load@resize-bar.html
    - shard-tglu-1:       NOTRUN -> [SKIP][277] ([i915#6412])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@i915_module_load@resize-bar.html
    - shard-dg1:          NOTRUN -> [SKIP][278] ([i915#7178])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@i915_module_load@resize-bar.html
    - shard-mtlp:         NOTRUN -> [SKIP][279] ([i915#6412])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@i915_module_load@resize-bar.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#7091])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
    - shard-mtlp:         NOTRUN -> [SKIP][281] ([i915#8436])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][282] ([i915#8399]) +2 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@i915_pm_freq_api@freq-suspend.html
    - shard-tglu:         NOTRUN -> [SKIP][283] ([i915#8399]) +3 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-10/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          NOTRUN -> [SKIP][284] ([i915#6590]) +1 other test skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-4/igt@i915_pm_freq_mult@media-freq@gt0.html
    - shard-tglu-1:       NOTRUN -> [SKIP][285] ([i915#6590]) +1 other test skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html
    - shard-dg1:          NOTRUN -> [SKIP][286] ([i915#6590]) +1 other test skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_freq_mult@media-freq@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][287] ([i915#6590]) +2 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@i915_pm_freq_mult@media-freq@gt1.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-rkl:          NOTRUN -> [FAIL][288] ([i915#12942]) +1 other test fail
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglu:         NOTRUN -> [WARN][289] ([i915#2681]) +6 other tests warn
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@sysfs-read:
    - shard-rkl:          NOTRUN -> [SKIP][290] ([i915#13328])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@i915_pm_rpm@sysfs-read.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-glk:          NOTRUN -> [INCOMPLETE][291] ([i915#12797])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk4/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@basic-api:
    - shard-mtlp:         NOTRUN -> [SKIP][292] ([i915#11681] / [i915#6621]) +2 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-2/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#11681] / [i915#6621]) +1 other test skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-2/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_rps@reset:
    - shard-mtlp:         NOTRUN -> [FAIL][294] ([i915#8346])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@thresholds-idle:
    - shard-mtlp:         NOTRUN -> [SKIP][295] ([i915#11681]) +3 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@i915_pm_rps@thresholds-idle.html

  * igt@i915_pm_rps@thresholds-idle-park:
    - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#11681]) +3 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@i915_pm_rps@thresholds-idle-park.html
    - shard-dg1:          NOTRUN -> [SKIP][297] ([i915#11681]) +3 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@i915_pm_rps@thresholds-idle-park.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          NOTRUN -> [SKIP][298] ([i915#4387])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-2/igt@i915_pm_sseu@full-enable.html
    - shard-rkl:          NOTRUN -> [SKIP][299] ([i915#4387])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@i915_pm_sseu@full-enable.html
    - shard-dg1:          NOTRUN -> [SKIP][300] ([i915#4387])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@i915_pm_sseu@full-enable.html
    - shard-tglu:         NOTRUN -> [SKIP][301] ([i915#4387])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@i915_pm_sseu@full-enable.html
    - shard-mtlp:         NOTRUN -> [SKIP][302] ([i915#8437])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_power@sanity:
    - shard-rkl:          NOTRUN -> [SKIP][303] ([i915#7984])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@i915_power@sanity.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu:         NOTRUN -> [SKIP][304] ([i915#6245])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-10/igt@i915_query@hwconfig_table.html
    - shard-rkl:          NOTRUN -> [SKIP][305] ([i915#6245])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@i915_query@hwconfig_table.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-mtlp:         NOTRUN -> [SKIP][306] ([i915#6188])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@i915_query@query-topology-coherent-slice-mask.html
    - shard-dg2:          NOTRUN -> [SKIP][307] ([i915#6188])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][308] ([i915#5723])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
    - shard-dg1:          NOTRUN -> [SKIP][309] ([i915#5723])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@i915_query@test-query-geometry-subslices.html
    - shard-tglu:         NOTRUN -> [SKIP][310] ([i915#5723])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-3/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@mock:
    - shard-snb:          NOTRUN -> [DMESG-WARN][311] ([i915#9311]) +1 other test dmesg-warn
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-snb5/igt@i915_selftest@mock.html
    - shard-tglu:         NOTRUN -> [DMESG-WARN][312] ([i915#9311]) +1 other test dmesg-warn
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@i915_selftest@mock.html
    - shard-mtlp:         NOTRUN -> [DMESG-WARN][313] ([i915#9311]) +1 other test dmesg-warn
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@i915_selftest@mock.html
    - shard-glk:          NOTRUN -> [DMESG-WARN][314] ([i915#1982] / [i915#9311])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk3/igt@i915_selftest@mock.html

  * igt@i915_selftest@mock@memory_region:
    - shard-glk:          NOTRUN -> [DMESG-WARN][315] ([i915#9311])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk3/igt@i915_selftest@mock@memory_region.html
    - shard-dg2:          NOTRUN -> [DMESG-WARN][316] ([i915#9311]) +1 other test dmesg-warn
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-2/igt@i915_selftest@mock@memory_region.html
    - shard-rkl:          NOTRUN -> [DMESG-WARN][317] ([i915#9311]) +1 other test dmesg-warn
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@i915_selftest@mock@memory_region.html
    - shard-dg1:          NOTRUN -> [DMESG-WARN][318] ([i915#9311]) +1 other test dmesg-warn
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][319] ([i915#7443])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@i915_suspend@basic-s3-without-i915.html
    - shard-mtlp:         NOTRUN -> [SKIP][320] ([i915#6645])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          NOTRUN -> [INCOMPLETE][321] ([i915#4817])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk3/igt@i915_suspend@forcewake.html

  * igt@intel_hwmon@hwmon-read:
    - shard-rkl:          NOTRUN -> [SKIP][322] ([i915#7707])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@intel_hwmon@hwmon-read.html
    - shard-tglu:         NOTRUN -> [SKIP][323] ([i915#7707])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-7/igt@intel_hwmon@hwmon-read.html
    - shard-mtlp:         NOTRUN -> [SKIP][324] ([i915#7707])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@intel_hwmon@hwmon-read.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][325] ([i915#4212]) +7 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][326] ([i915#5190]) +6 other tests skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - shard-mtlp:         NOTRUN -> [SKIP][327] ([i915#5190])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][328] ([i915#4212]) +6 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-11/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][329] ([i915#4215] / [i915#5190])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-dg1:          NOTRUN -> [SKIP][330] ([i915#4212]) +6 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-rkl:          NOTRUN -> [SKIP][331] ([i915#12454] / [i915#12712])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
    - shard-tglu:         NOTRUN -> [SKIP][332] ([i915#12454] / [i915#12712])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
    - shard-mtlp:         NOTRUN -> [SKIP][333] ([i915#12454] / [i915#12712])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-3-4-rc-ccs-cc:
    - shard-dg2:          NOTRUN -> [SKIP][334] ([i915#8709]) +7 other tests skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-3-4-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-d-hdmi-a-4-y-rc-ccs-cc:
    - shard-dg1:          NOTRUN -> [SKIP][335] ([i915#8709]) +7 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-d-hdmi-a-4-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc:
    - shard-mtlp:         NOTRUN -> [SKIP][336] ([i915#8709]) +15 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][337] ([i915#8709]) +7 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][338] ([i915#8709]) +1 other test skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][339] ([i915#12967] / [i915#6228])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-5/igt@kms_async_flips@invalid-async-flip.html
    - shard-mtlp:         NOTRUN -> [SKIP][340] ([i915#12967] / [i915#6228])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_async_flips@invalid-async-flip-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][341] ([i915#12967])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@kms_async_flips@invalid-async-flip-atomic.html
    - shard-dg2:          NOTRUN -> [SKIP][342] ([i915#12967])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@kms_async_flips@invalid-async-flip-atomic.html

  * igt@kms_async_flips@test-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][343] ([i915#10333]) +1 other test skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@kms_async_flips@test-cursor-atomic.html

  * igt@kms_atomic@atomic-plane-damage:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][344] ([i915#4423]) +1 other test dmesg-warn
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@kms_atomic@atomic-plane-damage.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          NOTRUN -> [SKIP][345] ([i915#9531])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-rkl:          NOTRUN -> [SKIP][346] ([i915#9531])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-tglu:         NOTRUN -> [SKIP][347] ([i915#9531])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-mtlp:         NOTRUN -> [SKIP][348] ([i915#1769] / [i915#3555]) +1 other test skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-snb:          NOTRUN -> [SKIP][349] ([i915#1769]) +1 other test skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-snb1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-tglu:         NOTRUN -> [SKIP][350] ([i915#1769] / [i915#3555]) +1 other test skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-dg2-9:        NOTRUN -> [SKIP][351] ([i915#1769] / [i915#3555])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][352] ([i915#1769] / [i915#3555])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
    - shard-rkl:          NOTRUN -> [SKIP][353] ([i915#1769] / [i915#3555])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [FAIL][354] ([i915#5956]) +3 other tests fail
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][355] ([i915#5956]) +1 other test fail
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html

  * igt@kms_atomic_transition@plane-all-transition-fencing@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][356] ([i915#12964]) +44 other tests dmesg-warn
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-5/igt@kms_atomic_transition@plane-all-transition-fencing@pipe-b-hdmi-a-2.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][357] ([i915#4538] / [i915#5286]) +22 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][358] ([i915#5286]) +25 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@kms_big_fb@4-tiled-addfb.html
    - shard-dg1:          NOTRUN -> [SKIP][359] ([i915#5286]) +1 other test skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][360] ([i915#5286]) +27 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-tglu-1:       NOTRUN -> [SKIP][361] ([i915#5286]) +3 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][362] +122 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][363] ([i915#3638]) +11 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@kms_big_fb@linear-8bpp-rotate-270.html
    - shard-dg1:          NOTRUN -> [SKIP][364] ([i915#3638]) +13 other tests skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-dg2-9:        NOTRUN -> [SKIP][365] ([i915#5190]) +1 other test skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][366] ([i915#4538] / [i915#5190]) +51 other tests skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-mtlp:         NOTRUN -> [SKIP][367] ([i915#6187]) +5 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][368] ([i915#4538]) +22 other tests skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2-9:        NOTRUN -> [SKIP][369] ([i915#4538] / [i915#5190]) +4 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][370] ([i915#12313]) +9 other tests skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-7/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][371] ([i915#12313]) +5 other tests skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][372] ([i915#6095]) +274 other tests skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][373] ([i915#6095]) +329 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-3/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-b-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][374] ([i915#10307] / [i915#6095]) +34 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][375] ([i915#12313]) +9 other tests skip
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][376] ([i915#12805]) +1 other test skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
    - shard-rkl:          NOTRUN -> [SKIP][377] ([i915#12805]) +1 other test skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
    - shard-dg1:          NOTRUN -> [SKIP][378] ([i915#12805]) +1 other test skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
    - shard-tglu:         NOTRUN -> [SKIP][379] ([i915#12805]) +1 other test skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][380] ([i915#12805]) +1 other test skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-8/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][381] ([i915#12796]) +3 other tests incomplete
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk2/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-b-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][382] ([i915#6095]) +29 other tests skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-b-dp-3.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][383] ([i915#6095]) +4 other tests skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [DMESG-FAIL][384] ([i915#12964]) +1 other test dmesg-fail
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][385] ([i915#12313]) +6 other tests skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][386] ([i915#12313]) +6 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][387] ([i915#10307] / [i915#6095]) +275 other tests skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][388] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu-1:       NOTRUN -> [SKIP][389] ([i915#6095]) +19 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][390] ([i915#6095]) +329 other tests skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][391] ([i915#6095]) +164 other tests skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          NOTRUN -> [SKIP][392] ([i915#3742]) +2 other tests skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-5/igt@kms_cdclk@mode-transition.html
    - shard-dg1:          NOTRUN -> [SKIP][393] ([i915#3742]) +2 other tests skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@kms_cdclk@mode-transition.html
    - shard-tglu:         NOTRUN -> [SKIP][394] ([i915#3742]) +2 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][395] ([i915#7213] / [i915#9010]) +5 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-8/igt@kms_cdclk@mode-transition@pipe-b-edp-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][396] ([i915#11616] / [i915#7213]) +5 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@plane-scaling@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][397] ([i915#4087]) +4 other tests skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@kms_cdclk@plane-scaling@pipe-c-edp-1.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][398] ([i915#4087]) +4 other tests skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_audio@dp-audio:
    - shard-tglu:         NOTRUN -> [SKIP][399] ([i915#11151] / [i915#7828]) +45 other tests skip
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@kms_chamelium_audio@dp-audio.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-dg1:          NOTRUN -> [SKIP][400] ([i915#11151] / [i915#7828]) +36 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_color@degamma:
    - shard-dg2:          NOTRUN -> [SKIP][401] +55 other tests skip
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-11/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][402] ([i915#11151] / [i915#7828]) +45 other tests skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][403] ([i915#11151] / [i915#7828]) +48 other tests skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@vga-hpd-after-suspend:
    - shard-dg2-9:        NOTRUN -> [SKIP][404] ([i915#11151] / [i915#7828]) +2 other tests skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][405] ([i915#11151] / [i915#7828]) +46 other tests skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][406] ([i915#11151] / [i915#7828]) +2 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_color@deep-color:
    - shard-tglu:         NOTRUN -> [SKIP][407] ([i915#3555] / [i915#9979])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-6/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          NOTRUN -> [FAIL][408] ([i915#7173]) +1 other test fail
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html
    - shard-rkl:          NOTRUN -> [SKIP][409] ([i915#7118] / [i915#9424]) +2 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@content-type-change:
    - shard-dg2-9:        NOTRUN -> [SKIP][410] ([i915#9424])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][411] ([i915#3116] / [i915#3299]) +2 other tests skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-8/igt@kms_content_protection@dp-mst-lic-type-0.html
    - shard-mtlp:         NOTRUN -> [SKIP][412] ([i915#3299]) +3 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][413] ([i915#3299]) +3 other tests skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@kms_content_protection@dp-mst-lic-type-1.html
    - shard-rkl:          NOTRUN -> [SKIP][414] ([i915#3116]) +3 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-1.html
    - shard-dg1:          NOTRUN -> [SKIP][415] ([i915#3299]) +3 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][416] ([i915#6944] / [i915#9424]) +3 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-10/igt@kms_content_protection@lic-type-0.html
    - shard-mtlp:         NOTRUN -> [SKIP][417] ([i915#6944] / [i915#9424]) +6 other tests skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-2/igt@kms_content_protection@lic-type-0.html
    - shard-rkl:          NOTRUN -> [SKIP][418] ([i915#9424]) +1 other test skip
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg1:          NOTRUN -> [SKIP][419] ([i915#9424])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          NOTRUN -> [SKIP][420] ([i915#9424]) +2 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-5/igt@kms_content_protection@mei-interface.html
    - shard-dg1:          NOTRUN -> [SKIP][421] ([i915#9433])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@kms_content_protection@mei-interface.html
    - shard-mtlp:         NOTRUN -> [SKIP][422] ([i915#8063] / [i915#9433])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][423] ([i915#7118])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-2/igt@kms_content_protection@srm.html
    - shard-rkl:          NOTRUN -> [SKIP][424] ([i915#7118])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@kms_content_protection@srm.html
    - shard-dg1:          NOTRUN -> [SKIP][425] ([i915#7116])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@kms_content_protection@srm.html
    - shard-tglu:         NOTRUN -> [SKIP][426] ([i915#6944] / [i915#7116] / [i915#7118])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@kms_content_protection@srm.html
    - shard-mtlp:         NOTRUN -> [SKIP][427] ([i915#6944])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          NOTRUN -> [SKIP][428] ([i915#7118] / [i915#9424]) +3 other tests skip
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@kms_content_protection@type1.html
    - shard-dg1:          NOTRUN -> [SKIP][429] ([i915#7116] / [i915#9424]) +4 other tests skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@kms_content_protection@type1.html
    - shard-tglu:         NOTRUN -> [SKIP][430] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) +4 other tests skip
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-7/igt@kms_content_protection@type1.html
    - shard-mtlp:         NOTRUN -> [SKIP][431] ([i915#3555] / [i915#6944] / [i915#9424])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][432] ([i915#13049])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-mtlp:         NOTRUN -> [SKIP][433] ([i915#8814]) +11 other tests skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][434] ([i915#3555] / [i915#8814]) +12 other tests skip
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@kms_cursor_crc@cursor-onscreen-32x10.html
    - shard-dg2-9:        NOTRUN -> [SKIP][435] ([i915#3555]) +2 other tests skip
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][436] ([i915#13049]) +8 other tests skip
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html
    - shard-mtlp:         NOTRUN -> [SKIP][437] ([i915#13049]) +9 other tests skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][438] ([i915#3555]) +3 other tests skip
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][439] ([i915#13049]) +7 other tests skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x170.html
    - shard-dg1:          NOTRUN -> [SKIP][440] ([i915#13049]) +8 other tests skip
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@kms_cursor_crc@cursor-random-512x170.html
    - shard-dg2-9:        NOTRUN -> [SKIP][441] ([i915#13049])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][442] ([i915#13049]) +8 other tests skip
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][443] ([i915#3555]) +25 other tests skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][444] ([i915#12358] / [i915#7882])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk7/igt@kms_cursor_crc@cursor-suspend.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][445] ([i915#12358])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk7/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
    - shard-dg2-9:        NOTRUN -> [SKIP][446] ([i915#13046] / [i915#5354]) +2 other tests skip
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][447] +97 other tests skip
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][448] ([i915#4103]) +2 other tests skip
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][449] ([i915#4213]) +5 other tests skip
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-dg1:          NOTRUN -> [SKIP][450] ([i915#4103] / [

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/index.html

--===============3491666266962637928==
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
<tr><td><b>Series:</b></td><td>Enable Aux based Nits brightness control for=
 eDP (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/143909/">https://patchwork.freedesktop.org/series/143909/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_143909v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_143909v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16077_full -&gt; Patchwork_143909v=
3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_143909v3_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_143909v3_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
143909v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_compute@compute-square:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-3/igt@gem_compute@compute-square=
.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-glk1/igt@gem_exec_suspend@basic-s4-d=
evices.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-snb4/igt@gem_tiled_swapping@non-thre=
aded.html">FAIL</a> +1 other test fail</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-glk6/igt@gem_tiled_swapping@non-thre=
aded.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-invalid-plane:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@kms_lease@lease-invalid-pl=
ane.html">SKIP</a> +141 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@invalid-init:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@perf_pmu@invalid-init.html=
">FAIL</a></li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@perf_pmu@invalid-init.htm=
l">FAIL</a> +2 other tests fail</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-8/igt@perf_pmu@invalid-init.htm=
l">FAIL</a></li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@perf_pmu@invalid-init.htm=
l">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@perf_pmu@module-unload.ht=
ml">INCOMPLETE</a></li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@perf_pmu@module-unload.ht=
ml">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_16077_full and Patchwork_1=
43909v3_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_cursor_crc@cursor-random-256x256@pipe-a-dp-3:<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.38] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_143909v3_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-3/igt@api_intel_bb@blit-reloc-pu=
rge-cache.html">SKIP</a> ([i915#8411]) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@api_intel_bb@blit-reloc-p=
urge-cache.html">SKIP</a> ([i915#8411]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-4/igt@api_intel_bb@crc32.html">S=
KIP</a> ([i915#6230])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@api_intel_bb@crc32.html">=
SKIP</a> ([i915#6230])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-4/igt@api_intel_bb@crc32.html">=
SKIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@api_intel_bb@object-reloc=
-purge-cache.html">SKIP</a> ([i915#8411]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-6/igt@debugfs_test@basic-hwmon.=
html">SKIP</a> ([i915#9318])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@debugfs_test@basic-hwmon.h=
tml">SKIP</a> ([i915#9318])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-8/igt@debugfs_test@basic-hwmon.=
html">SKIP</a> ([i915#9318])</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> ([i915#11078])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-7/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> ([i915#11078]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> ([i915#11078]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> ([i915#11078]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-7/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@device_reset@unbind-reset=
-rebind.html">ABORT</a> ([i915#11814] / [i915#11815] / [i915#9413])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@drm_fdinfo@busy-check-all=
@bcs0.html">SKIP</a> ([i915#8414]) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-6/igt@drm_fdinfo@busy-hang@rcs0=
.html">SKIP</a> ([i915#8414]) +54 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@drm_fdinfo@most-busy-check=
-all@bcs0.html">SKIP</a> ([i915#8414]) +42 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@drm_fdinfo@virtual-busy-al=
l.html">SKIP</a> ([i915#8414]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@fbdev@unaligned-read.html"=
>SKIP</a> ([i915#2582]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-6/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> ([i915#7697]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_basic@multigpu-create=
-close.html">SKIP</a> ([i915#7697]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_busy@semaphore.html">S=
KIP</a> ([i915#3936])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@gem_busy@semaphore.html">=
SKIP</a> ([i915#3936])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_busy@semaphore.html">=
SKIP</a> ([i915#3936])</li>
</ul>
</li>
<li>
<p>igt@gem_caching@writes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_caching@writes.html">=
SKIP</a> ([i915#4873]) +2 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_caching@writes.html">D=
MESG-WARN</a> ([i915#12917] / [i915#12964])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@gem_ccs@block-multicopy-i=
nplace.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@gem_ccs@ctrl-surf-copy.htm=
l">SKIP</a> ([i915#3555] / [i915#9323]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-9/igt@gem_ccs@ctrl-surf-copy.ht=
ml">SKIP</a> ([i915#3555] / [i915#9323]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@gem_ccs@ctrl-surf-copy.ht=
ml">SKIP</a> ([i915#3555] / [i915#9323]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy-ne=
w-ctx.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@gem_ccs@large-ctrl-surf-co=
py.html">SKIP</a> ([i915#13008])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@gem_ccs@large-ctrl-surf-c=
opy.html">SKIP</a> ([i915#13008])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-9/igt@gem_ccs@large-ctrl-surf-c=
opy.html">SKIP</a> ([i915#13008])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@gem_ccs@large-ctrl-surf-c=
opy.html">SKIP</a> ([i915#13008])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-6/igt@gem_ccs@suspend-resume.htm=
l">INCOMPLETE</a> ([i915#13356])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-4/igt@gem_ccs@suspend-resume.htm=
l">SKIP</a> ([i915#9323]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> ([i915#9323]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-6/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> ([i915#9323]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> ([i915#9323]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-6/igt@gem_ccs@suspend-resume@til=
e64-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#12392])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-8/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> ([i915#7697]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> ([i915#7697]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> ([i915#7697]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@gem_create@create-ext-cpu=
-access-big.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-10/igt@gem_create@create-ext-cp=
u-access-sanity-check.html">SKIP</a> ([i915#6335])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@gem_create@create-ext-cpu=
-access-sanity-check.html">SKIP</a> ([i915#6335]) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@gem_create@create-ext-cpu-=
access-sanity-check.html">SKIP</a> ([i915#6335]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-2/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> ([i915#8562])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> ([i915#8562])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@gem_create@create-ext-set=
-pat.html">SKIP</a> ([i915#8562])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@gem_create@create-ext-set=
-pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_ctx_persistence@hang.=
html">SKIP</a> ([i915#8555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@gem_ctx_persistence@heart=
beat-hostile.html">SKIP</a> ([i915#8555]) +5 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@gem_ctx_persistence@heart=
beat-hostile.html">SKIP</a> ([i915#8555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@processes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-snb7/igt@gem_ctx_persistence@process=
es.html">SKIP</a> ([i915#1099]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-2/igt@gem_ctx_persistence@satura=
ted-hostile-nopreempt.html">SKIP</a> ([i915#5882]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_ctx_persistence@satur=
ated-hostile-nopreempt@vcs1.html">SKIP</a> ([i915#5882]) +6 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> ([i915#280]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-6/igt@gem_ctx_sseu@invalid-sseu=
.html">SKIP</a> ([i915#280]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> ([i915#280]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@gem_ctx_sseu@mmap-args.ht=
ml">SKIP</a> ([i915#280]) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-9/igt@gem_ctx_sseu@mmap-args.ht=
ml">SKIP</a> ([i915#280]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@gem_eio@hibernate.html">A=
BORT</a> ([i915#7975])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-8/igt@gem_eio@hibernate.html">A=
BORT</a> ([i915#7975]) +2 other tests abort</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@gem_eio@hibernate.html">A=
BORT</a> ([i915#7975]) +2 other tests abort</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-internal-10ms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_eio@in-flight-interna=
l-10ms.html">ABORT</a> ([i915#13193])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-glk8/igt@gem_eio@in-flight-suspend.h=
tml">INCOMPLETE</a> ([i915#13197] / [i915#13390])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_eio@kms.html">FAIL</a=
> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-snb5/igt@gem_eio@unwedge-stress.html=
">FAIL</a> ([i915#8898]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_exec_balancer@bonded-=
dual.html">SKIP</a> ([i915#4771]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@gem_exec_balancer@bonded-=
dual.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_exec_balancer@bonded-p=
air.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_exec_balancer@bonded-s=
emaphore.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-2/igt@gem_exec_balancer@bonded-s=
ync.html">SKIP</a> ([i915#4771]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_exec_balancer@bonded-t=
rue-hang.html">SKIP</a> ([i915#4812]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@gem_exec_balancer@invalid-=
bonds.html">SKIP</a> ([i915#4036])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_exec_balancer@invalid=
-bonds.html">SKIP</a> ([i915#4036])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_exec_balancer@invalid=
-bonds.html">SKIP</a> ([i915#4036])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-3/igt@gem_exec_balancer@paralle=
l.html">SKIP</a> ([i915#4525]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_exec_balancer@parallel=
-balancer.html">SKIP</a> ([i915#4525]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-8/igt@gem_exec_big@single.html"=
>ABORT</a> ([i915#11713])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-2/igt@gem_exec_capture@capture-i=
nvisible@lmem0.html">SKIP</a> ([i915#6334]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-glk4/igt@gem_exec_capture@capture-in=
visible@smem0.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-7/igt@gem_exec_capture@capture-i=
nvisible@smem0.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@gem_exec_capture@capture-=
invisible@smem0.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_exec_capture@capture-=
invisible@smem0.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@gem_exec_capture@capture-r=
ecoverable.html">SKIP</a> ([i915#6344])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-2/igt@gem_exec_capture@capture-=
recoverable.html">SKIP</a> ([i915#6344])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-2/igt@gem_exec_fence@concurrent=
.html">SKIP</a> ([i915#4812]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_exec_flush@basic-batc=
h-kernel-default-cmd.html">SKIP</a> ([i915#3711])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@gem_exec_flush@basic-uc-pr=
o-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +10 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_exec_flush@basic-uc-r=
o-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +7 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@gem_exec_flush@basic-uc-se=
t-default.html">SKIP</a> ([i915#3539]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@gem_exec_flush@basic-uc-s=
et-default.html">SKIP</a> ([i915#3539]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_exec_flush@basic-wb-rw=
-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-8/igt@gem_exec_params@rsvd2-dir=
t.html">SKIP</a> ([i915#5107])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_exec_params@rsvd2-dirt=
.html">SKIP</a> ([i915#5107])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_exec_reloc@basic-cpu-g=
tt-noreloc.html">SKIP</a> ([i915#3281]) +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_exec_reloc@basic-gtt-=
cpu-noreloc.html">SKIP</a> ([i915#3281]) +47 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-r=
ead.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-w=
c-noreloc.html">SKIP</a> ([i915#3281]) +50 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@gem_exec_reloc@basic-wc-c=
pu-noreloc.html">SKIP</a> ([i915#3281]) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_exec_schedule@deep@rc=
s0.html">SKIP</a> ([i915#4537])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_exec_schedule@preempt=
-queue-chain.html">SKIP</a> ([i915#4537] / [i915#4812]) +4 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_exec_schedule@reorder-=
wide.html">SKIP</a> ([i915#4537] / [i915#4812]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> ([i915#7276])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_exec_schedule@semapho=
re-power.html">SKIP</a> ([i915#4812]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-5/igt@gem_exec_suspend@basic-s0.=
html">INCOMPLETE</a> ([i915#11441] / [i915#13304])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-5/igt@gem_exec_suspend@basic-s0@=
lmem0.html">INCOMPLETE</a> ([i915#11441])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-glk2/igt@gem_exec_suspend@basic-s3.h=
tml">INCOMPLETE</a> ([i915#13196]) +1 other test incomplete</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-11/igt@gem_exec_suspend@basic-s3=
.html">INCOMPLETE</a> ([i915#13196]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@gem_exec_suspend@basic-s4-=
devices.html">ABORT</a> ([i915#7975]) +2 other tests abort</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_exec_suspend@basic-s4-=
devices.html">ABORT</a> ([i915#7975]) +2 other tests abort</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@gem_fence_thrash@bo-write=
-verify-threaded-none.html">SKIP</a> ([i915#4860]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@gem_fence_thrash@bo-write-=
verify-x.html">SKIP</a> ([i915#4860]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_fenced_exec_thrash@no-=
spare-fences.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@gem_fenced_exec_thrash@no=
-spare-fences-interruptible.html">SKIP</a> ([i915#4860]) +10 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-7/igt@gem_huc_copy@huc-copy.html=
">SKIP</a> ([i915#2190])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@gem_huc_copy@huc-copy.htm=
l">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@gem_lmem_evict@dontneed-ev=
ict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-9/igt@gem_lmem_evict@dontneed-e=
vict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_lmem_swapping@basic.h=
tml">SKIP</a> ([i915#4613]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_lmem_swapping@parallel=
-random-verify-ccs.html">SKIP</a> ([i915#4613]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-7/igt@gem_lmem_swapping@smem-oo=
m.html">SKIP</a> ([i915#4613]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@gem_lmem_swapping@smem-oom=
@lmem0.html">TIMEOUT</a> ([i915#5493]) +1 other test timeout</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_lmem_swapping@smem-oo=
m@lmem0.html">TIMEOUT</a> ([i915#5493]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-glk1/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> ([i915#4613]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@gem_lmem_swapping@verify-=
random-ccs.html">SKIP</a> ([i915#12193]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@gem_lmem_swapping@verify-=
random-ccs@lmem0.html">SKIP</a> ([i915#4565]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-11/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-4/igt@gem_media_vme.html">SKIP</=
a> ([i915#284])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-4/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_mmap@bad-size.html">S=
KIP</a> ([i915#4083]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_mmap_gtt@cpuset-big-co=
py-odd.html">SKIP</a> ([i915#4077]) +61 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@gem_mmap_gtt@cpuset-mediu=
m-copy.html">SKIP</a> ([i915#4077]) +63 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_mmap_gtt@cpuset-medium=
-copy-xy.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-offset:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_mmap_wc@bad-offset.htm=
l">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_mmap_wc@copy.html">SKI=
P</a> ([i915#4083]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@gem_mmap_wc@set-cache-leve=
l.html">SKIP</a> ([i915#1850])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_mmap_wc@write-read.ht=
ml">SKIP</a> ([i915#4083]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@gem_partial_pwrite_pread@w=
rites-after-reads-uncached.html">SKIP</a> ([i915#3282]) +31 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-snb4/igt@gem_pread@exhaustion.html">=
WARN</a> ([i915#2658]) +1 other test warn</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@gem_pread@exhaustion.html=
">WARN</a> ([i915#2658]) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@gem_pread@self:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_pread@self.html">SKIP<=
/a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_pread@snoop.html">SKIP=
</a> ([i915#3282]) +24 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@gem_pread@snoop.html">SKI=
P</a> ([i915#3282]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-glk9/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@gem_pxp@display-protected=
-crc.html">SKIP</a> ([i915#4270]) +17 other tests skip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_pxp@display-protected-=
crc.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_pxp@hw-rejects-pxp-buf=
fer.html">TIMEOUT</a> ([i915#12917] / [i915#12964]) +10 other tests timeout=
</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-2/igt@gem_pxp@hw-rejects-pxp-bu=
ffer.html">SKIP</a> ([i915#13398]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_pxp@hw-rejects-pxp-bu=
ffer.html">SKIP</a> ([i915#13398]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@gem_pxp@regular-baseline-=
src-copy-readible.html">SKIP</a> ([i915#4270]) +17 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@gem_pxp@regular-baseline-s=
rc-copy-readible.html">TIMEOUT</a> ([i915#12964]) +2 other tests timeout</l=
i>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-4/igt@gem_pxp@reject-modify-cont=
ext-protection-off-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-bad-handle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@gem_readwrite@read-bad-ha=
ndle.html">SKIP</a> ([i915#3282]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_render_copy@y-tiled-cc=
s-to-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +4 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_render_copy@y-tiled-c=
cs-to-yf-tiled.html">SKIP</a> ([i915#8428]) +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gem_render_copy@yf-tiled-c=
cs-to-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +26 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@gem_set_tiling_vs_blt@til=
ed-to-untiled.html">SKIP</a> ([i915#4079]) +6 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> ([i915#8411]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@gem_set_tiling_vs_gtt.htm=
l">SKIP</a> ([i915#4079]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_set_tiling_vs_pwrite.h=
tml">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_softpin@evict-snoop.h=
tml">SKIP</a> ([i915#4885]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@gem_softpin@evict-snoop.h=
tml">SKIP</a> ([i915#4885]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> ([i915#4885]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@gem_tiled_pread_basic.htm=
l">SKIP</a> ([i915#4079]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_tiled_swapping@non-thr=
eaded.html">FAIL</a> ([i915#12941])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-8/igt@gem_tiled_swapping@non-th=
readed.html">FAIL</a> ([i915#12941])</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@gem_unfence_active_buffers=
.html">SKIP</a> ([i915#4879])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@gem_unfence_active_buffer=
s.html">SKIP</a> ([i915#4879])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_unfence_active_buffer=
s.html">SKIP</a> ([i915#4879])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_userptr_blits@access-=
control.html">SKIP</a> ([i915#3297]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> ([i915#3297]) +10 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-9/igt@gem_userptr_blits@create-=
destroy-unsync.html">SKIP</a> ([i915#3297]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-9/igt@gem_userptr_blits@dmabuf-=
sync.html">SKIP</a> ([i915#3297] / [i915#3323])</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_userptr_blits@dmabuf-s=
ync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@gem_userptr_blits@dmabuf-s=
ync.html">SKIP</a> ([i915#3297] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> ([i915#3297]) +10 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_userptr_blits@dmabuf-=
unsync.html">SKIP</a> ([i915#3297]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@gem_userptr_blits@forbidd=
en-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@gem_userptr_blits@forbidde=
n-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@gem_userptr_blits@forbidd=
en-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@gem_userptr_blits@map-fixe=
d-invalidate-busy.html">SKIP</a> ([i915#3297] / [i915#4880]) +2 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@gem_userptr_blits@relocati=
ons.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@gem_userptr_blits@relocati=
ons.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@gem_userptr_blits@relocat=
ions.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@gem_userptr_blits@sd-probe=
.html">SKIP</a> ([i915#3297] / [i915#4958])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gem_userptr_blits@sd-prob=
e.html">SKIP</a> ([i915#3297] / [i915#4958])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@gem_userptr_blits@unsync-=
overlap.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-glk6/igt@gem_workarounds@suspend-res=
ume-context.html">INCOMPLETE</a> ([i915#13356])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@gen9_exec_parse@batch-inva=
lid-length.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@gen9_exec_parse@batch-zer=
o-length.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@gen9_exec_parse@bb-large.=
html">SKIP</a> ([i915#2527]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@gen9_exec_parse@bb-oversiz=
e.html">SKIP</a> ([i915#2527]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> ([i915#2856]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-10/igt@gen9_exec_parse@unaligne=
d-jump.html">SKIP</a> ([i915#2527] / [i915#2856]) +15 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-2/igt@gen9_exec_parse@unaligned=
-jump.html">SKIP</a> ([i915#2856]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@i915_fb_tiling.html">SKIP=
</a> ([i915#4881]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_16077/shard-glk4/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk4/igt@i9=
15_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_16077/shard-glk4/igt@i915_module_load@load.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-=
glk6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk3/igt@i915_module_load@load.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
6077/shard-glk3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk3/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_16077/shard-glk6/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk2/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_16077/shard-glk6/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard=
-glk2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk2/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
16077/shard-glk1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk1/igt@i915_module=
_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_16077/shard-glk7/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk7/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_16077/shard-glk1/igt@i915_module_load@load.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shar=
d-glk7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk8/igt@i915_module_load@load=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_16077/shard-glk8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk8/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_16077/shard-glk8/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/shard-glk9/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_16077/shard-glk9/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16077/sha=
rd-glk9/igt@i915_module_load@load.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk9/igt@i915_mo=
dule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_143909v3/shard-glk3/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3=
/shard-glk1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk9/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_143909v3/shard-glk3/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/sh=
ard-glk2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk2/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_143909v3/shard-glk3/igt@i915_module_load@load.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard=
-glk4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk4/igt@i915_module_load=
@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_143909v3/shard-glk1/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-gl=
k7/igt@i915_module_load@load.html">DMESG-WARN</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk7/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_143909v3/shard-glk2/igt@i915_module_load@load.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard=
-glk6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk8/igt@i915_module_load=
@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_143909v3/shard-glk7/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-gl=
k1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk6/igt@i915_module_load@lo=
ad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_143909v3/shard-glk8/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk6/=
igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_143909v3/shard-glk2/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_143909v3/shard-glk9/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk8/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_143909v3/shard-glk6/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
143909v3/shard-glk8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk1/igt@i9=
15_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_143909v3/shard-glk9/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143=
909v3/shard-glk3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v3/shard-glk4/igt@i915_=
module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_143909v3/shard-glk7/igt@i915_module_load@load.html">PAS=
S</a>) ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@i915_module_load@reload-w=
ith-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-3/igt@i915_module_load@reload-w=
ith-fault-injection.html">ABORT</a> ([i915#12817] / [i915#9820])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-7/igt@i915_module_load@reload-w=
ith-fault-injection.html">ABORT</a> ([i915#10131])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-7/igt@i915_module_load@resize-ba=
r.html">SKIP</a> ([i915#6412])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@i915_module_load@resize-b=
ar.html">SKIP</a> ([i915#6412])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@i915_module_load@resize-b=
ar.html">SKIP</a> ([i915#7178])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@i915_module_load@resize-b=
ar.html">SKIP</a> ([i915#6412])</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-6/igt@i915_pipe_stress@stress-xr=
gb8888-ytiled.html">SKIP</a> ([i915#7091])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@i915_pipe_stress@stress-x=
rgb8888-ytiled.html">SKIP</a> ([i915#8436])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@i915_pm_freq_api@freq-susp=
end.html">SKIP</a> ([i915#8399]) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-10/igt@i915_pm_freq_api@freq-su=
spend.html">SKIP</a> ([i915#8399]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-4/igt@i915_pm_freq_mult@media-fr=
eq@gt0.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@i915_pm_freq_mult@media-f=
req@gt0.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@i915_pm_freq_mult@media-f=
req@gt0.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@i915_pm_freq_mult@media-f=
req@gt1.html">SKIP</a> ([i915#6590]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@i915_pm_rc6_residency@rc6-=
accuracy.html">FAIL</a> ([i915#12942]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-8/igt@i915_pm_rc6_residency@rc6=
-idle.html">WARN</a> ([i915#2681]) +6 other tests warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@sysfs-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@i915_pm_rpm@sysfs-read.htm=
l">SKIP</a> ([i915#13328])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-glk4/igt@i915_pm_rpm@system-suspend-=
execbuf.html">INCOMPLETE</a> ([i915#12797])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-2/igt@i915_pm_rps@basic-api.htm=
l">SKIP</a> ([i915#11681] / [i915#6621]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-2/igt@i915_pm_rps@min-max-config=
-idle.html">SKIP</a> ([i915#11681] / [i915#6621]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@i915_pm_rps@reset.html">F=
AIL</a> ([i915#8346])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@i915_pm_rps@thresholds-id=
le.html">SKIP</a> ([i915#11681]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@i915_pm_rps@thresholds-idl=
e-park.html">SKIP</a> ([i915#11681]) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@i915_pm_rps@thresholds-id=
le-park.html">SKIP</a> ([i915#11681]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-2/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> ([i915#4387])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> ([i915#4387])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> ([i915#4387])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> ([i915#4387])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> ([i915#8437])</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@i915_power@sanity.html">SK=
IP</a> ([i915#7984])</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-10/igt@i915_query@hwconfig_tabl=
e.html">SKIP</a> ([i915#6245])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@i915_query@hwconfig_table.=
html">SKIP</a> ([i915#6245])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@i915_query@query-topology=
-coherent-slice-mask.html">SKIP</a> ([i915#6188])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@i915_query@query-topology-=
coherent-slice-mask.html">SKIP</a> ([i915#6188])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-6/igt@i915_query@test-query-geom=
etry-subslices.html">SKIP</a> ([i915#5723])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@i915_query@test-query-geo=
metry-subslices.html">SKIP</a> ([i915#5723])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-3/igt@i915_query@test-query-geo=
metry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-snb5/igt@i915_selftest@mock.html">DM=
ESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@i915_selftest@mock.html">=
DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@i915_selftest@mock.html">=
DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-glk3/igt@i915_selftest@mock.html">DM=
ESG-WARN</a> ([i915#1982] / [i915#9311])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-glk3/igt@i915_selftest@mock@memory_r=
egion.html">DMESG-WARN</a> ([i915#9311])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-2/igt@i915_selftest@mock@memory_=
region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@i915_selftest@mock@memory_=
region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@i915_selftest@mock@memory=
_region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@i915_suspend@basic-s3-wit=
hout-i915.html">INCOMPLETE</a> ([i915#7443])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@i915_suspend@basic-s3-wit=
hout-i915.html">SKIP</a> ([i915#6645])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-glk3/igt@i915_suspend@forcewake.html=
">INCOMPLETE</a> ([i915#4817])</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-8/igt@intel_hwmon@hwmon-read.htm=
l">SKIP</a> ([i915#7707])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-7/igt@intel_hwmon@hwmon-read.ht=
ml">SKIP</a> ([i915#7707])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@intel_hwmon@hwmon-read.ht=
ml">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-6/igt@kms_addfb_basic@addfb25-x=
-tiled-mismatch-legacy.html">SKIP</a> ([i915#4212]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@kms_addfb_basic@addfb25-y-=
tiled-small-legacy.html">SKIP</a> ([i915#5190]) +6 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-2/igt@kms_addfb_basic@addfb25-y=
-tiled-small-legacy.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-11/igt@kms_addfb_basic@basic-x-t=
iled-legacy.html">SKIP</a> ([i915#4212]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@kms_addfb_basic@basic-y-t=
iled-legacy.html">SKIP</a> ([i915#4215] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@kms_addfb_basic@bo-too-sm=
all-due-to-tiling.html">SKIP</a> ([i915#4212]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-5/igt@kms_addfb_basic@invalid-sm=
em-bo-on-discrete.html">SKIP</a> ([i915#12454] / [i915#12712])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@kms_addfb_basic@invalid-s=
mem-bo-on-discrete.html">SKIP</a> ([i915#12454] / [i915#12712])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-8/igt@kms_addfb_basic@invalid-s=
mem-bo-on-discrete.html">SKIP</a> ([i915#12454] / [i915#12712])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-=
a-3-4-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@kms_async_flips@async-flip=
-with-page-flip-events-atomic@pipe-b-hdmi-a-3-4-rc-ccs-cc.html">SKIP</a> ([=
i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-d-hdmi-=
a-4-y-rc-ccs-cc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@kms_async_flips@async-fli=
p-with-page-flip-events-atomic@pipe-d-hdmi-a-4-y-rc-ccs-cc.html">SKIP</a> (=
[i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-c=
cs-cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-7/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc.html">SKIP</a> ([i915#8709=
]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-3/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> ([i915#8=
709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-6/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> ([i915#87=
09]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-5/igt@kms_async_flips@invalid-as=
ync-flip.html">SKIP</a> ([i915#12967] / [i915#6228])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@kms_async_flips@invalid-a=
sync-flip.html">SKIP</a> ([i915#12967] / [i915#6228])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@kms_async_flips@invalid-a=
sync-flip-atomic.html">SKIP</a> ([i915#12967])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@kms_async_flips@invalid-as=
ync-flip-atomic.html">SKIP</a> ([i915#12967])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@kms_async_flips@test-curs=
or-atomic.html">SKIP</a> ([i915#10333]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic-plane-damage:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@kms_atomic@atomic-plane-d=
amage.html">DMESG-WARN</a> ([i915#4423]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-4/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing.html">SKIP</a> ([i915#1769] / [i915#3555]=
) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-snb1/igt@kms_atomic_transition@plane=
-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769]=
) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-9/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#176=
9] / [i915#3555]) +1 other test skip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769=
] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i9=
15#3555])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i91=
5#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@kms_atomic_transition@plan=
e-all-modeset-transition@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#5956]) +3 ot=
her tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@kms_atomic_transition@pla=
ne-all-modeset-transition@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#5956]) +1 o=
ther test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing@pipe-b-hdmi-a-2:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-5/igt@kms_atomic_transition@plan=
e-all-transition-fencing@pipe-b-hdmi-a-2.html">DMESG-WARN</a> ([i915#12964]=
) +44 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@kms_big_fb@4-tiled-8bpp-r=
otate-180.html">SKIP</a> ([i915#4538] / [i915#5286]) +22 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@kms_big_fb@4-tiled-addfb.h=
tml">SKIP</a> ([i915#5286]) +25 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@kms_big_fb@4-tiled-addfb.=
html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([i915#5286]) +27 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286]) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@kms_big_fb@linear-64bpp-r=
otate-270.html">SKIP</a> +122 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@kms_big_fb@linear-8bpp-rot=
ate-270.html">SKIP</a> ([i915#3638]) +11 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@kms_big_fb@linear-8bpp-ro=
tate-270.html">SKIP</a> ([i915#3638]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_big_fb@y-tiled-addfb-s=
ize-overflow.html">SKIP</a> ([i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i91=
5#5190]) +51 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@kms_big_fb@yf-tiled-addfb=
-size-offset-overflow.html">SKIP</a> ([i915#6187]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-0.html">SKIP</a> ([i915#4538]) +22 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i9=
15#5190]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-7/igt@kms_ccs@bad-rotation-90-4=
-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +9 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@kms_ccs@bad-rotation-90-4=
-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4=
-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html">SKIP</a> ([i915#6095]) +274 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-3/igt@kms_ccs@ccs-on-another-bo=
-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +329 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_ccs@ccs-on-another-bo-=
yf-tiled-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#10307] / [i915#6095]) +3=
4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@kms_ccs@crc-primary-basic=
-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12805]) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-5/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12805]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12805]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12805]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-8/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12805]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-glk2/igt@kms_ccs@crc-primary-suspend=
-y-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> ([i915#12796]) +3 other t=
ests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-b-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-11/igt@kms_ccs@crc-primary-suspe=
nd-y-tiled-ccs@pipe-b-dp-3.html">SKIP</a> ([i915#6095]) +29 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +4 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-rc-ccs-cc.html">DMESG-FAIL</a> ([i915#12964]) +1 other test=
 dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +6 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#10307] / [i9=
15#6095]) +275 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-=
1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / =
[i915#10434] / [i915#6095]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@kms_ccs@random-ccs-data-4=
-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#6095]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@kms_ccs@random-ccs-data-4=
-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html">SKIP</a> ([i915#6095]) +329 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-=
tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +164 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-5/igt@kms_cdclk@mode-transition.=
html">SKIP</a> ([i915#3742]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@kms_cdclk@mode-transition=
.html">SKIP</a> ([i915#3742]) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@kms_cdclk@mode-transition=
.html">SKIP</a> ([i915#3742]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-8/igt@kms_cdclk@mode-transition=
@pipe-b-edp-1.html">SKIP</a> ([i915#7213] / [i915#9010]) +5 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-1.html">SKIP</a> ([i915#11616] / [i915#7213]) +5 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@kms_cdclk@plane-scaling@p=
ipe-c-edp-1.html">SKIP</a> ([i915#4087]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@kms_cdclk@plane-scaling@pi=
pe-d-hdmi-a-1.html">SKIP</a> ([i915#4087]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@kms_chamelium_audio@dp-au=
dio.html">SKIP</a> ([i915#11151] / [i915#7828]) +45 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-18/igt@kms_chamelium_audio@hdmi-=
audio-edid.html">SKIP</a> ([i915#11151] / [i915#7828]) +36 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-11/igt@kms_chamelium_color@degam=
ma.html">SKIP</a> +55 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-1/igt@kms_chamelium_frames@dp-cr=
c-fast.html">SKIP</a> ([i915#11151] / [i915#7828]) +45 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@kms_chamelium_hpd@dp-hpd-=
for-each-pipe.html">SKIP</a> ([i915#11151] / [i915#7828]) +48 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-after-suspend:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_chamelium_hpd@vga-hpd-=
after-suspend.html">SKIP</a> ([i915#11151] / [i915#7828]) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-=
fast.html">SKIP</a> ([i915#11151] / [i915#7828]) +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd=
-with-enabled-mode.html">SKIP</a> ([i915#11151] / [i915#7828]) +2 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-6/igt@kms_color@deep-color.html=
">SKIP</a> ([i915#3555] / [i915#9979])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@kms_content_protection@at=
omic-dpms.html">FAIL</a> ([i915#7173]) +1 other test fail</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> ([i915#7118] / [i915#9424]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_content_protection@con=
tent-type-change.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-8/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299]) +2 other tests s=
kip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> ([i915#3299]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-8/igt@kms_content_protection@dp-=
mst-lic-type-1.html">SKIP</a> ([i915#3299]) +3 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-7/igt@kms_content_protection@dp-=
mst-lic-type-1.html">SKIP</a> ([i915#3116]) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@kms_content_protection@dp=
-mst-lic-type-1.html">SKIP</a> ([i915#3299]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-10/igt@kms_content_protection@l=
ic-type-0.html">SKIP</a> ([i915#6944] / [i915#9424]) +3 other tests skip</l=
i>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-2/igt@kms_content_protection@li=
c-type-0.html">SKIP</a> ([i915#6944] / [i915#9424]) +6 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@kms_content_protection@lic=
-type-0.html">SKIP</a> ([i915#9424]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@kms_content_protection@li=
c-type-1.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-5/igt@kms_content_protection@mei=
-interface.html">SKIP</a> ([i915#9424]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-13/igt@kms_content_protection@me=
i-interface.html">SKIP</a> ([i915#9433])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-3/igt@kms_content_protection@me=
i-interface.html">SKIP</a> ([i915#8063] / [i915#9433])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-2/igt@kms_content_protection@srm=
.html">SKIP</a> ([i915#7118])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-1/igt@kms_content_protection@srm=
.html">SKIP</a> ([i915#7118])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-17/igt@kms_content_protection@sr=
m.html">SKIP</a> ([i915#7116])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-5/igt@kms_content_protection@sr=
m.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@kms_content_protection@sr=
m.html">SKIP</a> ([i915#6944])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@kms_content_protection@typ=
e1.html">SKIP</a> ([i915#7118] / [i915#9424]) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-14/igt@kms_content_protection@ty=
pe1.html">SKIP</a> ([i915#7116] / [i915#9424]) +4 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-7/igt@kms_content_protection@ty=
pe1.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) =
+4 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@kms_content_protection@ty=
pe1.html">SKIP</a> ([i915#3555] / [i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-4/igt@kms_cursor_crc@cursor-ons=
creen-256x85.html">SKIP</a> ([i915#8814]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-1/igt@kms_cursor_crc@cursor-ons=
creen-32x10.html">SKIP</a> ([i915#3555] / [i915#8814]) +12 other tests skip=
</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_cursor_crc@cursor-onsc=
reen-32x10.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-2/igt@kms_cursor_crc@cursor-ons=
creen-512x512.html">SKIP</a> ([i915#13049]) +8 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@kms_cursor_crc@cursor-ons=
creen-512x512.html">SKIP</a> ([i915#13049]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-tglu-1/igt@kms_cursor_crc@cursor-ons=
creen-max-size.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-2/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> ([i915#13049]) +7 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg1-12/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> ([i915#13049]) +8 other tests skip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-4/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> ([i915#13049]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-10/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a> ([i915#3555]) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-glk7/igt@kms_cursor_crc@cursor-suspe=
nd.html">INCOMPLETE</a> ([i915#12358] / [i915#7882])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-glk7/igt@kms_cursor_crc@cursor-suspe=
nd@pipe-a-hdmi-a-1.html">INCOMPLETE</a> ([i915#12358])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-dg2-9/igt@kms_cursor_legacy@2x-curso=
r-vs-flip-atomic.html">SKIP</a> ([i915#13046] / [i915#5354]) +2 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-legacy.html">SKIP</a> +97 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-rkl-3/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103]) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_143909v3/shard-mtlp-5/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4213]) +5 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; [SKIP][450] ([i915#4103] / [</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3491666266962637928==--
