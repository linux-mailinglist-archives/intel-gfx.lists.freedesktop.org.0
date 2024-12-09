Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7099EA046
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 21:31:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1E2710E246;
	Mon,  9 Dec 2024 20:31:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DC0810E246;
 Mon,  9 Dec 2024 20:31:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0132542241924848588=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_Revert_=22lockdep=3A_Ena?=
 =?utf-8?q?ble_PROVE=5FRAW=5FLOCK=5FNESTING_with_PROVE=5FLOCKING=2E=22?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Dec 2024 20:31:20 -0000
Message-ID: <173377628061.566546.6988949648215514095@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241209135602.2716023-1-luciano.coelho@intel.com>
In-Reply-To: <20241209135602.2716023-1-luciano.coelho@intel.com>
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

--===============0132542241924848588==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "lockdep: Enable PROVE_RAW_LOCK_NESTING with PROVE_LOCKING."
URL   : https://patchwork.freedesktop.org/series/142298/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15807_full -> Patchwork_142298v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_142298v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142298v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  Additional (1): shard-glk-0 
  Missing    (1): pig-kbl-iris 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142298v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@hostile:
    - shard-dg1:          NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@gem_ctx_persistence@hostile.html

  * igt@gem_eio@kms:
    - shard-tglu:         NOTRUN -> [DMESG-WARN][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-10/igt@gem_eio@kms.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-rkl:          NOTRUN -> [SKIP][3] +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-9/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4-rc-ccs-cc (NEW):
    - shard-dg2:          NOTRUN -> [SKIP][5] +12 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4-rc-ccs-cc.html

  * igt@kms_async_flips@test-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@kms_async_flips@test-cursor-atomic.html

  * igt@perf_pmu@rc6-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][7] +2 other tests incomplete
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk4/igt@perf_pmu@rc6-suspend.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-3-y-rc-ccs-cc}:
    - shard-dg1:          NOTRUN -> [SKIP][8] +7 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-3-y-rc-ccs-cc.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15807_full and Patchwork_142298v1_full:

