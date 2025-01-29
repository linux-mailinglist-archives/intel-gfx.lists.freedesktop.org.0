Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 571CCA2180B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 08:24:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD51E10E74D;
	Wed, 29 Jan 2025 07:24:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1794510E06E;
 Wed, 29 Jan 2025 07:24:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2299283346826317428=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_PSR_DSB_support_=28rev8?=
 =?utf-8?q?=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jan 2025 07:24:55 -0000
Message-ID: <173813549506.2284862.16280362041597401125@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250127102846.1237560-1-jouni.hogander@intel.com>
In-Reply-To: <20250127102846.1237560-1-jouni.hogander@intel.com>
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

--===============2299283346826317428==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: PSR DSB support (rev8)
URL   : https://patchwork.freedesktop.org/series/142520/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16033_full -> Patchwork_142520v8_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_142520v8_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142520v8_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/index.html

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142520v8_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-snb:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb2/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@i915_hangman@detector@vcs1:
    - shard-mtlp:         [PASS][2] -> [ABORT][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-mtlp-3/igt@i915_hangman@detector@vcs1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-7/igt@i915_hangman@detector@vcs1.html

  * igt@perf_pmu@module-unload:
    - shard-dg2:          [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg2-3/igt@perf_pmu@module-unload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@kms_prime@d3hot:
    - shard-tglu:         [SKIP][6] ([i915#6524]) -> [ABORT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-tglu-10/igt@kms_prime@d3hot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-5/igt@kms_prime@d3hot.html

  * igt@perf_pmu@rc6-suspend:
    - shard-glk:          [INCOMPLETE][8] ([i915#13356]) -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-glk1/igt@perf_pmu@rc6-suspend.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-glk1/igt@perf_pmu@rc6-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_142520v8_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-snb:          ([PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [FAIL][22], [PASS][23], [PASS][24]) -> ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb2/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb7/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb7/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb5/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb5/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb5/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb5/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb1/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb1/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb1/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#8411])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#11078])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@device_reset@cold-reset-bound.html
    - shard-tglu:         NOTRUN -> [SKIP][43] ([i915#11078])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@device_reset@cold-reset-bound.html
    - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#11078])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-tglu:         [PASS][45] -> [ABORT][46] ([i915#12817] / [i915#5507])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-tglu-10/igt@device_reset@unbind-reset-rebind.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-4/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@all-busy-check-all:
    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#8414]) +1 other test skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@drm_fdinfo@all-busy-check-all.html
    - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#8414]) +2 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@drm_fdinfo@all-busy-check-all.html

  * igt@drm_fdinfo@busy-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#8414]) +7 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@drm_fdinfo@busy-check-all@vecs1.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-tglu:         NOTRUN -> [SKIP][50] ([i915#9323])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#9323])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#13008])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@gem_ccs@large-ctrl-surf-copy.html
    - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#13008])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-tglu-1:       NOTRUN -> [SKIP][54] ([i915#9323])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][55] ([i915#12392])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-1/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#7697])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#7697])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@gem_close_race@multigpu-basic-threads.html
    - shard-tglu-1:       NOTRUN -> [SKIP][58] ([i915#7697])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@gem_close_race@multigpu-basic-threads.html
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#7697])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@gem_close_race@multigpu-basic-threads.html
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#7697])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#6335])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#8555]) +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
    - shard-snb:          NOTRUN -> [SKIP][63] ([i915#1099]) +4 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb1/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html

  * igt@gem_ctx_shared@q-smoketest@bcs0:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][64] ([i915#12964]) +16 other tests dmesg-warn
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gem_ctx_shared@q-smoketest@bcs0.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-tglu-1:       NOTRUN -> [SKIP][65] ([i915#280])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#280])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [PASS][67] -> [ABORT][68] ([i915#10030] / [i915#7975] / [i915#8213])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-tglu-8/igt@gem_eio@hibernate.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-10/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#4771])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@gem_exec_balancer@bonded-dual.html
    - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#4771]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#4812]) +1 other test skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#4525]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@gem_exec_balancer@parallel-balancer.html
    - shard-tglu-1:       NOTRUN -> [SKIP][73] ([i915#4525]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#4525])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_balancer@sliced:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#4812])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#6344])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fence@concurrent:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4812])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#3539] / [i915#4852]) +3 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@gem_exec_flush@basic-wb-ro-before-default.html

  * igt@gem_exec_reloc@basic-cpu-read:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#3281]) +2 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_exec_reloc@basic-cpu-read.html

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#3281]) +8 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
    - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#3281]) +12 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@gem_exec_reloc@basic-gtt-read-noreloc.html

  * igt@gem_exec_reloc@basic-wc-gtt-active:
    - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#3281]) +7 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@gem_exec_reloc@basic-wc-gtt-active.html

  * igt@gem_exec_schedule@smoketest@vcs0:
    - shard-rkl:          [PASS][83] -> [DMESG-WARN][84] ([i915#12964]) +8 other tests dmesg-warn
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-rkl-4/igt@gem_exec_schedule@smoketest@vcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@gem_exec_schedule@smoketest@vcs0.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#4860]) +2 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#4860])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#4860]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#4613]) +2 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-tglu-1:       NOTRUN -> [SKIP][89] ([i915#4613]) +2 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#4613]) +1 other test skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#4613]) +4 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#12193])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#4565])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@gem_lmem_swapping@verify-ccs@lmem0.html

  * igt@gem_media_fill@media-fill:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#8289])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@gem_media_fill@media-fill.html

  * igt@gem_media_vme:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#284])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gem_media_vme.html
    - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#284])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@gem_media_vme.html
    - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#284])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@gem_media_vme.html

  * igt@gem_mmap@short-mmap:
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#4083]) +4 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@gem_mmap@short-mmap.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#4077]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_mmap_gtt@hang-busy:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#4077]) +9 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@gem_mmap_gtt@hang-busy.html

  * igt@gem_mmap_gtt@medium-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#4077]) +18 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@gem_mmap_gtt@medium-copy-odd.html

  * igt@gem_mmap_wc@coherency:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#4083])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_mmap_wc@coherency.html

  * igt@gem_mmap_wc@write-read:
    - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#4083]) +7 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@gem_mmap_wc@write-read.html

  * igt@gem_partial_pwrite_pread@reads-snoop:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#3282]) +2 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@gem_partial_pwrite_pread@reads-snoop.html

  * igt@gem_pread@display:
    - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#3282]) +3 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@gem_pread@display.html

  * igt@gem_pwrite_snooped:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#3282]) +1 other test skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@gem_pwrite_snooped.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-rkl:          NOTRUN -> [TIMEOUT][107] ([i915#12964])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#4270])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-rkl:          NOTRUN -> [TIMEOUT][109] ([i915#12917] / [i915#12964]) +2 other tests timeout
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@gem_pxp@reject-modify-context-protection-on.html
    - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#4270]) +3 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_readwrite@new-obj:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#3282])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_readwrite@new-obj.html

  * igt@gem_render_copy@y-tiled-ccs-to-x-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#8428]) +3 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@gem_render_copy@y-tiled-ccs-to-x-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#5190] / [i915#8428]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#8411]) +1 other test skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#4079]) +1 other test skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#4885])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#4079])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_tiled_pread_pwrite.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-rkl:          [PASS][118] -> [FAIL][119] ([i915#12941])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-rkl-6/igt@gem_tiled_swapping@non-threaded.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#3297])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglu-1:       NOTRUN -> [SKIP][121] ([i915#3297] / [i915#3323])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#3282] / [i915#3297])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gem_userptr_blits@forbidden-operations.html
    - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#3282] / [i915#3297])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#3297])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#3297]) +2 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@relocations:
    - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#3281] / [i915#3297])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#3297]) +2 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#3297]) +1 other test skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#3297])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gem_vm_create@invalid-create:
    - shard-snb:          NOTRUN -> [SKIP][130] +331 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb2/igt@gem_vm_create@invalid-create.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-dg2:          NOTRUN -> [SKIP][131] +3 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#2527] / [i915#2856]) +1 other test skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@gen9_exec_parse@batch-zero-length.html
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#2527]) +2 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#2856])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-tglu-1:       NOTRUN -> [SKIP][135] ([i915#2527] / [i915#2856]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@gen9_exec_parse@bb-start-out.html
    - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#2856])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#2527]) +3 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_hangman@detector:
    - shard-mtlp:         [PASS][138] -> [ABORT][139] ([i915#13193])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-mtlp-3/igt@i915_hangman@detector.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-7/igt@i915_hangman@detector.html

  * igt@i915_module_load@reload-no-display:
    - shard-tglu-1:       NOTRUN -> [DMESG-WARN][140] ([i915#13029])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@i915_module_load@reload-no-display.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#6590]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@i915_pm_freq_mult@media-freq@gt0.html
    - shard-tglu-1:       NOTRUN -> [SKIP][142] ([i915#6590]) +1 other test skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html
    - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#6590]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_freq_mult@media-freq@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#6590]) +2 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@i915_pm_freq_mult@media-freq@gt1.html

  * igt@i915_pm_rps@thresholds-idle-park:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#11681])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@i915_pm_rps@thresholds-idle-park.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#4387])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@i915_pm_sseu@full-enable.html
    - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#4387])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@i915_pm_sseu@full-enable.html
    - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#4387])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@mock:
    - shard-snb:          NOTRUN -> [DMESG-WARN][149] ([i915#9311]) +1 other test dmesg-warn
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb7/igt@i915_selftest@mock.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#7707])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#5190])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@bad-pitch-65536:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][152] ([i915#4423]) +2 other tests dmesg-warn
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_addfb_basic@bad-pitch-65536.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#4212]) +1 other test skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-dp-4-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#8709]) +7 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-dp-4-4-mc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-4-y-rc-ccs-cc:
    - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#8709]) +7 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-4-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#8709]) +3 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#8709]) +1 other test skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#12967] / [i915#6228])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-mtlp:         [PASS][159] -> [FAIL][160] ([i915#11808] / [i915#5956]) +1 other test fail
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-mtlp-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4:
    - shard-dg1:          [PASS][161] -> [FAIL][162] ([i915#5956]) +1 other test fail
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#1769] / [i915#3555])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
    - shard-snb:          NOTRUN -> [SKIP][164] ([i915#1769])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-addfb-size-overflow:
    - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#5286]) +2 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_big_fb@4-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#5286]) +4 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
    - shard-dg1:          NOTRUN -> [SKIP][167] ([i915#4538] / [i915#5286]) +7 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-tglu-1:       NOTRUN -> [SKIP][168] ([i915#5286]) +3 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-mtlp:         [PASS][169] -> [DMESG-WARN][170] ([i915#11627])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#3638]) +3 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#3638]) +4 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#3638] / [i915#4423])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#4538] / [i915#5190]) +2 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#4538]) +6 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#6095]) +192 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][177] ([i915#6095]) +44 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-c-edp-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#12313]) +2 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#10307] / [i915#10434] / [i915#6095]) +4 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][180] ([i915#6095]) +29 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][181] ([i915#12313])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][182] ([i915#6095]) +49 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#6095]) +46 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [DMESG-FAIL][184] ([i915#12964]) +1 other test dmesg-fail
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#6095]) +11 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#10307] / [i915#6095]) +125 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#12313]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
    - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#12313]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
    - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#12313]) +1 other test skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#12313])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#3742])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#11616] / [i915#7213]) +3 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-a-dp-4.html

  * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#4087]) +3 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-7/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html

  * igt@kms_chamelium_audio@dp-audio:
    - shard-mtlp:         NOTRUN -> [SKIP][194] ([i915#11151] / [i915#7828]) +6 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_chamelium_audio@dp-audio.html

  * igt@kms_chamelium_color@gamma:
    - shard-mtlp:         NOTRUN -> [SKIP][195] +13 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_chamelium_color@gamma.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#11151] / [i915#7828]) +8 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#11151] / [i915#7828]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-crc-single:
    - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#11151] / [i915#7828]) +6 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_chamelium_frames@hdmi-crc-single.html

  * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
    - shard-tglu:         NOTRUN -> [SKIP][199] ([i915#11151] / [i915#7828]) +2 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#11151] / [i915#7828]) +5 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_color@deep-color:
    - shard-tglu-1:       NOTRUN -> [SKIP][201] ([i915#3555] / [i915#9979])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic:
    - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#7116] / [i915#9424])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#3299])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#7118] / [i915#9424])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg1:          NOTRUN -> [SKIP][205] ([i915#9424])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#9424])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@kms_content_protection@mei-interface.html
    - shard-tglu-1:       NOTRUN -> [SKIP][207] ([i915#6944] / [i915#9424]) +1 other test skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_content_protection@mei-interface.html
    - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#9433])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_content_protection@mei-interface.html
    - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#8063] / [i915#9433])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-tglu-1:       NOTRUN -> [SKIP][210] ([i915#6944] / [i915#7116] / [i915#7118])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][211] ([i915#3555] / [i915#8814]) +1 other test skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-tglu-1:       NOTRUN -> [SKIP][212] ([i915#3555]) +2 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_crc@cursor-offscreen-max-size:
    - shard-dg1:          NOTRUN -> [SKIP][213] ([i915#3555]) +7 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_cursor_crc@cursor-offscreen-max-size.html
    - shard-tglu:         NOTRUN -> [SKIP][214] ([i915#3555])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_cursor_crc@cursor-offscreen-max-size.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#13049])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html
    - shard-tglu-1:       NOTRUN -> [SKIP][216] ([i915#13049]) +2 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html
    - shard-dg1:          NOTRUN -> [SKIP][217] ([i915#13049])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][218] ([i915#13049]) +3 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#3555]) +4 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#13049])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#8814])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_cursor_crc@cursor-sliding-64x21.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#4103] / [i915#4213])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu:         NOTRUN -> [SKIP][223] ([i915#4103])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][224] +15 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][225] ([i915#9809]) +2 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#9723])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
    - shard-tglu:         NOTRUN -> [SKIP][227] ([i915#9723])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl:
    - shard-snb:          NOTRUN -> [FAIL][228] ([i915#12170])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb2/igt@kms_dirtyfb@fbc-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [FAIL][229] ([i915#11968])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb2/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#9723]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-mtlp:         NOTRUN -> [SKIP][231] ([i915#12402])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#8812])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#3555] / [i915#3840])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@kms_dsc@dsc-basic.html
    - shard-dg1:          NOTRUN -> [SKIP][234] ([i915#3555] / [i915#3840]) +1 other test skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#3840])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-tglu-1:       NOTRUN -> [SKIP][236] ([i915#3840]) +1 other test skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-dg1:          NOTRUN -> [SKIP][237] ([i915#3840])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#3840] / [i915#9688])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#3840])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#3555] / [i915#3840])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_feature_discovery@psr1:
    - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#658])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_feature_discovery@psr1.html

  * igt@kms_fence_pin_leak:
    - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#4881])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][243] ([i915#3637]) +4 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_flip@2x-blocking-absolute-wf_vblank.html

  * igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:
    - shard-snb:          NOTRUN -> [FAIL][244] ([i915#11989]) +1 other test fail
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb7/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#9934]) +7 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
    - shard-dg1:          NOTRUN -> [SKIP][246] ([i915#9934]) +9 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#3637]) +8 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#9934]) +1 other test skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][249] ([i915#3637]) +5 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][250] ([i915#8381]) +1 other test skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#2672] / [i915#3555])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
    - shard-dg1:          NOTRUN -> [SKIP][252] ([i915#2672] / [i915#3555]) +1 other test skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][253] ([i915#2672])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
    - shard-dg1:          NOTRUN -> [SKIP][254] ([i915#2587] / [i915#2672]) +1 other test skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][255] ([i915#2672] / [i915#3555] / [i915#8813]) +4 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][256] ([i915#2672] / [i915#8813]) +4 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#2672]) +1 other test skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][258] ([i915#2672] / [i915#3555])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][259] ([i915#2587] / [i915#2672])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][260] ([i915#3555] / [i915#8810] / [i915#8813])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][261] ([i915#3555] / [i915#8810])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#2672] / [i915#3555])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][263] ([i915#2587] / [i915#2672])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-dg2:          [PASS][265] -> [FAIL][266] ([i915#6880])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][267] +56 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#1825]) +28 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-dg1:          NOTRUN -> [SKIP][269] ([i915#5439])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][270] ([i915#8708]) +17 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][271] +59 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy:
    - shard-tglu:         NOTRUN -> [SKIP][272] +34 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#8708]) +3 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][274] ([i915#10055])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][275] ([i915#3458]) +21 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][276] ([i915#10433] / [i915#3458]) +3 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][277] ([i915#8708]) +7 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][278] ([i915#3023]) +16 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][279] ([i915#3458]) +1 other test skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#5354]) +6 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
    - shard-mtlp:         NOTRUN -> [SKIP][281] ([i915#1825]) +27 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-mtlp:         NOTRUN -> [SKIP][282] ([i915#12713])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_hdr@brightness-with-hdr.html
    - shard-tglu-1:       NOTRUN -> [SKIP][283] ([i915#12713])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg2:          NOTRUN -> [SKIP][284] ([i915#3555] / [i915#8228])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          [PASS][285] -> [SKIP][286] ([i915#3555] / [i915#8228])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg2-10/igt@kms_hdr@static-swap.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-5/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#3555] / [i915#8228]) +1 other test skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@kms_hdr@static-toggle-suspend.html
    - shard-dg1:          NOTRUN -> [SKIP][288] ([i915#3555] / [i915#8228])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][289] ([i915#10656])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-dg2:          [PASS][290] -> [SKIP][291] ([i915#12388])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg2-10/igt@kms_joiner@basic-force-big-joiner.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-6/igt@kms_joiner@basic-force-big-joiner.html
    - shard-tglu-1:       NOTRUN -> [SKIP][292] ([i915#12388])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-mtlp:         NOTRUN -> [SKIP][293] ([i915#10656])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][294] ([i915#12388])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][295] ([i915#12394] / [i915#13522])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-mtlp:         NOTRUN -> [SKIP][296] ([i915#12339])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_joiner@invalid-modeset-ultra-joiner.html
    - shard-rkl:          NOTRUN -> [SKIP][297] ([i915#12339])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@kms_joiner@invalid-modeset-ultra-joiner.html
    - shard-tglu-1:       NOTRUN -> [SKIP][298] ([i915#12339])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_joiner@invalid-modeset-ultra-joiner.html
    - shard-dg1:          NOTRUN -> [SKIP][299] ([i915#12339])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          NOTRUN -> [SKIP][300] ([i915#4816])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
    - shard-dg1:          NOTRUN -> [SKIP][301] ([i915#1839])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
    - shard-tglu:         NOTRUN -> [SKIP][302] ([i915#1839])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_lowres@tiling-x:
    - shard-mtlp:         NOTRUN -> [SKIP][303] ([i915#11614] / [i915#3582]) +1 other test skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_plane_lowres@tiling-x.html

  * igt@kms_plane_lowres@tiling-x@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][304] ([i915#10226] / [i915#11614] / [i915#3582]) +2 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_plane_lowres@tiling-x@pipe-a-edp-1.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-mtlp:         NOTRUN -> [SKIP][305] ([i915#3555] / [i915#8821])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b:
    - shard-mtlp:         NOTRUN -> [SKIP][306] ([i915#12247]) +16 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a:
    - shard-tglu-1:       NOTRUN -> [SKIP][307] ([i915#12247]) +14 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a.html
    - shard-dg1:          NOTRUN -> [SKIP][308] ([i915#12247]) +16 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][309] ([i915#12247] / [i915#6953])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-25.html
    - shard-dg1:          NOTRUN -> [SKIP][310] ([i915#12247] / [i915#6953])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25.html
    - shard-tglu:         NOTRUN -> [SKIP][311] ([i915#12247] / [i915#6953])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][312] ([i915#12247]) +4 other tests skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html
    - shard-tglu:         NOTRUN -> [SKIP][313] ([i915#12247]) +3 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-dg1:          NOTRUN -> [SKIP][314] ([i915#12247] / [i915#3555])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-rkl:          NOTRUN -> [SKIP][315] ([i915#3828])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][316] ([i915#3361])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_pm_dc@dc6-dpms.html
    - shard-tglu:         NOTRUN -> [FAIL][317] ([i915#9295])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-mtlp:         NOTRUN -> [FAIL][318] ([i915#12912])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_pm_dc@dc6-psr.html
    - shard-tglu-1:       NOTRUN -> [SKIP][319] ([i915#9685])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][320] ([i915#3361]) +1 other test skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@kms_pm_dc@dc9-dpms.html
    - shard-tglu-1:       NOTRUN -> [SKIP][321] ([i915#4281])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg1:          NOTRUN -> [SKIP][322] ([i915#9519])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][323] ([i915#9519])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-tglu-1:       NOTRUN -> [SKIP][324] ([i915#9519])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu-1:       NOTRUN -> [SKIP][325] ([i915#6524])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:
    - shard-snb:          NOTRUN -> [SKIP][326] ([i915#11520]) +4 other tests skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
    - shard-dg2:          NOTRUN -> [SKIP][327] ([i915#11520]) +1 other test skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][328] ([i915#11520]) +10 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][329] ([i915#11520]) +5 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][330] ([i915#9808])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][331] ([i915#12316]) +5 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-b-edp-1.html

  * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][332] ([i915#11520]) +4 other tests skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
    - shard-dg1:          NOTRUN -> [SKIP][333] ([i915#11520]) +12 other tests skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-mtlp:         NOTRUN -> [SKIP][334] ([i915#4348])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg2:          NOTRUN -> [SKIP][335] ([i915#9683])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-psr2-cursor-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][336] ([i915#9732]) +15 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_psr@fbc-psr2-cursor-blt.html

  * igt@kms_psr@fbc-psr2-primary-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][337] ([i915#9688]) +15 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_psr@fbc-psr2-primary-mmap-cpu.html

  * igt@kms_psr@pr-cursor-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][338] ([i915#1072] / [i915#9732]) +24 other tests skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_psr@pr-cursor-mmap-gtt.html

  * igt@kms_psr@pr-cursor-plane-move:
    - shard-dg2:          NOTRUN -> [SKIP][339] ([i915#1072] / [i915#9732]) +5 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_psr@pr-cursor-plane-move.html

  * igt@kms_psr@psr-primary-render:
    - shard-tglu:         NOTRUN -> [SKIP][340] ([i915#9732]) +8 other tests skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_psr@psr-primary-render.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          NOTRUN -> [SKIP][341] ([i915#1072] / [i915#9732]) +15 other tests skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][342] ([i915#9685])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
    - shard-dg1:          NOTRUN -> [SKIP][343] ([i915#9685])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-mtlp:         NOTRUN -> [SKIP][344] ([i915#12755]) +2 other tests skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-tglu-1:       NOTRUN -> [SKIP][345] ([i915#5289])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
    - shard-dg2:          NOTRUN -> [ABORT][346] ([i915#13179]) +1 other test abort
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][347] ([i915#5465]) +2 other tests fail
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb5/igt@kms_setmode@basic.html

  * igt@kms_setmode@invalid-clone-exclusive-crtc:
    - shard-mtlp:         NOTRUN -> [SKIP][348] ([i915#3555] / [i915#8809] / [i915#8823])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_setmode@invalid-clone-exclusive-crtc.html

  * igt@kms_sysfs_edid_timing:
    - shard-snb:          NOTRUN -> [FAIL][349] ([IGT#160] / [i915#6493])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb7/igt@kms_sysfs_edid_timing.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-tglu-1:       NOTRUN -> [SKIP][350] ([i915#8623]) +1 other test skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern.html
    - shard-mtlp:         NOTRUN -> [SKIP][351] ([i915#8623]) +1 other test skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][352] ([i915#8623])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
    - shard-dg1:          NOTRUN -> [SKIP][353] ([i915#8623])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu-1:       NOTRUN -> [SKIP][354] ([i915#9906])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@lobf:
    - shard-rkl:          NOTRUN -> [SKIP][355] ([i915#11920])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_vrr@lobf.html

  * igt@kms_vrr@negative-basic:
    - shard-rkl:          NOTRUN -> [SKIP][356] ([i915#3555] / [i915#9906])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_vrr@negative-basic.html
    - shard-dg1:          NOTRUN -> [SKIP][357] ([i915#3555] / [i915#9906])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_vrr@negative-basic.html
    - shard-tglu:         NOTRUN -> [SKIP][358] ([i915#3555] / [i915#9906])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-rkl:          NOTRUN -> [SKIP][359] ([i915#9906])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@kms_vrr@seamless-rr-switch-virtual.html
    - shard-dg1:          NOTRUN -> [SKIP][360] ([i915#9906])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-dg1:          NOTRUN -> [SKIP][361] ([i915#2437] / [i915#9412])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-tglu:         NOTRUN -> [SKIP][362] ([i915#2437])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-tglu-1:       NOTRUN -> [SKIP][363] ([i915#2437] / [i915#9412])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][364] ([i915#2433])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@perf@unprivileged-single-ctx-counters.html
    - shard-dg1:          NOTRUN -> [SKIP][365] ([i915#2433])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-dg1:          NOTRUN -> [SKIP][366] ([i915#8850])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@module-unload:
    - shard-snb:          NOTRUN -> [ABORT][367] ([i915#13559])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb5/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@most-busy-idle-check-all@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][368] ([i915#4349]) +1 other test fail
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@perf_pmu@most-busy-idle-check-all@rcs0.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg1:          NOTRUN -> [SKIP][369] ([i915#8516])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_mmap@test_aperture_limit:
    - shard-dg2:          NOTRUN -> [WARN][370] ([i915#9351])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@prime_mmap@test_aperture_limit.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          NOTRUN -> [CRASH][371] ([i915#9351])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          NOTRUN -> [SKIP][372] ([i915#3291] / [i915#3708])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-dg1:          NOTRUN -> [SKIP][373] ([i915#3708]) +1 other test skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@bind-unbind-vf@vf-1:
    - shard-tglu-1:       NOTRUN -> [FAIL][374] ([i915#12910]) +9 other tests fail
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html

  * igt@sriov_basic@bind-unbind-vf@vf-5:
    - shard-mtlp:         NOTRUN -> [FAIL][375] ([i915#12910]) +9 other tests fail
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@sriov_basic@bind-unbind-vf@vf-5.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-rkl:          NOTRUN -> [SKIP][376] ([i915#9917])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@sriov_basic@enable-vfs-autoprobe-off.html
    - shard-dg1:          NOTRUN -> [SKIP][377] ([i915#9917])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6:
    - shard-tglu:         NOTRUN -> [FAIL][378] ([i915#12910]) +9 other tests fail
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg1:          NOTRUN -> [SKIP][379] ([i915#4818])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][380] ([i915#12392] / [i915#7297]) -> [PASS][381]
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-1/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          [ABORT][382] ([i915#13427]) -> [PASS][383]
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg2-6/igt@gem_create@create-ext-cpu-access-big.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-10/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_freq@sysfs:
    - shard-dg2:          [FAIL][384] ([i915#9561]) -> [PASS][385] +1 other test pass
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg2-1/igt@gem_ctx_freq@sysfs.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-10/igt@gem_ctx_freq@sysfs.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-mtlp:         [ABORT][386] -> [PASS][387] +2 other tests pass
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-mtlp-7/igt@gem_eio@in-flight-contexts-immediate.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_eio@wait-wedge-immediate:
    - shard-mtlp:         [ABORT][388] ([i915#13193]) -> [PASS][389] +1 other test pass
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-mtlp-7/igt@gem_eio@wait-wedge-immediate.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@gem_eio@wait-wedge-immediate.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [TIMEOUT][390] ([i915#5493]) -> [PASS][391] +1 other test pass
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-tglu:         [FAIL][392] ([i915#12941]) -> [PASS][393]
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-tglu-4/igt@gem_tiled_swapping@non-threaded.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-8/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
    - shard-dg1:          [FAIL][394] ([i915#3591]) -> [PASS][395] +1 other test pass
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][396] -> [PASS][397]
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb2/igt@i915_pm_rps@reset.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb7/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@debugfs-reader:
    - shard-dg1:          [ABORT][398] ([i915#8213]) -> [PASS][399]
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg1-17/igt@i915_suspend@debugfs-reader.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@i915_suspend@debugfs-reader.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-tglu:         [FAIL][400] ([i915#11808]) -> [PASS][401] +1 other test pass
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][402] ([i915#5138]) -> [PASS][403]
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-rkl:          [FAIL][404] ([i915#13566]) -> [PASS][405] +4 other tests pass
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-random-256x85:
    - shard-tglu:         [FAIL][406] ([i915#13566]) -> [PASS][407] +3 other tests pass
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-tglu-6/igt@kms_cursor_crc@cursor-random-256x85.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-2/igt@kms_cursor_crc@cursor-random-256x85.html

  * igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:
    - shard-tglu:         [FAIL][408] ([i915#11989]) -> [PASS][409] +1 other test pass
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-tglu-7/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-8/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:
    - shard-dg2:          [FAIL][410] ([i915#6880]) -> [PASS][411] +1 other test pass
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
    - shard-dg1:          [DMESG-WARN][412] ([i915#4423]) -> [PASS][413] +6 other tests pass
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg1-13/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          [SKIP][414] ([i915#9519]) -> [PASS][415]
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html
    - shard-rkl:          [SKIP][416] ([i915#9519]) -> [PASS][417] +1 other test pass
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@perf_pmu@module-unload:
    - shard-rkl:          [INCOMPLETE][418] -> [PASS][419]
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-rkl-3/igt@perf_pmu@module-unload.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@perf_pmu@module-unload.html

  * igt@syncobj_timeline@invalid-wait-bad-flags:
    - shard-rkl:          [DMESG-WARN][420] ([i915#12964]) -> [PASS][421] +1 other test pass
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-rkl-4/igt@syncobj_timeline@invalid-wait-bad-flags.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-rkl-2/igt@syncobj_timeline@invalid-wait-bad-flags.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [DMESG-WARN][422] ([i915#10887] / [i915#13475]) -> [ABORT][423] ([i915#10131] / [i915#10887] / [i915#13493] / [i915#9820])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          [DMESG-WARN][424] ([i915#13475]) -> [ABORT][425] ([i915#10887] / [i915#9820])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@mock:
    - shard-glk:          [DMESG-WARN][426] ([i915#1982] / [i915#9311]) -> [DMESG-WARN][427] ([i915#9311])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-glk7/igt@i915_selftest@mock.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-glk1/igt@i915_selftest@mock.html

  * igt@kms_chamelium_edid@dp-edid-read:
    - shard-dg1:          [SKIP][428] ([i915#11151] / [i915#4423] / [i915#7828]) -> [SKIP][429] ([i915#11151] / [i915#7828])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg1-13/igt@kms_chamelium_edid@dp-edid-read.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_chamelium_edid@dp-edid-read.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [TIMEOUT][430] ([i915#7173]) -> [SKIP][431] ([i915#9424])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg2-10/igt@kms_content_protection@lic-type-0.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-6/igt@kms_content_protection@lic-type-0.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][432] ([i915#10433] / [i915#3458]) -> [SKIP][433] ([i915#3458]) +2 other tests skip
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
    - shard-dg2:          [SKIP][434] ([i915#3458]) -> [SKIP][435] ([i915#10433] / [i915#3458])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-dg2:          [SKIP][436] ([i915#13331]) -> [SKIP][437] ([i915#12713])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-dg2-10/igt@kms_hdr@brightness-with-hdr.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-6/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][438] ([i915#3828]) -> [SKIP][439] ([i915#9340])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html
   [439]: https://intel-gfx-ci.01.org/tre

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/index.html

--===============2299283346826317428==
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
<tr><td><b>Series:</b></td><td>PSR DSB support (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/142520/">https://patchwork.freedesktop.org/series/142520/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_142520v8/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_142520v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16033_full -&gt; Patchwork_142520v=
8_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_142520v8_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_142520v8_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v=
8/index.html</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
142520v8_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-snb2/igt@gem_exec_flush@basic-wb-rw-=
before-default.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@detector@vcs1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-mtlp-3/igt@i915_hangman@detector@vcs1.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/=
shard-mtlp-7/igt@i915_hangman@detector@vcs1.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg2-3/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard=
-dg2-4/igt@perf_pmu@module-unload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-tglu-10/igt@kms_prime@d3hot.html">SKIP</a> ([i915#6524]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14252=
0v8/shard-tglu-5/igt@kms_prime@d3hot.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-glk1/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a> ([i9=
15#13356]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_142520v8/shard-glk1/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_142520v8_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_16033/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
16033/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_16033/shard-snb5/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/sha=
rd-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_16033/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb2/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb2/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_16033/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_16033/shard-snb1/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033/shard-snb1/boot.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16033=
/shard-snb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_16033/shard-snb1/boot.html">PASS</a>) -&gt; (<a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_142520v8/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_142520v8/shard-snb7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-sn=
b7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_142520v8/shard-snb5/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8=
/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_142520v8/shard-snb5/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb2/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_142520v8/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_142520v8/shard-snb2/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_142520v8/shard-snb1/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-snb1/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/=
shard-snb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_142520v8/shard-snb1/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@api_intel_bb@blit-reloc-k=
eep-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> ([i915#11078])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> ([i915#11078])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-tglu-10/igt@device_reset@unbind-reset-rebind.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
2520v8/shard-tglu-4/igt@device_reset@unbind-reset-rebind.html">ABORT</a> ([=
i915#12817] / [i915#5507])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@drm_fdinfo@all-busy-check=
-all.html">SKIP</a> ([i915#8414]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@drm_fdinfo@all-busy-check=
-all.html">SKIP</a> ([i915#8414]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@drm_fdinfo@busy-check-all@=
vecs1.html">SKIP</a> ([i915#8414]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@gem_ccs@ctrl-surf-copy-ne=
w-ctx.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@gem_ccs@large-ctrl-surf-co=
py.html">SKIP</a> ([i915#13008])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@gem_ccs@large-ctrl-surf-c=
opy.html">SKIP</a> ([i915#13008])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-1/igt@gem_ccs@suspend-resume@til=
e4-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#12392])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_close_race@multigpu-ba=
sic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> ([i915#7697])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@gem_close_race@multigpu-b=
asic-threads.html">SKIP</a> ([i915#7697])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@gem_close_race@multigpu-b=
asic-threads.html">SKIP</a> ([i915#7697])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@gem_close_race@multigpu-b=
asic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gem_create@create-ext-cpu-=
access-sanity-check.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@gem_ctx_persistence@heart=
beat-hang.html">SKIP</a> ([i915#8555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-snb1/igt@gem_ctx_persistence@legacy-=
engines-hostile-preempt.html">SKIP</a> ([i915#1099]) +4 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-smoketest@bcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gem_ctx_shared@q-smoketest=
@bcs0.html">DMESG-WARN</a> ([i915#12964]) +16 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@gem_ctx_sseu@mmap-args.ht=
ml">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-tglu-8/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tgl=
u-10/igt@gem_eio@hibernate.html">ABORT</a> ([i915#10030] / [i915#7975] / [i=
915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@gem_exec_balancer@bonded-=
dual.html">SKIP</a> ([i915#4771])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@gem_exec_balancer@bonded-=
dual.html">SKIP</a> ([i915#4771]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@gem_exec_balancer@bonded-=
false-hang.html">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@gem_exec_balancer@parallel=
-balancer.html">SKIP</a> ([i915#4525]) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@gem_exec_balancer@paralle=
l-balancer.html">SKIP</a> ([i915#4525]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@gem_exec_balancer@paralle=
l-bb-first.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@gem_exec_balancer@sliced.=
html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gem_exec_capture@capture-r=
ecoverable.html">SKIP</a> ([i915#6344])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_exec_fence@concurrent.=
html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@gem_exec_flush@basic-wb-r=
o-before-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_exec_reloc@basic-cpu-r=
ead.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-r=
ead-noreloc.html">SKIP</a> ([i915#3281]) +8 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@gem_exec_reloc@basic-gtt-=
read-noreloc.html">SKIP</a> ([i915#3281]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-active:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@gem_exec_reloc@basic-wc-g=
tt-active.html">SKIP</a> ([i915#3281]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@smoketest@vcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-rkl-4/igt@gem_exec_schedule@smoketest@vcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1425=
20v8/shard-rkl-4/igt@gem_exec_schedule@smoketest@vcs0.html">DMESG-WARN</a> =
([i915#12964]) +8 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@gem_fence_thrash@bo-write=
-verify-threaded-none.html">SKIP</a> ([i915#4860]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_fenced_exec_thrash@2-s=
pare-fences.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@gem_fenced_exec_thrash@no=
-spare-fences-interruptible.html">SKIP</a> ([i915#4860]) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@gem_lmem_swapping@heavy-v=
erify-multi-ccs.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@gem_lmem_swapping@paralle=
l-multi.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@gem_lmem_swapping@paralle=
l-multi.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gem_lmem_swapping@parallel=
-random-verify.html">SKIP</a> ([i915#4613]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@gem_lmem_swapping@verify-=
ccs.html">SKIP</a> ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@gem_lmem_swapping@verify-=
ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@gem_media_fill@media-fill=
.html">SKIP</a> ([i915#8289])</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gem_media_vme.html">SKIP</=
a> ([i915#284])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@gem_mmap@short-mmap.html"=
>SKIP</a> ([i915#4083]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_mmap_gtt@cpuset-medium=
-copy-odd.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang-busy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@gem_mmap_gtt@hang-busy.ht=
ml">SKIP</a> ([i915#4077]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@gem_mmap_gtt@medium-copy-=
odd.html">SKIP</a> ([i915#4077]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@coherency:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_mmap_wc@coherency.html=
">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@gem_mmap_wc@write-read.ht=
ml">SKIP</a> ([i915#4083]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@gem_partial_pwrite_pread@=
reads-snoop.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@display:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@gem_pread@display.html">S=
KIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite_snooped:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@gem_pwrite_snooped.html">S=
KIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gem_pxp@dmabuf-shared-prot=
ected-dst-is-context-refcounted.html">TIMEOUT</a> ([i915#12964])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_pxp@protected-encrypte=
d-src-copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@gem_pxp@reject-modify-cont=
ext-protection-on.html">TIMEOUT</a> ([i915#12917] / [i915#12964]) +2 other =
tests timeout</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@gem_pxp@reject-modify-con=
text-protection-on.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_readwrite@new-obj.html=
">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-x-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@gem_render_copy@y-tiled-c=
cs-to-x-tiled.html">SKIP</a> ([i915#8428]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_render_copy@y-tiled-to=
-vebox-yf-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gem_set_tiling_vs_blt@tile=
d-to-tiled.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@gem_set_tiling_vs_gtt.htm=
l">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@gem_softpin@evict-snoop-i=
nterruptible.html">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_tiled_pread_pwrite.htm=
l">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-rkl-6/igt@gem_tiled_swapping@non-threaded.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14252=
0v8/shard-rkl-1/igt@gem_tiled_swapping@non-threaded.html">FAIL</a> ([i915#1=
2941])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@gem_userptr_blits@create-=
destroy-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@gem_userptr_blits@dmabuf-=
sync.html">SKIP</a> ([i915#3297] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gem_userptr_blits@forbidde=
n-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@gem_userptr_blits@forbidd=
en-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@gem_userptr_blits@invalid=
-mmap-offset-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@gem_userptr_blits@map-fix=
ed-invalidate-overlap.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@gem_userptr_blits@relocat=
ions.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@gem_userptr_blits@unsync-o=
verlap.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@gem_userptr_blits@unsync-=
unmap-after-close.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gem_userptr_blits@unsync-u=
nmap-cycles.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@invalid-create:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-snb2/igt@gem_vm_create@invalid-creat=
e.html">SKIP</a> +331 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gen7_exec_parse@basic-allo=
cation.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@gen9_exec_parse@batch-zer=
o-length.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@gen9_exec_parse@batch-zero=
-length.html">SKIP</a> ([i915#2527]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@gen9_exec_parse@bb-chained=
.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@gen9_exec_parse@bb-start-=
out.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@gen9_exec_parse@bb-start-=
out.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@gen9_exec_parse@bb-start-=
param.html">SKIP</a> ([i915#2527]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@detector:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-mtlp-3/igt@i915_hangman@detector.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard=
-mtlp-7/igt@i915_hangman@detector.html">ABORT</a> ([i915#13193])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@i915_module_load@reload-n=
o-display.html">DMESG-WARN</a> ([i915#13029])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@i915_pm_freq_mult@media-fr=
eq@gt0.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@i915_pm_freq_mult@media-f=
req@gt0.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@i915_pm_freq_mult@media-f=
req@gt0.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@i915_pm_freq_mult@media-f=
req@gt1.html">SKIP</a> ([i915#6590]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@i915_pm_rps@thresholds-idl=
e-park.html">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> ([i915#4387])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> ([i915#4387])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-snb7/igt@i915_selftest@mock.html">DM=
ESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@intel_hwmon@hwmon-write.ht=
ml">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_addfb_basic@addfb25-y=
-tiled-small-legacy.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-65536:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_addfb_basic@bad-pitch=
-65536.html">DMESG-WARN</a> ([i915#4423]) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_addfb_basic@framebuff=
er-vs-set-tiling.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-dp-4-=
4-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-10/igt@kms_async_flips@async-fli=
p-with-page-flip-events-atomic@pipe-a-dp-4-4-mc-ccs.html">SKIP</a> ([i915#8=
709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-=
a-4-y-rc-ccs-cc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-14/igt@kms_async_flips@async-fli=
p-with-page-flip-events-atomic@pipe-a-hdmi-a-4-y-rc-ccs-cc.html">SKIP</a> (=
[i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> ([i915#8=
709]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-5/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> ([i915#87=
09]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_async_flips@invalid-as=
ync-flip.html">SKIP</a> ([i915#12967] / [i915#6228])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-mtlp-4/igt@kms_atomic_transition@plane-all-modeset-tran=
sition-fencing-internal-panels.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_atomic=
_transition@plane-all-modeset-transition-fencing-internal-panels.html">FAIL=
</a> ([i915#11808] / [i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hd=
mi-a-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-tran=
sition-fencing@pipe-a-hdmi-a-4.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-14/igt@kms_atomic=
_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4.html">FAIL=
</a> ([i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i9=
15#3555])</li>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-snb5/igt@kms_atomic_transition@plane=
-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_big_fb@4-tiled-addfb-=
size-overflow.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +4 other tests ski=
p</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#4538] / [i915#5286]) +7 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180.html">SKIP</a> ([i915#5286]) +3 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-180.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_142520v8/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64=
bpp-rotate-180.html">DMESG-WARN</a> ([i915#11627])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_big_fb@linear-64bpp-ro=
tate-90.html">SKIP</a> ([i915#3638]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_big_fb@y-tiled-64bpp-=
rotate-270.html">SKIP</a> ([i915#3638]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_big_fb@y-tiled-8bpp-r=
otate-90.html">SKIP</a> ([i915#3638] / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i915#=
5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-90.html">SKIP</a> ([i915#4538]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_ccs@bad-aux-stride-4-=
tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> ([i915#6095]) +192 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@kms_ccs@bad-pixel-format-=
4-tiled-dg2-rc-ccs-cc@pipe-c-edp-1.html">SKIP</a> ([i915#6095]) +44 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@kms_ccs@bad-rotation-90-4=
-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_ccs@crc-primary-basic-=
y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#1=
0434] / [i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_ccs@crc-primary-basic=
-yf-tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +29 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1:</=
p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +49 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-5/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +46 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html">DMESG-FAIL</a> ([i915#12964]) =
+1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-1/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#6095]) +11 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer=
-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#60=
95]) +125 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-=
tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_ccs@random-ccs-data-4=
-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_ccs@random-ccs-data-4=
-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_ccs@random-ccs-data-4-=
tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-10/igt@kms_cdclk@mode-transition=
@pipe-a-dp-4.html">SKIP</a> ([i915#11616] / [i915#7213]) +3 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-7/igt@kms_cdclk@plane-scaling@pi=
pe-b-hdmi-a-3.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_chamelium_audio@dp-au=
dio.html">SKIP</a> ([i915#11151] / [i915#7828]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@gamma:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_chamelium_color@gamma=
.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_chamelium_frames@dp-c=
rc-single.html">SKIP</a> ([i915#11151] / [i915#7828]) +8 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_chamelium_frames@hdmi-=
crc-fast.html">SKIP</a> ([i915#11151] / [i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-single:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_chamelium_frames@hdmi=
-crc-single.html">SKIP</a> ([i915#11151] / [i915#7828]) +6 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm-disable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_chamelium_hpd@dp-hpd-=
storm-disable.html">SKIP</a> ([i915#11151] / [i915#7828]) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-=
fast.html">SKIP</a> ([i915#11151] / [i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_color@deep-color.html=
">SKIP</a> ([i915#3555] / [i915#9979])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_content_protection@at=
omic.html">SKIP</a> ([i915#7116] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_content_protection@dp=
-mst-lic-type-1.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_content_protection@leg=
acy.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@kms_content_protection@li=
c-type-1.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@kms_content_protection@mei=
-interface.html">SKIP</a> ([i915#9424])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_content_protection@me=
i-interface.html">SKIP</a> ([i915#6944] / [i915#9424]) +1 other test skip</=
li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_content_protection@me=
i-interface.html">SKIP</a> ([i915#9433])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_content_protection@me=
i-interface.html">SKIP</a> ([i915#8063] / [i915#9433])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_content_protection@sr=
m.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@kms_cursor_crc@cursor-off=
screen-32x10.html">SKIP</a> ([i915#3555] / [i915#8814]) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_cursor_crc@cursor-off=
screen-32x32.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_cursor_crc@cursor-off=
screen-max-size.html">SKIP</a> ([i915#3555]) +7 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_cursor_crc@cursor-off=
screen-max-size.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@kms_cursor_crc@cursor-onsc=
reen-512x170.html">SKIP</a> ([i915#13049])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_cursor_crc@cursor-ons=
creen-512x170.html">SKIP</a> ([i915#13049]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_cursor_crc@cursor-ons=
creen-512x170.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_cursor_crc@cursor-ons=
creen-512x512.html">SKIP</a> ([i915#13049]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_cursor_crc@cursor-rapi=
d-movement-max-size.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_cursor_crc@cursor-slid=
ing-512x512.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_cursor_crc@cursor-sli=
ding-64x21.html">SKIP</a> ([i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_cursor_legacy@cursora-=
vs-flipb-legacy.html">SKIP</a> +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_cursor_legacy@cursorb=
-vs-flipa-varying-size.html">SKIP</a> ([i915#9809]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_dirtyfb@drrs-dirtyfb-i=
octl.html">SKIP</a> ([i915#9723])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_dirtyfb@drrs-dirtyfb-=
ioctl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-snb2/igt@kms_dirtyfb@fbc-dirtyfb-ioc=
tl.html">FAIL</a> ([i915#12170])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-snb2/igt@kms_dirtyfb@fbc-dirtyfb-ioc=
tl@a-hdmi-a-1.html">FAIL</a> ([i915#11968])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@kms_dirtyfb@psr-dirtyfb-i=
octl.html">SKIP</a> ([i915#9723]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_dp_linktrain_fallback=
@dp-fallback.html">SKIP</a> ([i915#12402])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_draw_crc@draw-method-=
mmap-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@kms_dsc@dsc-basic.html">SK=
IP</a> ([i915#3555] / [i915#3840])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_dsc@dsc-basic.html">S=
KIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@kms_dsc@dsc-fractional-bpp=
.html">SKIP</a> ([i915#3840])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> ([i915#3840]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> ([i915#3840])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_dsc@dsc-with-formats.h=
tml">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_feature_discovery@psr1=
.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_fence_pin_leak.html">=
SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_flip@2x-blocking-abso=
lute-wf_vblank.html">SKIP</a> ([i915#3637]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-snb7/igt@kms_flip@2x-blocking-wf_vbl=
ank@ab-vga1-hdmi-a1.html">FAIL</a> ([i915#11989]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_flip@2x-flip-vs-dpms-o=
ff-vs-modeset-interruptible.html">SKIP</a> ([i915#9934]) +7 other tests ski=
p</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_flip@2x-flip-vs-dpms-=
off-vs-modeset-interruptible.html">SKIP</a> ([i915#9934]) +9 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_flip@2x-modeset-vs-vb=
lank-race-interruptible.html">SKIP</a> ([i915#3637]) +8 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_flip@2x-nonexisting-fb=
.html">SKIP</a> ([i915#9934]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_flip@2x-wf_vblank-ts-=
check-interruptible.html">SKIP</a> ([i915#3637]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@kms_flip@flip-vs-fences.h=
tml">SKIP</a> ([i915#8381]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3=
555])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#=
3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i9=
15#2672])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [=
i915#3555] / [i915#8813]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SK=
IP</a> ([i915#2672] / [i915#8813]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> (=
[i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> ([i915#2672] / [i915#=
3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-xtile-to-16bpp-xtile-downscaling.html">SKIP</a> ([i915#3555] / [i915#=
8810] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#3555] / [i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i91=
5#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (=
[i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-16bpp-ytile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3=
555] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
indfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_142520v8/shard-dg2-5/igt@kms_frontbuffer_tracking@fb=
c-1p-offscren-pri-indfb-draw-blt.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> +56 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> ([i915#1825]) +28 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_frontbuffer_tracking@=
fbc-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +17=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> +59 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_frontbuffer_tracking@=
fbcpsr-modesetfrombusy.html">SKIP</a> +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-y.html">SKIP</a> ([i915#10055])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@kms_frontbuffer_tracking@=
psr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> ([i915#3458]) +21 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#10433] / [i915#3458]) +=
3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +7 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([i915#3023]) +16 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-spr-indfb-move.html">SKIP</a> ([i915#3458]) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) +6 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-indfb-draw-render.html">SKIP</a> ([i915#1825]) +27 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_hdr@brightness-with-h=
dr.html">SKIP</a> ([i915#12713])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_hdr@brightness-with-h=
dr.html">SKIP</a> ([i915#12713])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_hdr@invalid-hdr.html">=
SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg2-10/igt@kms_hdr@static-swap.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-d=
g2-5/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_hdr@static-toggle-sus=
pend.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_joiner@basic-big-joine=
r.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg2-10/igt@kms_joiner@basic-force-big-joiner.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
2520v8/shard-dg2-6/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> ([i=
915#12388])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_joiner@basic-force-bi=
g-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_joiner@invalid-modese=
t-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@kms_joiner@invalid-modese=
t-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_joiner@invalid-modese=
t-force-ultra-joiner.html">SKIP</a> ([i915#12394] / [i915#13522])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_joiner@invalid-modese=
t-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@kms_joiner@invalid-modeset=
-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_joiner@invalid-modese=
t-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_joiner@invalid-modese=
t-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_plane_lowres@tiling-x=
.html">SKIP</a> ([i915#11614] / [i915#3582]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_plane_lowres@tiling-x=
@pipe-a-edp-1.html">SKIP</a> ([i915#10226] / [i915#11614] / [i915#3582]) +2=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-3/igt@kms_plane_lowres@tiling-y=
f.html">SKIP</a> ([i915#3555] / [i915#8821])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-modifiers@pipe-b.html">SKIP</a> ([i915#12247]) +1=
6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a:</=
p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_plane_scaling@plane-s=
caler-unity-scaling-with-rotation@pipe-a.html">SKIP</a> ([i915#12247]) +14 =
other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_plane_scaling@plane-s=
caler-unity-scaling-with-rotation@pipe-a.html">SKIP</a> ([i915#12247]) +16 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_plane_scaling@planes-=
downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_plane_scaling@planes-=
downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +4 other tests sk=
ip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_plane_scaling@planes-=
downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#35=
55])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_pm_dc@dc5-retention-fl=
ops.html">SKIP</a> ([i915#3828])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_pm_dc@dc6-dpms.html">=
SKIP</a> ([i915#3361])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html">=
FAIL</a> ([i915#9295])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_pm_dc@dc6-psr.html">F=
AIL</a> ([i915#12912])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_pm_dc@dc6-psr.html">S=
KIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@kms_pm_dc@dc9-dpms.html">S=
KIP</a> ([i915#3361]) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html">=
SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_pm_rpm@modeset-lpsp.h=
tml">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_pm_rpm@modeset-non-lp=
sp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lp=
sp-stress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-snb5/igt@kms_psr2_sf@fbc-pr-cursor-p=
lane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_psr2_sf@fbc-pr-cursor-=
plane-update-sf.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-overlay=
-plane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +10 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-curs=
or-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +5 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_psr2_sf@fbc-psr2-prim=
ary-plane-update-sf-dmg-area@pipe-a-edp-1.html">SKIP</a> ([i915#9808])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-b-edp-1:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_psr2_sf@fbc-psr2-prim=
ary-plane-update-sf-dmg-area@pipe-b-edp-1.html">SKIP</a> ([i915#12316]) +5 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_psr2_sf@pr-overlay-pr=
imary-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +4 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_psr2_sf@psr2-cursor-p=
lane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +12 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-4/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> ([i915#4348])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_psr@fbc-psr2-cursor-b=
lt.html">SKIP</a> ([i915#9732]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_psr@fbc-psr2-primary-=
mmap-cpu.html">SKIP</a> ([i915#9688]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_psr@pr-cursor-mmap-gt=
t.html">SKIP</a> ([i915#1072] / [i915#9732]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-plane-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_psr@pr-cursor-plane-mo=
ve.html">SKIP</a> ([i915#1072] / [i915#9732]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_psr@psr-primary-rende=
r.html">SKIP</a> ([i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@kms_psr@psr-sprite-plane-m=
ove.html">SKIP</a> ([i915#1072] / [i915#9732]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_psr_stress_test@flip-=
primary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-90.html">SKIP</a> ([i915#12755]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-90.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_selftest@drm_framebuff=
er@drm_test_framebuffer_free.html">ABORT</a> ([i915#13179]) +1 other test a=
bort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-snb5/igt@kms_setmode@basic.html">FAI=
L</a> ([i915#5465]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-exclusive-crtc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-5/igt@kms_setmode@invalid-clone=
-exclusive-crtc.html">SKIP</a> ([i915#3555] / [i915#8809] / [i915#8823])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-snb7/igt@kms_sysfs_edid_timing.html"=
>FAIL</a> ([IGT#160] / [i915#6493])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> ([i915#8623]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> ([i915#8623]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_vrr@flip-basic-fastse=
t.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_vrr@lobf.html">SKIP</a=
> ([i915#11920])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@kms_vrr@negative-basic.htm=
l">SKIP</a> ([i915#3555] / [i915#9906])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@kms_vrr@negative-basic.ht=
ml">SKIP</a> ([i915#3555] / [i915#9906])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_vrr@negative-basic.ht=
ml">SKIP</a> ([i915#3555] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@kms_vrr@seamless-rr-switch=
-virtual.html">SKIP</a> ([i915#9906])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@kms_vrr@seamless-rr-switc=
h-virtual.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@kms_writeback@writeback-c=
heck-output-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@kms_writeback@writeback-f=
b-id.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-4/igt@perf@unprivileged-single-c=
tx-counters.html">SKIP</a> ([i915#2433])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-13/igt@perf@unprivileged-single-=
ctx-counters.html">SKIP</a> ([i915#2433])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@perf_pmu@cpu-hotplug.html=
">SKIP</a> ([i915#8850])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-snb5/igt@perf_pmu@module-unload.html=
">ABORT</a> ([i915#13559])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-1/igt@perf_pmu@most-busy-idle-ch=
eck-all@rcs0.html">FAIL</a> ([i915#4349]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@prime_mmap@test_aperture_l=
imit.html">WARN</a> ([i915#9351])</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@prime_mmap@test_aperture_l=
imit@test_aperture_limit-smem.html">CRASH</a> ([i915#9351])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@prime_vgem@basic-write.htm=
l">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@prime_vgem@fence-flip-han=
g.html">SKIP</a> ([i915#3708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf@vf-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-1/igt@sriov_basic@bind-unbind-v=
f@vf-1.html">FAIL</a> ([i915#12910]) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf@vf-5:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@sriov_basic@bind-unbind-v=
f@vf-5.html">FAIL</a> ([i915#12910]) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-7/igt@sriov_basic@enable-vfs-aut=
oprobe-off.html">SKIP</a> ([i915#9917])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-12/igt@sriov_basic@enable-vfs-au=
toprobe-off.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-tglu-7/igt@sriov_basic@enable-vfs-au=
toprobe-off@numvfs-6.html">FAIL</a> ([i915#12910]) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-dg1-18/igt@tools_test@sysfs_l3_parit=
y.html">SKIP</a> ([i915#4818])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-comp=
fmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#12392] / [i915#7297]) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-=
dg2-1/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg2-6/igt@gem_create@create-ext-cpu-access-big.html">AB=
ORT</a> ([i915#13427]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_142520v8/shard-dg2-10/igt@gem_create@create-ext-cpu-access-=
big.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg2-1/igt@gem_ctx_freq@sysfs.html">FAIL</a> ([i915#9561=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1425=
20v8/shard-dg2-10/igt@gem_ctx_freq@sysfs.html">PASS</a> +1 other test pass<=
/li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-mtlp-7/igt@gem_eio@in-flight-contexts-immediate.html">A=
BORT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_142520v8/shard-mtlp-8/igt@gem_eio@in-flight-contexts-immediate.html">PASS=
</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-immediate:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-mtlp-7/igt@gem_eio@wait-wedge-immediate.html">ABORT</a>=
 ([i915#13193]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_142520v8/shard-mtlp-5/igt@gem_eio@wait-wedge-immediate.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEO=
UT</a> ([i915#5493]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_142520v8/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.ht=
ml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-tglu-4/igt@gem_tiled_swapping@non-threaded.html">FAIL</=
a> ([i915#12941]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_142520v8/shard-tglu-8/igt@gem_tiled_swapping@non-threaded.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html=
">FAIL</a> ([i915#3591]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_142520v8/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@=
gt0-bcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-snb2/igt@i915_pm_rps@reset.html">INCOMPLETE</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard=
-snb7/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg1-17/igt@i915_suspend@debugfs-reader.html">ABORT</a> =
([i915#8213]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_142520v8/shard-dg1-17/igt@i915_suspend@debugfs-reader.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-tran=
sition-fencing.html">FAIL</a> ([i915#11808]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-tglu-8/igt@kms_atomic_=
transition@plane-all-modeset-transition-fencing.html">PASS</a> +1 other tes=
t pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">FAIL</a> ([i915#5138]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@kms_big_fb@4-tile=
d-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-128x42.html">F=
AIL</a> ([i915#13566]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_142520v8/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-128=
x42.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-tglu-6/igt@kms_cursor_crc@cursor-random-256x85.html">FA=
IL</a> ([i915#13566]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_142520v8/shard-tglu-2/igt@kms_cursor_crc@cursor-random-256x8=
5.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-tglu-7/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html">=
FAIL</a> ([i915#11989]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_142520v8/shard-tglu-8/igt@kms_flip@blocking-wf_vblank@a-hd=
mi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri=
-indfb-draw-pwrite.html">FAIL</a> ([i915#6880]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-5/igt@kms_front=
buffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html">PASS</a> +1 oth=
er test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg1-13/igt@kms_plane_scaling@planes-upscale-20x20-downs=
cale-factor-0-75.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_=
plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html">PASS</a> +6 =
other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915=
#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_142520v8/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a></li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915=
#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_142520v8/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> +1 other t=
est pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-rkl-3/igt@perf_pmu@module-unload.html">INCOMPLETE</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8=
/shard-rkl-4/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-bad-flags:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-rkl-4/igt@syncobj_timeline@invalid-wait-bad-flags.html"=
>DMESG-WARN</a> ([i915#12964]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142520v8/shard-rkl-2/igt@syncobj_timeline@invalid-w=
ait-bad-flags.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection=
.html">DMESG-WARN</a> ([i915#10887] / [i915#13475]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-mtlp-8/igt@i915=
_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i=
915#10887] / [i915#13493] / [i915#9820])</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.=
html">DMESG-WARN</a> ([i915#13475]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-1/igt@i915_module_load@relo=
ad-with-fault-injection.html">ABORT</a> ([i915#10887] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-glk7/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915=
#1982] / [i915#9311]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_142520v8/shard-glk1/igt@i915_selftest@mock.html">DMESG-WARN<=
/a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-read:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg1-13/igt@kms_chamelium_edid@dp-edid-read.html">SKIP</=
a> ([i915#11151] / [i915#4423] / [i915#7828]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg1-17/igt@kms_chamel=
ium_edid@dp-edid-read.html">SKIP</a> ([i915#11151] / [i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg2-10/igt@kms_content_protection@lic-type-0.html">TIME=
OUT</a> ([i915#7173]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_142520v8/shard-dg2-6/igt@kms_content_protection@lic-type-0.h=
tml">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-p=
ri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-=
dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-c=
pu.html">SKIP</a> ([i915#3458]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-i=
ndfb-plflip-blt.html">SKIP</a> ([i915#3458]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_142520v8/shard-dg2-4/igt@kms_frontbuf=
fer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> ([i915#1043=
3] / [i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-dg2-10/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (=
[i915#13331]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_142520v8/shard-dg2-6/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> =
([i915#12713])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16033/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#38=
28]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre">SKIP</a> ([i915#9340=
])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2299283346826317428==--
