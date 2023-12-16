Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC8581560D
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Dec 2023 02:46:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EE6510EAB2;
	Sat, 16 Dec 2023 01:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2FBCA10EAB2;
 Sat, 16 Dec 2023 01:46:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29962A3ECB;
 Sat, 16 Dec 2023 01:46:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7145967936953344038=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_perf=3A_Fix_perf=5Fevent=5F?=
 =?utf-8?q?validate=5Fsize=28=29_lockdep_splat?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Sat, 16 Dec 2023 01:46:37 -0000
Message-ID: <170269119714.3480.16903837829047603445@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231215162217.3273876-1-lucas.demarchi@intel.com>
In-Reply-To: <20231215162217.3273876-1-lucas.demarchi@intel.com>
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

--===============7145967936953344038==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: perf: Fix perf_event_validate_size() lockdep splat
URL   : https://patchwork.freedesktop.org/series/127883/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14033_full -> Patchwork_127883v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127883v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127883v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 8)
------------------------------

  Missing    (1): shard-snb-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127883v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_offset@close-race:
    - shard-snb:          NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-snb2/igt@gem_mmap_offset@close-race.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-mtlp:         NOTRUN -> [SKIP][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@kms_vrr@flip-basic-fastset.html
    - shard-dg2:          NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@kms_vrr@flip-basic-fastset.html
    - shard-dg1:          NOTRUN -> [SKIP][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-19/igt@kms_vrr@flip-basic-fastset.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_vrr@seamless-rr-switch-drrs}:
    - shard-rkl:          NOTRUN -> [SKIP][5] +1 other test skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@kms_vrr@seamless-rr-switch-drrs.html
    - shard-dg1:          NOTRUN -> [SKIP][6] +1 other test skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@kms_vrr@seamless-rr-switch-drrs.html
    - shard-tglu:         NOTRUN -> [SKIP][7] +1 other test skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@kms_vrr@seamless-rr-switch-drrs.html

  * {igt@kms_vrr@seamless-rr-switch-vrr}:
    - shard-dg2:          NOTRUN -> [SKIP][8] +1 other test skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@kms_vrr@seamless-rr-switch-vrr.html
    - shard-mtlp:         NOTRUN -> [SKIP][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@kms_vrr@seamless-rr-switch-vrr.html

  
New tests
---------

  New tests have been introduced between CI_DRM_14033_full and Patchwork_127883v1_full:

### New IGT tests (1) ###

  * igt@kms_flip@flip-vs-suspend@d-hdmi-a1:
    - Statuses : 1 pass(s)
    - Exec time: [3.39] s

  

Known issues
------------

  Here are the changes found in Patchwork_127883v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-rkl:          ([PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33]) -> ([PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [FAIL][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57]) ([i915#8293])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-2/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#8411]) +3 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-19/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#6230])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@api_intel_bb@crc32.html
    - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#6230])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-18/igt@api_intel_bb@crc32.html
    - shard-tglu:         NOTRUN -> [SKIP][61] ([i915#6230])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-7/igt@api_intel_bb@crc32.html

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#8411]) +4 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][63] ([i915#8411]) +3 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@api_intel_bb@object-reloc-purge-cache.html
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#8411]) +2 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@debugfs_test@basic-hwmon:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#9318])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@debugfs_test@basic-hwmon.html
    - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#9318])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#7701])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@device_reset@cold-reset-bound.html
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#7701])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@device_reset@cold-reset-bound.html
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#7701])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@device_reset@cold-reset-bound.html
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#7701])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@device_reset@cold-reset-bound.html
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#7701])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][72] ([i915#9408] / [i915#9618])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-19/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@busy-hang@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#8414]) +53 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@drm_fdinfo@busy-hang@rcs0.html

  * igt@drm_fdinfo@busy-idle-check-all@ccs3:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#8414]) +65 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@drm_fdinfo@busy-idle-check-all@ccs3.html

  * igt@drm_fdinfo@idle@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][75] ([i915#7742]) +1 other test fail
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@drm_fdinfo@idle@rcs0.html

  * igt@drm_fdinfo@isolation@vecs0:
    - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#8414]) +46 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@drm_fdinfo@isolation@vecs0.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#7697]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@gem_basic@multigpu-create-close.html
    - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#7697])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-18/igt@gem_basic@multigpu-create-close.html
    - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#7697]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-7/igt@gem_basic@multigpu-create-close.html
    - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#7697]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@gem_basic@multigpu-create-close.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#3936])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_busy@semaphore.html
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#3936])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@gem_busy@semaphore.html

  * igt@gem_caching@writes:
    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#4873]) +2 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@gem_caching@writes.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#9323]) +2 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#9323]) +2 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@gem_ccs@suspend-resume.html
    - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#9323]) +2 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@gem_ccs@suspend-resume.html
    - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#9323]) +2 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@gem_ccs@suspend-resume.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#7697])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_compute@compute-square:
    - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#9310])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_compute@compute-square.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][90] ([i915#9364])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#6335]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@gem_create@create-ext-cpu-access-sanity-check.html
    - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#6335]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_create@create-ext-cpu-access-sanity-check.html
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#6335]) +1 other test skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#8562])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@gem_create@create-ext-set-pat.html
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#8562])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@gem_create@create-ext-set-pat.html
    - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#8562])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@gem_create@create-ext-set-pat.html
    - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#8562])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-6/igt@gem_create@create-ext-set-pat.html

  * igt@gem_create@hog-create@smem0:
    - shard-mtlp:         NOTRUN -> [FAIL][98] ([i915#8758])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@gem_create@hog-create@smem0.html

  * igt@gem_ctx_persistence@engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#1099]) +13 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-snb4/igt@gem_ctx_persistence@engines-mixed-process.html

  * igt@gem_ctx_persistence@hang:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#8555]) +6 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#8555]) +5 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#8555]) +6 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-12/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#5882]) +9 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#5882]) +5 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#280]) +2 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@gem_ctx_sseu@engines.html
    - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#280]) +2 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gem_ctx_sseu@engines.html
    - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#280]) +2 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@gem_ctx_sseu@engines.html
    - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#280]) +2 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          NOTRUN -> [FAIL][109] ([i915#8898]) +1 other test fail
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-snb4/igt@gem_eio@unwedge-stress.html
    - shard-dg1:          NOTRUN -> [FAIL][110] ([i915#5784]) +2 other tests fail
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#4771]) +2 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#4812]) +5 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#4771]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@gem_exec_balancer@bonded-sync.html
    - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#4771]) +2 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-12/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#4036])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@gem_exec_balancer@invalid-bonds.html
    - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#4036])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#4525]) +6 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-tglu:         NOTRUN -> [FAIL][118] ([i915#6117])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-6/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#6334]) +1 other test skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@gem_exec_capture@capture-invisible@lmem0.html
    - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#6334]) +1 other test skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-glk:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#6334])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-glk9/igt@gem_exec_capture@capture-invisible@smem0.html
    - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#6334])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@gem_exec_capture@capture-invisible@smem0.html
    - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#6334])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@gem_exec_capture@capture-invisible@smem0.html
    - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#6334])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-5/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#6344])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@gem_exec_capture@capture-recoverable.html
    - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#6344])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-6/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-glk:          NOTRUN -> [FAIL][127] ([i915#9606]) +1 other test fail
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-glk3/igt@gem_exec_capture@many-4k-incremental.html
    - shard-mtlp:         NOTRUN -> [FAIL][128] ([i915#9606]) +1 other test fail
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-8/igt@gem_exec_capture@many-4k-incremental.html
    - shard-dg2:          NOTRUN -> [FAIL][129] ([i915#9606])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@gem_exec_capture@many-4k-incremental.html
    - shard-rkl:          NOTRUN -> [FAIL][130] ([i915#9606]) +1 other test fail
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-dg1:          NOTRUN -> [FAIL][131] ([i915#9606]) +1 other test fail
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@gem_exec_capture@many-4k-zero.html
    - shard-tglu:         NOTRUN -> [FAIL][132] ([i915#9606]) +1 other test fail
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          NOTRUN -> [FAIL][133] ([i915#2846])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-glk6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][134] ([i915#2842]) +5 other tests fail
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-glk3/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-solo:
    - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#4473]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_fair@basic-none-vip:
    - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#4473] / [i915#4771]) +5 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@gem_exec_fair@basic-none-vip.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][137] ([i915#2842]) +7 other tests fail
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-6/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-share:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#3539] / [i915#4852]) +10 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_exec_fair@basic-pace-share.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#3539]) +4 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglu:         NOTRUN -> [FAIL][140] ([i915#2842]) +9 other tests fail
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fence@submit:
    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#4812]) +11 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@gem_exec_fence@submit.html

  * igt@gem_exec_fence@submit67:
    - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#4812]) +7 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#3539]) +5 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-dg1:          NOTRUN -> [SKIP][144] ([i915#3539] / [i915#4852]) +12 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#5107])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@gem_exec_params@rsvd2-dirt.html
    - shard-rkl:          NOTRUN -> [SKIP][146] ([fdo#109283])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@gem_exec_params@rsvd2-dirt.html
    - shard-dg1:          NOTRUN -> [SKIP][147] ([fdo#109283])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@gem_exec_params@rsvd2-dirt.html
    - shard-tglu:         NOTRUN -> [SKIP][148] ([fdo#109283])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([fdo#112283])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@gem_exec_params@secure-non-master.html
    - shard-mtlp:         NOTRUN -> [SKIP][150] ([fdo#112283]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_params@secure-non-root:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([fdo#112283]) +1 other test skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@gem_exec_params@secure-non-root.html
    - shard-dg1:          NOTRUN -> [SKIP][152] ([fdo#112283]) +1 other test skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gem_exec_params@secure-non-root.html
    - shard-tglu:         NOTRUN -> [SKIP][153] ([fdo#112283]) +1 other test skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-active:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#3281]) +39 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#3281]) +41 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-wc-read:
    - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#3281]) +46 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gem_exec_reloc@basic-wc-read.html

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#3281]) +43 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@gem_exec_reloc@basic-wc-read-noreloc.html

  * igt@gem_exec_schedule@deep@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#4537])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@gem_exec_schedule@deep@rcs0.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#4537] / [i915#4812]) +2 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#4537] / [i915#4812]) +1 other test skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#7276])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          NOTRUN -> [ABORT][162] ([i915#7975] / [i915#8213])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-rkl:          NOTRUN -> [ABORT][163] ([i915#7975] / [i915#8213])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#4860]) +6 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#4860]) +8 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-12/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#4860]) +9 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#2190])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@gem_huc_copy@huc-copy.html
    - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#2190])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-4/igt@gem_huc_copy@huc-copy.html
    - shard-glk:          NOTRUN -> [SKIP][169] ([fdo#109271] / [i915#2190])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-glk5/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#4613] / [i915#7582])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@gem_lmem_evict@dontneed-evict-race.html
    - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#4613] / [i915#7582])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#4613]) +16 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#4613]) +14 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#4613]) +15 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@gem_lmem_swapping@verify-ccs.html
    - shard-glk:          NOTRUN -> [SKIP][175] ([fdo#109271] / [i915#4613]) +18 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-glk3/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#4565]) +3 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-19/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html

  * igt@gem_media_fill@media-fill:
    - shard-mtlp:         NOTRUN -> [SKIP][177] ([i915#8289])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@gem_media_fill@media-fill.html
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#8289])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@gem_media_fill@media-fill.html

  * igt@gem_media_vme:
    - shard-mtlp:         NOTRUN -> [SKIP][179] ([i915#284])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_media_vme.html
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#284])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@gem_media_vme.html
    - shard-dg1:          NOTRUN -> [SKIP][181] ([i915#284])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-18/igt@gem_media_vme.html
    - shard-tglu:         NOTRUN -> [SKIP][182] ([i915#284])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-6/igt@gem_media_vme.html

  * igt@gem_mmap@bad-size:
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#4083]) +20 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_mmap@bad-size.html

  * igt@gem_mmap_gtt@basic-small-bo:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#4077]) +42 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@gem_mmap_gtt@basic-small-bo.html

  * igt@gem_mmap_gtt@coherency:
    - shard-tglu:         NOTRUN -> [SKIP][185] ([fdo#111656])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@gem_mmap_gtt@coherency.html
    - shard-rkl:          NOTRUN -> [SKIP][186] ([fdo#111656])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@gem_mmap_gtt@coherency.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#4077]) +50 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#4083]) +9 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
    - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#4083]) +20 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-13/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html

  * igt@gem_pread@exhaustion:
    - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#3282]) +25 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-13/igt@gem_pread@exhaustion.html
    - shard-snb:          NOTRUN -> [WARN][191] ([i915#2658])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-snb1/igt@gem_pread@exhaustion.html
    - shard-tglu:         NOTRUN -> [WARN][192] ([i915#2658]) +1 other test warn
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-4/igt@gem_pread@exhaustion.html
    - shard-glk:          NOTRUN -> [WARN][193] ([i915#2658]) +1 other test warn
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-glk2/igt@gem_pread@exhaustion.html

  * igt@gem_pread@snoop:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#3282]) +18 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@gem_pread@snoop.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#3282]) +30 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-mtlp:         NOTRUN -> [SKIP][196] ([i915#4270]) +13 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#4270]) +12 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-tglu:         NOTRUN -> [SKIP][198] ([i915#4270]) +15 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-6/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#4270]) +15 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-dg1:          NOTRUN -> [SKIP][200] ([i915#4270]) +15 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_readwrite@read-bad-handle:
    - shard-mtlp:         NOTRUN -> [SKIP][201] ([i915#3282]) +23 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@gem_readwrite@read-bad-handle.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#8428]) +25 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg1:          NOTRUN -> [SKIP][203] ([i915#4079]) +4 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#4079]) +1 other test skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-7/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([fdo#109312]) +1 other test skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@gem_softpin@evict-snoop.html
    - shard-dg1:          NOTRUN -> [SKIP][206] ([i915#4885])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@gem_softpin@evict-snoop.html
    - shard-tglu:         NOTRUN -> [SKIP][207] ([fdo#109312]) +1 other test skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-5/igt@gem_softpin@evict-snoop.html
    - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#4885]) +1 other test skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@gem_softpin@evict-snoop.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#4885]) +1 other test skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#4077]) +54 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_tiled_pread_basic:
    - shard-mtlp:         NOTRUN -> [SKIP][211] ([i915#4079]) +4 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_tiled_pread_basic.html

  * igt@gem_unfence_active_buffers:
    - shard-dg1:          NOTRUN -> [SKIP][212] ([i915#4879])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gem_unfence_active_buffers.html
    - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#4879])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_unfence_active_buffers.html
    - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#4879])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([fdo#110542])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-6/igt@gem_userptr_blits@coherency-sync.html
    - shard-tglu:         NOTRUN -> [SKIP][216] ([fdo#110542])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#3297]) +10 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglu:         NOTRUN -> [SKIP][218] ([i915#3323])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-glk:          NOTRUN -> [SKIP][219] ([fdo#109271] / [i915#3323])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-glk7/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#3323])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg1:          NOTRUN -> [SKIP][221] ([i915#3297] / [i915#4880]) +3 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#3297] / [i915#4880]) +2 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][223] ([i915#3297]) +10 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-5/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#3297] / [i915#4958])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@gem_userptr_blits@sd-probe.html
    - shard-dg1:          NOTRUN -> [SKIP][225] ([i915#3297] / [i915#4958])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-mtlp:         NOTRUN -> [SKIP][226] ([i915#3297]) +14 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-8/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#3297]) +8 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@gem_userptr_blits@unsync-unmap-after-close.html
    - shard-dg1:          NOTRUN -> [SKIP][228] ([i915#3297]) +11 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-rkl:          NOTRUN -> [FAIL][229] ([i915#3318])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-6/igt@gem_userptr_blits@vma-merge.html
    - shard-tglu:         NOTRUN -> [FAIL][230] ([i915#3318])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@gem_userptr_blits@vma-merge.html
    - shard-glk:          NOTRUN -> [FAIL][231] ([i915#3318])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-glk6/igt@gem_userptr_blits@vma-merge.html
    - shard-mtlp:         NOTRUN -> [FAIL][232] ([i915#3318])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@gem_userptr_blits@vma-merge.html
    - shard-dg2:          NOTRUN -> [FAIL][233] ([i915#3318])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_vm_create@invalid-create:
    - shard-snb:          NOTRUN -> [SKIP][234] ([fdo#109271]) +1190 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-snb6/igt@gem_vm_create@invalid-create.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([fdo#109289]) +14 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@gen7_exec_parse@chained-batch.html
    - shard-dg1:          NOTRUN -> [SKIP][236] ([fdo#109289]) +16 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gen7_exec_parse@chained-batch.html

  * igt@gen7_exec_parse@load-register-reg:
    - shard-tglu:         NOTRUN -> [SKIP][237] ([fdo#109289]) +18 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@gen7_exec_parse@load-register-reg.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#2856]) +12 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#2527]) +13 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-dg1:          NOTRUN -> [SKIP][240] ([i915#2527]) +12 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-18/igt@gen9_exec_parse@bb-start-cmd.html
    - shard-tglu:         NOTRUN -> [SKIP][241] ([i915#2527] / [i915#2856]) +12 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-7/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#2856]) +9 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_fb_tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][243] ([i915#4881]) +1 other test skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@i915_fb_tiling.html
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#4881]) +1 other test skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-7/igt@i915_fb_tiling.html

  * igt@i915_module_load@load:
    - shard-snb:          NOTRUN -> [SKIP][245] ([fdo#109271] / [i915#6227])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-snb5/igt@i915_module_load@load.html
    - shard-dg1:          NOTRUN -> [SKIP][246] ([i915#6227])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-12/igt@i915_module_load@load.html
    - shard-tglu:         NOTRUN -> [SKIP][247] ([i915#6227])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@i915_module_load@load.html
    - shard-glk:          NOTRUN -> [SKIP][248] ([fdo#109271] / [i915#6227])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-glk8/igt@i915_module_load@load.html
    - shard-mtlp:         NOTRUN -> [SKIP][249] ([i915#6227])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@i915_module_load@load.html
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#6227])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@i915_module_load@load.html
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#6227])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][252] ([i915#9820] / [i915#9849])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg1:          NOTRUN -> [INCOMPLETE][253] ([i915#4391] / [i915#4423] / [i915#9849])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         NOTRUN -> [INCOMPLETE][254] ([i915#9200])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-4/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         NOTRUN -> [ABORT][255] ([i915#9697])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          NOTRUN -> [INCOMPLETE][256] ([i915#9849])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#6412])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@i915_module_load@resize-bar.html
    - shard-dg1:          NOTRUN -> [SKIP][258] ([i915#7178])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@i915_module_load@resize-bar.html
    - shard-tglu:         NOTRUN -> [SKIP][259] ([i915#6412])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-5/igt@i915_module_load@resize-bar.html
    - shard-mtlp:         NOTRUN -> [SKIP][260] ([i915#6412])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@i915_module_load@resize-bar.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#7091])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
    - shard-mtlp:         NOTRUN -> [SKIP][262] ([i915#8436])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-tglu:         NOTRUN -> [SKIP][263] ([i915#8399]) +3 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][264] ([i915#8399]) +2 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-2/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#6590])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@i915_pm_freq_mult@media-freq@gt0.html
    - shard-dg1:          NOTRUN -> [SKIP][266] ([i915#6590])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@i915_pm_freq_mult@media-freq@gt0.html
    - shard-tglu:         NOTRUN -> [SKIP][267] ([i915#6590])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-4/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_freq_mult@media-freq@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][268] ([i915#6590]) +1 other test skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@i915_pm_freq_mult@media-freq@gt1.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
    - shard-tglu:         NOTRUN -> [WARN][269] ([i915#2681]) +4 other tests warn
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
    - shard-mtlp:         NOTRUN -> [FAIL][270] ([i915#3591])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-mtlp:         NOTRUN -> [SKIP][271] ([fdo#109293]) +2 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@basic-api:
    - shard-mtlp:         NOTRUN -> [SKIP][272] ([i915#6621]) +1 other test skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#6621])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@i915_pm_rps@min-max-config-loaded.html
    - shard-dg1:          NOTRUN -> [SKIP][274] ([i915#6621])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@reset:
    - shard-mtlp:         NOTRUN -> [FAIL][275] ([i915#8346])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@thresholds-idle-park@gt0:
    - shard-mtlp:         NOTRUN -> [SKIP][276] ([i915#8925]) +2 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@i915_pm_rps@thresholds-idle-park@gt0.html

  * igt@i915_pm_rps@thresholds-idle@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#8925]) +1 other test skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@i915_pm_rps@thresholds-idle@gt0.html
    - shard-dg1:          NOTRUN -> [SKIP][278] ([i915#8925]) +2 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@i915_pm_rps@thresholds-idle@gt0.html

  * igt@i915_pm_rps@thresholds@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][279] ([i915#3555] / [i915#8925]) +2 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-8/igt@i915_pm_rps@thresholds@gt1.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#4387])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-7/igt@i915_pm_sseu@full-enable.html
    - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#4387])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@i915_pm_sseu@full-enable.html
    - shard-dg1:          NOTRUN -> [SKIP][282] ([i915#4387])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@i915_pm_sseu@full-enable.html
    - shard-tglu:         NOTRUN -> [SKIP][283] ([i915#4387])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@i915_pm_sseu@full-enable.html
    - shard-mtlp:         NOTRUN -> [SKIP][284] ([i915#8437])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@i915_pm_sseu@full-enable.html

  * igt@i915_power@sanity:
    - shard-rkl:          NOTRUN -> [SKIP][285] ([i915#7984])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@i915_power@sanity.html

  * igt@i915_query@hwconfig_table:
    - shard-dg1:          NOTRUN -> [SKIP][286] ([i915#6245])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-19/igt@i915_query@hwconfig_table.html
    - shard-tglu:         NOTRUN -> [SKIP][287] ([i915#6245])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@i915_query@hwconfig_table.html
    - shard-rkl:          NOTRUN -> [SKIP][288] ([i915#6245])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@i915_query@hwconfig_table.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-tglu:         NOTRUN -> [SKIP][289] ([fdo#109303])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-4/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_query@query-topology-unsupported:
    - shard-rkl:          NOTRUN -> [SKIP][290] ([fdo#109302])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@i915_query@query-topology-unsupported.html
    - shard-dg1:          NOTRUN -> [SKIP][291] ([fdo#109302])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@i915_query@query-topology-unsupported.html
    - shard-tglu:         NOTRUN -> [SKIP][292] ([fdo#109302])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@i915_query@query-topology-unsupported.html
    - shard-dg2:          NOTRUN -> [SKIP][293] ([fdo#109302])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@i915_query@query-topology-unsupported.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][294] ([i915#5723])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
    - shard-dg1:          NOTRUN -> [SKIP][295] ([i915#5723])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@i915_query@test-query-geometry-subslices.html
    - shard-tglu:         NOTRUN -> [SKIP][296] ([i915#5723])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][297] ([i915#7443])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@i915_suspend@basic-s3-without-i915.html
    - shard-mtlp:         NOTRUN -> [SKIP][298] ([i915#6645])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@i915_suspend@basic-s3-without-i915.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          NOTRUN -> [SKIP][299] ([i915#7707]) +1 other test skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@intel_hwmon@hwmon-write.html
    - shard-tglu:         NOTRUN -> [SKIP][300] ([i915#7707]) +1 other test skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@intel_hwmon@hwmon-write.html
    - shard-mtlp:         NOTRUN -> [SKIP][301] ([i915#7707]) +1 other test skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][302] ([i915#4212]) +7 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][303] ([i915#5190])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][304] ([i915#4212]) +3 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][305] ([i915#4215])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - shard-dg2:          NOTRUN -> [SKIP][306] ([i915#4215] / [i915#5190])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg1:          NOTRUN -> [SKIP][307] ([i915#4212]) +6 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc:
    - shard-mtlp:         NOTRUN -> [SKIP][308] ([i915#8709]) +11 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][309] ([i915#8709]) +3 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][310] ([i915#8709]) +7 other tests skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][311] ([i915#8709]) +7 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-18/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_async_flips@crc@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][312] ([i915#8247]) +3 other tests fail
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@kms_async_flips@crc@pipe-a-dp-4.html

  * igt@kms_async_flips@crc@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [FAIL][313] ([i915#8247])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@kms_async_flips@crc@pipe-a-edp-1.html

  * igt@kms_async_flips@crc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][314] ([i915#8247]) +3 other tests fail
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-12/igt@kms_async_flips@crc@pipe-b-hdmi-a-3.html

  * igt@kms_async_flips@crc@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [DMESG-FAIL][315] ([i915#8561]) +2 other tests dmesg-fail
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@kms_async_flips@crc@pipe-d-edp-1.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][316] ([i915#6228])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_async_flips@test-cursor:
    - shard-mtlp:         NOTRUN -> [SKIP][317] ([i915#6229])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@kms_async_flips@test-cursor.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][318] ([i915#3555]) +2 other tests skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-dg2:          NOTRUN -> [SKIP][319] ([i915#9531])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-rkl:          NOTRUN -> [SKIP][320] ([i915#9531])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-dg1:          NOTRUN -> [SKIP][321] ([i915#9531])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-tglu:         NOTRUN -> [SKIP][322] ([i915#9531])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-mtlp:         NOTRUN -> [SKIP][323] ([i915#1769] / [i915#3555]) +1 other test skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-tglu:         NOTRUN -> [SKIP][324] ([i915#1769] / [i915#3555])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-glk:          NOTRUN -> [SKIP][325] ([fdo#109271] / [i915#1769]) +1 other test skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-glk2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-rkl:          NOTRUN -> [SKIP][326] ([i915#1769] / [i915#3555])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][327] ([i915#1769] / [i915#3555])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
    - shard-dg1:          NOTRUN -> [SKIP][328] ([i915#1769] / [i915#3555]) +1 other test skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
    - shard-snb:          NOTRUN -> [SKIP][329] ([fdo#109271] / [i915#1769])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-snb2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][330] ([fdo#111615] / [i915#5286]) +27 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-6/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][331] ([i915#5286]) +30 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@kms_big_fb@4-tiled-addfb.html
    - shard-dg1:          NOTRUN -> [SKIP][332] ([i915#5286]) +2 other tests skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
    - shard-tglu:         NOTRUN -> [SKIP][333] ([i915#5286]) +2 other tests skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-7/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][334] ([i915#4538] / [i915#5286]) +27 other tests skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         NOTRUN -> [FAIL][335] ([i915#5138])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][336] ([fdo#111614]) +16 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][337] ([fdo#111614] / [i915#3638]) +13 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][338] ([i915#4423])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@kms_big_fb@linear-8bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][339] ([fdo#111614]) +12 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][340] ([fdo#111614]) +14 other tests skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-7/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [FAIL][341] ([i915#3743]) +2 other tests fail
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][342] ([i915#3638]) +15 other tests skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-19/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][343] ([i915#5190]) +37 other tests skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
    - shard-mtlp:         NOTRUN -> [SKIP][344] ([i915#6187]) +1 other test skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][345] ([fdo#111615]) +46 other tests skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][346] ([fdo#110723]) +22 other tests skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][347] ([i915#4538] / [i915#5190]) +13 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-3/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][348] ([fdo#111615])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb.html
    - shard-dg1:          NOTRUN -> [SKIP][349] ([fdo#111615])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][350] ([i915#4538]) +22 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-13/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][351] ([fdo#111615]) +24 other tests skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_joiner@basic:
    - shard-rkl:          NOTRUN -> [SKIP][352] ([i915#2705]) +1 other test skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@kms_big_joiner@basic.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-dg1:          NOTRUN -> [SKIP][353] ([i915#2705]) +1 other test skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@kms_big_joiner@invalid-modeset.html
    - shard-tglu:         NOTRUN -> [SKIP][354] ([i915#2705]) +1 other test skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@kms_big_joiner@invalid-modeset.html
    - shard-mtlp:         NOTRUN -> [SKIP][355] ([i915#2705]) +1 other test skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_big_joiner@invalid-modeset.html
    - shard-dg2:          NOTRUN -> [SKIP][356] ([i915#2705])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-4-tiled-dg2-rc-ccs-cc:
    - shard-mtlp:         NOTRUN -> [SKIP][357] ([i915#5354] / [i915#6095]) +184 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_ccs@pipe-a-bad-pixel-format-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y-tiled-gen12-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][358] ([i915#5354]) +234 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@kms_ccs@pipe-b-ccs-on-another-bo-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y-tiled-gen12-mc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][359] ([i915#5354] / [i915#6095]) +103 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y-tiled-gen12-mc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][360] ([i915#5354] / [i915#6095]) +222 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@kms_ccs@pipe-b-random-ccs-data-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-4-tiled-mtl-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][361] ([i915#5354] / [i915#6095]) +220 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@kms_ccs@pipe-c-bad-rotation-90-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-mc-ccs:
    - shard-glk:          NOTRUN -> [SKIP][362] ([fdo#109271]) +999 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-glk2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@pipe-d-random-ccs-data-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][363] ([i915#5354]) +134 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@kms_ccs@pipe-d-random-ccs-data-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_cdclk@mode-transition@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][364] ([i915#7213] / [i915#9010]) +3 other tests skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_cdclk@mode-transition@pipe-b-edp-1.html

  * igt@kms_cdclk@plane-scaling:
    - shard-rkl:          NOTRUN -> [SKIP][365] ([i915#3742]) +1 other test skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@kms_cdclk@plane-scaling.html
    - shard-dg1:          NOTRUN -> [SKIP][366] ([i915#3742]) +1 other test skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-18/igt@kms_cdclk@plane-scaling.html
    - shard-tglu:         NOTRUN -> [SKIP][367] ([i915#3742]) +1 other test skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-7/igt@kms_cdclk@plane-scaling.html

  * igt@kms_cdclk@plane-scaling@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][368] ([i915#4087]) +3 other tests skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-8/igt@kms_cdclk@plane-scaling@pipe-c-edp-1.html

  * igt@kms_chamelium_color@ctm-0-50:
    - shard-dg1:          NOTRUN -> [SKIP][369] ([fdo#111827]) +8 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@kms_chamelium_color@ctm-0-50.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-mtlp:         NOTRUN -> [SKIP][370] ([fdo#111827]) +6 other tests skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_color@ctm-red-to-blue:
    - shard-rkl:          NOTRUN -> [SKIP][371] ([fdo#111827]) +8 other tests skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@kms_chamelium_color@ctm-red-to-blue.html

  * igt@kms_chamelium_color@degamma:
    - shard-dg2:          NOTRUN -> [SKIP][372] ([fdo#111827]) +8 other tests skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_color@gamma:
    - shard-tglu:         NOTRUN -> [SKIP][373] ([fdo#111827]) +8 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@kms_chamelium_color@gamma.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][374] ([i915#7828]) +29 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][375] ([i915#7828]) +36 other tests skip
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-8/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
    - shard-tglu:         NOTRUN -> [SKIP][376] ([i915#7828]) +36 other tests skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
    - shard-dg1:          NOTRUN -> [SKIP][377] ([i915#7828]) +39 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-19/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][378] ([i915#7828]) +36 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@atomic:
    - shard-dg1:          NOTRUN -> [SKIP][379] ([i915#7116]) +3 other tests skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-12/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][380] ([i915#6944] / [i915#7116] / [i915#7118]) +5 other tests skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-4/igt@kms_content_protection@atomic-dpms.html
    - shard-dg2:          NOTRUN -> [SKIP][381] ([i915#7118]) +1 other test skip
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@content-type-change:
    - shard-tglu:         NOTRUN -> [SKIP][382] ([i915#9424]) +1 other test skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@kms_content_protection@content-type-change.html
    - shard-mtlp:         NOTRUN -> [SKIP][383] ([i915#9424])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][384] ([i915#3116] / [i915#3299]) +3 other tests skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@kms_content_protection@dp-mst-lic-type-0.html
    - shard-mtlp:         NOTRUN -> [SKIP][385] ([i915#3299]) +3 other tests skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][386] ([i915#3299]) +3 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][387] ([i915#3116]) +3 other tests skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@kms_content_protection@dp-mst-type-1.html
    - shard-dg1:          NOTRUN -> [SKIP][388] ([i915#3299]) +3 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][389] ([i915#7173])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-4.html

  * igt@kms_content_protection@lic:
    - shard-mtlp:         NOTRUN -> [SKIP][390] ([i915#6944]) +3 other tests skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          NOTRUN -> [SKIP][391] ([i915#9424]) +1 other test skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@kms_content_protection@mei-interface.html
    - shard-dg1:          NOTRUN -> [SKIP][392] ([i915#9424]) +1 other test skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@kms_content_protection@mei-interface.html
    - shard-mtlp:         NOTRUN -> [SKIP][393] ([i915#8063] / [i915#9433])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          NOTRUN -> [SKIP][394] ([i915#7118]) +4 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-6/igt@kms_content_protection@type1.html
    - shard-mtlp:         NOTRUN -> [SKIP][395] ([i915#3555] / [i915#6944])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][396] ([fdo#109279] / [i915#3359]) +1 other test skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html
    - shard-rkl:          NOTRUN -> [SKIP][397] ([fdo#109279] / [i915#3359]) +1 other test skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][398] ([i915#3555] / [i915#8814]) +9 other tests skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][399] ([i915#3359]) +6 other tests skip
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html
    - shard-mtlp:         NOTRUN -> [SKIP][400] ([i915#3359]) +7 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][401] ([i915#3359]) +6 other tests skip
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][402] ([i915#8814]) +12 other tests skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rapid-movement-64x21.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][403] ([i915#3359]) +6 other tests skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x512.html
    - shard-dg1:          NOTRUN -> [SKIP][404] ([i915#3359]) +8 other tests skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][405] ([fdo#111767] / [fdo#111825]) +4 other tests skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
    - shard-dg1:          NOTRUN -> [SKIP][406] ([fdo#111767] / [fdo#111825]) +4 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
    - shard-snb:          NOTRUN -> [SKIP][407] ([fdo#109271] / [fdo#111767]) +1 other test skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-snb6/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
    - shard-tglu:         NOTRUN -> [SKIP][408] ([fdo#109274] / [fdo#111767]) +2 other tests skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][409] ([i915#4213]) +5 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-dg2:          NOTRUN -> [SKIP][410] ([i915#4103] / [i915#4213] / [i915#5608]) +1 other test skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][411] ([i915#4103]) +5 other tests skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
    - shard-dg1:          NOTRUN -> [SKIP][412] ([i915#4103] / [i915#4213]) +5 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][413] ([i915#9809]) +19 other tests skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][414] ([fdo#109274] / [i915#5354]) +15 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][415] ([fdo#109274]) +20 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-mtlp:         NOTRUN -> [SKIP][416] ([fdo#111767]) +2 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
    - shard-dg2:          NOTRUN -> [SKIP][417] ([fdo#109274] / [fdo#111767] / [i915#5354]) +1 other test skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-mtlp:         NOTRUN -> [SKIP][418] ([i915#9067])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-rkl:          NOTRUN -> [SKIP][419] ([i915#9067])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-dg1:          NOTRUN -> [SKIP][420] ([i915#9067])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-13/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-tglu:         NOTRUN -> [SKIP][421] ([i915#9067])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][422] ([i915#4103] / [i915#4213]) +2 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-tglu:         NOTRUN -> [SKIP][423] ([i915#4103]) +5 other tests skip
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][424] ([i915#9833]) +1 other test skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
    - shard-mtlp:         NOTRUN -> [SKIP][425] ([i915#9833])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][426] ([i915#9723]) +2 other tests skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
    - shard-dg1:          NOTRUN -> [SKIP][427] ([i915#9723]) +2 other tests skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
    - shard-tglu:         NOTRUN -> [SKIP][428] ([i915#9723]) +2 other tests skip
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-4/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-dg2:          NOTRUN -> [SKIP][429] ([i915#3555]) +20 other tests skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@kms_display_modes@extended-mode-basic.html
    - shard-mtlp:         NOTRUN -> [SKIP][430] ([i915#3555] / [i915#8827])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_display_modes@extended-mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [FAIL][431] ([i915#9841]) +3 other tests fail
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-snb7/igt@kms_display_modes@extended-mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          NOTRUN -> [SKIP][432] ([i915#8588])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@kms_display_modes@mst-extended-mode-negative.html
    - shard-dg1:          NOTRUN -> [SKIP][433] ([i915#8588])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@kms_display_modes@mst-extended-mode-negative.html
    - shard-tglu:         NOTRUN -> [SKIP][434] ([i915#8588])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@kms_display_modes@mst-extended-mode-negative.html
    - shard-mtlp:         NOTRUN -> [SKIP][435] ([i915#8588])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][436] ([i915#3804])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][437] ([i915#3804])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          NOTRUN -> [SKIP][438] ([i915#1257])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-6/igt@kms_dp_aux_dev.html
    - shard-dg1:          NOTRUN -> [SKIP][439] ([i915#1257])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@kms_dp_aux_dev.html
    - shard-tglu:         NOTRUN -> [SKIP][440] ([i915#1257])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@kms_dp_aux_dev.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][441] ([i915#8812])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-18/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          NOTRUN -> [SKIP][442] ([i915#3555] / [i915#3840]) +3 other tests skip
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@kms_dsc@dsc-basic.html
    - shard-dg1:          NOTRUN -> [SKIP][443] ([i915#3555] / [i915#3840]) +3 other tests skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-18/igt@kms_dsc@dsc-basic.html
    - shard-mtlp:         NOTRUN -> [SKIP][444] ([i915#3555] / [i915#3840] / [i915#9159])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> [SKIP][445] ([i915#3840] / [i915#9688])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-rkl:          NOTRUN -> [SKIP][446] ([i915#3840]) +1 other test skip
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-dg1:          NOTRUN -> [SKIP][447] ([i915#3840]) +1 other test skip
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-tglu:         NOTRUN -> [SKIP][448] ([i915#3840]) +1 other test skip
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-mtlp:         NOTRUN -> [SKIP][449] ([i915#3840] / [i915#9688])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][450] ([i915#3840])
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu:         NOTRUN -> [SKIP][451] ([i915#3555] / [i915#3840]) +3 other tests skip
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-tglu-7/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-mtlp:         NOTRUN -> [SKIP][452] ([i915#3555] / [i915#3840]) +2 other tests skip
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_dsc@dsc-with-output-formats.html
    - shard-dg2:          NOTRUN -> [SKIP][453] ([i915#3555] / [i915#3840]) +1 other test skip
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-mtlp:         NOTRUN -> [SKIP][454] ([i915#3555] / [i915#3840] / [i915#9053])
   [454]: https://i

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/index.html

--===============7145967936953344038==
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
<tr><td><b>Series:</b></td><td>perf: Fix perf_event_validate_size() lockdep=
 splat</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/127883/">https://patchwork.freedesktop.org/series/127883/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127883v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14033_full -&gt; Patchwork_127883v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127883v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_127883v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 8)</h2>
<p>Missing    (1): shard-snb-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
127883v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_mmap_offset@close-race:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-snb2/igt@gem_mmap_offset@close-race.=
html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@kms_vrr@flip-basic-fastset=
.html">SKIP</a></p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@kms_vrr@flip-basic-fastset.=
html">SKIP</a></p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-19/igt@kms_vrr@flip-basic-fastset=
.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_vrr@seamless-rr-switch-drrs}:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@kms_vrr@seamless-rr-switch-=
drrs.html">SKIP</a> +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@kms_vrr@seamless-rr-switch=
-drrs.html">SKIP</a> +1 other test skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@kms_vrr@seamless-rr-switch=
-drrs.html">SKIP</a> +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_vrr@seamless-rr-switch-vrr}:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@kms_vrr@seamless-rr-switch=
-vrr.html">SKIP</a> +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@kms_vrr@seamless-rr-switch=
-vrr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_14033_full and Patchwork_1=
27883v1_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_flip@flip-vs-suspend@d-hdmi-a1:<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.39] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127883v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14033/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14033/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-7/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_140=
33/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_14033/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/sha=
rd-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_14033/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl=
-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14033/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1403=
3/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shar=
d-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14033/shard-rkl-1/boot.html">PASS</a>) -&gt; (<a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
127883v1/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rk=
l-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_127883v1/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-6/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12788=
3v1/shard-rkl-6/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-6=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_127883v1/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1=
/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_127883v1/shard-rkl-5/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127883v1/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shar=
d-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_127883v1/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-2/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27883v1/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl=
-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_127883v1/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/boot.html">PAS=
S</a>) ([i915#8293])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-19/igt@api_intel_bb@blit-reloc-p=
urge-cache.html">SKIP</a> ([i915#8411]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@api_intel_bb@crc32.html">SK=
IP</a> ([i915#6230])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-18/igt@api_intel_bb@crc32.html">S=
KIP</a> ([i915#6230])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-7/igt@api_intel_bb@crc32.html">S=
KIP</a> ([i915#6230])</p>
</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@api_intel_bb@object-reloc-=
keep-cache.html">SKIP</a> ([i915#8411]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@api_intel_bb@object-reloc-=
purge-cache.html">SKIP</a> ([i915#8411]) +3 other tests skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@api_intel_bb@object-reloc-=
purge-cache.html">SKIP</a> ([i915#8411]) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@debugfs_test@basic-hwmon.ht=
ml">SKIP</a> ([i915#9318])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@debugfs_test@basic-hwmon.h=
tml">SKIP</a> ([i915#9318])</p>
</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> ([i915#7701])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> ([i915#7701])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> ([i915#7701])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> ([i915#7701])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@device_reset@cold-reset-bou=
nd.html">SKIP</a> ([i915#7701])</p>
</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-19/igt@device_reset@unbind-reset=
-rebind.html">INCOMPLETE</a> ([i915#9408] / [i915#9618])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@drm_fdinfo@busy-hang@rcs0=
.html">SKIP</a> ([i915#8414]) +53 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@ccs3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@drm_fdinfo@busy-idle-check=
-all@ccs3.html">SKIP</a> ([i915#8414]) +65 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@drm_fdinfo@idle@rcs0.html"=
>FAIL</a> ([i915#7742]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@vecs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@drm_fdinfo@isolation@vecs=
0.html">SKIP</a> ([i915#8414]) +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@gem_basic@multigpu-create-c=
lose.html">SKIP</a> ([i915#7697]) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-18/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> ([i915#7697])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-7/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> ([i915#7697]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> ([i915#7697]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_busy@semaphore.html">S=
KIP</a> ([i915#3936])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@gem_busy@semaphore.html">S=
KIP</a> ([i915#3936])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_caching@writes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@gem_caching@writes.html">=
SKIP</a> ([i915#4873]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@gem_ccs@ctrl-surf-copy-ne=
w-ctx.html">SKIP</a> ([i915#9323]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@gem_ccs@suspend-resume.html=
">SKIP</a> ([i915#9323]) +2 other tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@gem_ccs@suspend-resume.htm=
l">SKIP</a> ([i915#9323]) +2 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@gem_ccs@suspend-resume.htm=
l">SKIP</a> ([i915#9323]) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_compute@compute-square:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_compute@compute-squar=
e.html">SKIP</a> ([i915#9310])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@gem_create@create-ext-cpu-=
access-big.html">INCOMPLETE</a> ([i915#9364])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@gem_create@create-ext-cpu-=
access-sanity-check.html">SKIP</a> ([i915#6335]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_create@create-ext-cpu-=
access-sanity-check.html">SKIP</a> ([i915#6335]) +1 other test skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@gem_create@create-ext-cpu-a=
ccess-sanity-check.html">SKIP</a> ([i915#6335]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> ([i915#8562])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@gem_create@create-ext-set-p=
at.html">SKIP</a> ([i915#8562])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> ([i915#8562])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-6/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> ([i915#8562])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_create@hog-create@smem0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@gem_create@hog-create@sme=
m0.html">FAIL</a> ([i915#8758])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-snb4/igt@gem_ctx_persistence@engines=
-mixed-process.html">SKIP</a> ([fdo#109271] / [i915#1099]) +13 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@gem_ctx_persistence@hang.=
html">SKIP</a> ([i915#8555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_ctx_persistence@heart=
beat-hostile.html">SKIP</a> ([i915#8555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-12/igt@gem_ctx_persistence@heart=
beat-stop.html">SKIP</a> ([i915#8555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_ctx_persistence@satur=
ated-hostile-nopreempt@ccs0.html">SKIP</a> ([i915#5882]) +9 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_ctx_persistence@satur=
ated-hostile-nopreempt@vcs0.html">SKIP</a> ([i915#5882]) +5 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@gem_ctx_sseu@engines.html">=
SKIP</a> ([i915#280]) +2 other tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gem_ctx_sseu@engines.html"=
>SKIP</a> ([i915#280]) +2 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@gem_ctx_sseu@engines.html"=
>SKIP</a> ([i915#280]) +2 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_ctx_sseu@engines.html"=
>SKIP</a> ([i915#280]) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-snb4/igt@gem_eio@unwedge-stress.html"=
>FAIL</a> ([i915#8898]) +1 other test fail</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gem_eio@unwedge-stress.htm=
l">FAIL</a> ([i915#5784]) +2 other tests fail</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_exec_balancer@bonded-=
dual.html">SKIP</a> ([i915#4771]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@gem_exec_balancer@bonded-f=
alse-hang.html">SKIP</a> ([i915#4812]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@gem_exec_balancer@bonded-sy=
nc.html">SKIP</a> ([i915#4771]) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-12/igt@gem_exec_balancer@bonded-s=
ync.html">SKIP</a> ([i915#4771]) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@gem_exec_balancer@invalid-b=
onds.html">SKIP</a> ([i915#4036])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@gem_exec_balancer@invalid-=
bonds.html">SKIP</a> ([i915#4036])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@gem_exec_balancer@parallel=
-balancer.html">SKIP</a> ([i915#4525]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-6/igt@gem_exec_balancer@paralle=
l-ordering.html">FAIL</a> ([i915#6117])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@gem_exec_capture@capture-i=
nvisible@lmem0.html">SKIP</a> ([i915#6334]) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@gem_exec_capture@capture-i=
nvisible@lmem0.html">SKIP</a> ([i915#6334]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-glk9/igt@gem_exec_capture@capture-inv=
isible@smem0.html">SKIP</a> ([fdo#109271] / [i915#6334])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@gem_exec_capture@capture-i=
nvisible@smem0.html">SKIP</a> ([i915#6334])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@gem_exec_capture@capture-in=
visible@smem0.html">SKIP</a> ([i915#6334])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-5/igt@gem_exec_capture@capture-i=
nvisible@smem0.html">SKIP</a> ([i915#6334])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@gem_exec_capture@capture-re=
coverable.html">SKIP</a> ([i915#6344])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-6/igt@gem_exec_capture@capture-r=
ecoverable.html">SKIP</a> ([i915#6344])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-glk3/igt@gem_exec_capture@many-4k-inc=
remental.html">FAIL</a> ([i915#9606]) +1 other test fail</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-8/igt@gem_exec_capture@many-4k-i=
ncremental.html">FAIL</a> ([i915#9606]) +1 other test fail</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@gem_exec_capture@many-4k-in=
cremental.html">FAIL</a> ([i915#9606])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@gem_exec_capture@many-4k-in=
cremental.html">FAIL</a> ([i915#9606]) +1 other test fail</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@gem_exec_capture@many-4k-z=
ero.html">FAIL</a> ([i915#9606]) +1 other test fail</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@gem_exec_capture@many-4k-z=
ero.html">FAIL</a> ([i915#9606]) +1 other test fail</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-glk6/igt@gem_exec_fair@basic-deadlin=
e.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-glk3/igt@gem_exec_fair@basic-none-rr=
ul@rcs0.html">FAIL</a> ([i915#2842]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_exec_fair@basic-none-=
solo.html">SKIP</a> ([i915#4473]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@gem_exec_fair@basic-none-=
vip.html">SKIP</a> ([i915#4473] / [i915#4771]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-6/igt@gem_exec_fair@basic-none-v=
ip@rcs0.html">FAIL</a> ([i915#2842]) +7 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_exec_fair@basic-pace-=
share.html">SKIP</a> ([i915#3539] / [i915#4852]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@gem_exec_fair@basic-pace-s=
olo.html">SKIP</a> ([i915#3539]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@gem_exec_fair@basic-pace@=
bcs0.html">FAIL</a> ([i915#2842]) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@gem_exec_fence@submit.htm=
l">SKIP</a> ([i915#4812]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_exec_fence@submit67.h=
tml">SKIP</a> ([i915#4812]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@gem_exec_flush@basic-uc-p=
rw-default.html">SKIP</a> ([i915#3539]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gem_exec_flush@basic-uc-r=
w-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +12 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@gem_exec_params@rsvd2-dirt=
.html">SKIP</a> ([i915#5107])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@gem_exec_params@rsvd2-dirt.=
html">SKIP</a> ([fdo#109283])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@gem_exec_params@rsvd2-dirt=
.html">SKIP</a> ([fdo#109283])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@gem_exec_params@rsvd2-dirt=
.html">SKIP</a> ([fdo#109283])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@gem_exec_params@secure-non-=
master.html">SKIP</a> ([fdo#112283])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@gem_exec_params@secure-non=
-master.html">SKIP</a> ([fdo#112283]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@gem_exec_params@secure-non-=
root.html">SKIP</a> ([fdo#112283]) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> ([fdo#112283]) +1 other test skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> ([fdo#112283]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@gem_exec_reloc@basic-activ=
e.html">SKIP</a> ([i915#3281]) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-=
cpu-noreloc.html">SKIP</a> ([i915#3281]) +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gem_exec_reloc@basic-wc-r=
ead.html">SKIP</a> ([i915#3281]) +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@gem_exec_reloc@basic-wc-re=
ad-noreloc.html">SKIP</a> ([i915#3281]) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@gem_exec_schedule@deep@rc=
s0.html">SKIP</a> ([i915#4537])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@gem_exec_schedule@preempt-=
queue-contexts-chain.html">SKIP</a> ([i915#4537] / [i915#4812]) +2 other te=
sts skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_exec_schedule@preempt-=
queue-contexts-chain.html">SKIP</a> ([i915#4537] / [i915#4812]) +1 other te=
st skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> ([i915#7276])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@gem_exec_suspend@basic-s4=
-devices@lmem0.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@gem_exec_suspend@basic-s4-=
devices@smem.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@gem_fence_thrash@bo-write-=
verify-x.html">SKIP</a> ([i915#4860]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-12/igt@gem_fenced_exec_thrash@no=
-spare-fences.html">SKIP</a> ([i915#4860]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no=
-spare-fences-interruptible.html">SKIP</a> ([i915#4860]) +9 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-4/igt@gem_huc_copy@huc-copy.html=
">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-glk5/igt@gem_huc_copy@huc-copy.html">=
SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@gem_lmem_evict@dontneed-evi=
ct-race.html">SKIP</a> ([i915#4613] / [i915#7582])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@gem_lmem_evict@dontneed-ev=
ict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_lmem_swapping@heavy-v=
erify-multi.html">SKIP</a> ([i915#4613]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@gem_lmem_swapping@parallel=
-random-verify-ccs.html">SKIP</a> ([i915#4613]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@gem_lmem_swapping@verify-=
ccs.html">SKIP</a> ([i915#4613]) +15 other tests skip</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-glk3/igt@gem_lmem_swapping@verify-ccs=
.html">SKIP</a> ([fdo#109271] / [i915#4613]) +18 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-19/igt@gem_lmem_swapping@verify-=
random-ccs@lmem0.html">SKIP</a> ([i915#4565]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@gem_media_fill@media-fill.=
html">SKIP</a> ([i915#8289])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@gem_media_fill@media-fill.=
html">SKIP</a> ([i915#8289])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_media_vme.html">SKIP</=
a> ([i915#284])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@gem_media_vme.html">SKIP</a=
> ([i915#284])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-18/igt@gem_media_vme.html">SKIP</=
a> ([i915#284])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-6/igt@gem_media_vme.html">SKIP</=
a> ([i915#284])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_mmap@bad-size.html">S=
KIP</a> ([i915#4083]) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@gem_mmap_gtt@basic-small-=
bo.html">SKIP</a> ([i915#4077]) +42 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@gem_mmap_gtt@coherency.htm=
l">SKIP</a> ([fdo#111656])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@gem_mmap_gtt@coherency.html=
">SKIP</a> ([fdo#111656])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@gem_mmap_gtt@cpuset-mediu=
m-copy.html">SKIP</a> ([i915#4077]) +50 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@gem_mmap_wc@invalid-flags.=
html">SKIP</a> ([i915#4083]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc-unflushed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-13/igt@gem_mmap_wc@write-cpu-rea=
d-wc-unflushed.html">SKIP</a> ([i915#4083]) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-13/igt@gem_pread@exhaustion.html"=
>SKIP</a> ([i915#3282]) +25 other tests skip</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-snb1/igt@gem_pread@exhaustion.html">W=
ARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-4/igt@gem_pread@exhaustion.html"=
>WARN</a> ([i915#2658]) +1 other test warn</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-glk2/igt@gem_pread@exhaustion.html">W=
ARN</a> ([i915#2658]) +1 other test warn</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@gem_pread@snoop.html">SKIP=
</a> ([i915#3282]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@gem_pwrite@basic-exhaustio=
n.html">SKIP</a> ([i915#3282]) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_pxp@create-valid-prot=
ected-context.html">SKIP</a> ([i915#4270]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_pxp@display-protected=
-crc.html">SKIP</a> ([i915#4270]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-6/igt@gem_pxp@fail-invalid-prot=
ected-context.html">SKIP</a> ([i915#4270]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@gem_pxp@protected-encrypte=
d-src-copy-not-readible.html">SKIP</a> ([i915#4270]) +15 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@gem_pxp@reject-modify-con=
text-protection-off-3.html">SKIP</a> ([i915#4270]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-bad-handle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@gem_readwrite@read-bad-ha=
ndle.html">SKIP</a> ([i915#3282]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@gem_render_copy@yf-tiled-=
mc-ccs-to-vebox-yf-tiled.html">SKIP</a> ([i915#8428]) +25 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gem_set_tiling_vs_blt@unti=
led-to-tiled.html">SKIP</a> ([i915#4079]) +4 other tests skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-7/igt@gem_set_tiling_vs_blt@until=
ed-to-tiled.html">SKIP</a> ([i915#4079]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@gem_softpin@evict-snoop.htm=
l">SKIP</a> ([fdo#109312]) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> ([i915#4885])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-5/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> ([fdo#109312]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> ([i915#4885]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> ([i915#4885]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@gem_tiled_partial_pwrite_=
pread@writes-after-reads.html">SKIP</a> ([i915#4077]) +54 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_tiled_pread_basic.htm=
l">SKIP</a> ([i915#4079]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gem_unfence_active_buffers=
.html">SKIP</a> ([i915#4879])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@gem_unfence_active_buffers=
.html">SKIP</a> ([i915#4879])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_unfence_active_buffers=
.html">SKIP</a> ([i915#4879])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-6/igt@gem_userptr_blits@coherency=
-sync.html">SKIP</a> ([fdo#110542])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@gem_userptr_blits@coherenc=
y-sync.html">SKIP</a> ([fdo#110542])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_userptr_blits@create-=
destroy-unsync.html">SKIP</a> ([i915#3297]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@gem_userptr_blits@dmabuf-s=
ync.html">SKIP</a> ([i915#3323])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-glk7/igt@gem_userptr_blits@dmabuf-syn=
c.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@gem_userptr_blits@dmabuf-sy=
nc.html">SKIP</a> ([i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@gem_userptr_blits@map-fix=
ed-invalidate-overlap.html">SKIP</a> ([i915#3297] / [i915#4880]) +3 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@gem_userptr_blits@map-fix=
ed-invalidate-overlap-busy.html">SKIP</a> ([i915#3297] / [i915#4880]) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-5/igt@gem_userptr_blits@readonl=
y-pwrite-unsync.html">SKIP</a> ([i915#3297]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@gem_userptr_blits@sd-probe.=
html">SKIP</a> ([i915#3297] / [i915#4958])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@gem_userptr_blits@sd-probe=
.html">SKIP</a> ([i915#3297] / [i915#4958])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-8/igt@gem_userptr_blits@unsync-=
overlap.html">SKIP</a> ([i915#3297]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@gem_userptr_blits@unsync-un=
map-after-close.html">SKIP</a> ([i915#3297]) +8 other tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gem_userptr_blits@unsync-u=
nmap-after-close.html">SKIP</a> ([i915#3297]) +11 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-6/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> ([i915#3318])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@gem_userptr_blits@vma-merg=
e.html">FAIL</a> ([i915#3318])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-glk6/igt@gem_userptr_blits@vma-merge.=
html">FAIL</a> ([i915#3318])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@gem_userptr_blits@vma-merg=
e.html">FAIL</a> ([i915#3318])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> ([i915#3318])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@invalid-create:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-snb6/igt@gem_vm_create@invalid-creat=
e.html">SKIP</a> ([fdo#109271]) +1190 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@gen7_exec_parse@chained-bat=
ch.html">SKIP</a> ([fdo#109289]) +14 other tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@gen7_exec_parse@chained-ba=
tch.html">SKIP</a> ([fdo#109289]) +16 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@load-register-reg:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@gen7_exec_parse@load-regi=
ster-reg.html">SKIP</a> ([fdo#109289]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@gen9_exec_parse@allowed-a=
ll.html">SKIP</a> ([i915#2856]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@gen9_exec_parse@bb-oversiz=
e.html">SKIP</a> ([i915#2527]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-18/igt@gen9_exec_parse@bb-start-c=
md.html">SKIP</a> ([i915#2527]) +12 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-7/igt@gen9_exec_parse@bb-start-c=
md.html">SKIP</a> ([i915#2527] / [i915#2856]) +12 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> ([i915#2856]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@i915_fb_tiling.html">SKIP<=
/a> ([i915#4881]) +1 other test skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-7/igt@i915_fb_tiling.html">SKIP</=
a> ([i915#4881]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-snb5/igt@i915_module_load@load.html">=
SKIP</a> ([fdo#109271] / [i915#6227])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-12/igt@i915_module_load@load.html=
">SKIP</a> ([i915#6227])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@i915_module_load@load.html=
">SKIP</a> ([i915#6227])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-glk8/igt@i915_module_load@load.html">=
SKIP</a> ([fdo#109271] / [i915#6227])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@i915_module_load@load.html=
">SKIP</a> ([i915#6227])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@i915_module_load@load.html"=
>SKIP</a> ([i915#6227])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@i915_module_load@load.html"=
>SKIP</a> ([i915#6227])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@i915_module_load@reload-wit=
h-fault-injection.html">INCOMPLETE</a> ([i915#9820] / [i915#9849])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@i915_module_load@reload-wi=
th-fault-injection.html">INCOMPLETE</a> ([i915#4391] / [i915#4423] / [i915#=
9849])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-4/igt@i915_module_load@reload-wi=
th-fault-injection.html">INCOMPLETE</a> ([i915#9200])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@i915_module_load@reload-wi=
th-fault-injection.html">ABORT</a> ([i915#9697])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@i915_module_load@reload-wit=
h-fault-injection.html">INCOMPLETE</a> ([i915#9849])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@i915_module_load@resize-bar=
.html">SKIP</a> ([i915#6412])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@i915_module_load@resize-ba=
r.html">SKIP</a> ([i915#7178])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-5/igt@i915_module_load@resize-ba=
r.html">SKIP</a> ([i915#6412])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@i915_module_load@resize-ba=
r.html">SKIP</a> ([i915#6412])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@i915_pipe_stress@stress-xr=
gb8888-ytiled.html">SKIP</a> ([i915#7091])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@i915_pipe_stress@stress-xr=
gb8888-ytiled.html">SKIP</a> ([i915#8436])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@i915_pm_freq_api@freq-bas=
ic-api.html">SKIP</a> ([i915#8399]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-2/igt@i915_pm_freq_api@freq-susp=
end.html">SKIP</a> ([i915#8399]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@i915_pm_freq_mult@media-fre=
q@gt0.html">SKIP</a> ([i915#6590])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@i915_pm_freq_mult@media-fr=
eq@gt0.html">SKIP</a> ([i915#6590])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-4/igt@i915_pm_freq_mult@media-fr=
eq@gt0.html">SKIP</a> ([i915#6590])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@i915_pm_freq_mult@media-f=
req@gt1.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-5/igt@i915_pm_rc6_residency@rc6=
-idle@gt0-bcs0.html">WARN</a> ([i915#2681]) +4 other tests warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@i915_pm_rc6_residency@rc6=
-idle@gt0-rcs0.html">FAIL</a> ([i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@i915_pm_rpm@gem-execbuf-s=
tress-pc8.html">SKIP</a> ([fdo#109293]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@i915_pm_rps@basic-api.htm=
l">SKIP</a> ([i915#6621]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@i915_pm_rps@min-max-config=
-loaded.html">SKIP</a> ([i915#6621])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@i915_pm_rps@min-max-config=
-loaded.html">SKIP</a> ([i915#6621])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@i915_pm_rps@reset.html">F=
AIL</a> ([i915#8346])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@i915_pm_rps@thresholds-id=
le-park@gt0.html">SKIP</a> ([i915#8925]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle@gt0:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@i915_pm_rps@thresholds-idl=
e@gt0.html">SKIP</a> ([i915#8925]) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@i915_pm_rps@thresholds-idl=
e@gt0.html">SKIP</a> ([i915#8925]) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-8/igt@i915_pm_rps@thresholds@gt=
1.html">SKIP</a> ([i915#3555] / [i915#8925]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-7/igt@i915_pm_sseu@full-enable.ht=
ml">SKIP</a> ([i915#4387])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@i915_pm_sseu@full-enable.ht=
ml">SKIP</a> ([i915#4387])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> ([i915#4387])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> ([i915#4387])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> ([i915#8437])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@i915_power@sanity.html">SK=
IP</a> ([i915#7984])</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-19/igt@i915_query@hwconfig_table.=
html">SKIP</a> ([i915#6245])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@i915_query@hwconfig_table=
.html">SKIP</a> ([i915#6245])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@i915_query@hwconfig_table.h=
tml">SKIP</a> ([i915#6245])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-4/igt@i915_query@query-topology=
-known-pci-ids.html">SKIP</a> ([fdo#109303])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@i915_query@query-topology-u=
nsupported.html">SKIP</a> ([fdo#109302])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@i915_query@query-topology-=
unsupported.html">SKIP</a> ([fdo#109302])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@i915_query@query-topology-=
unsupported.html">SKIP</a> ([fdo#109302])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@i915_query@query-topology-u=
nsupported.html">SKIP</a> ([fdo#109302])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-6/igt@i915_query@test-query-geome=
try-subslices.html">SKIP</a> ([i915#5723])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@i915_query@test-query-geom=
etry-subslices.html">SKIP</a> ([i915#5723])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@i915_query@test-query-geo=
metry-subslices.html">SKIP</a> ([i915#5723])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@i915_suspend@basic-s3-with=
out-i915.html">INCOMPLETE</a> ([i915#7443])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@i915_suspend@basic-s3-with=
out-i915.html">SKIP</a> ([i915#6645])</p>
</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@intel_hwmon@hwmon-write.htm=
l">SKIP</a> ([i915#7707]) +1 other test skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@intel_hwmon@hwmon-write.ht=
ml">SKIP</a> ([i915#7707]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@intel_hwmon@hwmon-write.ht=
ml">SKIP</a> ([i915#7707]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@kms_addfb_basic@addfb25-x=
-tiled-mismatch-legacy.html">SKIP</a> ([i915#4212]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@kms_addfb_basic@addfb25-y=
-tiled-small-legacy.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@kms_addfb_basic@basic-x-ti=
led-legacy.html">SKIP</a> ([i915#4212]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@kms_addfb_basic@basic-y-ti=
led-legacy.html">SKIP</a> ([i915#4215])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@kms_addfb_basic@basic-y-ti=
led-legacy.html">SKIP</a> ([i915#4215] / [i915#5190])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@kms_addfb_basic@tile-pitc=
h-mismatch.html">SKIP</a> ([i915#4212]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-c=
cs-cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc.html">SKIP</a> ([i915#8709=
]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> ([i915#87=
09]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-r=
c-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-7/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html">SKIP</a> ([i915#8709=
]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-r=
c-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-18/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> ([i915#8709=
]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@kms_async_flips@crc@pipe-=
a-dp-4.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@kms_async_flips@crc@pipe-=
a-edp-1.html">FAIL</a> ([i915#8247])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-12/igt@kms_async_flips@crc@pipe-=
b-hdmi-a-3.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@kms_async_flips@crc@pipe-=
d-edp-1.html">DMESG-FAIL</a> ([i915#8561]) +2 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@kms_async_flips@invalid-as=
ync-flip.html">SKIP</a> ([i915#6228])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@kms_async_flips@test-curs=
or.html">SKIP</a> ([i915#6229])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> ([i915#3555]) +2 other tests skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@kms_atomic@plane-primary-ov=
erlay-mutable-zpos.html">SKIP</a> ([i915#9531])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-6/igt@kms_atomic@plane-primary-ov=
erlay-mutable-zpos.html">SKIP</a> ([i915#9531])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> ([i915#9531])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> ([i915#9531])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing.html">SKIP</a> ([i915#1769] / [i915#3555]=
) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769=
] / [i915#3555])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-glk2/igt@kms_atomic_transition@plane-=
all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([fdo#109271]=
 / [i915#1769]) +1 other test skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@kms_atomic_transition@plane=
-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769]=
 / [i915#3555])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@kms_atomic_transition@plane=
-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i915=
#3555])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-19/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i91=
5#3555]) +1 other test skip</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-snb2/igt@kms_atomic_transition@plane-=
all-modeset-transition-internal-panels.html">SKIP</a> ([fdo#109271] / [i915=
#1769])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-6/igt@kms_big_fb@4-tiled-32bpp-=
rotate-270.html">SKIP</a> ([fdo#111615] / [i915#5286]) +27 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@kms_big_fb@4-tiled-addfb.ht=
ml">SKIP</a> ([i915#5286]) +30 other tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@kms_big_fb@4-tiled-addfb.h=
tml">SKIP</a> ([i915#5286]) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-7/igt@kms_big_fb@4-tiled-addfb-=
size-offset-overflow.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i9=
15#5286]) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-hflip.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_big_fb@linear-64bpp-r=
otate-270.html">SKIP</a> ([fdo#111614]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@kms_big_fb@linear-64bpp-ro=
tate-90.html">SKIP</a> ([fdo#111614] / [i915#3638]) +13 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@kms_big_fb@linear-8bpp-ro=
tate-0.html">DMESG-WARN</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@kms_big_fb@x-tiled-64bpp-=
rotate-270.html">SKIP</a> ([fdo#111614]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-7/igt@kms_big_fb@x-tiled-8bpp-r=
otate-90.html">SKIP</a> ([fdo#111614]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw=
-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> ([i915#3743]) +2 oth=
er tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-19/igt@kms_big_fb@y-tiled-64bpp-=
rotate-90.html">SKIP</a> ([i915#3638]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a> ([i915#5190]) +37 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a> ([i915#6187]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([fdo#111615]) +46 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-270.html">SKIP</a> ([fdo#110723]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-3/igt@kms_big_fb@yf-tiled-32bpp-=
rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190]) +13 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb.h=
tml">SKIP</a> ([fdo#111615])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-addfb.=
html">SKIP</a> ([fdo#111615])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-13/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-0.html">SKIP</a> ([i915#4538]) +22 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@kms_big_fb@yf-tiled-max-=
hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#111615]) +=
24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@kms_big_joiner@basic.html"=
>SKIP</a> ([i915#2705]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-15/igt@kms_big_joiner@invalid-mod=
eset.html">SKIP</a> ([i915#2705]) +1 other test skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@kms_big_joiner@invalid-mod=
eset.html">SKIP</a> ([i915#2705]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_big_joiner@invalid-mod=
eset.html">SKIP</a> ([i915#2705]) +1 other test skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@kms_big_joiner@invalid-mode=
set.html">SKIP</a> ([i915#2705])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_ccs@pipe-a-bad-pixel-=
format-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#5354] / [i915#6095]) +18=
4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@kms_ccs@pipe-b-ccs-on-ano=
ther-bo-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#5354]) +234 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@kms_ccs@pipe-b-missing-ccs=
-buffer-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#5354] / [i915#6095]) +10=
3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@kms_ccs@pipe-b-random-ccs=
-data-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#5354] / [i915#6095]) +222 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@kms_ccs@pipe-c-bad-rotat=
ion-90-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#5354] / [i915#6095]) +22=
0 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-glk2/igt@kms_ccs@pipe-c-crc-primary-=
rotation-180-4-tiled-mtl-mc-ccs.html">SKIP</a> ([fdo#109271]) +999 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@kms_ccs@pipe-d-random-ccs-=
data-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#5354]) +134 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_cdclk@mode-transition=
@pipe-b-edp-1.html">SKIP</a> ([i915#7213] / [i915#9010]) +3 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@kms_cdclk@plane-scaling.htm=
l">SKIP</a> ([i915#3742]) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-18/igt@kms_cdclk@plane-scaling.ht=
ml">SKIP</a> ([i915#3742]) +1 other test skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-7/igt@kms_cdclk@plane-scaling.ht=
ml">SKIP</a> ([i915#3742]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-8/igt@kms_cdclk@plane-scaling@p=
ipe-c-edp-1.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-50:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@kms_chamelium_color@ctm-0=
-50.html">SKIP</a> ([fdo#111827]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@kms_chamelium_color@ctm-b=
lue-to-red.html">SKIP</a> ([fdo#111827]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-red-to-blue:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@kms_chamelium_color@ctm-re=
d-to-blue.html">SKIP</a> ([fdo#111827]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@kms_chamelium_color@degamm=
a.html">SKIP</a> ([fdo#111827]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@gamma:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@kms_chamelium_color@gamma=
.html">SKIP</a> ([fdo#111827]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@kms_chamelium_frames@dp-c=
rc-fast.html">SKIP</a> ([i915#7828]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-8/igt@kms_chamelium_hpd@dp-hpd-=
for-each-pipe.html">SKIP</a> ([i915#7828]) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@kms_chamelium_hpd@hdmi-h=
pd-for-each-pipe.html">SKIP</a> ([i915#7828]) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-19/igt@kms_chamelium_hpd@hdmi-hp=
d-storm-disable.html">SKIP</a> ([i915#7828]) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@kms_chamelium_hpd@vga-hpd-=
fast.html">SKIP</a> ([i915#7828]) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-12/igt@kms_content_protection@at=
omic.html">SKIP</a> ([i915#7116]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-4/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118]) +5 other =
tests skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-3/igt@kms_content_protection@atom=
ic-dpms.html">SKIP</a> ([i915#7118]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@kms_content_protection@con=
tent-type-change.html">SKIP</a> ([i915#9424]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_content_protection@con=
tent-type-change.html">SKIP</a> ([i915#9424])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299]) +3 other tests sk=
ip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> ([i915#3299]) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@kms_content_protection@dp-=
mst-lic-type-1.html">SKIP</a> ([i915#3299]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@kms_content_protection@dp-m=
st-type-1.html">SKIP</a> ([i915#3116]) +3 other tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> ([i915#3299]) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@kms_content_protection@le=
gacy@pipe-a-dp-4.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@kms_content_protection@li=
c.html">SKIP</a> ([i915#6944]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@kms_content_protection@mei-=
interface.html">SKIP</a> ([i915#9424]) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@kms_content_protection@mei=
-interface.html">SKIP</a> ([i915#9424]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@kms_content_protection@mei=
-interface.html">SKIP</a> ([i915#8063] / [i915#9433])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-6/igt@kms_content_protection@type=
1.html">SKIP</a> ([i915#7118]) +4 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@kms_content_protection@typ=
e1.html">SKIP</a> ([i915#3555] / [i915#6944])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-5/igt@kms_cursor_crc@cursor-offs=
creen-512x170.html">SKIP</a> ([fdo#109279] / [i915#3359]) +1 other test ski=
p</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@kms_cursor_crc@cursor-offsc=
reen-512x170.html">SKIP</a> ([fdo#109279] / [i915#3359]) +1 other test skip=
</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-ons=
creen-32x10.html">SKIP</a> ([i915#3555] / [i915#8814]) +9 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@kms_cursor_crc@cursor-onsc=
reen-512x512.html">SKIP</a> ([i915#3359]) +6 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_cursor_crc@cursor-onsc=
reen-512x512.html">SKIP</a> ([i915#3359]) +7 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> ([i915#3359]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rap=
id-movement-64x21.html">SKIP</a> ([i915#8814]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@kms_cursor_crc@cursor-slidi=
ng-512x512.html">SKIP</a> ([i915#3359]) +6 other tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@kms_cursor_crc@cursor-slid=
ing-512x512.html">SKIP</a> ([i915#3359]) +8 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-v=
s-cursor-atomic.html">SKIP</a> ([fdo#111767] / [fdo#111825]) +4 other tests=
 skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-atomic.html">SKIP</a> ([fdo#111767] / [fdo#111825]) +4 other test=
s skip</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-snb6/igt@kms_cursor_legacy@2x-flip-vs=
-cursor-atomic.html">SKIP</a> ([fdo#109271] / [fdo#111767]) +1 other test s=
kip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#111767]) +2 other test=
s skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4213]) +5 other tests sk=
ip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103] / [i915#4213] / [i=
915#5608]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@kms_cursor_legacy@basic-bus=
y-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103]) +5 other tes=
ts skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213=
]) +5 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@kms_cursor_legacy@cursora=
-vs-flipb-atomic.html">SKIP</a> ([i915#9809]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@kms_cursor_legacy@cursora-=
vs-flipb-toggle.html">SKIP</a> ([fdo#109274] / [i915#5354]) +15 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@kms_cursor_legacy@cursor=
b-vs-flipa-varying-size.html">SKIP</a> ([fdo#109274]) +20 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-=
vs-flipb-atomic-transitions.html">SKIP</a> ([fdo#111767]) +2 other tests sk=
ip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@kms_cursor_legacy@cursorb-=
vs-flipb-atomic-transitions.html">SKIP</a> ([fdo#109274] / [fdo#111767] / [=
i915#5354]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-6/igt@kms_cursor_legacy@modeset-=
atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-2/igt@kms_cursor_legacy@modeset-a=
tomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-13/igt@kms_cursor_legacy@modeset-=
atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-4/igt@kms_cursor_legacy@modeset-=
atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i91=
5#4103] / [i915#4213]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-3/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4103]) +5 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-1/igt@kms_dirtyfb@drrs-dirtyfb-io=
ctl.html">SKIP</a> ([i915#9833]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-3/igt@kms_dirtyfb@drrs-dirtyfb-i=
octl.html">SKIP</a> ([i915#9833])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@kms_dirtyfb@psr-dirtyfb-ioc=
tl.html">SKIP</a> ([i915#9723]) +2 other tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@kms_dirtyfb@psr-dirtyfb-io=
ctl.html">SKIP</a> ([i915#9723]) +2 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-4/igt@kms_dirtyfb@psr-dirtyfb-io=
ctl.html">SKIP</a> ([i915#9723]) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-10/igt@kms_display_modes@extended=
-mode-basic.html">SKIP</a> ([i915#3555]) +20 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@kms_display_modes@extended=
-mode-basic.html">SKIP</a> ([i915#3555] / [i915#8827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1:<=
/p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-snb7/igt@kms_display_modes@extended-=
mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1.html">FAIL</a> ([i915#9841]) +3 oth=
er tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-4/igt@kms_display_modes@mst-exten=
ded-mode-negative.html">SKIP</a> ([i915#8588])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-17/igt@kms_display_modes@mst-exte=
nded-mode-negative.html">SKIP</a> ([i915#8588])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-2/igt@kms_display_modes@mst-exte=
nded-mode-negative.html">SKIP</a> ([i915#8588])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_display_modes@mst-exte=
nded-mode-negative.html">SKIP</a> ([i915#8588])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@kms_dither@fb-8bpc-vs-pa=
nel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-6/igt@kms_dp_aux_dev.html">SKIP</=
a> ([i915#1257])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-14/igt@kms_dp_aux_dev.html">SKIP<=
/a> ([i915#1257])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-10/igt@kms_dp_aux_dev.html">SKIP=
</a> ([i915#1257])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg1-18/igt@kms_draw_crc@draw-method-=
mmap-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-5/igt@kms_dsc@dsc-basic.html">SKI=
P</a> ([i915#3555] / [i915#3840]) +3 other tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-18/igt@kms_dsc@dsc-basic.html">SK=
IP</a> ([i915#3555] / [i915#3840]) +3 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-2/igt@kms_dsc@dsc-basic.html">SK=
IP</a> ([i915#3555] / [i915#3840] / [i915#9159])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp=
.html">SKIP</a> ([i915#3840] / [i915#9688])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp.=
html">SKIP</a> ([i915#3840]) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg1-16/igt@kms_dsc@dsc-fractional-bpp=
.html">SKIP</a> ([i915#3840]) +1 other test skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-tglu-8/igt@kms_dsc@dsc-fractional-bpp=
.html">SKIP</a> ([i915#3840]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-5/igt@kms_dsc@dsc-fractional-bpp=
.html">SKIP</a> ([i915#3840] / [i915#9688])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-dg2-5/igt@kms_dsc@dsc-fractional-bpp=
-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127883v1/shard-tglu-7/igt@kms_dsc@dsc-with-formats.=
html">SKIP</a> ([i915#3555] / [i915#3840]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-mtlp-1/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> ([i915#3555] / [i915#3840]) +2 other tests skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127883v1/shard-dg2-6/igt@kms_dsc@dsc-with-output-for=
mats.html">SKIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://i">SKIP</a> ([i915#=
3555] / [i915#3840] / [i915#9053])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7145967936953344038==--
