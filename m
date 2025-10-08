Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F721BC40E6
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 11:02:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E491510E1E5;
	Wed,  8 Oct 2025 09:02:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6aec98b87f92 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 901D910E1E5;
 Wed,  8 Oct 2025 09:02:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8168436722590420002=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/guc=3A_Skip_com?=
 =?utf-8?q?munication_warning_on_reset_in_progress_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dong, Zhanjun" <zhanjun.dong@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 08 Oct 2025 09:02:29 -0000
Message-ID: <175991414936.17212.12512716386740648905@6aec98b87f92>
X-Patchwork-Hint: ignore
References: <20250929152904.269776-1-zhanjun.dong@intel.com>
In-Reply-To: <20250929152904.269776-1-zhanjun.dong@intel.com>
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

--===============8168436722590420002==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Skip communication warning on reset in progress (rev4)
URL   : https://patchwork.freedesktop.org/series/154423/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17323_full -> Patchwork_154423v4_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_154423v4_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_154423v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_154423v4_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-dg2:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21]) -> ([PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [FAIL][43])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-8/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-8/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-5/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-7/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-5/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-5/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-5/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-10/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@drm_buddy@drm_buddy:
    - shard-glk10:        NOTRUN -> [DMESG-WARN][44]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-glk10/igt@drm_buddy@drm_buddy.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-snb:          [PASS][45] -> [ABORT][46] +1 other test abort
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-snb7/igt@gem_exec_suspend@basic-s0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-snb1/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          NOTRUN -> [ABORT][47]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@kms_fbcon_fbt@fbc-suspend.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@drm_buddy@drm_buddy@drm_test_buddy_fragmentation_performance}:
    - shard-glk10:        NOTRUN -> [DMESG-WARN][48]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-glk10/igt@drm_buddy@drm_buddy@drm_test_buddy_fragmentation_performance.html

  
