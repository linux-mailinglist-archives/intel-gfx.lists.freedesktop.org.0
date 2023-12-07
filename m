Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC91808665
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 12:10:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12CF510E85B;
	Thu,  7 Dec 2023 11:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5130710E85B;
 Thu,  7 Dec 2023 11:10:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 341B9AADE1;
 Thu,  7 Dec 2023 11:10:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7580396786989015709=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_Revert_=22debugfs=3A_annota?=
 =?utf-8?q?te_debugfs_handlers_vs=2E_removal_with_lockdep=22_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Date: Thu, 07 Dec 2023 11:10:04 -0000
Message-ID: <170194740416.28720.9996698727714379456@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231206064721.1600152-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20231206064721.1600152-1-chaitanya.kumar.borah@intel.com>
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

--===============7580396786989015709==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "debugfs: annotate debugfs handlers vs. removal with lockdep" (rev2)
URL   : https://patchwork.freedesktop.org/series/127359/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13983_full -> Patchwork_127359v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127359v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127359v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 7)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127359v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-tglu:         NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_pm_backlight@bad-brightness.html

  
#### Warnings ####

  * igt@kms_content_protection@type1:
    - shard-snb:          [SKIP][4] ([fdo#109271]) -> [INCOMPLETE][5] +1 other test incomplete
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-snb5/igt@kms_content_protection@type1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-snb7/igt@kms_content_protection@type1.html

  
Known issues
------------

  Here are the changes found in Patchwork_127359v2_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [FAIL][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30]) ([i915#8293]) -> ([PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk3/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk2/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk1/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk9/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk9/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk9/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk8/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk8/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk8/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk8/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk5/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk5/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk5/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk5/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk4/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk4/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk3/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk3/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk3/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk5/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk5/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk8/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk8/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk9/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk9/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#8411]) +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@api_intel_bb@blit-reloc-purge-cache.html
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#8411]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@crc32:
    - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#6230])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@api_intel_bb@crc32.html

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#8411])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@api_intel_bb@render-ccs:
    - shard-dg2:          NOTRUN -> [FAIL][60] ([i915#6122])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@api_intel_bb@render-ccs.html

  * igt@debugfs_test@basic-hwmon:
    - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#9318])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@debugfs_test@basic-hwmon.html
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#9318])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@debugfs_test@basic-hwmon.html
    - shard-tglu:         NOTRUN -> [SKIP][63] ([i915#9318])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@cold-reset-bound:
    - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#7701])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#7701])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@device_reset@unbind-cold-reset-rebind.html
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#7701])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@busy-check-all@bcs0:
    - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#8414]) +24 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@drm_fdinfo@busy-check-all@bcs0.html

  * igt@drm_fdinfo@busy-hang@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][68] ([i915#8414]) +10 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@drm_fdinfo@busy-hang@rcs0.html

  * igt@drm_fdinfo@busy-idle@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#8414]) +33 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-5/igt@drm_fdinfo@busy-idle@bcs0.html

  * igt@drm_fdinfo@idle@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][70] ([i915#7742])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][71] -> [FAIL][72] ([i915#7742])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#3936])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-6/igt@gem_busy@semaphore.html
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#3936])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_busy@semaphore.html
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#3936])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@gem_busy@semaphore.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#9323])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#9323]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@gem_ccs@suspend-resume.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#6335])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-1/igt@gem_create@create-ext-cpu-access-big.html
    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#6335])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#8562])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@gem_create@create-ext-set-pat.html
    - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#8562])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@gem_create@create-ext-set-pat.html
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#8562])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_create@create-ext-set-pat.html
    - shard-tglu:         NOTRUN -> [SKIP][83] ([i915#8562])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@hang:
    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#8555]) +3 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#8555]) +5 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-3/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#8555]) +3 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_persistence@processes:
    - shard-snb:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#1099]) +2 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-snb2/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#5882]) +9 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#280])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-4/igt@gem_ctx_sseu@engines.html
    - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#280])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@gem_ctx_sseu@engines.html
    - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#280])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#280]) +2 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#280]) +2 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@reset-stress:
    - shard-dg2:          NOTRUN -> [FAIL][94] ([i915#5784])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-3/igt@gem_eio@reset-stress.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          NOTRUN -> [FAIL][95] ([i915#5784])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#4771]) +1 other test skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@gem_exec_balancer@bonded-sync.html
    - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#4771]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_exec_balancer@bonded-sync.html
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#4771])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#4812]) +3 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#4036])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#4525]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#6334]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html
    - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#6334]) +1 other test skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-mtlp:         NOTRUN -> [FAIL][104] ([i915#9606])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_fair@basic-none:
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#3539] / [i915#4852]) +7 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_exec_fair@basic-none.html
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#4473] / [i915#4771]) +1 other test skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          NOTRUN -> [FAIL][107] ([i915#2842]) +5 other tests fail
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-tglu:         NOTRUN -> [FAIL][108] ([i915#2842]) +6 other tests fail
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-share:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#3539] / [i915#4852]) +8 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@gem_exec_fair@basic-pace-share.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][110] -> [FAIL][111] ([i915#2842])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#3539]) +1 other test skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-18/igt@gem_exec_fair@basic-pace-solo.html
    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#4473])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [PASS][114] -> [FAIL][115] ([i915#2842]) +3 other tests fail
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#3539]) +2 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][117] ([i915#2842]) +4 other tests fail
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_fence@submit67:
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#4812]) +1 other test skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#3711])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([fdo#112283])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@gem_exec_params@secure-non-master.html
    - shard-dg1:          NOTRUN -> [SKIP][121] ([fdo#112283]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-active:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#3281]) +31 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#3281]) +15 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#3281]) +14 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#3281]) +22 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-15/igt@gem_exec_reloc@basic-write-gtt-active.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#4537] / [i915#4812]) +2 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@gem_exec_schedule@preempt-queue-chain.html
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#4537] / [i915#4812]) +2 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#7276])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@gem_exec_schedule@semaphore-power.html
    - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#4812]) +5 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][130] ([i915#9275])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-6/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#4860]) +3 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#4860]) +1 other test skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-6/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#4860]) +3 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#4613] / [i915#7582])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@gem_lmem_evict@dontneed-evict-race.html
    - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#4613] / [i915#7582])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#4613]) +5 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#4613]) +5 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-4/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-glk:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#4613]) +5 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk5/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#4565])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@gem_lmem_swapping@verify-ccs@lmem0.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][140] ([i915#4613]) +5 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#8289])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@gem_media_fill@media-fill.html

  * igt@gem_media_vme:
    - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#284])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_media_vme.html
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#284])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@gem_media_vme.html
    - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#284])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@gem_media_vme.html
    - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#284])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_media_vme.html
    - shard-tglu:         NOTRUN -> [SKIP][146] ([i915#284])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@basic-small-bo:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#4077]) +24 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@gem_mmap_gtt@basic-small-bo.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#4077]) +20 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-1/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#4083]) +12 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_mmap_wc@read-write:
    - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#4083]) +10 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@gem_mmap_wc@read-write.html

  * igt@gem_mmap_wc@write-read:
    - shard-dg1:          NOTRUN -> [SKIP][151] ([i915#4083]) +8 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-15/igt@gem_mmap_wc@write-read.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#3282]) +14 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@gem_partial_pwrite_pread@reads-uncached.html
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#3282]) +9 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pread@exhaustion:
    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#3282]) +11 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#4270]) +7 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-3/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#4270]) +3 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@gem_pxp@regular-baseline-src-copy-readible.html
    - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#4270])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@verify-pxp-stale-buf-execution:
    - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#4270]) +4 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@gem_pxp@verify-pxp-stale-buf-execution.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#4270]) +7 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-19/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#3282]) +6 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#8428]) +8 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#4079]) +2 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#8411]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg1:          NOTRUN -> [SKIP][164] ([i915#4079]) +3 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#4885])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_softpin@evict-snoop.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#4077]) +26 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_tiled_pread_basic:
    - shard-mtlp:         NOTRUN -> [SKIP][167] ([i915#4079]) +3 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_tiled_pread_basic.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#3297]) +9 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate:
    - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#3297] / [i915#4880]) +1 other test skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@gem_userptr_blits@map-fixed-invalidate.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#3297] / [i915#4880])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-5/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#3297]) +2 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#3297]) +6 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#3297] / [i915#4958])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-3/igt@gem_userptr_blits@sd-probe.html
    - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#3297] / [i915#4958])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-13/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#3297]) +2 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@gem_userptr_blits@unsync-unmap-after-close.html
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#3297]) +7 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-18/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen3_render_tiledy_blits:
    - shard-mtlp:         NOTRUN -> [SKIP][177] ([fdo#109289]) +7 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@gen3_render_tiledy_blits.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([fdo#109289]) +9 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([fdo#109289]) +6 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@gen7_exec_parse@chained-batch.html

  * igt@gen7_exec_parse@load-register-reg:
    - shard-tglu:         NOTRUN -> [SKIP][180] ([fdo#109289]) +7 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@gen7_exec_parse@load-register-reg.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#2856]) +4 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-snb:          NOTRUN -> [SKIP][182] ([fdo#109271]) +388 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-snb2/igt@gen9_exec_parse@basic-rejected-ctx-param.html
    - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#2527] / [i915#2856]) +2 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#2527]) +3 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#2527]) +3 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#2856]) +5 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         NOTRUN -> [ABORT][187] ([i915#9820])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#7178])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#8399]) +1 other test skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#6621])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@i915_pm_rps@basic-api.html
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#6621])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#6621]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_rps@thresholds-park@gt0:
    - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#8925]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@i915_pm_rps@thresholds-park@gt0.html

  * igt@i915_pm_rps@thresholds@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#8925])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-7/igt@i915_pm_rps@thresholds@gt0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#4387])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@i915_pm_sseu@full-enable.html
    - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#4387])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#6188])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@i915_query@query-topology-coherent-slice-mask.html
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#6188])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#4212]) +2 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#4212]) +1 other test skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html
    - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#4212])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-18/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#4215] / [i915#5190])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#8709]) +3 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][204] ([i915#8709]) +7 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html

  * igt@kms_async_flips@crc@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [FAIL][205] ([i915#8247]) +3 other tests fail
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-7/igt@kms_async_flips@crc@pipe-c-hdmi-a-3.html

  * igt@kms_async_flips@test-cursor:
    - shard-mtlp:         NOTRUN -> [SKIP][206] ([i915#6229])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_async_flips@test-cursor.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][207] ([i915#3555])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#9531])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#9531])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#9531])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#9531])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-mtlp:         NOTRUN -> [SKIP][212] ([i915#1769] / [i915#3555])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#1769] / [i915#3555])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [PASS][214] -> [FAIL][215] ([i915#5138])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-addfb-size-overflow:
    - shard-dg1:          NOTRUN -> [SKIP][216] ([i915#5286]) +1 other test skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
    - shard-tglu:         NOTRUN -> [SKIP][217] ([i915#5286])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_big_fb@4-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][218] ([fdo#111615] / [i915#5286]) +8 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#5286]) +11 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][220] ([i915#4538] / [i915#5286]) +11 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][221] ([fdo#111614]) +4 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([fdo#111614]) +10 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
    - shard-rkl:          NOTRUN -> [SKIP][223] ([fdo#111614] / [i915#3638]) +5 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][224] ([fdo#111614]) +5 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [FAIL][225] ([i915#3743])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#3638]) +8 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-15/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#5190]) +29 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#4538] / [i915#5190]) +9 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
    - shard-rkl:          NOTRUN -> [SKIP][229] ([fdo#110723]) +5 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#4538]) +9 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-16/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([fdo#111615]) +1 other test skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-dg1:          NOTRUN -> [SKIP][232] ([fdo#111615]) +1 other test skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
    - shard-mtlp:         NOTRUN -> [SKIP][233] ([i915#6187]) +3 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][234] ([fdo#111615]) +7 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         NOTRUN -> [SKIP][235] ([fdo#111615]) +13 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_joiner@basic:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#2705]) +1 other test skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_big_joiner@basic.html
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#2705])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_big_joiner@basic.html
    - shard-dg1:          NOTRUN -> [SKIP][238] ([i915#2705])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@kms_big_joiner@basic.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#2705])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-mc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][240] ([i915#5354] / [i915#6095]) +104 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-16/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y-tiled-gen12-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#5354]) +187 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-5/igt@kms_ccs@pipe-b-ccs-on-another-bo-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#5354] / [i915#6095]) +35 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-2/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y-tiled-gen12-mc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][243] ([i915#5354] / [i915#6095]) +55 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-4/igt@kms_ccs@pipe-c-bad-rotation-90-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][244] ([i915#5354] / [i915#6095]) +69 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf-tiled-ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-yf-tiled-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#5354]) +42 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_ccs@pipe-d-crc-primary-basic-yf-tiled-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#3742])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_cdclk@mode-transition.html
    - shard-dg1:          NOTRUN -> [SKIP][247] ([i915#3742])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_cdclk@mode-transition.html
    - shard-tglu:         NOTRUN -> [SKIP][248] ([i915#3742])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#4087] / [i915#7213]) +3 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_cdclk@mode-transition@pipe-a-dp-4.html

  * igt@kms_cdclk@mode-transition@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][250] ([i915#7213] / [i915#9010]) +3 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_cdclk@mode-transition@pipe-b-edp-1.html

  * igt@kms_cdclk@plane-scaling@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][251] ([i915#4087]) +3 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-d-dp-4.html

  * igt@kms_chamelium_audio@dp-audio-edid:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#7828]) +24 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_chamelium_audio@dp-audio-edid.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-dg1:          NOTRUN -> [SKIP][253] ([i915#7828]) +24 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-16/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_color@ctm-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][254] ([fdo#111827]) +4 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_chamelium_color@ctm-0-25.html
    - shard-tglu:         NOTRUN -> [SKIP][255] ([fdo#111827]) +2 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_chamelium_color@ctm-0-25.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-mtlp:         NOTRUN -> [SKIP][256] ([fdo#111827]) +4 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_color@degamma:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([fdo#111827]) +6 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-3/igt@kms_chamelium_color@degamma.html
    - shard-dg1:          NOTRUN -> [SKIP][258] ([fdo#111827]) +4 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-13/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][259] ([i915#7828]) +10 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-7/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html

  * igt@kms_chamelium_hpd@dp-hpd:
    - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#7828]) +12 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-2/igt@kms_chamelium_hpd@dp-hpd.html

  * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][261] ([i915#7828]) +14 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-1/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html

  * igt@kms_content_protection@atomic:
    - shard-dg1:          NOTRUN -> [SKIP][262] ([i915#7116]) +4 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-16/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][263] ([i915#6944] / [i915#7116] / [i915#7118]) +2 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-mtlp:         NOTRUN -> [SKIP][264] ([i915#3299])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@lic:
    - shard-mtlp:         NOTRUN -> [SKIP][265] ([i915#6944]) +3 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@lic@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][266] ([i915#7173])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_content_protection@lic@pipe-a-dp-4.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#9424])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_content_protection@mei-interface.html
    - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#9424])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-4/igt@kms_content_protection@mei-interface.html
    - shard-tglu:         NOTRUN -> [SKIP][269] ([i915#9424])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_content_protection@mei-interface.html
    - shard-mtlp:         NOTRUN -> [SKIP][270] ([i915#8063] / [i915#9433])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#7118]) +2 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-3/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#7118]) +3 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][273] ([fdo#109279] / [i915#3359])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@kms_cursor_crc@cursor-offscreen-512x170.html
    - shard-mtlp:         NOTRUN -> [SKIP][274] ([i915#3359]) +2 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@kms_cursor_crc@cursor-offscreen-512x170.html
    - shard-rkl:          NOTRUN -> [SKIP][275] ([fdo#109279] / [i915#3359]) +1 other test skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][276] ([i915#3359]) +3 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][277] ([i915#3555] / [i915#8814])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#3555]) +18 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][279] ([i915#3359]) +4 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-16/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([fdo#109274] / [i915#5354]) +14 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][281] ([i915#9809]) +7 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][282] ([i915#4213]) +1 other test skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-dg2:          NOTRUN -> [SKIP][283] ([i915#4103] / [i915#4213] / [i915#5608]) +1 other test skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][284] ([i915#4103]) +2 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-dg1:          NOTRUN -> [SKIP][285] ([i915#4103] / [i915#4213]) +1 other test skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-tglu:         NOTRUN -> [SKIP][286] ([i915#4103]) +1 other test skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][287] ([fdo#111825]) +16 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-snb:          [PASS][288] -> [SKIP][289] ([fdo#109271]) +8 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-snb7/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-snb2/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-tglu:         NOTRUN -> [SKIP][290] ([fdo#109274]) +6 other tests skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-rkl:          NOTRUN -> [SKIP][291] ([fdo#111767] / [fdo#111825])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
    - shard-dg1:          NOTRUN -> [SKIP][292] ([fdo#111767] / [fdo#111825]) +1 other test skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
    - shard-snb:          NOTRUN -> [SKIP][293] ([fdo#109271] / [fdo#111767])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-snb2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
    - shard-tglu:         NOTRUN -> [SKIP][294] ([fdo#109274] / [fdo#111767])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
    - shard-mtlp:         NOTRUN -> [SKIP][295] ([fdo#111767])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
    - shard-dg2:          NOTRUN -> [SKIP][296] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-mtlp:         NOTRUN -> [SKIP][297] ([i915#9067])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-rkl:          NOTRUN -> [SKIP][298] ([i915#9067])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-tglu:         NOTRUN -> [SKIP][299] ([i915#9067])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][300] ([i915#4103] / [i915#4213])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][301] ([i915#9723])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
    - shard-dg1:          NOTRUN -> [SKIP][302] ([i915#9723])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
    - shard-tglu:         NOTRUN -> [SKIP][303] ([i915#9723])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-4/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dp_aux_dev:
    - shard-dg1:          NOTRUN -> [SKIP][304] ([i915#1257])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-16/igt@kms_dp_aux_dev.html
    - shard-tglu:         NOTRUN -> [SKIP][305] ([i915#1257])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-5/igt@kms_dp_aux_dev.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][306] ([i915#8812]) +1 other test skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html
    - shard-dg1:          NOTRUN -> [SKIP][307] ([i915#8812])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][308] ([i915#3555] / [i915#3840]) +1 other test skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-7/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-mtlp:         NOTRUN -> [SKIP][309] ([i915#3555] / [i915#3840]) +1 other test skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_dsc@dsc-with-output-formats.html
    - shard-dg2:          NOTRUN -> [SKIP][310] ([i915#3555] / [i915#3840]) +2 other tests skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_dsc@dsc-with-output-formats.html
    - shard-rkl:          NOTRUN -> [SKIP][311] ([i915#3555] / [i915#3840]) +1 other test skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html
    - shard-dg1:          NOTRUN -> [SKIP][312] ([i915#3555] / [i915#3840]) +2 other tests skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][313] ([i915#3840] / [i915#9053])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-3/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
    - shard-dg1:          NOTRUN -> [SKIP][314] ([i915#3840] / [i915#9053])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-13/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][315] ([i915#3469])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][316] ([i915#2065] / [i915#4854])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_feature_discovery@chamelium.html
    - shard-mtlp:         NOTRUN -> [SKIP][317] ([i915#4854])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_feature_discovery@chamelium.html
    - shard-dg2:          NOTRUN -> [SKIP][318] ([i915#4854])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_feature_discovery@chamelium.html
    - shard-rkl:          NOTRUN -> [SKIP][319] ([i915#4854])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-4/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-3x:
    - shard-dg2:          NOTRUN -> [SKIP][320] ([i915#1839]) +1 other test skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-rkl:          NOTRUN -> [SKIP][321] ([i915#1839]) +1 other test skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-2/igt@kms_feature_discovery@display-4x.html
    - shard-tglu:         NOTRUN -> [SKIP][322] ([i915#1839]) +2 other tests skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_feature_discovery@display-4x.html
    - shard-mtlp:         NOTRUN -> [SKIP][323] ([i915#1839]) +1 other test skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][324] ([i915#9337])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-5/igt@kms_feature_discovery@dp-mst.html
    - shard-dg1:          NOTRUN -> [SKIP][325] ([i915#9337])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-18/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_feature_discovery@psr1:
    - shard-rkl:          NOTRUN -> [SKIP][326] ([i915#658])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_feature_discovery@psr1.html
    - shard-dg1:          NOTRUN -> [SKIP][327] ([i915#658])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-19/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][328] ([fdo#109274]) +12 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_flip@2x-absolute-wf_vblank.html
    - shard-tglu:         NOTRUN -> [SKIP][329] ([fdo#109274] / [i915#3637] / [i915#3966])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-dg2:          NOTRUN -> [SKIP][330] ([fdo#109274] / [fdo#111767])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-dg1:          NOTRUN -> [SKIP][331] ([i915#8381]) +2 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][332] ([i915#3637]) +9 other tests skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][333] ([fdo#109274] / [i915#3637]) +7 other tests skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][334] ([i915#8381]) +2 other tests skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][335] ([i915#8810]) +1 other test skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][336] ([i915#3555] / [i915#8810]) +1 other test skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][337] ([i915#2587] / [i915#2672]) +9 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][338] ([i915#2672]) +5 other tests skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][339] ([i915#2672]) +8 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][340] ([i915#2672]) +2 other tests skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][341] ([i915#2587] / [i915#2672]) +3 other tests skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-dg1:          NOTRUN -> [SKIP][342] ([fdo#109285])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - shard-mtlp:         NOTRUN -> [SKIP][343] ([i915#5274])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][344] ([fdo#109280]) +44 other tests skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][345] ([i915#8708]) +41 other tests skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][346] ([i915#5439])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
    - shard-dg1:          NOTRUN -> [SKIP][347] ([i915#5439])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][348] ([i915#5460])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][349] ([i915#3458]) +39 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][350] ([fdo#111825]) +89 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][351] ([i915#8708]) +46 other tests skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][352] ([i915#3023]) +42 other tests skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][353] ([i915#5460])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-dg1:          NOTRUN -> [SKIP][354] ([i915#9766])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-13/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
    - shard-dg2:          NOTRUN -> [SKIP][355] ([i915#9766])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-3/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@plane-fbc-rte:
    - shard-dg2:          NOTRUN -> [SKIP][356] ([i915#9653])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-5/igt@kms_frontbuffer_tracking@plane-fbc-rte.html
    - shard-dg1:          NOTRUN -> [SKIP][357] ([i915#9653])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-16/igt@kms_frontbuffer_tracking@plane-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-tglu:         NOTRUN -> [SKIP][358] ([fdo#110189]) +36 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][359] ([i915#1825]) +49 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][360] ([i915#8708]) +20 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][361] ([fdo#111825] / [i915#1825]) +47 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][362] ([i915#3458]) +44 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html

  * igt@kms_getfb@getfb-reject-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][363] ([i915#6118])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@kms_getfb@getfb-reject-ccs.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-rkl:          NOTRUN -> [SKIP][364] ([i915#433])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-1/igt@kms_hdmi_inject@inject-audio.html
    - shard-tglu:         NOTRUN -> [SKIP][365] ([i915#433])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][366] ([i915#3555] / [i915#8228])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][367] ([i915#3555] / [i915#8228])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_hdr@static-toggle-dpms.html
    - shard-rkl:          NOTRUN -> [SKIP][368] ([i915#3555] / [i915#8228])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-4/igt@kms_hdr@static-toggle-dpms.html
    - shard-tglu:         NOTRUN -> [SKIP][369] ([i915#3555] / [i915#8228])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][370] ([i915#3555] / [i915#8228]) +3 other tests skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-mtlp:         NOTRUN -> [SKIP][371] ([i915#4816])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
    - shard-dg2:          NOTRUN -> [SKIP][372] ([i915#4816])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
    - shard-rkl:          NOTRUN -> [SKIP][373] ([i915#4816])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
    - shard-dg1:          NOTRUN -> [SKIP][374] ([i915#1839]) +1 other test skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][375] ([i915#6301])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_panel_fitting@legacy.html
    - shard-dg2:          NOTRUN -> [SKIP][376] ([i915#6301])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_panel_fitting@legacy.html
    - shard-rkl:          NOTRUN -> [SKIP][377] ([i915#6301])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_panel_fitting@legacy.html
    - shard-dg1:          NOTRUN -> [SKIP][378] ([i915#6301])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
    - shard-dg1:          NOTRUN -> [SKIP][379] ([fdo#109289]) +7 other tests skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-18/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][380] ([i915#7862]) +1 other test fail
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk1/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html

  * igt@kms_plane_lowres@tiling-none@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][381] ([i915#3582]) +3 other tests skip
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_plane_lowres@tiling-none@pipe-b-edp-1.html

  * igt@kms_plane_lowres@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][382] ([i915#8821])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_plane_lowres@tiling-y.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][383] ([i915#3555] / [i915#8821])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][384] ([i915#3555] / [i915#8806])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-1/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][385] ([i915#8292])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][386] ([fdo#109271]) +342 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][387] ([i915#9423]) +3 other tests skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][388] ([i915#5176]) +11 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-edp-1.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][389] ([i915#9423]) +15 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][390] ([i915#9423]) +13 other tests skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][391] ([i915#9423]) +23 other tests skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-18/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][392] ([i915#5176] / [i915#9423]) +1 other test skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][393] ([i915#5176] / [i915#9423]) +3 other tests skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][394] ([i915#5176] / [i915#9423]) +3 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][395] ([i915#5235]) +7 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][396] ([i915#5235]) +23 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-dp-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][397] ([i915#5235]) +21 other tests skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][398] ([i915#3555] / [i915#5235]) +5 other tests skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][399] ([i915#5235]) +3 other tests skip
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][400] ([i915#5235]) +3 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-dg1:          NOTRUN -> [SKIP][401] ([i915#5354])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-mtlp:         NOTRUN -> [SKIP][402] ([i915#9293])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-dg1:          NOTRUN -> [SKIP][403] ([i915#9685]) +1 other test skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][404] ([i915#5978])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_pm_dc@dc6-dpms.html
    - shard-dg1:          NOTRUN -> [SKIP][405] ([i915#3361])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@kms_pm_dc@dc6-dpms.html
    - shard-tglu:         [PASS][406] -> [FAIL][407] ([i915#9295])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-tglu-4/igt@kms_pm_dc@dc6-dpms.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-mtlp:         NOTRUN -> [FAIL][408] ([i915#9298])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-1/igt@kms_pm_dc@dc6-psr.html
    - shard-rkl:          NOTRUN -> [SKIP][409] ([i915#9685])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][410] ([i915#9340])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_pm_lpsp@kms-lpsp.html
    - shard-dg1:          NOTRUN -> [SKIP][411] ([i915#9340])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@kms-lpsp@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [FAIL][412] ([i915#9301])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_pm_lpsp@kms-lpsp@pipe-a-hdmi-a-1.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-mtlp:         NOTRUN -> [SKIP][413] ([i915#8430])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][414] ([i915#9519])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-6/igt@kms_pm_rpm@dpms-lpsp.html
    - shard-dg1:          NOTRUN -> [SKIP][415] ([i915#9519])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          NOTRUN -> [FAIL][416] ([i915#8717])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          NOTRUN -> [SKIP][417] ([i915#9519])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-tglu:         NOTRUN -> [SKIP][418] ([i915#9519])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-mtlp:         NOTRUN -> [SKIP][419] ([i915#9519]) +1 other test skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@pc8-residency:
    - shard-mtlp:         NOTRUN -> [SKIP][420] ([fdo#109293]) +1 other test skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@kms_pm_rpm@pc8-residency.html
    - shard-rkl:          NOTRUN -> [SKIP][421] ([fdo#109293] / [fdo#109506]) +1 other test skip
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@kms_pm_rpm@pc8-residency.html
    - shard-dg1:          NOTRUN -> [SKIP][422] ([fdo#109293] / [fdo#109506]) +1 other test skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-18/igt@kms_pm_rpm@pc8-residency.html
    - shard-tglu:         NOTRUN -> [SKIP][423] ([fdo#109293] / [fdo#109506])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@kms_pm_rpm@pc8-residency.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][424] ([i915#6524])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html
    - shard-tglu:         NOTRUN -> [SKIP][425] ([i915#6524])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_prime@basic-crc-hybrid.html
    - shard-mtlp:         NOTRUN -> [SKIP][426] ([i915#6524])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-crc-vgem:
    - shard-dg2:          NOTRUN -> [SKIP][427] ([i915#6524] / [i915#6805]) +2 other tests skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_prime@basic-crc-vgem.html

  * igt@kms_prime@d3hot:
    - shard-dg1:          NOTRUN -> [SKIP][428] ([i915#6524]) +1 other test skip
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-dg1:          NOTRUN -> [SKIP][429] ([i915#9683]) +2 other tests skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-rkl:          NOTRUN -> [SKIP][430] ([i915#9683]) +1 other test skip
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][431] ([i915#9683])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][432] ([fdo#111068] / [i915#9683]) +4 other tests skip
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-15/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][433] ([fdo#111068] / [i915#9683]) +1 other test skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-mtlp:         NOTRUN -> [SKIP][434] ([i915#4348]) +1 other test skip
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg2:          NOTRUN -> [SKIP][435] ([i915#9683]) +8 other tests skip
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_psr2_su@page_flip-p010.html
    - shard-rkl:          NOTRUN -> [SKIP][436] ([fdo#111068] / [i915#9683]) +2 other tests skip
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_psr2_su@page_flip-p010.html
    - shard-tglu:         NOTRUN -> [SKIP][437] ([fdo#109642] / [fdo#111068] / [i915#9683])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-dg1:          NOTRUN -> [SKIP][438] ([i915#4884])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][439] ([i915#5289])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
    - shard-dg1:          NOTRUN -> [SKIP][440] ([i915#5289])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
    - shard-tglu:         NOTRUN -> [SKIP][441] ([i915#5289])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][442] ([i915#4235]) +4 other tests skip
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/index.html

--===============7580396786989015709==
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
<tr><td><b>Series:</b></td><td>Revert &quot;debugfs: annotate debugfs handl=
ers vs. removal with lockdep&quot; (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/127359/">https://patchwork.freedesktop.org/series/127359/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127359v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13983_full -&gt; Patchwork_127359v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127359v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_127359v2_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (8 -&gt; 7)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
127359v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@i915_module_load@reload-w=
ith-fault-injection.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-6/igt@kms_dirtyfb@psr-dirtyfb-io=
ctl.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_pm_backlight@bad-brig=
htness.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_content_protection@type1:<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13983/shard-snb5/igt@kms_content_protection@type1.html">SKIP</a> ([=
fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127359v2/shard-snb7/igt@kms_content_protection@type1.html">INCOMPLETE=
</a> +1 other test incomplete</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127359v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13983/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk2/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13983/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13983/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/sha=
rd-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13983/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk9/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk8/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13983/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13983/shard-glk8/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk8/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13983/shard-glk6/boot.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-gl=
k5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13983/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3983/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13983/shard-glk4/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shard-glk3/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13983/shar=
d-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13983/shard-glk3/boot.html">PASS</a>) ([i915#8293]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-gl=
k1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_127359v2/shard-glk1/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk2/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2=
/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127359v2/shard-glk2/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk3/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_127359v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_127359v2/shard-glk3/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk=
4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_127359v2/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk4/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/=
shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_127359v2/shard-glk5/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk5/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
127359v2/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_127359v2/shard-glk6/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk6=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_127359v2/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk7/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/s=
hard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_127359v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk8/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27359v2/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_127359v2/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-glk9/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@api_intel_bb@blit-reloc-pu=
rge-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@api_intel_bb@blit-reloc-pur=
ge-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@api_intel_bb@crc32.html">=
SKIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@api_intel_bb@object-reloc=
-purge-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@render-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@api_intel_bb@render-ccs.h=
tml">FAIL</a> ([i915#6122])</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@debugfs_test@basic-hwmon.h=
tml">SKIP</a> ([i915#9318])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@debugfs_test@basic-hwmon.ht=
ml">SKIP</a> ([i915#9318])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@debugfs_test@basic-hwmon.=
html">SKIP</a> ([i915#9318])</p>
</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> ([i915#7701])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> ([i915#7701])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@device_reset@unbind-cold-re=
set-rebind.html">SKIP</a> ([i915#7701])</p>
</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@drm_fdinfo@busy-check-all=
@bcs0.html">SKIP</a> ([i915#8414]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@drm_fdinfo@busy-hang@rcs0=
.html">SKIP</a> ([i915#8414]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-5/igt@drm_fdinfo@busy-idle@bcs0.=
html">SKIP</a> ([i915#8414]) +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html"=
>FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13983/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127359v2/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html"=
>FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-6/igt@gem_busy@semaphore.html">SK=
IP</a> ([i915#3936])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_busy@semaphore.html">S=
KIP</a> ([i915#3936])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@gem_busy@semaphore.html">S=
KIP</a> ([i915#3936])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@gem_ccs@block-multicopy-co=
mpressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> ([i915#9323]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-1/igt@gem_create@create-ext-cpu-=
access-big.html">SKIP</a> ([i915#6335])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@gem_create@create-ext-cpu-a=
ccess-big.html">SKIP</a> ([i915#6335])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@gem_create@create-ext-set-p=
at.html">SKIP</a> ([i915#8562])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@gem_create@create-ext-set-p=
at.html">SKIP</a> ([i915#8562])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> ([i915#8562])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> ([i915#8562])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_ctx_persistence@hang.=
html">SKIP</a> ([i915#8555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-3/igt@gem_ctx_persistence@heartb=
eat-hostile.html">SKIP</a> ([i915#8555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_ctx_persistence@heart=
beat-many.html">SKIP</a> ([i915#8555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@processes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-snb2/igt@gem_ctx_persistence@process=
es.html">SKIP</a> ([fdo#109271] / [i915#1099]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@gem_ctx_persistence@satura=
ted-hostile-nopreempt@ccs0.html">SKIP</a> ([i915#5882]) +9 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-4/igt@gem_ctx_sseu@engines.html">=
SKIP</a> ([i915#280])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@gem_ctx_sseu@engines.html"=
>SKIP</a> ([i915#280])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@gem_ctx_sseu@engines.html"=
>SKIP</a> ([i915#280])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@gem_ctx_sseu@invalid-sseu=
.html">SKIP</a> ([i915#280]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@gem_ctx_sseu@mmap-args.ht=
ml">SKIP</a> ([i915#280]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-3/igt@gem_eio@reset-stress.html"=
>FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@gem_eio@unwedge-stress.ht=
ml">FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@gem_exec_balancer@bonded-sy=
nc.html">SKIP</a> ([i915#4771]) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_exec_balancer@bonded-s=
ync.html">SKIP</a> ([i915#4771]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@gem_exec_balancer@bonded-s=
ync.html">SKIP</a> ([i915#4771])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@gem_exec_balancer@bonded-t=
rue-hang.html">SKIP</a> ([i915#4812]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_exec_balancer@invalid=
-bonds.html">SKIP</a> ([i915#4036])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@gem_exec_balancer@parallel=
-keep-submit-fence.html">SKIP</a> ([i915#4525]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@gem_exec_capture@capture-in=
visible@lmem0.html">SKIP</a> ([i915#6334]) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@gem_exec_capture@capture-i=
nvisible@lmem0.html">SKIP</a> ([i915#6334]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_exec_capture@many-4k-=
incremental.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_exec_fair@basic-none.h=
tml">SKIP</a> ([i915#3539] / [i915#4852]) +7 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@gem_exec_fair@basic-none.h=
tml">SKIP</a> ([i915#4473] / [i915#4771]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@gem_exec_fair@basic-none@b=
cs0.html">FAIL</a> ([i915#2842]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@gem_exec_fair@basic-none@=
rcs0.html">FAIL</a> ([i915#2842]) +6 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@gem_exec_fair@basic-pace-=
share.html">SKIP</a> ([i915#3539] / [i915#4852]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13983/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7359v2/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([=
i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-18/igt@gem_exec_fair@basic-pace-s=
olo.html">SKIP</a> ([i915#3539]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@gem_exec_fair@basic-pace-s=
olo.html">SKIP</a> ([i915#4473])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13983/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v=
2/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]=
) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@gem_exec_fair@basic-throt=
tle.html">SKIP</a> ([i915#3539]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-glk6/igt@gem_exec_fair@basic-throttl=
e@rcs0.html">FAIL</a> ([i915#2842]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_exec_fence@submit67.h=
tml">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_exec_flush@basic-batc=
h-kernel-default-cmd.html">SKIP</a> ([i915#3711])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@gem_exec_params@secure-non-=
master.html">SKIP</a> ([fdo#112283])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@gem_exec_params@secure-non=
-master.html">SKIP</a> ([fdo#112283]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@gem_exec_reloc@basic-activ=
e.html">SKIP</a> ([i915#3281]) +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@gem_exec_reloc@basic-gtt-=
cpu-noreloc.html">SKIP</a> ([i915#3281]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-r=
ead-noreloc.html">SKIP</a> ([i915#3281]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-15/igt@gem_exec_reloc@basic-writ=
e-gtt-active.html">SKIP</a> ([i915#3281]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@gem_exec_schedule@preempt-=
queue-chain.html">SKIP</a> ([i915#4537] / [i915#4812]) +2 other tests skip<=
/p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@gem_exec_schedule@preempt-q=
ueue-chain.html">SKIP</a> ([i915#4537] / [i915#4812]) +2 other tests skip</=
p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@gem_exec_schedule@semaphore=
-power.html">SKIP</a> ([i915#7276])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> ([i915#4812]) +5 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-6/igt@gem_exec_suspend@basic-s0@=
smem.html">INCOMPLETE</a> ([i915#9275])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@gem_fence_thrash@bo-write-=
verify-threaded-none.html">SKIP</a> ([i915#4860]) +3 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-6/igt@gem_fence_thrash@bo-write-=
verify-threaded-none.html">SKIP</a> ([i915#4860]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@gem_fenced_exec_thrash@2-=
spare-fences.html">SKIP</a> ([i915#4860]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@gem_lmem_evict@dontneed-evi=
ct-race.html">SKIP</a> ([i915#4613] / [i915#7582])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@gem_lmem_evict@dontneed-ev=
ict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@gem_lmem_swapping@heavy-v=
erify-multi.html">SKIP</a> ([i915#4613]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-4/igt@gem_lmem_swapping@heavy-ve=
rify-random.html">SKIP</a> ([i915#4613]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-glk5/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> ([fdo#109271] / [i915#4613]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@gem_lmem_swapping@verify-=
ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@gem_lmem_swapping@verify=
-random-ccs.html">SKIP</a> ([i915#4613]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@gem_media_fill@media-fill=
.html">SKIP</a> ([i915#8289])</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_media_vme.html">SKIP</=
a> ([i915#284])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@gem_media_vme.html">SKIP</=
a> ([i915#284])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@gem_media_vme.html">SKIP</a=
> ([i915#284])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_media_vme.html">SKIP</=
a> ([i915#284])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@gem_media_vme.html">SKIP</=
a> ([i915#284])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@gem_mmap_gtt@basic-small-b=
o.html">SKIP</a> ([i915#4077]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-1/igt@gem_mmap_gtt@fault-concur=
rent-y.html">SKIP</a> ([i915#4077]) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@gem_mmap_wc@invalid-flags=
.html">SKIP</a> ([i915#4083]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@gem_mmap_wc@read-write.ht=
ml">SKIP</a> ([i915#4083]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-15/igt@gem_mmap_wc@write-read.ht=
ml">SKIP</a> ([i915#4083]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@gem_partial_pwrite_pread@re=
ads-uncached.html">SKIP</a> ([i915#3282]) +14 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@gem_partial_pwrite_pread@re=
ads-uncached.html">SKIP</a> ([i915#3282]) +9 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@gem_pread@exhaustion.html=
">SKIP</a> ([i915#3282]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-3/igt@gem_pxp@display-protected-=
crc.html">SKIP</a> ([i915#4270]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@gem_pxp@regular-baseline-sr=
c-copy-readible.html">SKIP</a> ([i915#4270]) +3 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@gem_pxp@regular-baseline-s=
rc-copy-readible.html">SKIP</a> ([i915#4270])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@gem_pxp@verify-pxp-stale-=
buf-execution.html">SKIP</a> ([i915#4270]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-19/igt@gem_pxp@verify-pxp-stale-=
ctx-execution.html">SKIP</a> ([i915#4270]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@gem_readwrite@write-bad-h=
andle.html">SKIP</a> ([i915#3282]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@gem_render_copy@y-tiled-t=
o-vebox-y-tiled.html">SKIP</a> ([i915#8428]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-6/igt@gem_set_tiling_vs_blt@tiled=
-to-untiled.html">SKIP</a> ([i915#4079]) +2 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled=
-to-untiled.html">SKIP</a> ([i915#8411]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_set_tiling_vs_blt@unt=
iled-to-tiled.html">SKIP</a> ([i915#4079]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_softpin@evict-snoop.h=
tml">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@gem_tiled_partial_pwrite_=
pread@writes-after-reads.html">SKIP</a> ([i915#4077]) +26 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_tiled_pread_basic.htm=
l">SKIP</a> ([i915#4079]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@gem_userptr_blits@create-=
destroy-unsync.html">SKIP</a> ([i915#3297]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@gem_userptr_blits@map-fix=
ed-invalidate.html">SKIP</a> ([i915#3297] / [i915#4880]) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-5/igt@gem_userptr_blits@map-fixe=
d-invalidate-busy.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@gem_userptr_blits@readonly=
-pwrite-unsync.html">SKIP</a> ([i915#3297]) +2 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@gem_userptr_blits@readonly=
-pwrite-unsync.html">SKIP</a> ([i915#3297]) +6 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-3/igt@gem_userptr_blits@sd-probe.=
html">SKIP</a> ([i915#3297] / [i915#4958])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-13/igt@gem_userptr_blits@sd-probe=
.html">SKIP</a> ([i915#3297] / [i915#4958])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@gem_userptr_blits@unsync-un=
map-after-close.html">SKIP</a> ([i915#3297]) +2 other tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-18/igt@gem_userptr_blits@unsync-u=
nmap-after-close.html">SKIP</a> ([i915#3297]) +7 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledy_blits:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@gen3_render_tiledy_blits.=
html">SKIP</a> ([fdo#109289]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@gen7_exec_parse@basic-reje=
cted.html">SKIP</a> ([fdo#109289]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@gen7_exec_parse@chained-ba=
tch.html">SKIP</a> ([fdo#109289]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@load-register-reg:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@gen7_exec_parse@load-regi=
ster-reg.html">SKIP</a> ([fdo#109289]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@gen9_exec_parse@allowed-s=
ingle.html">SKIP</a> ([i915#2856]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-snb2/igt@gen9_exec_parse@basic-reject=
ed-ctx-param.html">SKIP</a> ([fdo#109271]) +388 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@gen9_exec_parse@basic-reje=
cted-ctx-param.html">SKIP</a> ([i915#2527] / [i915#2856]) +2 other tests sk=
ip</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@gen9_exec_parse@bb-chained=
.html">SKIP</a> ([i915#2527]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@gen9_exec_parse@bb-start-=
out.html">SKIP</a> ([i915#2527]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@gen9_exec_parse@secure-ba=
tches.html">SKIP</a> ([i915#2856]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-6/igt@i915_module_load@reload-w=
ith-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@i915_module_load@resize-b=
ar.html">SKIP</a> ([i915#7178])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@i915_pm_freq_api@freq-susp=
end.html">SKIP</a> ([i915#8399]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@i915_pm_rps@basic-api.html=
">SKIP</a> ([i915#6621])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@i915_pm_rps@basic-api.html=
">SKIP</a> ([i915#6621])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@i915_pm_rps@min-max-config=
-idle.html">SKIP</a> ([i915#6621]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@i915_pm_rps@thresholds-pa=
rk@gt0.html">SKIP</a> ([i915#8925]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-7/igt@i915_pm_rps@thresholds@gt0=
.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@i915_pm_sseu@full-enable.ht=
ml">SKIP</a> ([i915#4387])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> ([i915#4387])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@i915_query@query-topology-=
coherent-slice-mask.html">SKIP</a> ([i915#6188])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@i915_query@query-topology-c=
oherent-slice-mask.html">SKIP</a> ([i915#6188])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@kms_addfb_basic@addfb25-f=
ramebuffer-vs-set-tiling.html">SKIP</a> ([i915#4212]) +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-5/igt@kms_addfb_basic@basic-x-til=
ed-legacy.html">SKIP</a> ([i915#4212]) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-18/igt@kms_addfb_basic@basic-x-ti=
led-legacy.html">SKIP</a> ([i915#4212])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_addfb_basic@basic-y-t=
iled-legacy.html">SKIP</a> ([i915#4215] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-4/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> ([i915#87=
09]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-r=
c-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html">SKIP</a> ([i915#8709=
]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-7/igt@kms_async_flips@crc@pipe-c=
-hdmi-a-3.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_async_flips@test-curs=
or.html">SKIP</a> ([i915#6229])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-6/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> ([i915#3555])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> ([i915#9531])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-1/igt@kms_atomic@plane-primary-ov=
erlay-mutable-zpos.html">SKIP</a> ([i915#9531])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> ([i915#9531])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> ([i915#9531])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_atomic_transition@pla=
ne-all-modeset-transition.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#176=
9] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13983/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
127359v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a=
> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-overflow:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_big_fb@4-tiled-addfb-s=
ize-overflow.html">SKIP</a> ([i915#5286]) +1 other test skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_big_fb@4-tiled-addfb-s=
ize-overflow.html">SKIP</a> ([i915#5286])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@kms_big_fb@4-tiled-max-h=
w-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([fdo#111615] / [i915#528=
6]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +11 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i9=
15#5286]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_big_fb@linear-16bpp-r=
otate-270.html">SKIP</a> ([fdo#111614]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-ro=
tate-270.html">SKIP</a> ([fdo#111614]) +10 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-ro=
tate-270.html">SKIP</a> ([fdo#111614] / [i915#3638]) +5 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_big_fb@x-tiled-64bpp-=
rotate-90.html">SKIP</a> ([fdo#111614]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw=
-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-15/igt@kms_big_fb@y-tiled-64bpp-=
rotate-90.html">SKIP</a> ([i915#3638]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a> ([i915#5190]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190]) +9 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-64bpp-r=
otate-0.html">SKIP</a> ([fdo#110723]) +5 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-16/igt@kms_big_fb@yf-tiled-64bpp=
-rotate-90.html">SKIP</a> ([i915#4538]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb.=
html">SKIP</a> ([fdo#111615]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_big_fb@yf-tiled-addfb-=
size-offset-overflow.html">SKIP</a> ([fdo#111615]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_big_fb@yf-tiled-addfb-=
size-offset-overflow.html">SKIP</a> ([i915#6187]) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@kms_big_fb@yf-tiled-max-=
hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#111615]) +=
7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-0.html">SKIP</a> ([fdo#111615]) +13 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_big_joiner@basic.html">=
SKIP</a> ([i915#2705]) +1 other test skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_big_joiner@basic.html">=
SKIP</a> ([i915#2705])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@kms_big_joiner@basic.html"=
>SKIP</a> ([i915#2705])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_big_joiner@invalid-mo=
deset.html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-16/igt@kms_ccs@pipe-b-bad-pixel-=
format-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#5354] / [i915#6095]) +104=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-5/igt@kms_ccs@pipe-b-ccs-on-anot=
her-bo-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#5354]) +187 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-2/igt@kms_ccs@pipe-b-crc-primary=
-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#5354] / [i915#609=
5]) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-4/igt@kms_ccs@pipe-c-bad-rotati=
on-90-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#5354] / [i915#6095]) +55 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-1/igt@kms_ccs@pipe-c-crc-sprite=
-planes-basic-yf-tiled-ccs.html">SKIP</a> ([i915#5354] / [i915#6095]) +69 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_ccs@pipe-d-crc-primary=
-basic-yf-tiled-ccs.html">SKIP</a> ([i915#5354]) +42 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_cdclk@mode-transition.h=
tml">SKIP</a> ([i915#3742])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_cdclk@mode-transition.=
html">SKIP</a> ([i915#3742])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_cdclk@mode-transition.=
html">SKIP</a> ([i915#3742])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_cdclk@mode-transition=
@pipe-a-dp-4.html">SKIP</a> ([i915#4087] / [i915#7213]) +3 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_cdclk@mode-transition=
@pipe-b-edp-1.html">SKIP</a> ([i915#7213] / [i915#9010]) +3 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_cdclk@plane-scaling@p=
ipe-d-dp-4.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio-edid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_chamelium_audio@dp-au=
dio-edid.html">SKIP</a> ([i915#7828]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-16/igt@kms_chamelium_audio@hdmi-=
audio-edid.html">SKIP</a> ([i915#7828]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-25:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_chamelium_color@ctm-0-2=
5.html">SKIP</a> ([fdo#111827]) +4 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_chamelium_color@ctm-0-=
25.html">SKIP</a> ([fdo#111827]) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_chamelium_color@ctm-b=
lue-to-red.html">SKIP</a> ([fdo#111827]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-3/igt@kms_chamelium_color@degamma=
.html">SKIP</a> ([fdo#111827]) +6 other tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-13/igt@kms_chamelium_color@degamm=
a.html">SKIP</a> ([fdo#111827]) +4 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-7/igt@kms_chamelium_edid@dp-edi=
d-change-during-suspend.html">SKIP</a> ([i915#7828]) +10 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-2/igt@kms_chamelium_hpd@dp-hpd.h=
tml">SKIP</a> ([i915#7828]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-1/igt@kms_chamelium_hpd@hdmi-hp=
d-enable-disable-mode.html">SKIP</a> ([i915#7828]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-16/igt@kms_content_protection@at=
omic.html">SKIP</a> ([i915#7116]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_content_protection@at=
omic-dpms.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118]) +2 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@kms_content_protection@li=
c.html">SKIP</a> ([i915#6944]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_content_protection@li=
c@pipe-a-dp-4.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_content_protection@mei-=
interface.html">SKIP</a> ([i915#9424])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-4/igt@kms_content_protection@mei-=
interface.html">SKIP</a> ([i915#9424])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_content_protection@mei=
-interface.html">SKIP</a> ([i915#9424])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_content_protection@mei=
-interface.html">SKIP</a> ([i915#8063] / [i915#9433])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-3/igt@kms_content_protection@srm=
.html">SKIP</a> ([i915#7118]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_content_protection@uev=
ent.html">SKIP</a> ([i915#7118]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> ([fdo#109279] / [i915#3359])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@kms_cursor_crc@cursor-offs=
creen-512x170.html">SKIP</a> ([i915#3359]) +2 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@kms_cursor_crc@cursor-offsc=
reen-512x170.html">SKIP</a> ([fdo#109279] / [i915#3359]) +1 other test skip=
</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-6/igt@kms_cursor_crc@cursor-onsc=
reen-512x170.html">SKIP</a> ([i915#3359]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-ran=
dom-32x32.html">SKIP</a> ([i915#3555] / [i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_cursor_crc@cursor-rapi=
d-movement-max-size.html">SKIP</a> ([i915#3555]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-16/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> ([i915#3359]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@kms_cursor_legacy@2x-long=
-flip-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [i915#5354]) +14 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@kms_cursor_legacy@2x-nonb=
locking-modeset-vs-cursor-atomic.html">SKIP</a> ([i915#9809]) +7 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4213]) +1 other test ski=
p</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103] / [i915#4213] / [i=
915#5608]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_cursor_legacy@basic-bus=
y-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103]) +2 other tests ski=
p</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213]) +1 =
other test skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103]) +1 other test ski=
p</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_cursor_legacy@cursora-=
vs-flipb-atomic-transitions-varying-size.html">SKIP</a> ([fdo#111825]) +16 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13983/shard-snb7/igt@kms_cursor_legacy@cursora-vs-flipb-varying-siz=
e.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_127359v2/shard-snb2/igt@kms_cursor_legacy@cursora-vs-flipb-varyin=
g-size.html">SKIP</a> ([fdo#109271]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@kms_cursor_legacy@cursor=
b-vs-flipa-atomic-transitions.html">SKIP</a> ([fdo#109274]) +6 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_cursor_legacy@cursorb-v=
s-flipb-toggle.html">SKIP</a> ([fdo#111767] / [fdo#111825])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_cursor_legacy@cursorb-=
vs-flipb-toggle.html">SKIP</a> ([fdo#111767] / [fdo#111825]) +1 other test =
skip</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-snb2/igt@kms_cursor_legacy@cursorb-vs=
-flipb-toggle.html">SKIP</a> ([fdo#109271] / [fdo#111767])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_cursor_legacy@cursorb-=
vs-flipb-toggle.html">SKIP</a> ([fdo#109274] / [fdo#111767])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-=
vs-flipb-toggle.html">SKIP</a> ([fdo#111767])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-v=
s-flipb-toggle.html">SKIP</a> ([fdo#109274] / [fdo#111767] / [i915#5354])</=
p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@kms_cursor_legacy@modeset-=
atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@kms_cursor_legacy@modeset-a=
tomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_dirtyfb@psr-dirtyfb-ioc=
tl.html">SKIP</a> ([i915#9723])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_dirtyfb@psr-dirtyfb-io=
ctl.html">SKIP</a> ([i915#9723])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-4/igt@kms_dirtyfb@psr-dirtyfb-io=
ctl.html">SKIP</a> ([i915#9723])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-16/igt@kms_dp_aux_dev.html">SKIP<=
/a> ([i915#1257])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-5/igt@kms_dp_aux_dev.html">SKIP<=
/a> ([i915#1257])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_draw_crc@draw-method-m=
map-wc.html">SKIP</a> ([i915#8812]) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_draw_crc@draw-method-m=
map-wc.html">SKIP</a> ([i915#8812])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-7/igt@kms_dsc@dsc-with-bpc.html=
">SKIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_dsc@dsc-with-output-for=
mats.html">SKIP</a> ([i915#3555] / [i915#3840]) +2 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_dsc@dsc-with-output-for=
mats.html">SKIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> ([i915#3555] / [i915#3840]) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-3/igt@kms_dsc@dsc-with-output-for=
mats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-13/igt@kms_dsc@dsc-with-output-fo=
rmats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_feature_discovery@cham=
elium.html">SKIP</a> ([i915#2065] / [i915#4854])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_feature_discovery@cham=
elium.html">SKIP</a> ([i915#4854])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_feature_discovery@chame=
lium.html">SKIP</a> ([i915#4854])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-4/igt@kms_feature_discovery@chame=
lium.html">SKIP</a> ([i915#4854])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_feature_discovery@dis=
play-3x.html">SKIP</a> ([i915#1839]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-2/igt@kms_feature_discovery@displ=
ay-4x.html">SKIP</a> ([i915#1839]) +1 other test skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_feature_discovery@disp=
lay-4x.html">SKIP</a> ([i915#1839]) +2 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@kms_feature_discovery@disp=
lay-4x.html">SKIP</a> ([i915#1839]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-5/igt@kms_feature_discovery@dp-ms=
t.html">SKIP</a> ([i915#9337])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-18/igt@kms_feature_discovery@dp-m=
st.html">SKIP</a> ([i915#9337])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_feature_discovery@psr1.=
html">SKIP</a> ([i915#658])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-19/igt@kms_feature_discovery@psr1=
.html">SKIP</a> ([i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_flip@2x-absolute-wf_vbl=
ank.html">SKIP</a> ([fdo#109274]) +12 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_flip@2x-absolute-wf_vb=
lank.html">SKIP</a> ([fdo#109274] / [i915#3637] / [i915#3966])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_flip@2x-flip-vs-blocki=
ng-wf-vblank.html">SKIP</a> ([fdo#109274] / [fdo#111767])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@kms_flip@2x-flip-vs-fence=
s.html">SKIP</a> ([i915#8381]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_flip@2x-modeset-vs-vb=
lank-race-interruptible.html">SKIP</a> ([i915#3637]) +9 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_flip@2x-plain-flip-fb=
-recreate-interruptible.html">SKIP</a> ([fdo#109274] / [i915#3637]) +7 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@kms_flip@flip-vs-fences.h=
tml">SKIP</a> ([i915#8381]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#8810]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-=
32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#3555] / [i915#8810]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-13/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> =
([i915#2587] / [i915#2672]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 ([i915#2672]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html">SKI=
P</a> ([i915#2672]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SK=
IP</a> ([i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i91=
5#2587] / [i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@kms_force_connector_basic=
@force-load-detect.html">SKIP</a> ([fdo#109285])</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@kms_force_connector_basic=
@prune-stale-modes.html">SKIP</a> ([i915#5274])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([fdo#109280]) +44 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-15/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +41 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fb=
c-tiling-4.html">SKIP</a> ([i915#5439])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@kms_frontbuffer_tracking@f=
bc-tiling-4.html">SKIP</a> ([i915#5439])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@=
fbc-tiling-y.html">SKIP</a> ([i915#5460])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> ([i915#3458]) +39 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-15/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#111825]) +89 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) +46 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> ([i915#3023]) +42 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-y.html">SKIP</a> ([i915#5460])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-13/igt@kms_frontbuffer_tracking@p=
ipe-fbc-rte.html">SKIP</a> ([i915#9766])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-3/igt@kms_frontbuffer_tracking@pi=
pe-fbc-rte.html">SKIP</a> ([i915#9766])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@plane-fbc-rte:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-5/igt@kms_frontbuffer_tracking@pl=
ane-fbc-rte.html">SKIP</a> ([i915#9653])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-16/igt@kms_frontbuffer_tracking@p=
lane-fbc-rte.html">SKIP</a> ([i915#9653])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-spr-indfb-move.html">SKIP</a> ([fdo#110189]) +36 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-indfb-pgflip-blt.html">SKIP</a> ([i915#1825]) +49 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +20 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-4/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#111825] / [i915#=
1825]) +47 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-18/igt@kms_frontbuffer_tracking@=
psr-rgb565-draw-pwrite.html">SKIP</a> ([i915#3458]) +44 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb-reject-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@kms_getfb@getfb-reject-cc=
s.html">SKIP</a> ([i915#6118])</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-1/igt@kms_hdmi_inject@inject-audi=
o.html">SKIP</a> ([i915#433])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_hdmi_inject@inject-aud=
io.html">SKIP</a> ([i915#433])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@kms_hdr@bpc-switch-suspen=
d.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_hdr@static-toggle-dpms=
.html">SKIP</a> ([i915#3555] / [i915#8228])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-4/igt@kms_hdr@static-toggle-dpms.=
html">SKIP</a> ([i915#3555] / [i915#8228])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_hdr@static-toggle-dpms=
.html">SKIP</a> ([i915#3555] / [i915#8228])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> ([i915#3555] / [i915#8228]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_multipipe_modeset@basic=
-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> ([i915#1839]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> ([i915#6301])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> ([i915#6301])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_panel_fitting@legacy.ht=
ml">SKIP</a> ([i915#6301])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> ([i915#6301])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-18/igt@kms_pipe_b_c_ivb@enable-p=
ipe-c-while-b-has-3-lanes.html">SKIP</a> ([fdo#109289]) +7 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-glk1/igt@kms_plane_alpha_blend@alpha=
-basic@pipe-c-hdmi-a-1.html">FAIL</a> ([i915#7862]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_plane_lowres@tiling-n=
one@pipe-b-edp-1.html">SKIP</a> ([i915#3582]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_plane_lowres@tiling-y.=
html">SKIP</a> ([i915#8821])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-10/igt@kms_plane_lowres@tiling-y=
f.html">SKIP</a> ([i915#3555] / [i915#8821])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-1/igt@kms_plane_multiple@tiling=
-y.html">SKIP</a> ([i915#3555] / [i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-3.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-glk1/igt@kms_plane_scaling@plane-dow=
nscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1.html">SKIP</a> ([fdo#1=
09271]) +342 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html">SKIP</a> ([i915=
#9423]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-ed=
p-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-a-edp-1.html">SKIP</a> ([i915#5176])=
 +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hd=
mi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@kms_plane_scaling@plane-=
scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#94=
23]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hd=
mi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@kms_plane_scaling@plane-sc=
aler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#9423=
]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hd=
mi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-18/igt@kms_plane_scaling@plane-s=
caler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html">SKIP</a> ([i915#942=
3]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#=
5176] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-4/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-b-hdmi-a-1.html">SKIP</a> ([i915=
#5176] / [i915#9423]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html">SKIP</a> ([i915=
#5176] / [i915#9423]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-=
hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#5=
235]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_plane_scaling@planes-=
downscale-factor-0-25@pipe-b-dp-4.html">SKIP</a> ([i915#5235]) +23 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@kms_plane_scaling@planes-=
downscale-factor-0-5@pipe-b-edp-1.html">SKIP</a> ([i915#5235]) +21 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d-e=
dp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-8/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-5@pipe-d-edp-1.html">SKIP</a> ([i915#3555]=
 / [i915#5235]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-2/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> ([i=
915#5235]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1.html">SKIP</a> ([=
i915#5235]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_pm_backlight@bad-brig=
htness.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-4/igt@kms_pm_dc@dc5-dpms-negati=
ve.html">SKIP</a> ([i915#9293])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@kms_pm_dc@dc5-psr.html">S=
KIP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_pm_dc@dc6-dpms.html">SK=
IP</a> ([i915#5978])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-14/igt@kms_pm_dc@dc6-dpms.html">S=
KIP</a> ([i915#3361])</p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13983/shard-tglu-4/igt@kms_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/shard-tgl=
u-8/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#9295])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-1/igt@kms_pm_dc@dc6-psr.html">FA=
IL</a> ([i915#9298])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_pm_dc@dc6-psr.html">SKI=
P</a> ([i915#9685])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-1/igt@kms_pm_lpsp@kms-lpsp.html">=
SKIP</a> ([i915#9340])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> ([i915#9340])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_pm_lpsp@kms-lpsp@pipe=
-a-hdmi-a-1.html">FAIL</a> ([i915#9301])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-6/igt@kms_pm_rpm@dpms-lpsp.html">=
SKIP</a> ([i915#9519])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_pm_rpm@dpms-lpsp.html"=
>SKIP</a> ([i915#9519])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-2/igt@kms_pm_rpm@i2c.html">FAIL<=
/a> ([i915#8717])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-st=
ress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-5/igt@kms_pm_rpm@modeset-non-lps=
p-stress-no-wait.html">SKIP</a> ([i915#9519])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-6/igt@kms_pm_rpm@modeset-non-lps=
p-stress-no-wait.html">SKIP</a> ([i915#9519]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pc8-residency:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-3/igt@kms_pm_rpm@pc8-residency.h=
tml">SKIP</a> ([fdo#109293]) +1 other test skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-3/igt@kms_pm_rpm@pc8-residency.ht=
ml">SKIP</a> ([fdo#109293] / [fdo#109506]) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-18/igt@kms_pm_rpm@pc8-residency.h=
tml">SKIP</a> ([fdo#109293] / [fdo#109506]) +1 other test skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@kms_pm_rpm@pc8-residency.=
html">SKIP</a> ([fdo#109293] / [fdo#109506])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.=
html">SKIP</a> ([i915#6524])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> ([i915#6524])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> ([i915#6524])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_prime@basic-crc-vgem.=
html">SKIP</a> ([i915#6524] / [i915#6805]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@kms_prime@d3hot.html">SKI=
P</a> ([i915#6524]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-12/igt@kms_psr2_sf@cursor-plane-=
move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#9683]) +2 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-rkl-5/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-exceed-sf.html">SKIP</a> ([i915#9683]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-10/igt@kms_psr2_sf@overlay-plan=
e-move-continuous-sf.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-15/igt@kms_psr2_sf@plane-move-sf=
-dmg-area.html">SKIP</a> ([fdo#111068] / [i915#9683]) +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-tglu-3/igt@kms_psr2_sf@primary-plane=
-update-sf-dmg-area.html">SKIP</a> ([fdo#111068] / [i915#9683]) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-mtlp-2/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> ([i915#4348]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg2-11/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> ([i915#9683]) +8 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_psr2_su@page_flip-p010.=
html">SKIP</a> ([fdo#111068] / [i915#9683]) +2 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#9683])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_rotation_crc@exhaust-=
fences.html">SKIP</a> ([i915#4884])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-rkl-7/igt@kms_rotation_crc@primary-4-=
tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-dg1-17/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127359v2/shard-tglu-6/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127359v2/shard-">SKIP</a> ([i915#4235]) +4 other te=
sts skip</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7580396786989015709==--
