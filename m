Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD920A1C281
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2025 10:22:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7083C10E17A;
	Sat, 25 Jan 2025 09:22:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D16910E17A;
 Sat, 25 Jan 2025 09:22:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4765920279550980847=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/cmtg=3A_Disable?=
 =?utf-8?q?_the_CMTG_=28rev9=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 25 Jan 2025 09:22:24 -0000
Message-ID: <173779694442.267154.11098382375835057259@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250124173956.46534-1-gustavo.sousa@intel.com>
In-Reply-To: <20250124173956.46534-1-gustavo.sousa@intel.com>
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

--===============4765920279550980847==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/cmtg: Disable the CMTG (rev9)
URL   : https://patchwork.freedesktop.org/series/142947/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16018_full -> Patchwork_142947v9_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_142947v9_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142947v9_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 10)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142947v9_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-dg2:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24]) -> ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [FAIL][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-8/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-8/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-5/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-5/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-3/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-3/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-3/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-2/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-2/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-10/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-10/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-10/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-10/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-3/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-8/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-8/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@smoketest:
    - shard-tglu:         [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-tglu-10/igt@gem_ctx_persistence@smoketest.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-2/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@kms:
    - shard-dg2:          [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-1/igt@gem_eio@kms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-6/igt@gem_eio@kms.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-dg1:          [PASS][51] -> [ABORT][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a4:
    - shard-dg1:          NOTRUN -> [ABORT][53]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a4.html

  * igt@perf_pmu@module-unload:
    - shard-snb:          [PASS][54] -> [INCOMPLETE][55] +3 other tests incomplete
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-snb7/igt@perf_pmu@module-unload.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-snb2/igt@perf_pmu@module-unload.html
    - shard-mtlp:         [PASS][56] -> [INCOMPLETE][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-mtlp-6/igt@perf_pmu@module-unload.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@perf_pmu@module-unload.html

  
Known issues
------------

  Here are the changes found in Patchwork_142947v9_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#8411])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#8411])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@debugfs_test@basic-hwmon:
    - shard-tglu:         NOTRUN -> [SKIP][60] ([i915#9318])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#11078])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-tglu:         [PASS][62] -> [ABORT][63] ([i915#12817] / [i915#5507])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-tglu-4/igt@device_reset@unbind-reset-rebind.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-4/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@isolation:
    - shard-rkl:          [PASS][64] -> [DMESG-WARN][65] ([i915#12917] / [i915#12964])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-rkl-1/igt@drm_fdinfo@isolation.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@drm_fdinfo@isolation.html

  * igt@drm_fdinfo@isolation@vecs0:
    - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#8414]) +12 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@drm_fdinfo@isolation@vecs0.html

  * igt@drm_fdinfo@virtual-busy-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#8414])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@drm_fdinfo@virtual-busy-hang.html

  * igt@gem_basic@multigpu-create-close:
    - shard-tglu-1:       NOTRUN -> [SKIP][68] ([i915#7697])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@gem_basic@multigpu-create-close.html
    - shard-dg1:          NOTRUN -> [SKIP][69] ([i915#7697])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_basic@multigpu-create-close.html

  * igt@gem_caching@writes:
    - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#4873]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-5/igt@gem_caching@writes.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#3555] / [i915#9323])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-7/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-tglu:         NOTRUN -> [SKIP][72] ([i915#3555] / [i915#9323])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#3555] / [i915#9323])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#9323])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#13008])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [PASS][76] -> [INCOMPLETE][77] ([i915#7297])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-5/igt@gem_ccs@suspend-resume.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-5/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][78] -> [INCOMPLETE][79] ([i915#12392] / [i915#7297])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-5/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-5/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#7697])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#6335])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_persistence@engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][82] ([i915#1099]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-snb7/igt@gem_ctx_persistence@engines-mixed-process.html

  * igt@gem_ctx_persistence@hang:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#8555])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#8555])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#280])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#280])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          NOTRUN -> [ABORT][87] ([i915#10030] / [i915#7975] / [i915#8213])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@gem_eio@hibernate.html
    - shard-rkl:          NOTRUN -> [ABORT][88] ([i915#7975] / [i915#8213])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@gem_eio@hibernate.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][89] -> [FAIL][90] ([i915#12543] / [i915#5784])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg1-18/igt@gem_eio@reset-stress.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@gem_eio@reset-stress.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          NOTRUN -> [FAIL][91] ([i915#12714] / [i915#5784])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_eio@unwedge-stress.html

  * igt@gem_eio@wait-wedge-1us:
    - shard-mtlp:         [PASS][92] -> [ABORT][93] ([i915#13193]) +1 other test abort
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-mtlp-1/igt@gem_eio@wait-wedge-1us.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-7/igt@gem_eio@wait-wedge-1us.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#4771])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#4812])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#4036])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#4525])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#4525]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-7/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#3539])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#3539] / [i915#4852]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#3281]) +5 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_reloc@basic-cpu-active:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#3281])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@gem_exec_reloc@basic-cpu-active.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#3281]) +5 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-wc-read:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#3281]) +19 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_exec_reloc@basic-wc-read.html

  * igt@gem_exec_schedule@preempt:
    - shard-rkl:          [PASS][105] -> [DMESG-WARN][106] ([i915#12964]) +5 other tests dmesg-warn
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-rkl-4/igt@gem_exec_schedule@preempt.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-1/igt@gem_exec_schedule@preempt.html

  * igt@gem_exec_schedule@preempt-queue-contexts:
    - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#4812]) +3 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@gem_exec_schedule@preempt-queue-contexts.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#4537] / [i915#4812])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#4860])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-5/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#4860]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#2190])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@gem_huc_copy@huc-copy.html
    - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#2190])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#4613])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-tglu-1:       NOTRUN -> [SKIP][114] ([i915#4613])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#4613]) +3 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-glk:          NOTRUN -> [SKIP][116] ([i915#4613]) +1 other test skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-glk6/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@verify:
    - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#4613])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@gem_lmem_swapping@verify.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#12193])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#4565])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_lmem_swapping@verify-ccs@lmem0.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#4077])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_gtt@medium-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#4077]) +13 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_mmap_gtt@medium-copy-odd.html

  * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
    - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#4083]) +5 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html

  * igt@gem_mmap_wc@write-read-distinct:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#4083])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@gem_mmap_wc@write-read-distinct.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#3282]) +6 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#3282]) +7 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pread@display:
    - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#3282]) +3 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@gem_pread@display.html
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#3282])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@gem_pread@display.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#4270]) +3 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-rkl:          NOTRUN -> [TIMEOUT][129] ([i915#12917] / [i915#12964]) +2 other tests timeout
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_render_copy@x-tiled-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#5190] / [i915#8428])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#8428]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#4079]) +2 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#4885]) +1 other test skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_softpin@evict-snoop.html

  * igt@gem_tiled_pread_basic:
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#4079]) +2 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@gem_tiled_pread_basic.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#4079]) +5 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@gem_tiled_pread_pwrite.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#3297]) +1 other test skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-tglu-1:       NOTRUN -> [SKIP][137] ([i915#3297])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#3297])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#3282] / [i915#3297])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#3297]) +4 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_userptr_blits@unsync-unmap-after-close.html
    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#3297]) +2 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#2527]) +3 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gen9_exec_parse@bb-start-cmd.html
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#2856]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@gen9_exec_parse@bb-start-cmd.html
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#2856])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#2527]) +3 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-tglu-1:       NOTRUN -> [SKIP][146] ([i915#2527] / [i915#2856])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@gen9_exec_parse@secure-batches.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#2527] / [i915#2856])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         NOTRUN -> [ABORT][148] ([i915#12817] / [i915#9820])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#8399])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#8399]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][151] -> [INCOMPLETE][152] ([i915#12455]) +1 other test incomplete
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#6590]) +1 other test skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-tglu-1:       NOTRUN -> [WARN][154] ([i915#2681]) +4 other tests warn
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#11681] / [i915#6621])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@i915_pm_rps@min-max-config-idle.html
    - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#11681] / [i915#6621])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_rps@thresholds:
    - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#11681])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@i915_pm_rps@thresholds.html

  * igt@i915_query@hwconfig_table:
    - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#6245])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@i915_query@hwconfig_table.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#5723])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@i915_query@test-query-geometry-subslices.html
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#5723])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [PASS][161] -> [DMESG-FAIL][162] ([i915#12061]) +1 other test dmesg-fail
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-mtlp-6/igt@i915_selftest@live@workarounds.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@i915_selftest@live@workarounds.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#7707])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#4212]) +1 other test skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#4212])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#5190]) +2 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - shard-mtlp:         NOTRUN -> [SKIP][167] ([i915#5190])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#4215])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#4212]) +3 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#8709]) +3 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_async_flips@test-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#10333])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_async_flips@test-cursor-atomic.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-mtlp:         [PASS][172] -> [FAIL][173] ([i915#11808] / [i915#5956]) +1 other test fail
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-snb:          NOTRUN -> [SKIP][174] ([i915#1769])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-snb7/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#5286]) +6 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_big_fb@4-tiled-addfb.html
    - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#5286]) +1 other test skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-addfb-size-overflow:
    - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#5286])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_big_fb@4-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu-1:       NOTRUN -> [SKIP][178] ([i915#5286]) +3 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
    - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#4538] / [i915#5286]) +7 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#3638]) +2 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#4538] / [i915#5190]) +1 other test skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#3638]) +5 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#6187])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][184] +10 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][185] +16 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][186] ([i915#4538]) +7 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][187] ([i915#12313])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#12313]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#12313]) +2 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#6095]) +156 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#6095]) +19 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-edp-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#12313])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#10307] / [i915#6095]) +93 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#6095]) +106 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][195] ([i915#12805])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#6095]) +7 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-2/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][197] ([i915#12796]) +1 other test incomplete
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-glk2/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#6095]) +34 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#12313]) +4 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][200] ([i915#12313]) +1 other test skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#6095]) +29 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-glk:          NOTRUN -> [SKIP][202] +106 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-glk2/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#7213] / [i915#9010])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_cdclk@mode-transition-all-outputs.html
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#11616] / [i915#7213])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_cdclk@mode-transition-all-outputs.html
    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#3742])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium_color@ctm-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][206] +2 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_chamelium_color@ctm-0-25.html

  * igt@kms_chamelium_edid@dp-edid-resolution-list:
    - shard-mtlp:         NOTRUN -> [SKIP][207] ([i915#11151] / [i915#7828]) +3 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_chamelium_edid@dp-edid-resolution-list.html
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#11151] / [i915#7828]) +1 other test skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@kms_chamelium_edid@dp-edid-resolution-list.html

  * igt@kms_chamelium_edid@vga-edid-read:
    - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#11151] / [i915#7828]) +3 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@kms_chamelium_edid@vga-edid-read.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#11151] / [i915#7828]) +10 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@dp-hpd:
    - shard-tglu-1:       NOTRUN -> [SKIP][211] ([i915#11151] / [i915#7828]) +3 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd.html

  * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
    - shard-dg1:          NOTRUN -> [SKIP][212] ([i915#11151] / [i915#7828]) +9 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#3299])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][214] ([i915#3116] / [i915#3299])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_content_protection@dp-mst-type-1.html
    - shard-dg1:          NOTRUN -> [SKIP][215] ([i915#3299]) +1 other test skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#6944] / [i915#9424])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_content_protection@legacy.html
    - shard-dg2:          NOTRUN -> [TIMEOUT][217] ([i915#7173]) +1 other test timeout
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_content_protection@legacy.html
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#7118] / [i915#9424])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#9424]) +1 other test skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-7/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-dg1:          NOTRUN -> [SKIP][220] ([i915#7116])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-offscreen-128x42:
    - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#8814])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-5/igt@kms_cursor_crc@cursor-offscreen-128x42.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#13049]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_cursor_crc@cursor-onscreen-512x512.html
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#13049])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-tglu-1:       NOTRUN -> [SKIP][224] ([i915#3555]) +2 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_cursor_crc@cursor-random-32x32.html
    - shard-dg1:          NOTRUN -> [SKIP][225] ([i915#3555]) +6 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#13049]) +2 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#3555]) +7 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
    - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#3555] / [i915#8814])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#9809])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#4103])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-mtlp:         NOTRUN -> [SKIP][231] ([i915#9067])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-rkl:          NOTRUN -> [SKIP][232] ([i915#9067])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-tglu:         NOTRUN -> [SKIP][233] ([i915#9067])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#9723]) +1 other test skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#3555] / [i915#3804])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#3804])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][237] ([i915#8812])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#3840] / [i915#9688])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#3840])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][240] ([i915#3840])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-tglu-1:       NOTRUN -> [SKIP][241] ([i915#3555] / [i915#3840])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats.html
    - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#3555] / [i915#3840]) +1 other test skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][243] ([i915#3469])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-3x:
    - shard-tglu-1:       NOTRUN -> [SKIP][244] ([i915#1839])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-dg1:          NOTRUN -> [SKIP][245] ([i915#1839]) +2 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@kms_feature_discovery@display-4x.html

  * igt@kms_fence_pin_leak:
    - shard-dg1:          NOTRUN -> [SKIP][246] ([i915#4881]) +1 other test skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-dg2:          NOTRUN -> [SKIP][247] ([i915#9934]) +1 other test skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#9934]) +7 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-7/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][249] ([i915#8381]) +1 other test skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][250] ([i915#12745] / [i915#4839])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-glk2/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][251] ([i915#4839])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-glk2/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][252] ([i915#9934]) +6 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-tglu:         NOTRUN -> [SKIP][253] ([i915#3637]) +2 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
    - shard-mtlp:         NOTRUN -> [SKIP][254] ([i915#3637]) +5 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-5/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][255] ([i915#3637]) +2 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-rkl:          [PASS][256] -> [FAIL][257] ([i915#11989])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-rkl-7/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][258] ([i915#11989])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [DMESG-FAIL][259] ([i915#12964]) +1 other test dmesg-fail
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:
    - shard-tglu:         [PASS][260] -> [FAIL][261] ([i915#11989]) +3 other tests fail
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-tglu-9/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-9/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][262] ([i915#2672] / [i915#8813]) +2 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#2672] / [i915#3555])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][264] ([i915#2587] / [i915#2672]) +6 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
    - shard-dg2:          NOTRUN -> [SKIP][265] ([i915#2672])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][266] ([i915#2587] / [i915#2672]) +1 other test skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][267] ([i915#2672] / [i915#3555] / [i915#8813]) +4 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-dg1:          NOTRUN -> [SKIP][268] ([i915#2587] / [i915#2672] / [i915#3555]) +1 other test skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][269] ([i915#2672] / [i915#3555]) +1 other test skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
    - shard-dg1:          NOTRUN -> [SKIP][270] ([i915#2672] / [i915#3555]) +4 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#2672] / [i915#3555]) +2 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#2672]) +2 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          [PASS][273] -> [FAIL][274] ([i915#6880])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#8708]) +1 other test skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-msflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][276] ([i915#5354]) +10 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][277] +46 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][278] +60 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][279] ([i915#1825]) +17 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#3458]) +4 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][281] +38 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
    - shard-dg1:          NOTRUN -> [SKIP][282] ([i915#8708]) +21 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][283] ([i915#3023]) +27 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][284] ([i915#8708]) +4 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][285] ([i915#1825]) +39 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][286] ([i915#3458]) +23 other tests skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#3555] / [i915#8228])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-mtlp:         NOTRUN -> [SKIP][288] ([i915#12713])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg1:          NOTRUN -> [SKIP][289] ([i915#3555] / [i915#8228])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-swap:
    - shard-tglu:         NOTRUN -> [SKIP][290] ([i915#3555] / [i915#8228]) +1 other test skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-2/igt@kms_hdr@static-swap.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][291] ([i915#10656])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][292] ([i915#12339]) +1 other test skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][293] ([i915#12388])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][294] ([i915#12394] / [i915#13522])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
    - shard-tglu:         NOTRUN -> [SKIP][295] ([i915#12394] / [i915#13522])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
    - shard-mtlp:         NOTRUN -> [SKIP][296] ([i915#10656] / [i915#13522])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-5/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-mtlp:         NOTRUN -> [SKIP][297] ([i915#13522])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
    - shard-dg2:          NOTRUN -> [SKIP][298] ([i915#13522])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
    - shard-rkl:          NOTRUN -> [SKIP][299] ([i915#13522])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][300] ([i915#3555] / [i915#8806])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][301] ([i915#6953])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_plane_scaling@intel-max-src-size.html
    - shard-dg1:          NOTRUN -> [SKIP][302] ([i915#6953])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:
    - shard-tglu-1:       NOTRUN -> [SKIP][303] ([i915#12247]) +8 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][304] ([i915#12247]) +5 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-tglu:         NOTRUN -> [SKIP][305] ([i915#3555]) +3 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][306] ([i915#12247]) +13 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c:
    - shard-mtlp:         NOTRUN -> [SKIP][307] ([i915#12247]) +4 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d:
    - shard-dg1:          NOTRUN -> [SKIP][308] ([i915#12247]) +13 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-tglu-1:       NOTRUN -> [SKIP][309] ([i915#12247] / [i915#6953])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html
    - shard-dg1:          NOTRUN -> [SKIP][310] ([i915#12247] / [i915#6953])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-rkl:          NOTRUN -> [SKIP][311] ([i915#5354])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][312] ([i915#12343])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][313] ([i915#5354])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-tglu-1:       NOTRUN -> [SKIP][314] ([i915#9685])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-rkl:          NOTRUN -> [SKIP][315] ([i915#3828])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_pm_dc@dc5-retention-flops.html
    - shard-tglu:         NOTRUN -> [SKIP][316] ([i915#3828])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][317] ([i915#3361])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][318] ([i915#9340])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-tglu:         NOTRUN -> [SKIP][319] ([i915#8430])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-2/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [PASS][320] -> [SKIP][321] ([i915#9519])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-1/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-tglu-1:       NOTRUN -> [SKIP][322] ([i915#9519])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          [PASS][323] -> [SKIP][324] ([i915#9519])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp.html
    - shard-dg1:          NOTRUN -> [SKIP][325] ([i915#9519])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][326] ([i915#4423])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][327] ([i915#9808]) +1 other test skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][328] ([i915#11520]) +3 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][329] ([i915#11520]) +5 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
    - shard-snb:          NOTRUN -> [SKIP][330] ([i915#11520]) +2 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-snb5/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
    - shard-glk:          NOTRUN -> [SKIP][331] ([i915#11520]) +1 other test skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-glk6/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:
    - shard-mtlp:         NOTRUN -> [SKIP][332] ([i915#12316]) +6 other tests skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
    - shard-dg1:          NOTRUN -> [SKIP][333] ([i915#11520]) +11 other tests skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][334] ([i915#11520]) +12 other tests skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][335] ([i915#11520]) +2 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg1:          NOTRUN -> [SKIP][336] ([i915#9683])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][337] ([i915#9732]) +8 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_psr@fbc-psr-cursor-plane-onoff.html

  * igt@kms_psr@fbc-psr-no-drrs:
    - shard-dg2:          NOTRUN -> [SKIP][338] ([i915#1072] / [i915#9732]) +4 other tests skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_psr@fbc-psr-no-drrs.html

  * igt@kms_psr@pr-primary-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][339] ([i915#9688]) +18 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_psr@pr-primary-mmap-cpu.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][340] ([i915#1072] / [i915#9732]) +21 other tests skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-7/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_psr@psr2-sprite-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][341] ([i915#9732]) +9 other tests skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_psr@psr2-sprite-blt.html
    - shard-dg1:          NOTRUN -> [SKIP][342] ([i915#1072] / [i915#9732]) +30 other tests skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_psr@psr2-sprite-blt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglu:         NOTRUN -> [SKIP][343] ([i915#9685])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg1:          NOTRUN -> [SKIP][344] ([i915#9685]) +1 other test skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-mtlp:         NOTRUN -> [SKIP][345] ([i915#12755]) +1 other test skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_rotation_crc@primary-rotation-90.html
    - shard-dg2:          NOTRUN -> [SKIP][346] ([i915#12755])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][347] ([i915#5289])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
    - shard-dg1:          NOTRUN -> [SKIP][348] ([i915#5289])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][349] ([i915#5289])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-tglu:         NOTRUN -> [SKIP][350] ([i915#5289])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-snb:          NOTRUN -> [SKIP][351] +146 other tests skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-snb5/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-mtlp:         NOTRUN -> [SKIP][352] ([i915#3555] / [i915#5030] / [i915#9041])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][353] ([i915#5030]) +2 other tests skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1.html

  * igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][354] ([i915#5030] / [i915#9041])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1.html

  * igt@kms_sequence@queue-busy@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][355] ([i915#12964]) +10 other tests dmesg-warn
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_sequence@queue-busy@pipe-b-hdmi-a-2.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-mtlp:         NOTRUN -> [SKIP][356] ([i915#8623])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@flip-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][357] ([i915#3555] / [i915#8808])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-5/igt@kms_vrr@flip-basic.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-rkl:          NOTRUN -> [SKIP][358] ([i915#9906]) +1 other test skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-mtlp:         NOTRUN -> [SKIP][359] ([i915#8808] / [i915#9906])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-dg1:          NOTRUN -> [SKIP][360] ([i915#2437])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-tglu-1:       NOTRUN -> [SKIP][361] ([i915#2437] / [i915#9412])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
    - shard-dg1:          NOTRUN -> [SKIP][362] ([i915#2437] / [i915#9412])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-glk:          NOTRUN -> [SKIP][363] ([i915#2437])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-glk6/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][364] ([i915#2433])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-7/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@busy-start@ccs0:
    - shard-mtlp:         [PASS][365] -> [FAIL][366] ([i915#4349])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-mtlp-3/igt@perf_pmu@busy-start@ccs0.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-1/igt@perf_pmu@busy-start@ccs0.html

  * igt@perf_pmu@most-busy-check-all:
    - shard-rkl:          [PASS][367] -> [FAIL][368] ([i915#4349]) +1 other test fail
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-rkl-1/igt@perf_pmu@most-busy-check-all.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@perf_pmu@most-busy-check-all.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-tglu-1:       NOTRUN -> [SKIP][369] ([i915#8516]) +1 other test skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html
    - shard-dg1:          NOTRUN -> [SKIP][370] ([i915#8516]) +1 other test skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          NOTRUN -> [SKIP][371] ([i915#3291] / [i915#3708]) +1 other test skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][372] ([i915#3708] / [i915#4077]) +1 other test skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][373] ([i915#3708]) +1 other test skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-dg1:          NOTRUN -> [SKIP][374] ([i915#3708])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg1:          NOTRUN -> [SKIP][375] ([i915#9917]) +1 other test skip
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-1:
    - shard-tglu:         NOTRUN -> [FAIL][376] ([i915#12910]) +9 other tests fail
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-1.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu-1:       NOTRUN -> [FAIL][377] ([i915#12910])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg1:          NOTRUN -> [SKIP][378] ([i915#4818])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@core_auth@many-magics:
    - shard-rkl:          [DMESG-WARN][379] ([i915#12964]) -> [PASS][380] +7 other tests pass
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-rkl-1/igt@core_auth@many-magics.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@core_auth@many-magics.html

  * igt@core_getversion@all-cards:
    - shard-tglu:         [ABORT][381] ([i915#13010]) -> [PASS][382]
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-tglu-8/igt@core_getversion@all-cards.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-2/igt@core_getversion@all-cards.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          [ABORT][383] ([i915#13427]) -> [PASS][384]
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-10/igt@gem_create@create-ext-cpu-access-big.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_eio@kms:
    - shard-mtlp:         [ABORT][385] ([i915#13193]) -> [PASS][386] +1 other test pass
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-mtlp-7/igt@gem_eio@kms.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-5/igt@gem_eio@kms.html
    - shard-dg1:          [FAIL][387] ([i915#5784]) -> [PASS][388]
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg1-13/igt@gem_eio@kms.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@gem_eio@kms.html

  * igt@gem_eio@wait-1us:
    - shard-mtlp:         [ABORT][389] -> [PASS][390] +2 other tests pass
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-mtlp-7/igt@gem_eio@wait-1us.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@gem_eio@wait-1us.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-rkl:          [FAIL][391] ([i915#13566]) -> [PASS][392] +1 other test pass
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-random-128x42:
    - shard-tglu:         [FAIL][393] ([i915#13566]) -> [PASS][394] +7 other tests pass
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-tglu-6/igt@kms_cursor_crc@cursor-random-128x42.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-7/igt@kms_cursor_crc@cursor-random-128x42.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][395] ([i915#2346]) -> [PASS][396]
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@blocking-wf_vblank:
    - shard-mtlp:         [FAIL][397] ([i915#11989]) -> [PASS][398] +5 other tests pass
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-mtlp-4/igt@kms_flip@blocking-wf_vblank.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_flip@blocking-wf_vblank.html

  * igt@kms_flip@dpms-off-confusion:
    - shard-glk:          [DMESG-WARN][399] ([i915#118]) -> [PASS][400] +1 other test pass
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-glk8/igt@kms_flip@dpms-off-confusion.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-glk3/igt@kms_flip@dpms-off-confusion.html

  * igt@kms_flip@modeset-vs-vblank-race@a-edp1:
    - shard-mtlp:         [FAIL][401] -> [PASS][402] +2 other tests pass
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-mtlp-8/igt@kms_flip@modeset-vs-vblank-race@a-edp1.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-2/igt@kms_flip@modeset-vs-vblank-race@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-dg2:          [FAIL][403] ([i915#11989]) -> [PASS][404] +2 other tests pass
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-4/igt@kms_flip@plain-flip-fb-recreate.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-8/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1:
    - shard-tglu:         [FAIL][405] ([i915#11989]) -> [PASS][406] +4 other tests pass
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-tglu-8/igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-tglu-4/igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          [SKIP][407] ([i915#3555] / [i915#8228]) -> [PASS][408]
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-2/igt@kms_hdr@static-toggle.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_hdr@static-toggle.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-dg2:          [SKIP][409] ([i915#12388]) -> [PASS][410]
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-2/igt@kms_joiner@basic-force-big-joiner.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_plane_cursor@overlay:
    - shard-dg1:          [DMESG-WARN][411] ([i915#4423]) -> [PASS][412] +1 other test pass
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg1-12/igt@kms_plane_cursor@overlay.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-13/igt@kms_plane_cursor@overlay.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][413] ([i915#9519]) -> [PASS][414] +2 other tests pass
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@perf_pmu@busy-accuracy-98@rcs0:
    - shard-mtlp:         [FAIL][415] ([i915#4349]) -> [PASS][416] +1 other test pass
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-mtlp-1/igt@perf_pmu@busy-accuracy-98@rcs0.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@perf_pmu@busy-accuracy-98@rcs0.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [ABORT][417] ([i915#9820]) -> [ABORT][418] ([i915#13493] / [i915#9820])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [ABORT][419] ([i915#10131] / [i915#13493] / [i915#9820]) -> [ABORT][420] ([i915#10131] / [i915#10887] / [i915#13493])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          [ABORT][421] ([i915#9820]) -> [ABORT][422] ([i915#10887] / [i915#9820])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][423] ([i915#5138]) -> [DMESG-FAIL][424] ([i915#11627] / [i915#13314])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [FAIL][425] ([i915#5138]) -> [DMESG-FAIL][426] ([i915#13314])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4:
    - shard-dg1:          [SKIP][427] ([i915#6095]) -> [SKIP][428] ([i915#4423] / [i915#6095]) +1 other test skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg1-18/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-dg1:          [SKIP][429] ([i915#12805]) -> [SKIP][430] ([i915#12805] / [i915#4423])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg1-18/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][431] ([i915#4423] / [i915#9433]) -> [SKIP][432] ([i915#9433])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg1-12/igt@kms_content_protection@mei-interface.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-13/igt@kms_content_protection@mei-interface.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg1:          [SKIP][433] ([i915#4423] / [i915#8708]) -> [SKIP][434] ([i915#8708])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
    - shard-dg2:          [SKIP][435] ([i915#3458]) -> [SKIP][436] ([i915#10433] / [i915#3458]) +2 other tests skip
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg2:          [SKIP][437] ([i915#10433] / [i915#3458]) -> [SKIP][438] ([i915#3458]) +3 other tests skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg1:          [SKIP][439] ([i915#8623]) -> [SKIP][440] ([i915#4423] / [i915#8623])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg1-18/igt@kms_tiled_display@basic-test-pattern.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@max-min:
    - shard-dg1:          [SKIP][441] ([i915#4423] / [i915#9906]) -> [SKIP][442] ([i915#9906])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg1-12/igt@kms_vrr@max-min.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-13/igt@kms_vrr@max-min.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030
  [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10333]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10333
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
  [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616
  [i915#11627]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11627
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
  [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
  [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12193
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12392]: https://gitlab.freedesktop.org/dr

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/index.html

--===============4765920279550980847==
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
<tr><td><b>Series:</b></td><td>drm/i915/cmtg: Disable the CMTG (rev9)</td><=
/tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/142947/">https://patchwork.freedesktop.org/series/142947/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_142947v9/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_142947v9/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16018_full -&gt; Patchwork_142947v=
9_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_142947v9_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_142947v9_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 10)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
142947v9_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_16018/shard-dg2-8/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-8/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_16018/shard-dg2-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_16018/shard-dg2-7/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-7/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_160=
18/shard-dg2-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_16018/shard-dg2-6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/sha=
rd-dg2-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_16018/shard-dg2-4/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2=
-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg2-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-3/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-2/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_16018/shard-dg2-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_16018/shard-dg2-1/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-1/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1601=
8/shard-dg2-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_16018/shard-dg2-10/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-10/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/sh=
ard-dg2-10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_16018/shard-dg2-10/boot.html">PASS</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_142947v9/shard-dg2-10/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/sh=
ard-dg2-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_142947v9/shard-dg2-1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-2/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_142947v9/shard-dg2-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-3/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-d=
g2-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_142947v9/shard-dg2-3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-4/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1429=
47v9/shard-dg2-4/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_142947v9/shard-dg2-4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-5=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_142947v9/shard-dg2-5/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-6/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9=
/shard-dg2-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_142947v9/shard-dg2-6/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-7/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_142947v9/shard-dg2-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-8/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shar=
d-dg2-8/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-tglu-10/igt@gem_ctx_persistence@smoketest.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14294=
7v9/shard-tglu-2/igt@gem_ctx_persistence@smoketest.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg2-1/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-6/igt@=
gem_eio@kms.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_142947v9/shard-dg1-17/igt@kms_flip@flip-vs-suspend-interruptible.html">A=
BORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@kms_flip@flip-vs-suspend-=
interruptible@d-hdmi-a4.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-snb7/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-=
snb2/igt@perf_pmu@module-unload.html">INCOMPLETE</a> +3 other tests incompl=
ete</li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-mtlp-6/igt@perf_pmu@module-unload.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shar=
d-mtlp-8/igt@perf_pmu@module-unload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_142947v9_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@api_intel_bb@blit-reloc-pu=
rge-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@api_intel_bb@object-reloc=
-keep-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@debugfs_test@basic-hwmon.=
html">SKIP</a> ([i915#9318])</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-tglu-4/igt@device_reset@unbind-reset-rebind.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142=
947v9/shard-tglu-4/igt@device_reset@unbind-reset-rebind.html">ABORT</a> ([i=
915#12817] / [i915#5507])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-rkl-1/igt@drm_fdinfo@isolation.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-r=
kl-4/igt@drm_fdinfo@isolation.html">DMESG-WARN</a> ([i915#12917] / [i915#12=
964])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@vecs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@drm_fdinfo@isolation@vecs=
0.html">SKIP</a> ([i915#8414]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@drm_fdinfo@virtual-busy-h=
ang.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@gem_basic@multigpu-create=
-close.html">SKIP</a> ([i915#7697])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_basic@multigpu-create=
-close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_caching@writes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-5/igt@gem_caching@writes.html">=
SKIP</a> ([i915#4873]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-7/igt@gem_ccs@block-copy-compres=
sed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@gem_ccs@block-multicopy-i=
nplace.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_ccs@ctrl-surf-copy.ht=
ml">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@gem_ccs@ctrl-surf-copy-ne=
w-ctx.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@gem_ccs@large-ctrl-surf-co=
py.html">SKIP</a> ([i915#13008])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg2-5/igt@gem_ccs@suspend-resume.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-5/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg2-5/igt@gem_ccs@suspend-resume@tile64-compressed-comp=
fmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_142947v9/shard-dg2-5/igt@gem_ccs@suspend-resume@ti=
le64-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"https=
://gitlab.freedesktop.org/dr">i915#12392</a> / [i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@gem_close_race@multigpu-b=
asic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@gem_create@create-ext-cpu=
-access-big.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-snb7/igt@gem_ctx_persistence@engines=
-mixed-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/1099">i915#1099</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_ctx_persistence@hang.=
html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@gem_ctx_persistence@heart=
beat-many.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_ctx_sseu@mmap-args.ht=
ml">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@gem_eio@hibernate.html">A=
BORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/10030">i915#10030</a> / [i915#7975] / [i915#8213])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@gem_eio@hibernate.html">AB=
ORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg1-18/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-=
dg1-18/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#12543] / [i915#5784])=
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_eio@unwedge-stress.ht=
ml">FAIL</a> ([i915#12714] / [i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-1us:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-mtlp-1/igt@gem_eio@wait-wedge-1us.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shar=
d-mtlp-7/igt@gem_eio@wait-wedge-1us.html">ABORT</a> ([i915#13193]) +1 other=
 test abort</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_exec_balancer@bonded-=
dual.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@gem_exec_balancer@bonded-=
true-hang.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_exec_balancer@invalid=
-bonds.html">SKIP</a> ([i915#4036])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@gem_exec_balancer@paralle=
l-keep-in-fence.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-7/igt@gem_exec_balancer@parallel=
-out-fence.html">SKIP</a> ([i915#4525]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_exec_flush@basic-uc-p=
rw-default.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@gem_exec_flush@basic-uc-r=
w-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@gem_exec_reloc@basic-conc=
urrent16.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@gem_exec_reloc@basic-cpu-=
active.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-w=
c-noreloc.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_exec_reloc@basic-wc-r=
ead.html">SKIP</a> ([i915#3281]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-rkl-4/igt@gem_exec_schedule@preempt.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/sh=
ard-rkl-1/igt@gem_exec_schedule@preempt.html">DMESG-WARN</a> ([i915#12964])=
 +5 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@gem_exec_schedule@preempt=
-queue-contexts.html">SKIP</a> ([i915#4812]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@gem_exec_schedule@preempt=
-queue-contexts-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-5/igt@gem_fence_thrash@bo-copy.=
html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@gem_fenced_exec_thrash@no=
-spare-fences.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@gem_huc_copy@huc-copy.html=
">SKIP</a> ([i915#2190])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@gem_huc_copy@huc-copy.htm=
l">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@gem_lmem_swapping@heavy-m=
ulti.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@gem_lmem_swapping@paralle=
l-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@gem_lmem_swapping@parallel=
-random-engines.html">SKIP</a> ([i915#4613]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-glk6/igt@gem_lmem_swapping@smem-oom.=
html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@gem_lmem_swapping@verify.=
html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_lmem_swapping@verify-=
ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12193">i915#12193</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_lmem_swapping@verify-=
ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@gem_mmap_gtt@fault-concur=
rent-x.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_mmap_gtt@medium-copy-=
odd.html">SKIP</a> ([i915#4077]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc-unflushed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_mmap_wc@write-cpu-rea=
d-wc-unflushed.html">SKIP</a> ([i915#4083]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read-distinct:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@gem_mmap_wc@write-read-di=
stinct.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_partial_pwrite_pread@=
writes-after-reads.html">SKIP</a> ([i915#3282]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@gem_partial_pwrite_pread@w=
rites-after-reads-uncached.html">SKIP</a> ([i915#3282]) +7 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_pread@display:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@gem_pread@display.html">S=
KIP</a> ([i915#3282]) +3 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@gem_pread@display.html">S=
KIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@gem_pxp@create-protected-=
buffer.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@gem_pxp@protected-encrypte=
d-src-copy-not-readible.html">TIMEOUT</a> ([i915#12917] / [i915#12964]) +2 =
other tests timeout</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@gem_render_copy@x-tiled-t=
o-vebox-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@gem_render_copy@y-tiled-t=
o-vebox-y-tiled.html">SKIP</a> ([i915#8428]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> ([i915#4079]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_softpin@evict-snoop.h=
tml">SKIP</a> ([i915#4885]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@gem_tiled_pread_basic.htm=
l">SKIP</a> ([i915#4079]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@gem_tiled_pread_pwrite.ht=
ml">SKIP</a> ([i915#4079]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@gem_userptr_blits@coherenc=
y-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@gem_userptr_blits@create-=
destroy-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@gem_userptr_blits@dmabuf-=
unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@gem_userptr_blits@forbidde=
n-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gem_userptr_blits@unsync-=
unmap-after-close.html">SKIP</a> ([i915#3297]) +4 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@gem_userptr_blits@unsync-=
unmap-after-close.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@gen9_exec_parse@bb-start-=
cmd.html">SKIP</a> ([i915#2527]) +3 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@gen9_exec_parse@bb-start-=
cmd.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@gen9_exec_parse@bb-start-c=
md.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@gen9_exec_parse@bb-start-o=
ut.html">SKIP</a> ([i915#2527]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@gen9_exec_parse@secure-ba=
tches.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@gen9_exec_parse@shadow-pe=
ek.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-2/igt@i915_module_load@reload-w=
ith-fault-injection.html">ABORT</a> ([i915#12817] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@i915_pm_freq_api@freq-res=
et-multiple.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@i915_pm_freq_api@freq-susp=
end.html">SKIP</a> ([i915#8399]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142=
947v9/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a=
> ([i915#12455]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@i915_pm_freq_mult@media-f=
req@gt0.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@i915_pm_rc6_residency@rc6=
-idle@gt0-vcs0.html">WARN</a> ([i915#2681]) +4 other tests warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@i915_pm_rps@min-max-confi=
g-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11681">i915#11681</a> / [i915#6621])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@i915_pm_rps@min-max-confi=
g-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11681">i915#11681</a> / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@i915_pm_rps@thresholds.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@i915_query@hwconfig_table=
.html">SKIP</a> ([i915#6245])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@i915_query@test-query-geom=
etry-subslices.html">SKIP</a> ([i915#5723])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@i915_query@test-query-geo=
metry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14294=
7v9/shard-mtlp-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i9=
15#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@intel_hwmon@hwmon-write.h=
tml">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_addfb_basic@addfb25-x=
-tiled-legacy.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_addfb_basic@addfb25-x=
-tiled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_addfb_basic@addfb25-y=
-tiled-small-legacy.html">SKIP</a> ([i915#5190]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_addfb_basic@addfb25-y=
-tiled-small-legacy.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_addfb_basic@basic-y-t=
iled-legacy.html">SKIP</a> ([i915#4215])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_addfb_basic@tile-pitc=
h-mismatch.html">SKIP</a> ([i915#4212]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> ([i915#87=
09]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_async_flips@test-curs=
or-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/10333">i915#10333</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-tran=
sition-fencing-internal-panels.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-4/igt@kms_atomic=
_transition@plane-all-modeset-transition-fencing-internal-panels.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
808">i915#11808</a> / [i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-snb7/igt@kms_atomic_transition@plane=
-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_big_fb@4-tiled-addfb.h=
tml">SKIP</a> ([i915#5286]) +6 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@kms_big_fb@4-tiled-addfb.=
html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_big_fb@4-tiled-addfb-=
size-overflow.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#5286]) +3 o=
ther tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i9=
15#5286]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_big_fb@x-tiled-64bpp-=
rotate-90.html">SKIP</a> ([i915#3638]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@kms_big_fb@y-tiled-64bpp-r=
otate-180.html">SKIP</a> ([i915#4538] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-r=
otate-270.html">SKIP</a> ([i915#3638]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_big_fb@y-tiled-addfb-=
size-overflow.html">SKIP</a> ([i915#6187])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_big_fb@y-tiled-max-hw=
-stride-64bpp-rotate-180.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-270.html">SKIP</a> +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-0.html">SKIP</a> ([i915#4538]) +7 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4=
-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_ccs@bad-rotation-90-4=
-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_ccs@bad-rotation-90-4=
-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12313">i915#12313</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_ccs@bad-rotation-90-4=
-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html">SKIP</a> ([i915#6095]) +156 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_ccs@crc-primary-basic=
-y-tiled-ccs@pipe-d-edp-1.html">SKIP</a> ([i915#6095]) +19 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-3/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / [=
i915#6095]) +93 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +106 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12805])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-2/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#6095]) +7 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-glk2/igt@kms_ccs@crc-primary-suspend=
-y-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> ([i915#12796]) +1 other t=
est incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_ccs@crc-primary-suspe=
nd-yf-tiled-ccs@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#6095]) +34 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +4 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_ccs@random-ccs-data-4=
-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@kms_ccs@random-ccs-data-y=
-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#6095]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-glk2/igt@kms_cdclk@mode-transition.h=
tml">SKIP</a> +106 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_cdclk@mode-transition=
-all-outputs.html">SKIP</a> ([i915#7213] / [i915#9010])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_cdclk@mode-transition=
-all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/11616">i915#11616</a> / [i915#7213])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_chamelium_color@ctm-0=
-25.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-resolution-list:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_chamelium_edid@dp-edi=
d-resolution-list.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/11151">i915#11151</a> / [i915#7828]) +3 other tes=
ts skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@kms_chamelium_edid@dp-edid=
-resolution-list.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/11151">i915#11151</a> / [i915#7828]) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@vga-edid-read:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@kms_chamelium_edid@vga-ed=
id-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/11151">i915#11151</a> / [i915#7828]) +3 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_chamelium_frames@hdmi-=
frame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11151">i915#11151</a> / [i915#7828]) +10 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/11151">i915#11151</a> / [i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm-disable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_chamelium_hpd@dp-hpd-=
storm-disable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/11151">i915#11151</a> / [i915#7828]) +9 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@kms_content_protection@dp=
-mst-lic-type-1.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> ([i915#3299]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_content_protection@le=
gacy.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_content_protection@le=
gacy.html">TIMEOUT</a> ([i915#7173]) +1 other test timeout</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_content_protection@leg=
acy.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-7/igt@kms_content_protection@mei=
-interface.html">SKIP</a> ([i915#9424]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_content_protection@sr=
m.html">SKIP</a> ([i915#7116])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-128x42:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-5/igt@kms_cursor_crc@cursor-off=
screen-128x42.html">SKIP</a> ([i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_cursor_crc@cursor-ons=
creen-512x512.html">SKIP</a> ([i915#13049]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@kms_cursor_crc@cursor-onsc=
reen-512x512.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_cursor_crc@cursor-ran=
dom-32x32.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_cursor_crc@cursor-ran=
dom-32x32.html">SKIP</a> ([i915#3555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_cursor_crc@cursor-ran=
dom-512x512.html">SKIP</a> ([i915#13049]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x32.html">SKIP</a> ([i915#3555]) +7 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-5/igt@kms_cursor_crc@cursor-rap=
id-movement-32x32.html">SKIP</a> ([i915#3555] / [i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_cursor_legacy@2x-flip=
-vs-cursor-atomic.html">SKIP</a> ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-5/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_cursor_legacy@modeset-=
atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_dirtyfb@psr-dirtyfb-io=
ctl.html">SKIP</a> ([i915#9723]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc.html">SKIP</a> ([i915#3555] / [i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_draw_crc@draw-method-=
mmap-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp=
.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_fbcon_fbt@psr-suspend=
.html">SKIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_feature_discovery@dis=
play-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@kms_feature_discovery@dis=
play-4x.html">SKIP</a> ([i915#1839]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_fence_pin_leak.html">=
SKIP</a> ([i915#4881]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_flip@2x-flip-vs-block=
ing-wf-vblank.html">SKIP</a> ([i915#9934]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-7/igt@kms_flip@2x-flip-vs-dpms-o=
ff-vs-modeset-interruptible.html">SKIP</a> ([i915#9934]) +7 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_flip@2x-flip-vs-fence=
s-interruptible.html">SKIP</a> ([i915#8381]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-glk2/igt@kms_flip@2x-flip-vs-suspend=
.html">INCOMPLETE</a> ([i915#12745] / [i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-glk2/igt@kms_flip@2x-flip-vs-suspend=
@ab-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> ([i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_flip@2x-plain-flip-in=
terruptible.html">SKIP</a> ([i915#9934]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@kms_flip@2x-single-buffer=
-flip-vs-dpms-off-vs-modeset.html">SKIP</a> ([i915#3637]) +2 other tests sk=
ip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-5/igt@kms_flip@2x-single-buffer=
-flip-vs-dpms-off-vs-modeset.html">SKIP</a> ([i915#3637]) +5 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_flip@2x-wf_vblank-ts-=
check.html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-rkl-7/igt@kms_flip@flip-vs-absolute-wf_vblank.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
42947v9/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989">=
i915#11989</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_flip@flip-vs-absolute-=
wf_vblank@a-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/11989">i915#11989</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_flip@flip-vs-suspend-i=
nterruptible@a-hdmi-a2.html">DMESG-FAIL</a> ([i915#12964]) +1 other test dm=
esg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-tglu-9/igt@kms_flip@wf_vblank-ts-check-interruptible@d-=
hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_142947v9/shard-tglu-9/igt@kms_flip@wf_vblank-ts-check-inter=
ruptible@d-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/11989">i915#11989</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html">SK=
IP</a> ([i915#2672] / [i915#8813]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a> ([i915#2672] / [i91=
5#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> =
([i915#2587] / [i915#2672]) +6 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
[i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2672] / [i9=
15#3555] / [i915#8813]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2587] / [i915=
#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> ([i915#2672] =
/ [i915#3555]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> ([i915#2672] =
/ [i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / [=
i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
shrfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_142947v9/shard-dg2-6/igt@kms_frontbuffer_tracking@fb=
c-1p-offscren-pri-shrfb-draw-blt.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +1 othe=
r test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-shrfb-msflip-blt.html">SKIP</a> ([i915#5354]) +10 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> +46 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> +60 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#1825]) +17=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +4 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> +38 other tests skip<=
/li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +21 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([i915#3023]) +27 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +4 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([i915#1825]) +39 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_frontbuffer_tracking@=
psr-rgb101010-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +23 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@kms_hdr@bpc-switch-suspend=
.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_hdr@brightness-with-h=
dr.html">SKIP</a> ([i915#12713])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_hdr@invalid-hdr.html"=
>SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-2/igt@kms_hdr@static-swap.html"=
>SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_joiner@basic-big-join=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_joiner@basic-ultra-jo=
iner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/12339">i915#12339</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_joiner@invalid-modese=
t-force-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_joiner@invalid-modeset=
-force-ultra-joiner.html">SKIP</a> ([i915#12394] / [i915#13522])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@kms_joiner@invalid-modese=
t-force-ultra-joiner.html">SKIP</a> ([i915#12394] / [i915#13522])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-5/igt@kms_joiner@invalid-modese=
t-force-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/10656">i915#10656</a> / [i915#13522])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_joiner@switch-modeset=
-ultra-joiner-big-joiner.html">SKIP</a> ([i915#13522])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_joiner@switch-modeset=
-ultra-joiner-big-joiner.html">SKIP</a> ([i915#13522])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_joiner@switch-modeset-=
ultra-joiner-big-joiner.html">SKIP</a> ([i915#13522])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@kms_plane_multiple@tiling=
-y.html">SKIP</a> ([i915#3555] / [i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_plane_scaling@intel-m=
ax-src-size.html">SKIP</a> ([i915#6953])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_plane_scaling@intel-m=
ax-src-size.html">SKIP</a> ([i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:=
</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-modifiers@pipe-a.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +=
8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-5-with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +5 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation.html">SKIP</a> ([i915#3555]) +3 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_plane_scaling@plane-u=
pscale-20x20-with-rotation@pipe-c.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +13 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-c.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +=
4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-20x20@pipe-d.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +=
13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / [i915#6=
953])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / [i915#6=
953])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_pm_backlight@bad-brigh=
tness.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_pm_backlight@brightne=
ss-with-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@kms_pm_backlight@fade-wit=
h-dpms.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_pm_dc@dc5-psr.html">S=
KIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_pm_dc@dc5-retention-fl=
ops.html">SKIP</a> ([i915#3828])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-6/igt@kms_pm_dc@dc5-retention-f=
lops.html">SKIP</a> ([i915#3828])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_pm_dc@dc6-dpms.html">=
SKIP</a> ([i915#3361])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> ([i915#9340])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-2/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-r=
kl-1/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_pm_rpm@dpms-non-lpsp.=
html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shar=
d-dg2-1/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_pm_rpm@modeset-lpsp.h=
tml">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_pm_rpm@system-suspend=
-modeset.html">DMESG-WARN</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-move-continuous-sf@pipe-a-edp-1.html">SKIP</a> ([i915#9808]) +1 o=
ther test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_psr2_sf@pr-overlay-pl=
ane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-snb5/igt@kms_psr2_sf@pr-overlay-plan=
e-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-glk6/igt@kms_psr2_sf@pr-overlay-plan=
e-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_psr2_sf@pr-plane-move=
-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12316">i915#12316</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_psr2_sf@psr2-cursor-p=
lane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +11 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-p=
lane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +12 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_psr2_sf@psr2-primary-=
plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@kms_psr2_su@page_flip-xrg=
b8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_psr@fbc-psr-cursor-pl=
ane-onoff.html">SKIP</a> ([i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_psr@fbc-psr-no-drrs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/1072">i915#1072</a> / [i915#9732]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-primary-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_psr@pr-primary-mmap-c=
pu.html">SKIP</a> ([i915#9688]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-7/igt@kms_psr@psr-sprite-plane-o=
noff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/1072">i915#1072</a> / [i915#9732]) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_psr@psr2-sprite-blt.h=
tml">SKIP</a> ([i915#9732]) +9 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_psr@psr2-sprite-blt.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/1072">i915#1072</a> / [i915#9732]) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_psr_stress_test@flip-=
primary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_psr_stress_test@inval=
idate-primary-flip-overlay.html">SKIP</a> ([i915#9685]) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-8/igt@kms_rotation_crc@primary-=
rotation-90.html">SKIP</a> ([i915#12755]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg2-10/igt@kms_rotation_crc@primary-=
rotation-90.html">SKIP</a> ([i915#12755])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-snb5/igt@kms_rotation_crc@sprite-rot=
ation-270.html">SKIP</a> +146 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_scaling_modes@scaling=
-mode-none.html">SKIP</a> ([i915#3555] / [i915#5030] / [i915#9041])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_scaling_modes@scaling=
-mode-none@pipe-a-edp-1.html">SKIP</a> ([i915#5030]) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-3/igt@kms_scaling_modes@scaling=
-mode-none@pipe-d-edp-1.html">SKIP</a> ([i915#5030] / [i915#9041])</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@queue-busy@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@kms_sequence@queue-busy@pi=
pe-b-hdmi-a-2.html">DMESG-WARN</a> ([i915#12964]) +10 other tests dmesg-war=
n</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-5/igt@kms_vrr@flip-basic.html">=
SKIP</a> ([i915#3555] / [i915#8808])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-4/igt@kms_vrr@seamless-rr-switch=
-drrs.html">SKIP</a> ([i915#9906]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-mtlp-6/igt@kms_vrr@seamless-rr-switc=
h-vrr.html">SKIP</a> ([i915#8808] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_writeback@writeback-f=
b-id.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@kms_writeback@writeback-f=
b-id-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@kms_writeback@writeback-f=
b-id-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-glk6/igt@kms_writeback@writeback-inv=
alid-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-7/igt@perf@unprivileged-single-c=
tx-counters.html">SKIP</a> ([i915#2433])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-start@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-mtlp-3/igt@perf_pmu@busy-start@ccs0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/sh=
ard-mtlp-1/igt@perf_pmu@busy-start@ccs0.html">FAIL</a> ([i915#4349])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-check-all:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-rkl-1/igt@perf_pmu@most-busy-check-all.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9=
/shard-rkl-4/igt@perf_pmu@most-busy-check-all.html">FAIL</a> ([i915#4349]) =
+1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a> ([i915#8516]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a> ([i915#8516]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-5/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> ([i915#3291] / [i915#3708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@prime_vgem@basic-gtt.html=
">SKIP</a> ([i915#3708] / [i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-rkl-3/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> ([i915#3708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-12/igt@prime_vgem@fence-flip-han=
g.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-17/igt@sriov_basic@enable-vfs-au=
toprobe-off.html">SKIP</a> ([i915#9917]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-8/igt@sriov_basic@enable-vfs-au=
toprobe-on@numvfs-1.html">FAIL</a> ([i915#12910]) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-tglu-1/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each-numvfs-all.html">FAIL</a> ([i915#12910])</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@tools_test@sysfs_l3_parit=
y.html">SKIP</a> ([i915#4818])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_auth@many-magics:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-rkl-1/igt@core_auth@many-magics.html">DMESG-WARN</a> ([=
i915#12964]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_142947v9/shard-rkl-4/igt@core_auth@many-magics.html">PASS</a> +7 othe=
r tests pass</li>
</ul>
</li>
<li>
<p>igt@core_getversion@all-cards:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-tglu-8/igt@core_getversion@all-cards.html">ABORT</a> ([=
i915#13010]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_142947v9/shard-tglu-2/igt@core_getversion@all-cards.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg2-10/igt@gem_create@create-ext-cpu-access-big.html">A=
BORT</a> ([i915#13427]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_142947v9/shard-dg2-1/igt@gem_create@create-ext-cpu-access-=
big.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-mtlp-7/igt@gem_eio@kms.html">ABORT</a> ([i915#13193]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9=
/shard-mtlp-5/igt@gem_eio@kms.html">PASS</a> +1 other test pass</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg1-13/igt@gem_eio@kms.html">FAIL</a> ([i915#5784]) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/s=
hard-dg1-17/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-1us:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-mtlp-7/igt@gem_eio@wait-1us.html">ABORT</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtl=
p-8/igt@gem_eio@wait-1us.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-128x42.html">F=
AIL</a> ([i915#13566]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_142947v9/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-128=
x42.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-tglu-6/igt@kms_cursor_crc@cursor-random-128x42.html">FA=
IL</a> ([i915#13566]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_142947v9/shard-tglu-7/igt@kms_cursor_crc@cursor-random-128x4=
2.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_142947v9/shard-glk6/igt@kms_cursor_legacy@flip-=
vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-mtlp-4/igt@kms_flip@blocking-wf_vblank.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989">i=
915#11989</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_142947v9/shard-mtlp-3/igt@kms_flip@blocking-wf_vblank.html">PASS</a=
> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-glk8/igt@kms_flip@dpms-off-confusion.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118"=
>i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_142947v9/shard-glk3/igt@kms_flip@dpms-off-confusion.html">PASS</a> =
+1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-mtlp-8/igt@kms_flip@modeset-vs-vblank-race@a-edp1.html"=
>FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_142947v9/shard-mtlp-2/igt@kms_flip@modeset-vs-vblank-race@a-edp1.html">P=
ASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg2-4/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989=
">i915#11989</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_142947v9/shard-dg2-8/igt@kms_flip@plain-flip-fb-recreate.html">P=
ASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-tglu-8/igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/11989">i915#11989</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_142947v9/shard-tglu-4/igt@kms_flip@plain-flip-fb-recr=
eate@d-hdmi-a1.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg2-2/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3=
555] / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_142947v9/shard-dg2-10/igt@kms_hdr@static-toggle.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg2-2/igt@kms_joiner@basic-force-big-joiner.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/123=
88">i915#12388</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_142947v9/shard-dg2-10/igt@kms_joiner@basic-force-big-joiner.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@overlay:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg1-12/igt@kms_plane_cursor@overlay.html">DMESG-WARN</a=
> ([i915#4423]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_142947v9/shard-dg1-13/igt@kms_plane_cursor@overlay.html">PASS</a> =
+1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915=
#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_142947v9/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> +2 other t=
ests pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-98@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-mtlp-1/igt@perf_pmu@busy-accuracy-98@rcs0.html">FAIL</a=
> ([i915#4349]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_142947v9/shard-mtlp-8/igt@perf_pmu@busy-accuracy-98@rcs0.html">PAS=
S</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142947v9/shard-dg1-14/igt@i915_module_load@reload-w=
ith-fault-injection.html">ABORT</a> ([i915#13493] / [i915#9820])</li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/10131">i915#10131</a> / [i915#13493] / [i915#9820]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-=
4/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131">i915#101=
31</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/10887">i915#10887</a> / [i915#13493])</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.=
html">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_142947v9/shard-dg2-7/igt@i915_module_load@reload-wit=
h-fault-injection.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/10887">i915#10887</a> / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">FAIL</a> ([i915#5138]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-4/igt@kms_big_fb@4-tile=
d-max-hw-stride-64bpp-rotate-0-hflip.html">DMESG-FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11627">i915#11627</a> / =
[i915#13314])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip.html">FAIL</a> ([i915#5138]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-mtlp-7/igt@kms_big_fb@4-ti=
led-max-hw-stride-64bpp-rotate-180-hflip.html">DMESG-FAIL</a> ([i915#13314]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a=
-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg1-18/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl=
-rc-ccs-cc@pipe-a-hdmi-a-4.html">SKIP</a> ([i915#6095]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@=
kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4.html=
">SKIP</a> ([i915#4423] / [i915#6095]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg1-18/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.=
html">SKIP</a> ([i915#12805]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12805] / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg1-12/igt@kms_content_protection@mei-interface.html">S=
KIP</a> ([i915#4423] / [i915#9433]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_142947v9/shard-dg1-13/igt@kms_content_protecti=
on@mei-interface.html">SKIP</a> ([i915#9433])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-=
pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#4423] / [i915#8708]) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-d=
g1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-w=
c.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledp=
rimary.html">SKIP</a> ([i915#3458]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-4/igt@kms_frontbuffer_track=
ing@fbcpsr-shrfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / [i915#3458])=
 +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-=
shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/10433">i915#10433</a> / [i915#3458]) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard-dg2-=
8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html">=
SKIP</a> ([i915#3458]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg1-18/igt@kms_tiled_display@basic-test-pattern.html">S=
KIP</a> ([i915#8623]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_142947v9/shard-dg1-18/igt@kms_tiled_display@basic-test-patte=
rn.html">SKIP</a> ([i915#4423] / [i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16018/shard-dg1-12/igt@kms_vrr@max-min.html">SKIP</a> ([i915#4423] =
/ [i915#9906]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_142947v9/shard-dg1-13/igt@kms_vrr@max-min.html">SKIP</a> ([i915#990=
6])</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============4765920279550980847==--