Known issues
------------

  Here are the changes found in Patchwork_154423v4_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#8411])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-dg2-9:        NOTRUN -> [SKIP][50] ([i915#8411])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-tglu-1:       NOTRUN -> [SKIP][51] ([i915#11078])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@device_reset@cold-reset-bound.html

  * igt@gem_basic@multigpu-create-close:
    - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#7697])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#3555] / [i915#9323])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-tglu-1:       NOTRUN -> [SKIP][54] ([i915#13008])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [PASS][55] -> [INCOMPLETE][56] ([i915#13356])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-6/igt@gem_ccs@suspend-resume.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-7/igt@gem_ccs@suspend-resume.html
    - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#9323])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][58] -> [INCOMPLETE][59] ([i915#12392] / [i915#13356])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-6/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-7/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#7697])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][61] -> [FAIL][62] ([i915#5784])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg1-17/igt@gem_eio@reset-stress.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg1-16/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@hog:
    - shard-dg2-9:        NOTRUN -> [SKIP][63] ([i915#4812])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_exec_balancer@hog.html

  * igt@gem_exec_balancer@parallel:
    - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#4525])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-tglu-1:       NOTRUN -> [SKIP][65] ([i915#4525])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_exec_big@single:
    - shard-tglu:         [PASS][66] -> [ABORT][67] ([i915#11713] / [i915#14756])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-tglu-2/igt@gem_exec_big@single.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-7/igt@gem_exec_big@single.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#6344])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#3539] / [i915#4852]) +2 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#3539])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_reloc@basic-gtt-active:
    - shard-dg2-9:        NOTRUN -> [SKIP][71] ([i915#3281]) +3 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-active.html

  * igt@gem_exec_reloc@basic-softpin:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#3281]) +6 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@gem_exec_reloc@basic-softpin.html

  * igt@gem_exec_reloc@basic-write-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#3281]) +3 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@gem_exec_reloc@basic-write-wc-noreloc.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][74] ([i915#13356]) +1 other test incomplete
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg2-9:        NOTRUN -> [SKIP][75] ([i915#4860])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#4860])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#2190])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#4613])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-glk:          NOTRUN -> [SKIP][79] ([i915#4613]) +4 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-glk9/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][80] ([i915#4613]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#4613]) +2 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_mmap_gtt@hang:
    - shard-dg2-9:        NOTRUN -> [SKIP][82] ([i915#4077]) +4 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_mmap_gtt@hang.html

  * igt@gem_mmap_offset@clear-via-pagefault:
    - shard-mtlp:         [PASS][83] -> [ABORT][84] ([i915#14809]) +1 other test abort
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-mtlp-4/igt@gem_mmap_offset@clear-via-pagefault.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-mtlp-5/igt@gem_mmap_offset@clear-via-pagefault.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4083]) +6 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-dg2-9:        NOTRUN -> [SKIP][86] ([i915#3282]) +2 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@gem_partial_pwrite_pread@write-display:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3282]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@gem_partial_pwrite_pread@write-display.html
    - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#3282])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@gem_partial_pwrite_pread@write-display.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-rkl:          NOTRUN -> [TIMEOUT][89] ([i915#12917] / [i915#12964])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#13398]) +1 other test skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#4270]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-rkl:          [PASS][92] -> [TIMEOUT][93] ([i915#12917] / [i915#12964])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-on.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2-9:        NOTRUN -> [SKIP][94] ([i915#4270]) +2 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@y-tiled-ccs-to-x-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][95] ([i915#5190] / [i915#8428]) +2 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_render_copy@y-tiled-ccs-to-x-tiled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#5190] / [i915#8428]) +2 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#3297] / [i915#3323])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#3297] / [i915#4880]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#3297]) +2 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_workarounds@suspend-resume:
    - shard-glk:          NOTRUN -> [INCOMPLETE][100] ([i915#13356] / [i915#14586]) +1 other test incomplete
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-glk6/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#2527] / [i915#2856])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#2856]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-dg2-9:        NOTRUN -> [SKIP][103] ([i915#2856])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#2527])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@gen9_exec_parse@unaligned-jump.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-tglu-1:       NOTRUN -> [SKIP][105] ([i915#2527] / [i915#2856])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_drm_fdinfo@all-busy-idle-check-all:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#14123])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@i915_drm_fdinfo@all-busy-idle-check-all.html

  * igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#14073]) +7 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1.html

  * igt@i915_drm_fdinfo@virtual-busy-hang-all:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#14118])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@i915_drm_fdinfo@virtual-busy-hang-all.html

  * igt@i915_module_load@resize-bar:
    - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#6412])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#4387])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#6188])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [PASS][112] -> [DMESG-FAIL][113] ([i915#12061]) +1 other test dmesg-fail
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-mtlp-7/igt@i915_selftest@live@workarounds.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-mtlp-2/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@debugfs-reader:
    - shard-rkl:          [PASS][114] -> [INCOMPLETE][115] ([i915#4817])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@i915_suspend@debugfs-reader.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-3/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#4077]) +4 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#4212])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-dg2-9:        NOTRUN -> [SKIP][118] ([i915#4212])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][119] ([i915#14888]) +2 other tests fail
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-rkl:          [PASS][120] -> [INCOMPLETE][121] ([i915#12761])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_async_flips@async-flip-suspend-resume.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-3/igt@kms_async_flips@async-flip-suspend-resume.html
    - shard-glk:          NOTRUN -> [INCOMPLETE][122] ([i915#12761]) +1 other test incomplete
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-glk6/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][123] ([i915#12761])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-3/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2-9:        NOTRUN -> [SKIP][124] ([i915#1769] / [i915#3555])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][125] ([i915#5286]) +2 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#5286]) +2 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][127] -> [FAIL][128] ([i915#5138])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#5286]) +4 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#3638])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-dg2-9:        NOTRUN -> [SKIP][131] +6 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          [PASS][132] -> [DMESG-WARN][133] ([i915#12964]) +11 other tests dmesg-warn
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
    - shard-dg2-9:        NOTRUN -> [SKIP][134] ([i915#4538] / [i915#5190]) +4 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#4538] / [i915#5190]) +5 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][136] ([i915#10307] / [i915#6095]) +29 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#10307] / [i915#6095]) +67 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#6095]) +40 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#6095]) +129 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#12805])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#6095]) +13 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][142] ([i915#6095]) +4 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#14098] / [i915#6095]) +37 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc:
    - shard-rkl:          [PASS][144] -> [SKIP][145] ([i915#14544]) +23 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#6095]) +54 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu-1:       NOTRUN -> [SKIP][148] ([i915#6095]) +39 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#13781]) +4 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_chamelium_edid@vga-edid-read:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#11151] / [i915#7828]) +3 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_chamelium_edid@vga-edid-read.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2-9:        NOTRUN -> [SKIP][151] ([i915#11151] / [i915#7828]) +2 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-tglu-1:       NOTRUN -> [SKIP][152] ([i915#11151] / [i915#7828]) +2 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#11151] / [i915#7828]) +6 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
    - shard-tglu:         NOTRUN -> [SKIP][154] ([i915#11151] / [i915#7828]) +4 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg2-9:        NOTRUN -> [SKIP][155] ([i915#3299])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_content_protection@dp-mst-type-0.html
    - shard-tglu-1:       NOTRUN -> [SKIP][156] ([i915#3116] / [i915#3299])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#7118] / [i915#9424])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_content_protection@legacy.html
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#7118] / [i915#9424])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2-9:        NOTRUN -> [SKIP][159] ([i915#9424])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#9424])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_content_protection@lic-type-1.html
    - shard-tglu-1:       NOTRUN -> [SKIP][161] ([i915#6944] / [i915#9424])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_content_protection@lic-type-1.html

  * igt@kms_cursor_crc@cursor-offscreen-max-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][162] ([i915#3555]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-max-size.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-tglu:         [PASS][163] -> [FAIL][164] ([i915#13566]) +1 other test fail
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-tglu-5/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-tglu-1:       NOTRUN -> [FAIL][165] ([i915#13566]) +3 other tests fail
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][166] ([i915#13566]) +3 other tests fail
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#3555]) +4 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@kms_cursor_crc@cursor-sliding-32x10.html
    - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#3555]) +2 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg2-9:        NOTRUN -> [SKIP][169] ([i915#4103] / [i915#4213]) +1 other test skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-dg2-9:        NOTRUN -> [SKIP][170] ([i915#13046] / [i915#5354]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#13046] / [i915#5354]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][172] +8 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          NOTRUN -> [FAIL][173] ([i915#2346])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2-9:        NOTRUN -> [SKIP][174] ([i915#9833])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#3804])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#1257])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_dp_aux_dev.html
    - shard-tglu-1:       NOTRUN -> [SKIP][177] ([i915#1257])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_dp_aux_dev.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#3840])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
    - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#3840])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#3555] / [i915#3840])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2-9:        NOTRUN -> [SKIP][181] ([i915#3555] / [i915#3840])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#3555] / [i915#3840])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html
    - shard-tglu-1:       NOTRUN -> [SKIP][183] ([i915#3555] / [i915#3840]) +1 other test skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_feature_discovery@chamelium:
    - shard-dg2-9:        NOTRUN -> [SKIP][184] ([i915#4854])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#1839])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_feature_discovery@display-2x.html

  * igt@kms_flip@2x-busy-flip:
    - shard-glk:          [PASS][186] -> [SKIP][187] +4 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-glk6/igt@kms_flip@2x-busy-flip.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-glk8/igt@kms_flip@2x-busy-flip.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg2-9:        NOTRUN -> [SKIP][188] ([i915#9934]) +3 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#3637] / [i915#9934]) +7 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#8381])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#9934]) +5 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#9934]) +2 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
    - shard-tglu-1:       NOTRUN -> [SKIP][193] ([i915#3637] / [i915#9934]) +2 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@bo-too-big-interruptible:
    - shard-rkl:          [PASS][194] -> [SKIP][195] ([i915#14544] / [i915#3637]) +4 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_flip@bo-too-big-interruptible.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_flip@bo-too-big-interruptible.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg2-9:        NOTRUN -> [SKIP][196] ([i915#8381])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#2672] / [i915#3555])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#2672]) +1 other test skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#2672] / [i915#3555] / [i915#5190])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][200] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2-9:        NOTRUN -> [SKIP][201] ([i915#2672]) +3 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#2672] / [i915#3555])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
    - shard-tglu-1:       NOTRUN -> [SKIP][203] ([i915#2587] / [i915#2672] / [i915#3555])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#2672] / [i915#3555]) +1 other test skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#2587] / [i915#2672]) +1 other test skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-rkl:          [PASS][206] -> [SKIP][207] ([i915#14544] / [i915#3555]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][208] ([i915#2672] / [i915#3555])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#2672]) +2 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
    - shard-tglu-1:       NOTRUN -> [SKIP][210] ([i915#2587] / [i915#2672]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][211] ([i915#2672] / [i915#3555]) +1 other test skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [PASS][212] -> [SKIP][213] ([i915#14544] / [i915#1849] / [i915#5354]) +4 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:
    - shard-tglu:         NOTRUN -> [SKIP][214] +60 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#3023]) +4 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#8708]) +11 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#1825]) +9 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2-9:        NOTRUN -> [SKIP][218] ([i915#8708]) +5 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:
    - shard-dg2-9:        NOTRUN -> [SKIP][219] ([i915#3458]) +6 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][220] ([i915#3458])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#3458]) +13 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2-9:        NOTRUN -> [SKIP][222] ([i915#5354]) +17 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#5354]) +14 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#3555] / [i915#8228])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-tglu:         NOTRUN -> [SKIP][225] ([i915#3555] / [i915#8228]) +1 other test skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle:
    - shard-tglu-1:       NOTRUN -> [SKIP][226] ([i915#3555] / [i915#8228]) +1 other test skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_hdr@static-toggle.html
    - shard-dg2-9:        NOTRUN -> [SKIP][227] ([i915#3555] / [i915#8228]) +1 other test skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_hdr@static-toggle.html

  * igt@kms_invalid_mode@bad-vsync-end:
    - shard-rkl:          [PASS][228] -> [SKIP][229] ([i915#14544] / [i915#3555] / [i915#8826])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_invalid_mode@bad-vsync-end.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-end.html

  * igt@kms_invalid_mode@zero-hdisplay:
    - shard-glk10:        NOTRUN -> [SKIP][230] +157 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-glk10/igt@kms_invalid_mode@zero-hdisplay.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#12388])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_joiner@basic-force-big-joiner.html
    - shard-rkl:          NOTRUN -> [SKIP][232] ([i915#12388])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#12339])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2-9:        NOTRUN -> [SKIP][234] ([i915#12388])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#4816])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#6301])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_panel_fitting@legacy.html
    - shard-tglu-1:       NOTRUN -> [SKIP][237] ([i915#6301])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
    - shard-tglu-1:       NOTRUN -> [SKIP][238] +42 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg2:          NOTRUN -> [SKIP][239] +10 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - shard-glk10:        NOTRUN -> [SKIP][240] ([i915#11190])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-glk10/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#13705])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@kms_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@kms_plane@plane-panning-bottom-right-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][242] ([i915#13026]) +1 other test incomplete
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-glk1/igt@kms_plane@plane-panning-bottom-right-suspend.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-rkl:          [PASS][243] -> [SKIP][244] ([i915#14544] / [i915#7294]) +1 other test skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@kms_plane_alpha_blend@alpha-basic.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_multiple@2x-tiling-none:
    - shard-tglu-1:       NOTRUN -> [SKIP][245] ([i915#13958]) +1 other test skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-none.html
    - shard-dg2-9:        NOTRUN -> [SKIP][246] ([i915#13958])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_plane_multiple@2x-tiling-none.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#14259])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_plane_multiple@tiling-yf.html
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#14259]) +1 other test skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-rkl:          [PASS][249] -> [SKIP][250] ([i915#14544] / [i915#8152]) +1 other test skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a:
    - shard-rkl:          [PASS][251] -> [SKIP][252] ([i915#12247] / [i915#14544]) +1 other test skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b:
    - shard-rkl:          [PASS][253] -> [SKIP][254] ([i915#12247] / [i915#14544] / [i915#8152]) +1 other test skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][255] ([i915#12247]) +4 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
    - shard-dg1:          [PASS][256] -> [DMESG-WARN][257] ([i915#4423])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg1-16/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         NOTRUN -> [FAIL][258] ([i915#9295])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][259] ([i915#4281])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2-9:        NOTRUN -> [SKIP][260] ([i915#15073])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [PASS][261] -> [SKIP][262] ([i915#15073]) +1 other test skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-tglu-1:       NOTRUN -> [SKIP][263] ([i915#15073])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          NOTRUN -> [SKIP][264] ([i915#11520]) +2 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][265] ([i915#11520]) +3 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-dg2-9:        NOTRUN -> [SKIP][266] ([i915#11520]) +3 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-glk10:        NOTRUN -> [SKIP][267] ([i915#11520]) +3 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-glk10/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][268] ([i915#11520]) +5 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#11520]) +5 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][270] ([i915#11520]) +6 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-glk6/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr@fbc-pr-sprite-render:
    - shard-tglu:         NOTRUN -> [SKIP][271] ([i915#9732]) +14 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_psr@fbc-pr-sprite-render.html

  * igt@kms_psr@fbc-psr-basic:
    - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#1072] / [i915#9732]) +13 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_psr@fbc-psr-basic.html

  * igt@kms_psr@fbc-psr-sprite-blt:
    - shard-dg2-9:        NOTRUN -> [SKIP][273] ([i915#1072] / [i915#9732]) +10 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_psr@fbc-psr-sprite-blt.html

  * igt@kms_psr@fbc-psr2-cursor-mmap-gtt:
    - shard-glk:          NOTRUN -> [SKIP][274] +182 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-glk5/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - shard-tglu-1:       NOTRUN -> [SKIP][275] ([i915#9732]) +11 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_psr@psr-sprite-render:
    - shard-rkl:          NOTRUN -> [SKIP][276] ([i915#1072] / [i915#9732]) +4 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_psr@psr-sprite-render.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg2-9:        NOTRUN -> [SKIP][277] ([i915#9685])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#12755])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-tglu-1:       NOTRUN -> [SKIP][279] ([i915#5289])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2-9:        NOTRUN -> [SKIP][280] ([i915#12755])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-dg2-9:        NOTRUN -> [SKIP][281] ([i915#3555]) +3 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-glk:          NOTRUN -> [FAIL][282] ([i915#10959])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-glk5/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@flip-basic:
    - shard-rkl:          NOTRUN -> [SKIP][283] ([i915#3555])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_vrr@flip-basic.html

  * igt@kms_writeback@writeback-check-output:
    - shard-glk:          NOTRUN -> [SKIP][284] ([i915#2437])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-glk5/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-tglu:         NOTRUN -> [SKIP][285] ([i915#2437] / [i915#9412]) +1 other test skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@perf@global-sseu-config:
    - shard-dg2-9:        NOTRUN -> [SKIP][286] ([i915#7387])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@perf@global-sseu-config.html

  * igt@perf@non-zero-reason:
    - shard-dg2-9:        NOTRUN -> [FAIL][287] ([i915#9100]) +1 other test fail
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@perf@non-zero-reason.html

  * igt@perf_pmu@module-unload:
    - shard-tglu:         NOTRUN -> [FAIL][288] ([i915#14433])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-tglu-1:       NOTRUN -> [SKIP][289] ([i915#8516])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html
    - shard-dg2-9:        NOTRUN -> [SKIP][290] ([i915#8516])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][291] ([i915#3708] / [i915#4077])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#3291] / [i915#3708])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@prime_vgem@basic-read.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-dg2-9:        NOTRUN -> [SKIP][293] ([i915#9917])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@sriov_basic@bind-unbind-vf.html

  * igt@sriov_basic@bind-unbind-vf@vf-1:
    - shard-tglu-1:       NOTRUN -> [FAIL][294] ([i915#12910]) +9 other tests fail
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu:         NOTRUN -> [FAIL][295] ([i915#12910])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  * igt@sysfs_heartbeat_interval@mixed@vecs0:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][296] ([i915#12964]) +12 other tests dmesg-warn
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Possible fixes ####

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-rkl:          [INCOMPLETE][297] ([i915#13356]) -> [PASS][298] +2 other tests pass
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-3/igt@gem_workarounds@suspend-resume-fd.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_module_load@reload-no-display:
    - shard-snb:          [DMESG-WARN][299] ([i915#14545]) -> [PASS][300]
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-snb4/igt@i915_module_load@reload-no-display.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-snb1/igt@i915_module_load@reload-no-display.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
    - shard-rkl:          [SKIP][301] ([i915#14544]) -> [PASS][302] +25 other tests pass
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_color@degamma:
    - shard-rkl:          [SKIP][303] ([i915#12655] / [i915#14544]) -> [PASS][304] +1 other test pass
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_color@degamma.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_color@degamma.html

  * igt@kms_cursor_crc@cursor-random-256x85:
    - shard-rkl:          [FAIL][305] ([i915#13566]) -> [PASS][306]
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_cursor_crc@cursor-random-256x85.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-8/igt@kms_cursor_crc@cursor-random-256x85.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [FAIL][307] ([i915#2346]) -> [PASS][308]
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-rkl:          [SKIP][309] ([i915#14544] / [i915#3637]) -> [PASS][310] +3 other tests pass
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1:
    - shard-tglu:         [FAIL][311] ([i915#14600]) -> [PASS][312] +1 other test pass
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-tglu-8/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-2/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-rkl:          [SKIP][313] ([i915#14544] / [i915#3555]) -> [PASS][314] +1 other test pass
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-rkl:          [SKIP][315] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][316] +3 other tests pass
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_invalid_mode@bad-vsync-start:
    - shard-rkl:          [SKIP][317] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][318]
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-start.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_invalid_mode@bad-vsync-start.html

  * igt@kms_plane@plane-position-hole:
    - shard-rkl:          [SKIP][319] ([i915#14544] / [i915#8825]) -> [PASS][320]
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_plane@plane-position-hole.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-rkl:          [SKIP][321] ([i915#14544] / [i915#7294]) -> [PASS][322]
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_scaling@invalid-parameters:
    - shard-rkl:          [SKIP][323] ([i915#14544] / [i915#8152]) -> [PASS][324]
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_plane_scaling@invalid-parameters.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_plane_scaling@invalid-parameters.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
    - shard-rkl:          [SKIP][325] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][326] +1 other test pass
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a:
    - shard-rkl:          [SKIP][327] ([i915#12247] / [i915#14544]) -> [PASS][328] +1 other test pass
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-b:
    - shard-rkl:          [SKIP][329] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][330] +1 other test pass
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-b.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-b.html

  * igt@kms_vblank@wait-forked-busy-hang:
    - shard-rkl:          [DMESG-WARN][331] ([i915#12964]) -> [PASS][332] +5 other tests pass
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-4/igt@kms_vblank@wait-forked-busy-hang.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-8/igt@kms_vblank@wait-forked-busy-hang.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [FAIL][333] ([i915#4349]) -> [PASS][334] +4 other tests pass
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@most-busy-idle-check-all:
    - shard-rkl:          [FAIL][335] ([i915#4349]) -> [PASS][336] +1 other test pass
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@perf_pmu@most-busy-idle-check-all.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@perf_pmu@most-busy-idle-check-all.html

  
#### Warnings ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          [SKIP][337] ([i915#14544] / [i915#8411]) -> [SKIP][338] ([i915#8411])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          [SKIP][339] ([i915#3281]) -> [SKIP][340] ([i915#14544] / [i915#3281]) +8 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@gem_bad_reloc@negative-reloc-lut.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          [SKIP][341] ([i915#9323]) -> [SKIP][342] ([i915#14544] / [i915#9323])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          [SKIP][343] ([i915#14544] / [i915#7697]) -> [SKIP][344] ([i915#7697])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          [SKIP][345] ([i915#280]) -> [SKIP][346] ([i915#14544] / [i915#280])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@gem_ctx_sseu@engines.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          [SKIP][347] ([i915#14544] / [i915#4525]) -> [SKIP][348] ([i915#4525]) +1 other test skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          [SKIP][349] ([i915#4525]) -> [SKIP][350] ([i915#14544] / [i915#4525]) +1 other test skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-rkl:          [SKIP][351] ([i915#14544] / [i915#3281]) -> [SKIP][352] ([i915#3281]) +4 other tests skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-active.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          [SKIP][353] ([i915#14544] / [i915#7276]) -> [SKIP][354] ([i915#7276])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          [SKIP][355] ([i915#4613] / [i915#7582]) -> [SKIP][356] ([i915#14544] / [i915#4613] / [i915#7582])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-race.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-rkl:          [SKIP][357] ([i915#4613]) -> [SKIP][358] ([i915#14544] / [i915#4613])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@gem_lmem_swapping@parallel-multi.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          [SKIP][359] ([i915#14544] / [i915#4613]) -> [SKIP][360] ([i915#4613]) +1 other test skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_media_vme:
    - shard-rkl:          [SKIP][361] ([i915#284]) -> [SKIP][362] ([i915#14544] / [i915#284])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@gem_media_vme.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@gem_media_vme.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-rkl:          [SKIP][363] ([i915#3282]) -> [SKIP][364] ([i915#14544] / [i915#3282]) +1 other test skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-rkl:          [TIMEOUT][365] ([i915#12917] / [i915#12964]) -> [SKIP][366] ([i915#13717])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-4/igt@gem_pxp@hw-rejects-pxp-buffer.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_readwrite@beyond-eob:
    - shard-rkl:          [SKIP][367] ([i915#14544] / [i915#3282]) -> [SKIP][368] ([i915#3282]) +2 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@gem_readwrite@beyond-eob.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@gem_readwrite@beyond-eob.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          [SKIP][369] ([i915#8411]) -> [SKIP][370] ([i915#14544] / [i915#8411]) +1 other test skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          [SKIP][371] ([i915#3297]) -> [SKIP][372] ([i915#14544] / [i915#3297])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@gem_userptr_blits@create-destroy-unsync.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-rkl:          [SKIP][373] ([i915#2527]) -> [SKIP][374] ([i915#14544] / [i915#2527]) +1 other test skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@gen9_exec_parse@allowed-single.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-rkl:          [SKIP][375] ([i915#14544] / [i915#2527]) -> [SKIP][376] ([i915#2527]) +1 other test skip
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@gen9_exec_parse@bb-start-far.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          [SKIP][377] ([i915#8399]) -> [SKIP][378] ([i915#14544] / [i915#8399]) +1 other test skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@i915_pm_freq_api@freq-reset-multiple.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rpm@reg-read-ioctl:
    - shard-rkl:          [DMESG-WARN][379] ([i915#12964]) -> [SKIP][380] ([i915#13328])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@i915_pm_rpm@reg-read-ioctl.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@i915_pm_rpm@reg-read-ioctl.html

  * igt@i915_power@sanity:
    - shard-rkl:          [SKIP][381] ([i915#14544] / [i915#7984]) -> [SKIP][382] ([i915#7984])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@i915_power@sanity.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@i915_power@sanity.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          [SKIP][383] ([i915#14544]) -> [SKIP][384] ([i915#5286]) +2 other tests skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-addfb-size-overflow:
    - shard-rkl:          [SKIP][385] ([i915#5286]) -> [SKIP][386] ([i915#14544]) +2 other tests skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          [SKIP][387] ([i915#3638]) -> [SKIP][388] ([i915#14544]) +2 other tests skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-90.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][389] ([i915#14544]) -> [SKIP][390] ([i915#3638]) +1 other test skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-rkl:          [SKIP][391] ([i915#14544]) -> [SKIP][392] +9 other tests skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][393] ([i915#14544]) -> [SKIP][394] ([i915#12313])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs:
    - shard-rkl:          [SKIP][395] ([i915#14098] / [i915#6095]) -> [SKIP][396] ([i915#14544]) +5 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][397] ([i915#6095]) -> [SKIP][398] ([i915#14098] / [i915#6095]) +1 other test skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-b-hdmi-a-2.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][399] ([i915#12805]) -> [SKIP][400] ([i915#14544])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          [SKIP][401] ([i915#6095]) -> [SKIP][402] ([i915#4423] / [i915#6095]) +1 other test skip
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg1-18/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-hdmi-a-4.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg1-16/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][403] ([i915#14544]) -> [SKIP][404] ([i915#14098] / [i915#6095]) +5 other tests skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs.html

  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
    - shard-rkl:          [SKIP][405] ([i915#11151] / [i915#7828]) -> [SKIP][406] ([i915#11151] / [i915#14544] / [i915#7828]) +4 other tests skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-rkl:          [SKIP][407] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][408] ([i915#11151] / [i915#7828]) +2 other tests skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-fast.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_content_protection@content-type-change:
    - shard-rkl:          [SKIP][409] ([i915#9424]) -> [SKIP][410] ([i915#14544])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@kms_content_protection@content-type-change.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          [SKIP][411] ([i915#14544]) -> [SKIP][412] ([i915#3116]) +1 other test skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-rkl:          [SKIP][413] ([i915#13049]) -> [SKIP][414] ([i915#14544]) +1 other test skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-rkl:          [SKIP][415] ([i915#14544]) -> [SKIP][416] ([i915#3555]) +1 other test skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_cursor_crc@cursor-random-max-size.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-rkl:          [SKIP][417] ([i915#14544]) -> [SKIP][418] ([i915#13049])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-rkl:          [SKIP][419] ([i915#14544]) -> [FAIL][420] ([i915#13566])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-256x85.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_cursor_edge_walk@256x256-right-edge:
    - shard-rkl:          [SKIP][421] ([i915#14544]) -> [DMESG-WARN][422] ([i915#12964]) +2 other tests dmesg-warn
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_cursor_edge_walk@256x256-right-edge.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_cursor_edge_walk@256x256-right-edge.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-dg1:          [SKIP][423] -> [SKIP][424] ([i915#4423])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg1-15/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg1-15/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][425] ([i915#4103]) -> [SKIP][426] ([i915#14544])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-rkl:          [SKIP][427] -> [SKIP][428] ([i915#14544]) +10 other tests skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-rkl:          [SKIP][429] ([i915#14544]) -> [SKIP][430] ([i915#4103])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-rkl:          [SKIP][431] ([i915#13691]) -> [SKIP][432] ([i915#14544])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_display_modes@extended-mode-basic.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          [SKIP][433] ([i915#14544]) -> [SKIP][434] ([i915#3555] / [i915#3840]) +1 other test skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_feature_discovery@display-4x:
    - shard-rkl:          [SKIP][435] ([i915#1839]) -> [SKIP][436] ([i915#14544] / [i915#1839])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@kms_feature_discovery@display-4x.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_feature_discovery@display-4x.html

  * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
    - shard-rkl:          [SKIP][437] ([i915#9934]) -> [SKIP][438] ([i915#14544] / [i915#9934])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
    - shard-rkl:          [SKIP][439] ([i915#14544] / [i915#9934]) -> [SKIP][440] ([i915#9934]) +1 other test skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-fences:
    - shard-rkl:          [SKIP][441] ([i915#14544] / [i915#3637]) -> [DMESG-WARN][442] ([i915#12964])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_flip@flip-vs-fences.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-rkl:          [SKIP][443] ([i915#2672] / [i915#3555]) -> [SKIP][444] ([i915#14544] / [i915#3555]) +2 other tests skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
    - shard-dg1:          [SKIP][445] ([i915#2672] / [i915#3555]) -> [SKIP][446] ([i915#2672] / [i915#3555] / [i915#4423])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg1-13/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg1:          [SKIP][447] ([i915#2587] / [i915#2672]) -> [SKIP][448] ([i915#2587] / [i915#2672] / [i915#4423])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg1-13/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-rkl:          [SKIP][449] ([i915#14544] / [i915#3555]) -> [SKIP][450] ([i915#2672] / [i915#3555]) +1 other test skip
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-rkl:          [SKIP][451] ([i915#3023]) -> [SKIP][452] ([i915#14544] / [i915#1849] / [i915#5354]) +9 other tests skip
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-rkl:          [SKIP][453] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][454] ([i915#3023]) +9 other tests skip
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-rkl:          [SKIP][455] ([i915#1825]) -> [SKIP][456] ([i915#14544] / [i915#1849] / [i915#5354]) +14 other tests skip
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-rkl:          [SKIP][457] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][458] ([i915#1825]) +20 other tests skip
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg2:          [SKIP][459] ([i915#10433] / [i915#3458]) -> [SKIP][460] ([i915#3458]) +2 other tests skip
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
    - shard-dg2:          [SKIP][461] ([i915#3458]) -> [SKIP][462] ([i915#10433] / [i915#3458])
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][463] ([i915#8708]) -> [SKIP][464] ([i915#4423] / [i915#8708])
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-dg1:          [SKIP][465] ([i915#3458]) -> [SKIP][466] ([i915#3458] / [i915#4423])
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          [SKIP][467] ([i915#14544]) -> [SKIP][468] ([i915#3555] / [i915#8228]) +1 other test skip
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_hdr@static-toggle.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          [SKIP][469] ([i915#3555] / [i915#8228]) -> [SKIP][470] ([i915#14544]) +1 other test skip
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-rkl:          [SKIP][471] ([i915#13522] / [i915#14544]) -> [SKIP][472] ([i915#13522])
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][473] ([i915#4070] / [i915#4816]) -> [SKIP][474] ([i915#4816])
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_lowres@tiling-4:
    - shard-dg1:          [SKIP][475] ([i915#3555]) -> [SKIP][476] ([i915#3555] / [i915#4423])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg1-18/igt@kms_plane_lowres@tiling-4.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg1-16/igt@kms_plane_lowres@tiling-4.html

  * igt@kms_plane_multiple@2x-tiling-none:
    - shard-rkl:          [SKIP][477] ([i915#14544]) -> [SKIP][478] ([i915#13958])
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_plane_multiple@2x-tiling-none.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-rkl:          [SKIP][479] ([i915#14544]) -> [SKIP][480] ([i915#14259])
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_plane_multiple@tiling-4.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-rkl:          [SKIP][481] ([i915#12247]) -> [SKIP][482] ([i915#12247] / [i915#14544])
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:
    - shard-rkl:          [SKIP][483] ([i915#12247]) -> [SKIP][484] ([i915#12247] / [i915#14544] / [i915#8152]) +1 other test skip
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-rkl:          [SKIP][485] ([i915#9685]) -> [SKIP][486] ([i915#14544] / [i915#9685]) +1 other test skip
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@kms_pm_dc@dc5-psr.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          [FAIL][487] ([i915#9295]) -> [SKIP][488] ([i915#3361])
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-4/igt@kms_pm_dc@dc6-dpms.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][489] ([i915#14544] / [i915#4281]) -> [SKIP][490] ([i915#4281])
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][491] ([i915#9340]) -> [SKIP][492] ([i915#3828])
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][493] ([i915#14544] / [i915#15073]) -> [DMESG-WARN][494] ([i915#12964])
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [SKIP][495] ([i915#14544] / [i915#15073]) -> [SKIP][496] ([i915#15073])
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          [SKIP][497] ([i915#6524]) -> [SKIP][498] ([i915#14544] / [i915#6524])
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@kms_prime@basic-modeset-hybrid.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          [SKIP][499] ([i915#11520]) -> [SKIP][500] ([i915#11520] / [i915#14544]) +3 other tests skip
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-rkl:          [SKIP][501] ([i915#11520] / [i915#14544]) -> [SKIP][502] ([i915#11520]) +3 other tests skip
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-rkl:          [SKIP][503] ([i915#14544] / [i915#9683]) -> [SKIP][504] ([i915#9683])
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          [SKIP][505] ([i915#9683]) -> [SKIP][506] ([i915#14544] / [i915#9683])
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@kms_psr2_su@page_flip-p010.html
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-psr-primary-page-flip:
    - shard-dg1:          [SKIP][507] ([i915#1072] / [i915#9732]) -> [SKIP][508] ([i915#1072] / [i915#4423] / [i915#9732])
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg1-18/igt@kms_psr@fbc-psr-primary-page-flip.html
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg1-16/igt@kms_psr@fbc-psr-primary-page-flip.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          [SKIP][509] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][510] ([i915#1072] / [i915#9732]) +9 other tests skip
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@psr-cursor-plane-move:
    - shard-rkl:          [SKIP][511] ([i915#1072] / [i915#9732]) -> [SKIP][512] ([i915#1072] / [i915#14544] / [i915#9732]) +8 other tests skip
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_psr@psr-cursor-plane-move.html
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          [SKIP][513] ([i915#5289]) -> [SKIP][514] ([i915#14544])
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-rkl:          [SKIP][515] ([i915#3555]) -> [SKIP][516] ([i915#14544])
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-5/igt@kms_scaling_modes@scaling-mode-full-aspect.html
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-rkl:          [SKIP][517] ([i915#8623]) -> [SKIP][518] ([i915#14544])
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_tiled_display@basic-test-pattern.html
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-rkl:          [SKIP][519] ([i915#14544]) -> [SKIP][520] ([i915#9906])
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-dg1:          [SKIP][521] ([i915#9906]) -> [SKIP][522] ([i915#4423] / [i915#9906])
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg1-15/igt@kms_vrr@seamless-rr-switch-virtual.html
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg1-15/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@kms_writeback@writeback-check-output:
    - shard-rkl:          [SKIP][523] ([i915#2437]) -> [SKIP][524] ([i915#14544] / [i915#2437])
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-2/igt@kms_writeback@writeback-check-output.html
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_writeback@writeback-check-output.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-rkl:          [SKIP][525] ([i915#14544] / [i915#8516]) -> [SKIP][526] ([i915#8516])
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@perf_pmu@rc6-all-gts.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-rkl:          [SKIP][527] ([i915#14544] / [i915#9917]) -> [SKIP][528] ([i915#9917])
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@sriov_basic@bind-unbind-vf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13328]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13328
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
  [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
  [i915#13705]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13705
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
  [i915#14123]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14123
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
  [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
  [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
  [i915#14756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14756
  [i915#14809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809
  [i915#14888]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
  [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
  [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
  [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_17323 -> Patchwork_154423v4

  CI-20190529: 20190529
  CI_DRM_17323: 90c02675d5fedea7f1d28c4e5c45f958de9bfee4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8575: 7efc313da1339df43a1b11bba57fef6c1257e65f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_154423v4: 90c02675d5fedea7f1d28c4e5c45f958de9bfee4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/index.html

--===============8168436722590420002==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Skip communication warning on =
reset in progress (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/154423/">https://patchwork.freedesktop.org/series/154423/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_154423v4/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_154423v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17323_full -&gt; Patchwork_154423v=
4_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_154423v4_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_154423v4_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
154423v4_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17323/shard-dg2-8/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-8/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_17323/shard-dg2-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_17323/shard-dg2-7/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-7/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_173=
23/shard-dg2-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_17323/shard-dg2-6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/sha=
rd-dg2-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_17323/shard-dg2-5/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2=
-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-dg2-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-3/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_17323/shard-dg2-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_17323/shard-dg2-3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-1/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1732=
3/shard-dg2-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_17323/shard-dg2-1/boot.html">PASS</a>) -&gt; (<a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_154423v4/shard-dg2-8/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/sh=
ard-dg2-8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_154423v4/shard-dg2-7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-7/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_154423v4/shard-dg2-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-d=
g2-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_154423v4/shard-dg2-6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-5/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1544=
23v4/shard-dg2-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_154423v4/shard-dg2-5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_154423v4/shard-dg2-4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-3/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4=
/shard-dg2-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_154423v4/shard-dg2-3/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-1/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_154423v4/shard-dg2-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-1/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shar=
d-dg2-10/boot.html">FAIL</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@drm_buddy@drm_buddy:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-glk10/igt@drm_buddy@drm_buddy.html">=
DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-snb7/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/sha=
rd-snb1/igt@gem_exec_suspend@basic-s0.html">ABORT</a> +1 other test abort</=
li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@kms_fbcon_fbt@fbc-suspend.=
html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@drm_buddy@drm_buddy@drm_test_buddy_fragmentation_performance}:<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-glk10/igt@drm_buddy@drm_buddy@drm_te=
st_buddy_fragmentation_performance.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_154423v4_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@api_intel_bb@blit-reloc-ke=
ep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@api_intel_bb@object-reloc-=
keep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@gem_basic@multigpu-creat=
e-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@gem_ccs@block-multicopy-in=
place.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-c=
opy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-dg2-6/igt@gem_ccs@suspend-resume.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard=
-dg2-7/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@gem_ccs@suspend-resume.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-dg2-6/igt@gem_ccs@suspend-resume@tile64-compressed-comp=
fmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_154423v4/shard-dg2-7/igt@gem_ccs@suspend-resume@ti=
le64-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i=
915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@gem_close_race@multigpu-ba=
sic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-dg1-17/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-=
dg1-16/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_exec_balancer@hog.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@gem_exec_balancer@parall=
el.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@gem_exec_balancer@paralle=
l-dmabuf-import-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-tglu-2/igt@gem_exec_big@single.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-t=
glu-7/igt@gem_exec_big@single.html">ABORT</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/11713">i915#11713</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14756">i915#14756</a=
>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@gem_exec_capture@capture-=
recoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@gem_exec_flush@basic-batch=
-kernel-default-cmd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +2 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@gem_exec_flush@basic-uc-pr=
w-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-active:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-a=
ctive.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@gem_exec_reloc@basic-softp=
in.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@gem_exec_reloc@basic-write=
-wc-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@gem_exec_suspend@basic-s0.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13356">i915#13356</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_fence_thrash@bo-write-=
verify-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@gem_fenced_exec_thrash@no-=
spare-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@gem_huc_copy@huc-copy.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@gem_lmem_swapping@heavy-ve=
rify-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-glk9/igt@gem_lmem_swapping@parallel-=
random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4613">i915#4613</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@gem_lmem_swapping@paralle=
l-random-verify-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@gem_lmem_swapping@random=
-engines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_mmap_gtt@hang.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
4077">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear-via-pagefault:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-mtlp-4/igt@gem_mmap_offset@clear-via-pagefault.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
154423v4/shard-mtlp-5/igt@gem_mmap_offset@clear-via-pagefault.html">ABORT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1480=
9">i915#14809</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@gem_mmap_wc@write-wc-read-=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4083">i915#4083</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-display:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_partial_pwrite_pread@r=
eads-display.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-display:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@gem_partial_pwrite_pread@w=
rite-display.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@gem_partial_pwrite_pread@w=
rite-display.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@gem_pxp@create-regular-con=
text-1.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@gem_pxp@hw-rejects-pxp-bu=
ffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13398">i915#13398</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@gem_pxp@protected-encrypte=
d-src-copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-on.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_154423v4/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-on=
.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-x-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_render_copy@y-tiled-cc=
s-to-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +2 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@gem_render_copy@yf-tiled-c=
cs-to-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +2 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@gem_userptr_blits@dmabuf-=
sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@gem_userptr_blits@readonly=
-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-glk6/igt@gem_workarounds@suspend-res=
ume.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/13356">i915#13356</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14586">i915#14586</a>) +1 other test inco=
mplete</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@gen9_exec_parse@bb-large=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@gen9_exec_parse@bb-secure.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gen9_exec_parse@bb-start-o=
ut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@gen9_exec_parse@unaligned-=
jump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@gen9_exec_parse@valid-reg=
isters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@all-busy-idle-check-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@i915_drm_fdinfo@all-busy-i=
dle-check-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14123">i915#14123</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@i915_drm_fdinfo@most-busy-=
idle-check-all@vecs1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14073">i915#14073</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-hang-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@i915_drm_fdinfo@virtual-bu=
sy-hang-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/14118">i915#14118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@i915_module_load@resize-=
bar.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@i915_query@query-topology-=
coherent-slice-mask.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/6188">i915#6188</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-mtlp-7/igt@i915_selftest@live@workarounds.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15442=
3v4/shard-mtlp-2/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i9=
15#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@i915_suspend@debugfs-reader.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/=
shard-rkl-3/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@i915_suspend@fence-restore=
-untiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4077">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_addfb_basic@addfb25-x-=
tiled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_addfb_basic@addfb25-x-=
tiled-mismatch-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-glk5/igt@kms_async_flips@alternate-s=
ync-async-flip-atomic@pipe-c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14888">i915#14888</a>) +2 oth=
er tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_async_flips@async-flip-suspend-resume.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_154423v4/shard-rkl-3/igt@kms_async_flips@async-flip-suspend-resume.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/12761">i915#12761</a>)</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-glk6/igt@kms_async_flips@async-flip-=
suspend-resume.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12761">i915#12761</a>) +1 other test incomplet=
e</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-3/igt@kms_async_flips@async-flip=
-suspend-resume@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/12761">i915#12761</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3=
555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_big_fb@4-tiled-16bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_big_fb@4-tiled-addfb.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_154423v4/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_big_fb@4-tiled-max-h=
w-stride-64bpp-rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +4 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_big_fb@x-tiled-32bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_big_fb@x-tiled-64bpp-r=
otate-90.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate=
-0-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-2/igt@kms_big_fb@x-tiled-max=
-hw-stride-64bpp-rotate-0-hflip-async-flip.html">DMESG-WARN</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964<=
/a>) +11 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_big_fb@y-tiled-16bpp-r=
otate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +4 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@kms_big_fb@y-tiled-32bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_ccs@ccs-on-another-bo-=
y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#609=
5</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_ccs@crc-primary-basic-=
y-tiled-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +6=
7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-8/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +40 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg1-13/igt@kms_ccs@crc-primary-rotat=
ion-180-y-tiled-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +129 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +13 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2:=
</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-8/igt@kms_ccs@crc-primary-suspen=
d-yf-tiled-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)=
 +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12=
-rc-ccs-cc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic=
-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +23 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1=
:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-=
basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i=
915#10434</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_ccs@missing-ccs-buffe=
r-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +54 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_ccs@random-ccs-data-4=
-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/13781">i915#13781</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@vga-edid-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_chamelium_edid@vga-edi=
d-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_chamelium_frames@dp-cr=
c-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_chamelium_frames@hdmi=
-crc-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_chamelium_hpd@dp-hpd-s=
torm.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-without-ddc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_chamelium_hpd@vga-hpd=
-without-ddc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_content_protection@dp-=
mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3299">i915#3299</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_content_protection@dp=
-mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_content_protection@leg=
acy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_content_protection@leg=
acy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_content_protection@lic=
-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_content_protection@lic=
-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9424">i915#9424</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_content_protection@li=
c-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_cursor_crc@cursor-off=
screen-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-tglu-5/igt@kms_cursor_crc@cursor-onscreen-128x42.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_154423v4/shard-tglu-5/igt@kms_cursor_crc@cursor-onscreen-128x42.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
3566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_cursor_crc@cursor-ons=
creen-256x85.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13566">i915#13566</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_cursor_crc@cursor-slid=
ing-256x85@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +3 other tests fa=
il</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@kms_cursor_crc@cursor-slid=
ing-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3555">i915#3555</a>) +4 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_cursor_legacy@cursorb-=
vs-flipa-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_cursor_legacy@cursorb-=
vs-flipa-atomic-transitions.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_cursor_legacy@cursorb-=
vs-flipa-legacy.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-glk8/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_dirtyfb@drrs-dirtyfb-i=
octl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9833">i915#9833</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_dp_aux_dev.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/125=
7">i915#1257</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_dp_aux_dev.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
57">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp=
-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3840">i915#3840</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_dsc@dsc-with-bpc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_dsc@dsc-with-formats.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_feature_discovery@cham=
elium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_feature_discovery@disp=
lay-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-busy-flip:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-glk6/igt@kms_flip@2x-busy-flip.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-g=
lk8/igt@kms_flip@2x-busy-flip.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_flip@2x-flip-vs-absolu=
te-wf_vblank-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_flip@2x-flip-vs-dpms.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9934">i915#9934</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_flip@2x-flip-vs-fences=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@kms_flip@2x-plain-flip-fb-=
recreate.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9934">i915#9934</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_flip@2x-single-buffer-=
flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 o=
ther tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_flip@2x-single-buffer=
-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915=
#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_flip@bo-too-big-interruptible.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154=
423v4/shard-rkl-6/igt@kms_flip@bo-too-big-interruptible.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3637">i915#3637</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_flip@flip-vs-fences.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3=
555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i9=
15#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"=
>i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/267=
2">i915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3=
555</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#=
2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_flip_scaled_crc@flip=
-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#35=
55</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_flip_scaled_crc@flip=
-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i91=
5#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bp=
p-linear-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_flip_scaled_crc@f=
lip-64bpp-linear-to-16bpp-linear-downscaling.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">=
i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#=
2672</a>) +2 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915=
#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
indfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_frontbuffer_trackin=
g@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915=
#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-move.html">SKIP</a> +60 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +4 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +11 o=
ther tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +9 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +5 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +6 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg1-14/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +13 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +17 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +14 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_hdr@bpc-switch-dpms.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_hdr@invalid-metadata=
-sizes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_hdr@static-toggle.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_hdr@static-toggle.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_invalid_mode@bad-vsync-end.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423=
v4/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-end.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8826">i915#8826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-glk10/igt@kms_invalid_mode@zero-hdis=
play.html">SKIP</a> +157 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_joiner@basic-force-big=
-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/12388">i915#12388</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_joiner@basic-force-big=
-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_joiner@basic-ultra-joi=
ner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_joiner@invalid-modeset=
-force-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/6301">i915#6301</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_panel_fitting@legacy.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_pipe_b_c_ivb@enable-p=
ipe-c-while-b-has-3-lanes.html">SKIP</a> +42 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_pipe_b_c_ivb@from-pipe=
-c-to-b-with-3-lanes.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-glk10/igt@kms_pipe_crc_basic@read-cr=
c-frame-sequence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/11190">i915#11190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/igt@kms_pipe_stress@stress-xrg=
b8888-ytiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13705">i915#13705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-glk1/igt@kms_plane@plane-panning-bot=
tom-right-suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/13026">i915#13026</a>) +1 other test incomp=
lete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@kms_plane_alpha_blend@alpha-basic.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154=
423v4/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-basic.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/7294">i915#7294</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_plane_multiple@2x-til=
ing-none.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/13958">i915#13958</a>) +1 other test skip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_plane_multiple@2x-tili=
ng-none.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_plane_multiple@tiling-=
yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14259">i915#14259</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_plane_multiple@tiling-=
yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14259">i915#14259</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_plane_scaling@plane-upsc=
ale-factor-0-25-with-modifiers.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)=
 +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers@pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_plane_scaling@pla=
ne-upscale-factor-0-25-with-modifiers@pipe-a.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers@pipe-b.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_plane_scaling@pla=
ne-upscale-factor-0-25-with-modifiers@pipe-b.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_plane_scaling@plane-=
upscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-=
75-upscale-20x20.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_154423v4/shard-dg1-16/igt@kms_plane_scaling@planes=
-downscale-factor-0-75-upscale-20x20.html">DMESG-WARN</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/9295">i915#9295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_pm_rpm@modeset-lpsp.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423=
v4/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#150=
73</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lp=
sp-stress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-overlay=
-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-over=
lay-primary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_psr2_sf@pr-cursor-plan=
e-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-glk10/igt@kms_psr2_sf@psr2-cursor-pl=
ane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_psr2_sf@psr2-overlay=
-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_psr2_sf@psr2-overlay-p=
lane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-glk6/igt@kms_psr2_sf@psr2-overlay-pr=
imary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_psr@fbc-pr-sprite-re=
nder.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9732">i915#9732</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@kms_psr@fbc-psr-basic.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-sprite-blt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_psr@fbc-psr-sprite-blt=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-glk5/igt@kms_psr@fbc-psr2-cursor-mma=
p-gtt.html">SKIP</a> +182 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_psr@psr-sprite-plane-=
onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9732">i915#9732</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_psr@psr-sprite-render.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_psr_stress_test@invali=
date-primary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_rotation_crc@primary-r=
otation-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/12755">i915#12755</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_rotation_crc@sprite-ro=
tation-90-pos-100-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/12755">i915#12755</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_setmode@invalid-clone-=
single-crtc-stealing.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-glk5/igt@kms_tiled_display@basic-tes=
t-pattern.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/10959">i915#10959</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_vrr@flip-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-glk5/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_writeback@writeback-=
fb-id-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@perf@global-sseu-config.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@perf@non-zero-reason.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9100">i915#9100</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@perf_pmu@module-unload.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14433">i915#14433</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/8516">i915#8516</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@perf_pmu@rc6-all-gts.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@prime_vgem@basic-gtt.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/igt@prime_vgem@basic-read.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-dg2-9/igt@sriov_basic@bind-unbind-vf=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf@vf-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-1/igt@sriov_basic@bind-unbind-v=
f@vf-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/12910">i915#12910</a>) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-tglu-10/igt@sriov_basic@enable-vfs-b=
ind-unbind-each-numvfs-all.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vecs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@sysfs_heartbeat_interval@m=
ixed@vecs0.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12964">i915#12964</a>) +12 other tests dmesg-warn<=
/li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-3/igt@gem_workarounds@suspend-resume-fd.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/13356">i915#13356</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@gem_workarounds@suspend-resume-=
fd.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-snb4/igt@i915_module_load@reload-no-display.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14545">i915#14545</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_154423v4/shard-snb1/igt@i915_module_load@reload-no-displ=
ay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-=
ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_ccs@crc-primary=
-suspend-y-tiled-gen12-rc-ccs-cc.html">PASS</a> +25 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@degamma:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_color@degamma.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_154423v4/shard-rkl-4/igt@kms_color@degamma.html">PASS</a> +1 o=
ther test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_cursor_crc@cursor-random-256x85.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
3566">i915#13566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_154423v4/shard-rkl-8/igt@kms_cursor_crc@cursor-random-256x85=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_curs=
or_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_flip@flip-vs-absolute-wf_vblank.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3637">i915#3637</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_flip@flip-vs-abso=
lute-wf_vblank.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-tglu-8/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14600">i915#14600</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_154423v4/shard-tglu-2/igt@kms_flip@wf_vblank-ts-check@a-h=
dmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/s=
hard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rccc=
s-upscaling.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-rend=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4=
/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> +3 othe=
r tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-start.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/8826">i915#8826</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_invali=
d_mode@bad-vsync-start.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_plane@plane-position-hole.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/8825">i915#8825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_plane@plane-position-ho=
le.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-transparent-fb.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/7294">i915#7294</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_plane_alph=
a_blend@alpha-transparent-fb.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-parameters:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_plane_scaling@invalid-parameters.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8152">i915#8152</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_plane_scaling@in=
valid-parameters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-75.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#35=
55</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6953">i915#6953</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8152">i915#8152</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_plane_scaling@pla=
nes-upscale-factor-0-25-downscale-factor-0-75.html">PASS</a> +1 other test =
pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@p=
ipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-75@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423=
v4/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-f=
actor-0-75@pipe-a.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@p=
ipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-75@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">=
i915#8152</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_154423v4/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-=
25-downscale-factor-0-75@pipe-b.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@wait-forked-busy-hang:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-4/igt@kms_vblank@wait-forked-busy-hang.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/12964">i915#12964</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_154423v4/shard-rkl-8/igt@kms_vblank@wait-forked-busy-hang=
.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349=
">i915#4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_154423v4/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html">P=
ASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@perf_pmu@most-busy-idle-check-all.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/434=
9">i915#4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_154423v4/shard-rkl-6/igt@perf_pmu@most-busy-idle-check-all.html"=
>PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8411">i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@api_intel_bb@object-=
reloc-keep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281=
">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_154423v4/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3281">i915#3281</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">=
i915#9323</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_154423v4/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/7697">i915#7697</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@gem_close_race@mult=
igpu-basic-threads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154=
423v4/shard-rkl-6/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i91=
5#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@gem_exec_balancer@par=
allel-balancer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@gem_exec_balancer@parallel-k=
eep-submit-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@gem_exec_reloc@basic-=
gtt-cpu-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/7276">i915#7276</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@gem_exec_schedule@semap=
hore-power.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/7276">i915#7276</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/46=
13">i915#4613</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7582">i915#7582</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@gem_lmem_evict@dontneed-=
evict-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@gem_lmem_swapping@parallel-multi.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613=
">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_154423v4/shard-rkl-6/igt@gem_lmem_swapping@parallel-multi.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@gem_lmem_swa=
pping@parallel-random-verify-ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@gem_media_vme.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/sh=
ard-rkl-6/igt@gem_media_vme.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_154423v4/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-un=
cached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-4/igt@gem_pxp@hw-rejects-pxp-buffer.html">TIMEOUT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1291=
7">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12964">i915#12964</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp=
-buffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/13717">i915#13717</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@gem_readwrite@beyond-eob.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_154423v4/shard-rkl-4/igt@gem_readwrite@beyond-eob.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/8411">i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_154423v4/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-unt=
iled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@gem_userptr_blits@create-destroy-unsync.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3297">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_154423v4/shard-rkl-6/igt@gem_userptr_blits@create-destroy-=
unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@gen9_exec_parse@allowed-single.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">=
i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_154423v4/shard-rkl-6/igt@gen9_exec_parse@allowed-single.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/2527">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@gen9_exec_parse@bb-start-far=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@i915_pm_freq_api@freq-reset-multiple.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
8399">i915#8399</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_154423v4/shard-rkl-6/igt@i915_pm_freq_api@freq-reset-multiple=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/8399">i915#8399</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@reg-read-ioctl:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@i915_pm_rpm@reg-read-ioctl.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1296=
4">i915#12964</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_154423v4/shard-rkl-4/igt@i915_pm_rpm@reg-read-ioctl.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/133=
28">i915#13328</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@i915_power@sanity.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/798=
4">i915#7984</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_154423v4/shard-rkl-4/igt@i915_power@sanity.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#79=
84</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_154423v4/shard-rkl-4/igt@kms_big_fb@4-tiled-16bpp-rotate-0.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb-size-overflow.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb-size-over=
flow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/363=
8">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_154423v4/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-90.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_154423v4/shard-rkl-4/igt@kms_big_fb@x-tiled-8bpp-rotate-90.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb-size-=
overflow.html">SKIP</a> +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled=
-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_ccs@ccs-on-anot=
her-bo-y-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs=
@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-5/igt@kms_ccs@crc=
-primary-rotation-180-yf-tiled-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#140=
98</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12805">i915#12805</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_ccs@crc-primary-suspend=
-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-dg1-18/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe=
-a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg1-16/igt@kms_ccs@missing=
-ccs-buffer-yf-tiled-ccs@pipe-a-hdmi-a-4.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6=
095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-ti=
led-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +5 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_chameliu=
m_frames@hdmi-cmp-planar-formats.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/78=
28">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_ch=
amelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +=
2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@kms_content_protection@content-type-change.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9424">i915#9424</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_content_protection@content=
-type-change.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_content_protection@dp-mst-type=
-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3116">i915#3116</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x512.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/13049">i915#13049</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen=
-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_cursor_crc@cursor-random-max-size.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_cursor_crc@cursor-random-max-=
size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_cursor_crc@cursor-rapi=
d-movement-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-256x85.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-256x=
85.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@256x256-right-edge:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_cursor_edge_walk@256x256-right-edge.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_cursor_edge_walk@256x256-ri=
ght-edge.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12964">i915#12964</a>) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-dg1-15/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.h=
tml">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_154423v4/shard-dg1-15/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_cursor_l=
egacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.htm=
l">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_154423v4/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-atomic-transitions.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_=
cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103=
">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_display_modes@extended-mode-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13691">i915#13691</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_display_modes@extended-mode-b=
asic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_154423v4/shard-rkl-4/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"=
>i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@kms_feature_discovery@display-4x.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839=
">i915#1839</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_154423v4/shard-rkl-6/igt@kms_feature_discovery@display-4x.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@kms_flip@2x-absolute-wf_vblank-interruptible.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_flip@2x-absolute-wf_vbla=
nk-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_flip@2x-blocking-absolute-wf_vblank-inter=
ruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms=
_flip@2x-blocking-absolute-wf_vblank-interruptible.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934=
</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_flip@flip-vs-fences.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3637">i915#3637</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_flip@flip-vs-fences.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp=
-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/sha=
rd-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-do=
wnscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16b=
pp-yftile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg=
1-13/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/2672">i915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16b=
pp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#26=
72</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_154423v4/shard-dg1-13/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-y=
ftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bp=
p-yftile-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl=
-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/2672">i915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-c=
ur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_f=
rontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/5354">i915#5354</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-p=
ri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#535=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
154423v4/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-sh=
rfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3023">i915#3023</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-s=
hrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_frontbuf=
fer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/18=
49">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/5354">i915#5354</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-s=
pr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15442=
3v4/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-d=
raw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1825">i915#1825</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-=
shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-=
5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3458">i915#3458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrf=
b-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/igt@kms_frontbuffer=
_tracking@psr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i9=
15#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr=
-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg1-13/igt@kms_fr=
ontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i9=
15#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-rgb565-draw-ren=
der.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_154423v4/shard-dg1-15/igt@kms_frontbuffer_trackin=
g@psr-rgb565-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/3458">i915#3458</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_154423v4/shard-rkl-4/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228"=
>i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8228">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_hdr@static-toggle-suspend=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-jo=
iner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13522">i915#13522</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_j=
oiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522">i915#13522</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4816">i915#4816</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-7/igt@kms_multipip=
e_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-dg1-18/igt@kms_plane_lowres@tiling-4.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915=
#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_154423v4/shard-dg1-16/igt@kms_plane_lowres@tiling-4.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#=
3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_154423v4/shard-rkl-4/igt@kms_plane_multiple@2x-tiling-none.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_plane_multiple@tiling-4.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_154423v4/shard-rkl-4/igt@kms_plane_multiple@tiling-4.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">=
i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-75=
-with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_=
plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1224=
7">i915#12247</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-75=
-with-rotation@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_=
plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1224=
7">i915#12247</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@kms_pm_dc@dc5-psr.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15442=
3v4/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#96=
85</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-4/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295">i915#9295</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1544=
23v4/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361">i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/42=
81">i915#4281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_154423v4/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#=
4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
54423v4/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_pm_rpm@modes=
et-lpsp-stress-no-wait.html">DMESG-WARN</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/15073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_pm_rpm@modeset-n=
on-lpsp-stress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">=
i915#6524</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_154423v4/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuo=
us-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_psr=
2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i91=
5#11520</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-conti=
nuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-=
4/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9683">i915#9683</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_psr2_su@frontbuffer-=
xrgb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915=
#9683</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_154423v4/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-page-flip:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-dg1-18/igt@kms_psr@fbc-psr-primary-page-flip.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
72">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_154423v4/shard-dg1-16/igt@kms_psr@fbc-psr-primary=
-page-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">=
i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@kms_psr@fbc-=
psr2-sprite-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i=
915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_psr@psr-cursor-plane-move=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +8 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/5289">i915#5289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_rotation_crc@primary-4-t=
iled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-5/igt@kms_scaling_modes@scaling-mode-full-aspect.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_scaling_modes@scaling-mode=
-full-aspect.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_tiled_display@basic-test-pattern.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
8623">i915#8623</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_154423v4/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_154423v4/shard-rkl-4/igt@kms_vrr@seamless-rr-switch-drrs.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-dg1-15/igt@kms_vrr@seamless-rr-switch-virtual.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
906">i915#9906</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_154423v4/shard-dg1-15/igt@kms_vrr@seamless-rr-switch-virtual.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-2/igt@kms_writeback@writeback-check-output.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
2437">i915#2437</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_154423v4/shard-rkl-6/igt@kms_writeback@writeback-check-output=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/8516">i915#8516</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_154423v4/shard-rkl-4/igt@perf_pmu@rc6-all-gts.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">=
i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17323/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9917">i915#9917</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_154423v4/shard-rkl-4/igt@sriov_basic@bind-unbind-vf.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17323 -&gt; Patchwork_154423v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17323: 90c02675d5fedea7f1d28c4e5c45f958de9bfee4 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8575: 7efc313da1339df43a1b11bba57fef6c1257e65f @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_154423v4: 90c02675d5fedea7f1d28c4e5c45f958de9bfee4 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8168436722590420002==--