### New IGT tests (31) ###

  * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.77] s

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-1-4:
    - Statuses : 1 pass(s)
    - Exec time: [2.14] s

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-1-4-mc-ccs:
    - Statuses : 1 skip(s)
    - Exec time: [0.21] s

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-1-4-rc-ccs:
    - Statuses : 1 skip(s)
    - Exec time: [0.17] s

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-1-4-rc-ccs-cc:
    - Statuses : 1 skip(s)
    - Exec time: [0.13] s

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-1-4:
    - Statuses : 1 pass(s)
    - Exec time: [2.13] s

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-1-4-mc-ccs:
    - Statuses : 1 skip(s)
    - Exec time: [0.17] s

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-1-4-rc-ccs:
    - Statuses : 1 skip(s)
    - Exec time: [0.15] s

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-1-4-rc-ccs-cc:
    - Statuses : 1 skip(s)
    - Exec time: [0.11] s

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4:
    - Statuses : 1 pass(s)
    - Exec time: [2.13] s

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4-mc-ccs:
    - Statuses : 1 skip(s)
    - Exec time: [0.17] s

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4-rc-ccs:
    - Statuses : 1 skip(s)
    - Exec time: [0.15] s

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4-rc-ccs-cc:
    - Statuses : 1 skip(s)
    - Exec time: [0.11] s

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-d-hdmi-a-1-4:
    - Statuses : 1 pass(s)
    - Exec time: [2.12] s

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-d-hdmi-a-1-4-mc-ccs:
    - Statuses : 1 skip(s)
    - Exec time: [0.17] s

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-d-hdmi-a-1-4-rc-ccs:
    - Statuses : 1 skip(s)
    - Exec time: [0.15] s

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-d-hdmi-a-1-4-rc-ccs-cc:
    - Statuses : 1 skip(s)
    - Exec time: [0.12] s

  * igt@kms_async_flips@invalid-async-flip-atomic@pipe-a-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.36] s

  * igt@kms_async_flips@invalid-async-flip-atomic@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.41] s

  * igt@kms_async_flips@invalid-async-flip-atomic@pipe-b-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.10, 0.30] s

  * igt@kms_async_flips@invalid-async-flip-atomic@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_async_flips@invalid-async-flip-atomic@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.29] s

  * igt@kms_async_flips@invalid-async-flip-atomic@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_async_flips@invalid-async-flip-atomic@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_async_flips@test-time-stamp-atomic@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_async_flips@test-time-stamp-atomic@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.37] s

  * igt@kms_async_flips@test-time-stamp-atomic@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_async_flips@test-time-stamp-atomic@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_async_flips@test-time-stamp-atomic@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_async_flips@test-time-stamp-atomic@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.77] s

  * igt@kms_async_flips@test-time-stamp-atomic@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_142298v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-dg1:          NOTRUN -> [SKIP][9] ([i915#8411]) +1 other test skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@crc32:
    - shard-tglu:         NOTRUN -> [SKIP][10] ([i915#6230])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-8/igt@api_intel_bb@crc32.html

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][11] ([i915#8411]) +3 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@api_intel_bb@object-reloc-purge-cache.html
    - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#8411]) +1 other test skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@debugfs_test@basic-hwmon:
    - shard-mtlp:         NOTRUN -> [SKIP][13] ([i915#9318])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@debugfs_test@basic-hwmon.html
    - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#9318])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@debugfs_test@basic-hwmon.html
    - shard-tglu:         NOTRUN -> [SKIP][15] ([i915#9318])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-3/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@cold-reset-bound:
    - shard-tglu:         NOTRUN -> [SKIP][16] ([i915#11078])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-8/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#11078])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-2/igt@device_reset@unbind-cold-reset-rebind.html
    - shard-dg1:          NOTRUN -> [SKIP][18] ([i915#11078])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@busy-check-all@bcs0:
    - shard-dg1:          NOTRUN -> [SKIP][19] ([i915#8414]) +29 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@drm_fdinfo@busy-check-all@bcs0.html

  * igt@drm_fdinfo@busy-hang@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][20] ([i915#8414]) +48 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@drm_fdinfo@busy-hang@rcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#8414]) +43 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html

  * igt@fbdev@pan:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][22] ([i915#4423]) +2 other tests dmesg-warn
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@fbdev@pan.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#7697])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-6/igt@gem_basic@multigpu-create-close.html
    - shard-dg1:          NOTRUN -> [SKIP][24] ([i915#7697]) +1 other test skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_basic@multigpu-create-close.html
    - shard-tglu:         NOTRUN -> [SKIP][25] ([i915#7697]) +1 other test skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-5/igt@gem_basic@multigpu-create-close.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3936])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-11/igt@gem_busy@semaphore.html
    - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#3936])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@gem_busy@semaphore.html

  * igt@gem_caching@writes:
    - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#4873]) +2 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@gem_caching@writes.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#3555] / [i915#9323]) +1 other test skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_ccs@block-copy-compressed.html
    - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#3555] / [i915#9323])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-tglu:         NOTRUN -> [SKIP][31] ([i915#3555] / [i915#9323]) +2 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-9/igt@gem_ccs@ctrl-surf-copy.html
    - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#3555] / [i915#9323]) +1 other test skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#9323]) +2 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#13008])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_ccs@large-ctrl-surf-copy.html
    - shard-tglu:         NOTRUN -> [SKIP][35] ([i915#13008])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-7/igt@gem_ccs@large-ctrl-surf-copy.html
    - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#13008])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#9323]) +1 other test skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@gem_ccs@suspend-resume.html
    - shard-dg1:          NOTRUN -> [SKIP][38] ([i915#9323]) +2 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@gem_ccs@suspend-resume.html
    - shard-tglu:         NOTRUN -> [SKIP][39] ([i915#9323]) +2 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@gem_ccs@suspend-resume.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#7697]) +2 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@gem_close_race@multigpu-basic-process.html
    - shard-tglu-1:       NOTRUN -> [SKIP][41] ([i915#7697])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#7697]) +2 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu-1:       NOTRUN -> [SKIP][43] ([i915#6335])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_persistence@hang:
    - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#8555]) +5 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#8555]) +4 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#8555]) +3 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_persistence@hostile:
    - shard-rkl:          NOTRUN -> [FAIL][47] ([i915#11980] / [i915#12580])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@gem_ctx_persistence@hostile.html
    - shard-mtlp:         NOTRUN -> [FAIL][48] ([i915#11980] / [i915#12580])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#5882]) +7 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#5882]) +6 other tests skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-snb:          NOTRUN -> [SKIP][51] ([i915#1099]) +6 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-snb2/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#280]) +2 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-4/igt@gem_ctx_sseu@engines.html
    - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#280]) +2 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-4/igt@gem_ctx_sseu@engines.html
    - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#280]) +2 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#280]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@gem_ctx_sseu@invalid-sseu.html
    - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#280]) +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@hibernate:
    - shard-rkl:          NOTRUN -> [ABORT][57] ([i915#7975] / [i915#8213])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-2/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#4771]) +2 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@gem_exec_balancer@bonded-dual.html
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#4771])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#4812]) +6 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#4812]) +10 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#4771]) +2 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-1/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#4036])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_exec_balancer@invalid-bonds.html
    - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#4036])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#4525]) +4 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@gem_exec_balancer@parallel-balancer.html
    - shard-tglu-1:       NOTRUN -> [SKIP][66] ([i915#4525])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-tglu:         NOTRUN -> [SKIP][67] ([i915#4525]) +4 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-5/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_capture@capture:
    - shard-mtlp:         NOTRUN -> [FAIL][68] ([i915#11965]) +1 other test fail
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@gem_exec_capture@capture.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#6334]) +2 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@gem_exec_capture@capture-invisible.html
    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#6334]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-5/igt@gem_exec_capture@capture-invisible.html
    - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#6334]) +2 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@gem_exec_capture@capture-invisible.html
    - shard-tglu:         NOTRUN -> [SKIP][72] ([i915#6334]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-5/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#6334]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#6344])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-9/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fence@submit67:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#4812]) +7 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#3539])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#3539]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#3539] / [i915#4852]) +7 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@gem_exec_flush@basic-wb-ro-before-default.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#3539] / [i915#4852]) +6 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#5107])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@gem_exec_params@rsvd2-dirt.html
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#5107])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-active:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#3281]) +35 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-3/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#3281]) +39 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#3281]) +38 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@gem_exec_reloc@basic-wc-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#3281]) +29 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@gem_exec_reloc@basic-write-gtt-active.html

  * igt@gem_exec_schedule@deep@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#4537])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@gem_exec_schedule@deep@rcs0.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#4537] / [i915#4812]) +4 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@gem_exec_schedule@preempt-queue-chain.html
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#4537] / [i915#4812]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#7276])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][90] ([i915#11441]) +1 other test incomplete
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg2:          NOTRUN -> [ABORT][91] ([i915#7975] / [i915#8213]) +1 other test abort
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-10/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#4860]) +4 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#4860]) +6 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#4860]) +6 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#2190])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@gem_huc_copy@huc-copy.html
    - shard-tglu-1:       NOTRUN -> [SKIP][96] ([i915#2190])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#4613] / [i915#7582])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-7/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@basic:
    - shard-tglu-1:       NOTRUN -> [SKIP][98] ([i915#4613]) +2 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#4613]) +15 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-4/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#4613]) +17 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#4613]) +10 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-glk:          NOTRUN -> [SKIP][102] ([i915#4613]) +8 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk5/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          NOTRUN -> [TIMEOUT][103] ([i915#5493]) +1 other test timeout
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#12193]) +2 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#4565]) +2 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html

  * igt@gem_media_fill@media-fill:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#8289])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@gem_media_fill@media-fill.html
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#8289])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@gem_media_fill@media-fill.html

  * igt@gem_media_vme:
    - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#284])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@gem_media_vme.html
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#284])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@gem_media_vme.html
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#284])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-6/igt@gem_media_vme.html
    - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#284])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_media_vme.html
    - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#284])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-5/igt@gem_media_vme.html

  * igt@gem_mmap@bad-size:
    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#4083]) +21 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@gem_mmap@bad-size.html

  * igt@gem_mmap_gtt@basic-small-bo:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#4077]) +40 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@gem_mmap_gtt@basic-small-bo.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#4077]) +54 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gem_mmap_offset@clear-via-pagefault:
    - shard-mtlp:         NOTRUN -> [ABORT][116] ([i915#10729]) +1 other test abort
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@gem_mmap_offset@clear-via-pagefault.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#4083]) +14 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
    - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#4083]) +12 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html

  * igt@gem_partial_pwrite_pread@reads-snoop:
    - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#3282]) +16 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@gem_partial_pwrite_pread@reads-snoop.html

  * igt@gem_pread@exhaustion:
    - shard-tglu-1:       NOTRUN -> [WARN][120] ([i915#2658])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gem_pread@exhaustion.html
    - shard-snb:          NOTRUN -> [WARN][121] ([i915#2658]) +1 other test warn
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-snb7/igt@gem_pread@exhaustion.html

  * igt@gem_pread@snoop:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#3282]) +15 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-5/igt@gem_pread@snoop.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#3282]) +21 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-6/igt@gem_pwrite@basic-exhaustion.html
    - shard-tglu:         NOTRUN -> [WARN][124] ([i915#2658])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-rkl:          NOTRUN -> [TIMEOUT][125] ([i915#12964]) +2 other tests timeout
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#4270]) +12 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-3/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#13033])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-10/igt@gem_pxp@hw-rejects-pxp-buffer.html
    - shard-mtlp:         NOTRUN -> [SKIP][128] ([i915#13033])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-tglu-1:       NOTRUN -> [SKIP][129] ([i915#13033])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-rkl:          NOTRUN -> [TIMEOUT][130] ([i915#12917] / [i915#12964]) +9 other tests timeout
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#4270]) +9 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_readwrite@read-bad-handle:
    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#3282]) +22 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@gem_readwrite@read-bad-handle.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#5190] / [i915#8428]) +22 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#8428]) +25 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#4079]) +4 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#8411]) +4 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#4079]) +2 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#4885])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-3/igt@gem_softpin@evict-snoop-interruptible.html
    - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#4885])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#4077]) +38 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_tiled_pread_pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#4079]) +5 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@gem_tiled_pread_pwrite.html

  * igt@gem_unfence_active_buffers:
    - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#4879])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-7/igt@gem_unfence_active_buffers.html
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#4879])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-1/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#3297]) +7 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@gem_userptr_blits@create-destroy-unsync.html
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#3297]) +6 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html
    - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#3297]) +6 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#3297] / [i915#3323])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-9/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#3282] / [i915#3297])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-5/igt@gem_userptr_blits@forbidden-operations.html
    - shard-mtlp:         NOTRUN -> [SKIP][149] ([i915#3282] / [i915#3297])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#3297]) +5 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#3297] / [i915#4880])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@relocations:
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#3281] / [i915#3297])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@gem_userptr_blits@relocations.html
    - shard-dg1:          NOTRUN -> [SKIP][153] ([i915#3281] / [i915#3297])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#3297] / [i915#4958])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@gem_userptr_blits@sd-probe.html
    - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#3297] / [i915#4958])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#3297]) +10 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-7/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-tglu-1:       NOTRUN -> [SKIP][157] ([i915#3297]) +1 other test skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-dg2:          NOTRUN -> [SKIP][158] +40 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#2856]) +13 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#2527]) +13 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#2527]) +8 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#2856]) +13 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-3/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-tglu-1:       NOTRUN -> [SKIP][163] ([i915#2527] / [i915#2856]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gen9_exec_parse@secure-batches.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#2527] / [i915#2856]) +13 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-10/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_fb_tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#4881]) +1 other test skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@i915_fb_tiling.html
    - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#4881])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@i915_fb_tiling.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          NOTRUN -> [ABORT][167] ([i915#9820])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-snb:          [PASS][168] -> [ABORT][169] ([i915#9820])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15807/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         NOTRUN -> [ABORT][170] ([i915#10131] / [i915#9820])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          NOTRUN -> [ABORT][171] ([i915#9820])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#6412])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@i915_module_load@resize-bar.html
    - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#7178])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@i915_module_load@resize-bar.html
    - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#6412])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@i915_module_load@resize-bar.html
    - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#6412])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@i915_module_load@resize-bar.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-mtlp:         NOTRUN -> [SKIP][176] ([i915#8436])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#8399]) +2 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-8/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#8399]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-4/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-tglu-1:       NOTRUN -> [WARN][179] ([i915#2681]) +4 other tests warn
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#11681] / [i915#6621]) +2 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@i915_pm_rps@basic-api.html
    - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#11681] / [i915#6621]) +2 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@i915_pm_rps@basic-api.html
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#11681] / [i915#6621])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@thresholds-idle:
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#11681]) +2 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@i915_pm_rps@thresholds-idle.html

  * igt@i915_pm_rps@thresholds-park:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#11681]) +2 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@i915_pm_rps@thresholds-park.html
    - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#11681]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@i915_pm_rps@thresholds-park.html

  * igt@i915_pm_rps@waitboost:
    - shard-mtlp:         NOTRUN -> [FAIL][186] ([i915#8346]) +1 other test fail
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@i915_pm_rps@waitboost.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#4387])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@i915_pm_sseu@full-enable.html
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#4387])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
    - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#4387])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@i915_pm_sseu@full-enable.html
    - shard-tglu:         NOTRUN -> [SKIP][190] ([i915#4387])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-5/igt@i915_pm_sseu@full-enable.html
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#8437])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@i915_pm_sseu@full-enable.html

  * igt@i915_power@sanity:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#7984])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-4/igt@i915_power@sanity.html

  * igt@i915_query@hwconfig_table:
    - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#6245])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@i915_query@hwconfig_table.html
    - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#6245])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-10/igt@i915_query@hwconfig_table.html
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#6245])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-2/igt@i915_query@hwconfig_table.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#5723])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@i915_query@test-query-geometry-subslices.html
    - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#5723])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@i915_query@test-query-geometry-subslices.html
    - shard-tglu:         NOTRUN -> [SKIP][198] ([i915#5723])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-4/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@live@sanitycheck:
    - shard-tglu:         NOTRUN -> [ABORT][199] ([i915#13010]) +1 other test abort
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-7/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - shard-tglu-1:       NOTRUN -> [ABORT][200] ([i915#13010])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-mtlp:         NOTRUN -> [SKIP][201] ([i915#6645])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          NOTRUN -> [INCOMPLETE][202] ([i915#4817]) +1 other test incomplete
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk1/igt@i915_suspend@forcewake.html

  * igt@intel_hwmon@hwmon-read:
    - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#7707])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-5/igt@intel_hwmon@hwmon-read.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#7707]) +1 other test skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-9/igt@intel_hwmon@hwmon-write.html
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#7707]) +1 other test skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][206] ([i915#4212]) +6 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#5190]) +6 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#5190])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-7/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][209] ([i915#4215])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#4215] / [i915#5190])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#4212]) +3 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-1/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
    - shard-dg1:          NOTRUN -> [SKIP][212] ([i915#4212]) +4 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu:         NOTRUN -> [SKIP][213] ([i915#12454] / [i915#12712])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
    - shard-mtlp:         NOTRUN -> [SKIP][214] ([i915#12454] / [i915#12712])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-7/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#12454] / [i915#12712])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc:
    - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#8709]) +11 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][217] ([i915#8709]) +7 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#8709]) +3 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][219] ([i915#8709]) +7 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#6228])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html
    - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#6228])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-7/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_async_flips@test-cursor:
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#10333])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@kms_async_flips@test-cursor.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#3555])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#9531])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#9531])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#9531])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-tglu:         NOTRUN -> [SKIP][227] ([i915#9531])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#1769] / [i915#3555]) +1 other test skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-snb:          NOTRUN -> [SKIP][229] ([i915#1769])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-snb7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-tglu:         NOTRUN -> [SKIP][230] ([i915#1769] / [i915#3555]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#1769] / [i915#3555])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-rkl:          NOTRUN -> [SKIP][232] ([i915#1769] / [i915#3555])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-dg1:          NOTRUN -> [SKIP][233] ([i915#1769] / [i915#3555])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][234] ([i915#5286]) +2 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][235] ([i915#5286]) +26 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-7/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#5286]) +20 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@kms_big_fb@4-tiled-addfb.html
    - shard-dg1:          NOTRUN -> [SKIP][237] ([i915#5286]) +1 other test skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][238] ([i915#4538] / [i915#5286]) +16 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][239] +102 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#3638]) +12 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][241] ([i915#3638]) +10 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#4538] / [i915#5190]) +33 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-mtlp:         NOTRUN -> [SKIP][243] ([i915#6187]) +2 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][244] ([i915#4538]) +16 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][245] ([i915#12313]) +5 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-10/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][246] ([i915#12313]) +8 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][247] ([i915#6095]) +29 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#12313]) +4 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
    - shard-rkl:          NOTRUN -> [SKIP][249] ([i915#12313]) +4 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
    - shard-dg1:          NOTRUN -> [SKIP][250] ([i915#12313]) +3 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][251] ([i915#6095]) +247 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#10307] / [i915#6095]) +221 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][253] ([i915#6095]) +304 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][254] ([i915#4423] / [i915#6095]) +1 other test skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          [PASS][255] -> [DMESG-WARN][256] ([i915#12964]) +2 other tests dmesg-warn
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15807/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][257] ([i915#12805])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][258] ([i915#12805])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
    - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#12805])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#6095]) +160 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#6095]) +24 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-10/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-4.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][262] ([i915#12313]) +1 other test skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][263] ([i915#6095]) +254 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][265] +623 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk1/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition:
    - shard-mtlp:         NOTRUN -> [SKIP][266] ([i915#7213] / [i915#9010]) +5 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@kms_cdclk@mode-transition.html
    - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#11616] / [i915#7213]) +1 other test skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg1:          NOTRUN -> [SKIP][268] ([i915#3742]) +2 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_cdclk@mode-transition-all-outputs.html
    - shard-tglu:         NOTRUN -> [SKIP][269] ([i915#3742]) +1 other test skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-7/igt@kms_cdclk@mode-transition-all-outputs.html
    - shard-rkl:          NOTRUN -> [SKIP][270] ([i915#3742])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#7213]) +3 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_chamelium_audio@dp-audio:
    - shard-dg1:          NOTRUN -> [SKIP][272] ([i915#4423] / [i915#7828])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@kms_chamelium_audio@dp-audio.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#7828]) +32 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_hpd@dp-hpd:
    - shard-tglu-1:       NOTRUN -> [SKIP][274] ([i915#7828]) +2 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd.html

  * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][275] ([i915#7828]) +39 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
    - shard-tglu:         NOTRUN -> [SKIP][276] ([i915#7828]) +41 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
    - shard-dg1:          NOTRUN -> [SKIP][277] ([i915#7828]) +27 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][278] ([i915#7828]) +30 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_color@deep-color:
    - shard-tglu:         NOTRUN -> [SKIP][279] ([i915#3555] / [i915#9979])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-9/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic:
    - shard-dg1:          NOTRUN -> [SKIP][280] ([i915#7116] / [i915#9424]) +2 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][281] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) +4 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-8/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][282] ([i915#3116] / [i915#3299]) +3 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-3/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][283] ([i915#3299]) +1 other test skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-10/igt@kms_content_protection@dp-mst-lic-type-1.html
    - shard-rkl:          NOTRUN -> [SKIP][284] ([i915#3116]) +1 other test skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg1:          NOTRUN -> [SKIP][285] ([i915#3299])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][286] ([i915#3299]) +2 other tests skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][287] ([i915#6944] / [i915#9424])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-3/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          NOTRUN -> [SKIP][288] ([i915#9424]) +1 other test skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-4/igt@kms_content_protection@mei-interface.html
    - shard-dg1:          NOTRUN -> [SKIP][289] ([i915#9424]) +1 other test skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@kms_content_protection@mei-interface.html
    - shard-mtlp:         NOTRUN -> [SKIP][290] ([i915#8063] / [i915#9433])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][291] ([i915#7118])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-11/igt@kms_content_protection@srm.html
    - shard-rkl:          NOTRUN -> [SKIP][292] ([i915#7118])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-5/igt@kms_content_protection@srm.html
    - shard-dg1:          NOTRUN -> [SKIP][293] ([i915#7116])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@kms_content_protection@srm.html
    - shard-tglu:         NOTRUN -> [SKIP][294] ([i915#6944] / [i915#7116] / [i915#7118])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-2/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#7118] / [i915#9424]) +2 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@kms_content_protection@type1.html
    - shard-rkl:          NOTRUN -> [SKIP][296] ([i915#7118] / [i915#9424]) +2 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-2/igt@kms_content_protection@type1.html
    - shard-mtlp:         NOTRUN -> [SKIP][297] ([i915#3555] / [i915#6944] / [i915#9424])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-mtlp:         NOTRUN -> [SKIP][298] ([i915#6944] / [i915#9424]) +3 other tests skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][299] ([i915#13049]) +7 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][300] ([i915#3555] / [i915#8814]) +10 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][301] ([i915#3555]) +21 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][302] ([i915#13049]) +8 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg1:          NOTRUN -> [SKIP][303] ([i915#13049]) +4 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][304] ([i915#13049]) +6 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][305] ([i915#8814]) +13 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rapid-movement-64x21.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-dg2:          NOTRUN -> [SKIP][306] ([i915#3555]) +23 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][307] ([i915#13049]) +7 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][308] ([i915#12358] / [i915#7882])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk2/igt@kms_cursor_crc@cursor-suspend.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][309] ([i915#12358])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk2/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][310] ([i915#4213]) +2 other tests skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-dg1:          NOTRUN -> [SKIP][311] ([i915#4103] / [i915#4213]) +1 other test skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
    - shard-dg2:          NOTRUN -> [SKIP][312] ([i915#4103] / [i915#4213])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-mtlp:         NOTRUN -> [SKIP][313] ([i915#9809]) +18 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-mtlp:         NOTRUN -> [SKIP][314] ([i915#9067])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-dg2:          NOTRUN -> [SKIP][315] ([i915#9067])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-rkl:          NOTRUN -> [SKIP][316] ([i915#9067])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-dg1:          NOTRUN -> [SKIP][317] ([i915#9067])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-tglu:         NOTRUN -> [SKIP][318] ([i915#9067])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-rkl:          NOTRUN -> [SKIP][319] ([i915#4103])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-tglu:         NOTRUN -> [SKIP][320] ([i915#4103]) +3 other tests skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-9/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][321] ([i915#9833])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
    - shard-rkl:          NOTRUN -> [SKIP][322] ([i915#9723])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
    - shard-dg1:          NOTRUN -> [SKIP][323] ([i915#9723])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
    - shard-mtlp:         NOTRUN -> [SKIP][324] ([i915#9833])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-tglu:         NOTRUN -> [SKIP][325] ([i915#9723]) +1 other test skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-8/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][326] ([i915#3555] / [i915#8827])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          NOTRUN -> [SKIP][327] ([i915#8588])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@kms_display_modes@mst-extended-mode-negative.html
    - shard-tglu-1:       NOTRUN -> [SKIP][328] ([i915#8588])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_display_modes@mst-extended-mode-negative.html
    - shard-mtlp:         NOTRUN -> [SKIP][329] ([i915#8588])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-rkl:          NOTRUN -> [SKIP][330] ([i915#3555] / [i915#3804])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
    - shard-tglu:         NOTRUN -> [SKIP][331] ([i915#1769] / [i915#3555] / [i915#3804])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][332] ([i915#3804])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][333] ([i915#3804])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_aux_dev:
    - shard-dg2:          NOTRUN -> [SKIP][334] ([i915#1257])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-3/igt@kms_dp_aux_dev.html
    - shard-rkl:          NOTRUN -> [SKIP][335] ([i915#1257])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-4/igt@kms_dp_aux_dev.html
    - shard-tglu:         NOTRUN -> [SKIP][336] ([i915#1257])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-10/igt@kms_dp_aux_dev.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-rkl:          NOTRUN -> [SKIP][337] ([i915#12402])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@kms_dp_linktrain_fallback@dp-fallback.html
    - shard-dg1:          NOTRUN -> [SKIP][338] ([i915#12402])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@kms_dp_linktrain_fallback@dp-fallback.html
    - shard-tglu:         NOTRUN -> [SKIP][339] ([i915#12402])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-4/igt@kms_dp_linktrain_fallback@dp-fallback.html
    - shard-mtlp:         NOTRUN -> [SKIP][340] ([i915#12402])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][341] ([i915#8812]) +1 other test skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@kms_draw_crc@draw-method-mmap-gtt.html
    - shard-dg2:          NOTRUN -> [SKIP][342] ([i915#8812])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> [SKIP][343] ([i915#3840] / [i915#9688])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-rkl:          NOTRUN -> [SKIP][344] ([i915#3840])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-dg1:          NOTRUN -> [SKIP][345] ([i915#3840]) +1 other test skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-tglu:         NOTRUN -> [SKIP][346] ([i915#3840]) +1 other test skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-mtlp:         NOTRUN -> [SKIP][347] ([i915#3840] / [i915#9688])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][348] ([i915#3840])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
    - shard-mtlp:         NOTRUN -> [SKIP][349] ([i915#3840])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][350] ([i915#3555] / [i915#3840]) +2 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-mtlp:         NOTRUN -> [SKIP][351] ([i915#3555] / [i915#3840]) +2 other tests skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-7/igt@kms_dsc@dsc-with-bpc-formats.html
    - shard-dg2:          NOTRUN -> [SKIP][352] ([i915#3555] / [i915#3840]) +2 other tests skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-1/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg1:          NOTRUN -> [SKIP][353] ([i915#3555] / [i915#3840]) +1 other test skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          NOTRUN -> [SKIP][354] ([i915#3555] / [i915#3840]) +2 other tests skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][355] ([i915#9878])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk5/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          NOTRUN -> [SKIP][356] ([i915#3469]) +1 other test skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-1/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][357] ([i915#3955]) +1 other test skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
    - shard-dg1:          NOTRUN -> [SKIP][358] ([i915#3469]) +1 other test skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@kms_fbcon_fbt@psr-suspend.html
    - shard-tglu:         NOTRUN -> [SKIP][359] ([i915#3469]) +1 other test skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][360] ([i915#2065] / [i915#4854])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-7/igt@kms_feature_discovery@chamelium.html
    - shard-mtlp:         NOTRUN -> [SKIP][361] ([i915#4854])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@kms_feature_discovery@chamelium.html
    - shard-dg1:          NOTRUN -> [SKIP][362] ([i915#4854])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-mtlp:         NOTRUN -> [SKIP][363] ([i915#1839]) +1 other test skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@kms_feature_discovery@display-2x.html
    - shard-dg2:          NOTRUN -> [SKIP][364] ([i915#1839]) +1 other test skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-tglu-1:       NOTRUN -> [SKIP][365] ([i915#1839])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-rkl:          NOTRUN -> [SKIP][366] ([i915#1839]) +1 other test skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-4/igt@kms_feature_discovery@display-4x.html
    - shard-tglu:         NOTRUN -> [SKIP][367] ([i915#1839]) +2 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-10/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@psr1:
    - shard-dg2:          NOTRUN -> [SKIP][368] ([i915#658])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-10/igt@kms_feature_discovery@psr1.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg1:          NOTRUN -> [SKIP][369] ([i915#658]) +1 other test skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@kms_feature_discovery@psr2.html
    - shard-tglu:         NOTRUN -> [SKIP][370] ([i915#658])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-3/igt@kms_feature_discovery@psr2.html
    - shard-rkl:          NOTRUN -> [SKIP][371] ([i915#658])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@kms_feature_discovery@psr2.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          NOTRUN -> [SKIP][372] ([i915#4881])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-10/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][373] ([i915#3637]) +27 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-9/igt@kms_flip@2x-blocking-absolute-wf_vblank.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-glk:          NOTRUN -> [FAIL][374] ([i915#11989]) +1 other test fail
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk3/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-dg1:          NOTRUN -> [SKIP][375] ([i915#4423] / [i915#9934])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-dg1:          NOTRUN -> [SKIP][376] ([i915#8381]) +3 other tests skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][377] ([i915#3637]) +28 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@kms_flip@2x-flip-vs-suspend.html
    - shard-glk:          NOTRUN -> [INCOMPLETE][378] ([i915#12745] / [i915#1982] / [i915#4839])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk8/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][379] ([i915#1982] / [i915#4839])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk8/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][380] ([i915#9934]) +23 other tests skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-5/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-snb:          NOTRUN -> [FAIL][381] ([i915#11989]) +8 other tests fail
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-snb1/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][382] ([i915#9934]) +16 other tests skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][383] ([i915#9934]) +23 other tests skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
    - shard-tglu-1:       NOTRUN -> [SKIP][384] ([i915#3637]) +6 other tests skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-dg2:          NOTRUN -> [FAIL][385] ([i915#11989]) +1 other test fail
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][386] ([i915#8381]) +2 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@kms_flip@flip-vs-fences.html
    - shard-dg2:          NOTRUN -> [SKIP][387] ([i915#8381]) +1 other test skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          NOTRUN -> [INCOMPLETE][388] ([i915#4839]) +1 other test incomplete
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][389] ([i915#12745]) +1 other test incomplete
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk3/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check@a-edp1:
    - shard-mtlp:         NOTRUN -> [FAIL][390] ([i915#11989]) +1 other test fail
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@kms_flip@wf_vblank-ts-check@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][391] ([i915#2587] / [i915#2672]) +2 other tests skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][392] ([i915#2587] / [i915#2672]) +16 other tests skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][393] ([i915#2672] / [i915#3555]) +5 other tests skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][394] ([i915#2587] / [i915#2672] / [i915#3555]) +2 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][395] ([i915#2672] / [i915#3555] / [i915#5190]) +8 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][396] ([i915#2672]) +12 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][397] ([i915#2672] / [i915#8813]) +13 other tests skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][398] ([i915#2672] / [i915#3555]) +13 other tests skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-dg1:          NOTRUN -> [SKIP][399] ([i915#2672] / [i915#3555]) +11 other tests skip
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][400] ([i915#2587] / [i915#2672]) +11 other tests skip

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/index.html

--===============0132542241924848588==
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
<tr><td><b>Series:</b></td><td>Revert &quot;lockdep: Enable PROVE_RAW_LOCK_NESTING with PROVE_LOCKING.&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/142298/">https://patchwork.freedesktop.org/series/142298/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15807_full -&gt; Patchwork_142298v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_142298v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_142298v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>Additional (1): shard-glk-0 <br />
  Missing    (1): pig-kbl-iris </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_142298v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@gem_ctx_persistence@hostile.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-10/igt@gem_eio@kms.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@i915_pm_rc6_residency@rc6-accuracy.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-9/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4-rc-ccs-cc (NEW):</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4-rc-ccs-cc.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@kms_async_flips@test-cursor-atomic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk4/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a> +2 other tests incomplete</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-3-y-rc-ccs-cc}:<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-3-y-rc-ccs-cc.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15807_full and Patchwork_142298v1_full:</p>
<h3>New IGT tests (31)</h3>
<ul>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.77] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-1-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-1-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-1-4-rc-ccs:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-1-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-1-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-1-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-1-4-rc-ccs:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-1-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4-rc-ccs:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-d-hdmi-a-1-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-d-hdmi-a-1-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-d-hdmi-a-1-4-rc-ccs:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-d-hdmi-a-1-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip-atomic@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.36] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip-atomic@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip-atomic@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.10, 0.30] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip-atomic@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip-atomic@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.29] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip-atomic@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip-atomic@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp-atomic@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp-atomic@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp-atomic@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp-atomic@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp-atomic@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp-atomic@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.77] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp-atomic@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_142298v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-8/igt@api_intel_bb@crc32.html">SKIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> ([i915#8411]) +3 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#9318])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#9318])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-3/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#9318])</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-8/igt@device_reset@cold-reset-bound.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-2/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> ([i915#11078])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@drm_fdinfo@busy-check-all@bcs0.html">SKIP</a> ([i915#8414]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@drm_fdinfo@busy-hang@rcs0.html">SKIP</a> ([i915#8414]) +48 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html">SKIP</a> ([i915#8414]) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@fbdev@pan.html">DMESG-WARN</a> ([i915#4423]) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-6/igt@gem_basic@multigpu-create-close.html">SKIP</a> ([i915#7697])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_basic@multigpu-create-close.html">SKIP</a> ([i915#7697]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-5/igt@gem_basic@multigpu-create-close.html">SKIP</a> ([i915#7697]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-11/igt@gem_busy@semaphore.html">SKIP</a> ([i915#3936])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@gem_busy@semaphore.html">SKIP</a> ([i915#3936])</li>
</ul>
</li>
<li>
<p>igt@gem_caching@writes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@gem_caching@writes.html">SKIP</a> ([i915#4873]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_ccs@block-copy-compressed.html">SKIP</a> ([i915#3555] / [i915#9323]) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@gem_ccs@block-copy-compressed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-9/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#3555] / [i915#9323]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#3555] / [i915#9323]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> ([i915#9323]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> ([i915#13008])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-7/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> ([i915#13008])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> ([i915#13008])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#9323]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#9323]) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#9323]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> ([i915#7697]) +2 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> ([i915#7697]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@gem_ctx_persistence@hang.html">SKIP</a> ([i915#8555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@gem_ctx_persistence@heartbeat-hang.html">SKIP</a> ([i915#8555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_ctx_persistence@heartbeat-stop.html">SKIP</a> ([i915#8555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([i915#11980] / [i915#12580])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([i915#11980] / [i915#12580])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html">SKIP</a> ([i915#5882]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0.html">SKIP</a> ([i915#5882]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-snb2/igt@gem_ctx_persistence@smoketest.html">SKIP</a> ([i915#1099]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-4/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280]) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-4/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#280]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#280]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-2/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> ([i915#4771]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@gem_exec_balancer@bonded-false-hang.html">SKIP</a> ([i915#4812]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_exec_balancer@bonded-semaphore.html">SKIP</a> ([i915#4812]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-1/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> ([i915#4771]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_exec_balancer@invalid-bonds.html">SKIP</a> ([i915#4036])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@gem_exec_balancer@invalid-bonds.html">SKIP</a> ([i915#4036])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i915#4525]) +4 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-5/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> ([i915#4525]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@gem_exec_capture@capture.html">FAIL</a> ([i915#11965]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@gem_exec_capture@capture-invisible.html">SKIP</a> ([i915#6334]) +2 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-5/igt@gem_exec_capture@capture-invisible.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@gem_exec_capture@capture-invisible.html">SKIP</a> ([i915#6334]) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-5/igt@gem_exec_capture@capture-invisible.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-9/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> ([i915#6344])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@gem_exec_fence@submit67.html">SKIP</a> ([i915#4812]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-set-default.html">SKIP</a> ([i915#3539]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@gem_exec_flush@basic-wb-ro-before-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@gem_exec_flush@basic-wb-rw-before-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> ([i915#5107])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> ([i915#5107])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-3/igt@gem_exec_reloc@basic-active.html">SKIP</a> ([i915#3281]) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html">SKIP</a> ([i915#3281]) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@gem_exec_reloc@basic-wc-read-noreloc.html">SKIP</a> ([i915#3281]) +38 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@gem_exec_reloc@basic-write-gtt-active.html">SKIP</a> ([i915#3281]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@gem_exec_schedule@deep@rcs0.html">SKIP</a> ([i915#4537])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@gem_exec_schedule@preempt-queue-chain.html">SKIP</a> ([i915#4537] / [i915#4812]) +4 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@gem_exec_schedule@preempt-queue-chain.html">SKIP</a> ([i915#4537] / [i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> ([i915#7276])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> ([i915#11441]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-10/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> ([i915#7975] / [i915#8213]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@gem_fence_thrash@bo-copy.html">SKIP</a> ([i915#4860]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html">SKIP</a> ([i915#4860]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html">SKIP</a> ([i915#4860]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-7/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gem_lmem_swapping@basic.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-4/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> ([i915#4613]) +15 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> ([i915#4613]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> ([i915#4613]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk5/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([i915#4613]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a> ([i915#12193]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html">SKIP</a> ([i915#4565]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@gem_media_fill@media-fill.html">SKIP</a> ([i915#8289])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@gem_media_fill@media-fill.html">SKIP</a> ([i915#8289])</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@gem_media_vme.html">SKIP</a> ([i915#284])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@gem_media_vme.html">SKIP</a> ([i915#284])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-6/igt@gem_media_vme.html">SKIP</a> ([i915#284])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_media_vme.html">SKIP</a> ([i915#284])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-5/igt@gem_media_vme.html">SKIP</a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@gem_mmap@bad-size.html">SKIP</a> ([i915#4083]) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@gem_mmap_gtt@basic-small-bo.html">SKIP</a> ([i915#4077]) +40 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@gem_mmap_gtt@cpuset-medium-copy.html">SKIP</a> ([i915#4077]) +54 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear-via-pagefault:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@gem_mmap_offset@clear-via-pagefault.html">ABORT</a> ([i915#10729]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@gem_mmap_wc@invalid-flags.html">SKIP</a> ([i915#4083]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc-unflushed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html">SKIP</a> ([i915#4083]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@gem_partial_pwrite_pread@reads-snoop.html">SKIP</a> ([i915#3282]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-snb7/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658]) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-5/igt@gem_pread@snoop.html">SKIP</a> ([i915#3282]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-6/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> ([i915#3282]) +21 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@gem_pxp@create-protected-buffer.html">TIMEOUT</a> ([i915#12964]) +2 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-3/igt@gem_pxp@display-protected-crc.html">SKIP</a> ([i915#4270]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-10/igt@gem_pxp@hw-rejects-pxp-buffer.html">SKIP</a> ([i915#13033])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@gem_pxp@hw-rejects-pxp-buffer.html">SKIP</a> ([i915#13033])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a> ([i915#13033])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">TIMEOUT</a> ([i915#12917] / [i915#12964]) +9 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@gem_pxp@reject-modify-context-protection-on.html">SKIP</a> ([i915#4270]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-bad-handle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@gem_readwrite@read-bad-handle.html">SKIP</a> ([i915#3282]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a> ([i915#8428]) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> ([i915#4079]) +4 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> ([i915#8411]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">SKIP</a> ([i915#4079]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-3/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> ([i915#4885])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html">SKIP</a> ([i915#4077]) +38 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@gem_tiled_pread_pwrite.html">SKIP</a> ([i915#4079]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-7/igt@gem_unfence_active_buffers.html">SKIP</a> ([i915#4879])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-1/igt@gem_unfence_active_buffers.html">SKIP</a> ([i915#4879])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +7 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +6 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-9/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([i915#3297] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-5/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> ([i915#3297]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@gem_userptr_blits@relocations.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@gem_userptr_blits@relocations.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@gem_userptr_blits@sd-probe.html">SKIP</a> ([i915#3297] / [i915#4958])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gem_userptr_blits@sd-probe.html">SKIP</a> ([i915#3297] / [i915#4958])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-7/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> ([i915#3297]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@gen7_exec_parse@bitmasks.html">SKIP</a> +40 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2856]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@gen9_exec_parse@bb-chained.html">SKIP</a> ([i915#2527]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@gen9_exec_parse@bb-secure.html">SKIP</a> ([i915#2527]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-3/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> ([i915#2856]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-10/igt@gen9_exec_parse@unaligned-jump.html">SKIP</a> ([i915#2527] / [i915#2856]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@i915_fb_tiling.html">SKIP</a> ([i915#4881]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@i915_fb_tiling.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15807/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9820])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@i915_module_load@resize-bar.html">SKIP</a> ([i915#6412])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@i915_module_load@resize-bar.html">SKIP</a> ([i915#7178])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@i915_module_load@resize-bar.html">SKIP</a> ([i915#6412])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@i915_module_load@resize-bar.html">SKIP</a> ([i915#6412])</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html">SKIP</a> ([i915#8436])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-8/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> ([i915#8399]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-4/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> ([i915#8399]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">WARN</a> ([i915#2681]) +4 other tests warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#11681] / [i915#6621]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#11681] / [i915#6621]) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@i915_pm_rps@thresholds-idle.html">SKIP</a> ([i915#11681]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@i915_pm_rps@thresholds-park.html">SKIP</a> ([i915#11681]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@i915_pm_rps@thresholds-park.html">SKIP</a> ([i915#11681]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@i915_pm_rps@waitboost.html">FAIL</a> ([i915#8346]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-6/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-5/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#8437])</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-4/igt@i915_power@sanity.html">SKIP</a> ([i915#7984])</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@i915_query@hwconfig_table.html">SKIP</a> ([i915#6245])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-10/igt@i915_query@hwconfig_table.html">SKIP</a> ([i915#6245])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-2/igt@i915_query@hwconfig_table.html">SKIP</a> ([i915#6245])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> ([i915#5723])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> ([i915#5723])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-4/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-7/igt@i915_selftest@live@sanitycheck.html">ABORT</a> ([i915#13010]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a> ([i915#13010])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> ([i915#6645])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk1/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#4817]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-5/igt@intel_hwmon@hwmon-read.html">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-9/igt@intel_hwmon@hwmon-write.html">SKIP</a> ([i915#7707]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@intel_hwmon@hwmon-write.html">SKIP</a> ([i915#7707]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> ([i915#4212]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([i915#5190]) +6 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-7/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#4215])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#4215] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-1/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> ([i915#4212]) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> ([i915#4212]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> ([i915#12454] / [i915#12712])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-7/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> ([i915#12454] / [i915#12712])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> ([i915#12454] / [i915#12712])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc.html">SKIP</a> ([i915#8709]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> ([i915#8709]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> ([i915#6228])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-7/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> ([i915#6228])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@kms_async_flips@test-cursor.html">SKIP</a> ([i915#10333])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#3555])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">SKIP</a> ([i915#1769] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-snb7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-7/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SKIP</a> ([i915#5286]) +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> ([i915#5286]) +20 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i915#5286]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">SKIP</a> +102 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([i915#3638]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html">SKIP</a> ([i915#3638]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> ([i915#6187]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> ([i915#4538]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-10/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +5 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) +4 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) +4 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#6095]) +247 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#6095]) +221 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +304 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html">SKIP</a> ([i915#4423] / [i915#6095]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15807/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html">DMESG-WARN</a> ([i915#12964]) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12805])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12805])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12805])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +160 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-10/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-4.html">SKIP</a> ([i915#6095]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html">SKIP</a> ([i915#6095]) +254 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk1/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> +623 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#7213] / [i915#9010]) +5 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#11616] / [i915#7213]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#3742]) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-7/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#3742]) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@kms_chamelium_audio@dp-audio.html">SKIP</a> ([i915#4423] / [i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> ([i915#7828]) +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html">SKIP</a> ([i915#7828]) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html">SKIP</a> ([i915#7828]) +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-13/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html">SKIP</a> ([i915#7828]) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> ([i915#7828]) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-9/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555] / [i915#9979])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@kms_content_protection@atomic.html">SKIP</a> ([i915#7116] / [i915#9424]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-8/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-3/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-10/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3299]) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3116]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3299]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-3/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-4/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9424]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9424]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#8063] / [i915#9433])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-11/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7118])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-5/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7118])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7116])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-2/igt@kms_content_protection@srm.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118] / [i915#9424]) +2 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-2/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118] / [i915#9424]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@kms_content_protection@type1.html">SKIP</a> ([i915#3555] / [i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#6944] / [i915#9424]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> ([i915#13049]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-onscreen-32x10.html">SKIP</a> ([i915#3555] / [i915#8814]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> ([i915#3555]) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#13049]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#13049]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> ([i915#13049]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rapid-movement-64x21.html">SKIP</a> ([i915#8814]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> ([i915#3555]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#13049]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk2/igt@kms_cursor_crc@cursor-suspend.html">INCOMPLETE</a> ([i915#12358] / [i915#7882])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk2/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html">INCOMPLETE</a> ([i915#12358])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4213]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> ([i915#9809]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-9/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4103]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> ([i915#9833])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-3/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> ([i915#9723])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> ([i915#9723])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> ([i915#9833])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-8/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> ([i915#9723]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> ([i915#3555] / [i915#8827])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> ([i915#3555] / [i915#3804])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> ([i915#1769] / [i915#3555] / [i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-3/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-4/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-10/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> ([i915#12402])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> ([i915#12402])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-4/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> ([i915#12402])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-8/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> ([i915#12402])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#8812]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-4/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> ([i915#3840])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#3555] / [i915#3840]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-7/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840]) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-1/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> ([i915#3555] / [i915#3840]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk5/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#9878])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-1/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3469]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([i915#3955]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([i915#3469]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-5/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([i915#3469]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-7/igt@kms_feature_discovery@chamelium.html">SKIP</a> ([i915#2065] / [i915#4854])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@kms_feature_discovery@chamelium.html">SKIP</a> ([i915#4854])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-17/igt@kms_feature_discovery@chamelium.html">SKIP</a> ([i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@kms_feature_discovery@display-2x.html">SKIP</a> ([i915#1839]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@kms_feature_discovery@display-2x.html">SKIP</a> ([i915#1839]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_feature_discovery@display-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-4/igt@kms_feature_discovery@display-4x.html">SKIP</a> ([i915#1839]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-10/igt@kms_feature_discovery@display-4x.html">SKIP</a> ([i915#1839]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-10/igt@kms_feature_discovery@psr1.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-14/igt@kms_feature_discovery@psr2.html">SKIP</a> ([i915#658]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-3/igt@kms_feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-1/igt@kms_feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-10/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-9/igt@kms_flip@2x-blocking-absolute-wf_vblank.html">SKIP</a> ([i915#3637]) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk3/igt@kms_flip@2x-blocking-wf_vblank.html">FAIL</a> ([i915#11989]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@kms_flip@2x-flip-vs-expired-vblank.html">SKIP</a> ([i915#4423] / [i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-18/igt@kms_flip@2x-flip-vs-fences.html">SKIP</a> ([i915#8381]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-6/igt@kms_flip@2x-flip-vs-suspend.html">SKIP</a> ([i915#3637]) +28 other tests skip</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk8/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</a> ([i915#12745] / [i915#1982] / [i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk8/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> ([i915#1982] / [i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-rkl-5/igt@kms_flip@2x-plain-flip.html">SKIP</a> ([i915#9934]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-snb1/igt@kms_flip@2x-plain-flip-fb-recreate.html">FAIL</a> ([i915#11989]) +8 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html">SKIP</a> ([i915#9934]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-8/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html">SKIP</a> ([i915#9934]) +23 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html">SKIP</a> ([i915#3637]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@kms_flip@flip-vs-absolute-wf_vblank.html">FAIL</a> ([i915#11989]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-2/igt@kms_flip@flip-vs-fences.html">SKIP</a> ([i915#8381]) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-7/igt@kms_flip@flip-vs-fences.html">SKIP</a> ([i915#8381]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk2/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> ([i915#4839]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-glk3/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html">INCOMPLETE</a> ([i915#12745]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@a-edp1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-5/igt@kms_flip@wf_vblank-ts-check@a-edp1.html">FAIL</a> ([i915#11989]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672] / [i915#8813]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142298v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; [SKIP][400] ([i915#2587] / [i915#2672]) +11 other tests skip</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0132542241924848588==--
