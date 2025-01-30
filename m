Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F85A2293F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 08:38:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 173D810E230;
	Thu, 30 Jan 2025 07:38:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0727310E230;
 Thu, 30 Jan 2025 07:38:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3280262705855440190=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EFull=3A_success_for_Add_AS=5FSDP_to_fastset_?=
 =?utf-8?q?=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jan 2025 07:38:05 -0000
Message-ID: <173822268500.2759477.3748808694414671346@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250130051609.1796524-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20250130051609.1796524-1-mitulkumar.ajitkumar.golani@intel.com>
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

--===============3280262705855440190==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add AS_SDP to fastset (rev5)
URL   : https://patchwork.freedesktop.org/series/137035/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16041_full -> Patchwork_137035v5_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_137035v5_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_137035v5_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/index.html

Participating hosts (11 -> 12)
------------------------------

  Additional (1): shard-dg2-set2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_137035v5_full:

### IGT changes ###

#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-tglu:         [INCOMPLETE][1] ([i915#7443]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-tglu-6/igt@i915_suspend@basic-s3-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-9/igt@i915_suspend@basic-s3-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_137035v5_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-dg1:          NOTRUN -> [SKIP][3] ([i915#8411]) +1 other test skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#8411]) +1 other test skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg1:          NOTRUN -> [SKIP][5] ([i915#11078])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@device_reset@cold-reset-bound.html
    - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#11078])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#11078])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-tglu:         [PASS][8] -> [ABORT][9] ([i915#12817] / [i915#5507])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-tglu-9/igt@device_reset@unbind-reset-rebind.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-6/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@busy-idle@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][10] ([i915#8414]) +11 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@drm_fdinfo@busy-idle@vcs1.html

  * igt@drm_fdinfo@busy@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#8414]) +7 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@drm_fdinfo@busy@rcs0.html

  * igt@gem_basic@multigpu-create-close:
    - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#7697])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#3555] / [i915#9323])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-tglu-1:       NOTRUN -> [SKIP][14] ([i915#3555] / [i915#9323])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][15] ([i915#9323])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][16] -> [INCOMPLETE][17] ([i915#7297])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-mtlp:         NOTRUN -> [SKIP][18] ([i915#7697]) +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#7697])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][20] ([i915#6335])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_persistence@file:
    - shard-snb:          NOTRUN -> [SKIP][21] ([i915#1099]) +4 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-snb7/igt@gem_ctx_persistence@file.html

  * igt@gem_ctx_persistence@hang:
    - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#8555])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg1:          NOTRUN -> [SKIP][23] ([i915#280])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#4771])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#4812]) +3 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#4771])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#4771])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#4525])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-tglu:         NOTRUN -> [SKIP][29] ([i915#4525])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_fence@syncobj-channel:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][30] ([i915#12964]) +5 other tests dmesg-warn
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@gem_exec_fence@syncobj-channel.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-dg1:          NOTRUN -> [SKIP][31] ([i915#3539] / [i915#4852]) +2 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#3539]) +1 other test skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_reloc@basic-cpu-read-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#3281]) +6 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-read-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#3281]) +7 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-wc:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#3281]) +5 other tests skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_exec_reloc@basic-write-cpu-active:
    - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#3281]) +12 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@gem_exec_reloc@basic-write-cpu-active.html

  * igt@gem_exec_schedule@thriceslice:
    - shard-snb:          NOTRUN -> [SKIP][37] +226 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-snb7/igt@gem_exec_schedule@thriceslice.html

  * igt@gem_exec_suspend@basic-s3-devices@smem:
    - shard-mtlp:         [PASS][38] -> [ABORT][39] ([i915#13193]) +2 other tests abort
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-mtlp-7/igt@gem_exec_suspend@basic-s3-devices@smem.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-7/igt@gem_exec_suspend@basic-s3-devices@smem.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg2:          NOTRUN -> [ABORT][40] ([i915#7975] / [i915#8213]) +1 other test abort
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-5/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#4860])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-4/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#4860]) +4 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-tglu:         NOTRUN -> [SKIP][43] ([i915#4613]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglu-1:       NOTRUN -> [SKIP][44] ([i915#4613]) +1 other test skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][45] ([i915#12193])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#4565])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-glk:          NOTRUN -> [SKIP][47] ([i915#4613])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk8/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][48] -> [TIMEOUT][49] ([i915#5493]) +1 other test timeout
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify:
    - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#4613]) +1 other test skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@gem_lmem_swapping@verify.html

  * igt@gem_media_vme:
    - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#284])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#4077]) +11 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-mtlp:         NOTRUN -> [SKIP][53] ([i915#4077]) +2 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_offset@clear-via-pagefault:
    - shard-mtlp:         [PASS][54] -> [ABORT][55] ([i915#10729]) +1 other test abort
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-mtlp-8/igt@gem_mmap_offset@clear-via-pagefault.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-7/igt@gem_mmap_offset@clear-via-pagefault.html

  * igt@gem_mmap_wc@close:
    - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#4083]) +2 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@gem_mmap_wc@close.html

  * igt@gem_mmap_wc@copy:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#4083]) +3 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@gem_mmap_wc@copy.html

  * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
    - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#4083])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#3282]) +7 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#3282]) +3 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#4270]) +4 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#4270])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#4270])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-rkl:          NOTRUN -> [TIMEOUT][64] ([i915#12917] / [i915#12964])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_readwrite@beyond-eob:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3282]) +3 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gem_readwrite@beyond-eob.html

  * igt@gem_readwrite@read-bad-handle:
    - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#3282]) +4 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@gem_readwrite@read-bad-handle.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#8428]) +2 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#5190] / [i915#8428]) +3 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-dg1:          NOTRUN -> [SKIP][69] ([i915#4079])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#4077]) +2 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gem_tiled_partial_pwrite_pread@reads.html

  * igt@gem_userptr_blits@access-control:
    - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#3297])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#3297]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#3297])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gem_userptr_blits@coherency-unsync.html
    - shard-tglu-1:       NOTRUN -> [SKIP][74] ([i915#3297])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#3297]) +2 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#3282] / [i915#3297])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@map-fixed-invalidate:
    - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#3297] / [i915#4880])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@gem_userptr_blits@map-fixed-invalidate.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#3281] / [i915#3297])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#3297] / [i915#4958])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gem_userptr_blits@sd-probe.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#2856]) +2 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gen9_exec_parse@allowed-single.html
    - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#2527] / [i915#2856]) +1 other test skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#2527]) +2 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-tglu:         NOTRUN -> [SKIP][83] ([i915#2527] / [i915#2856])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#2527]) +4 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@i915_fb_tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#4881])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@i915_fb_tiling.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][86] ([i915#13475])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [PASS][87] -> [ABORT][88] ([i915#10887] / [i915#12817] / [i915#9820])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#8399]) +1 other test skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][90] -> [INCOMPLETE][91] ([i915#12455]) +1 other test incomplete
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-1/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#6590]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglu:         NOTRUN -> [WARN][93] ([i915#2681]) +2 other tests warn
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
    - shard-dg1:          [PASS][94] -> [FAIL][95] ([i915#3591])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
    - shard-dg1:          [PASS][96] -> [FAIL][97] ([i915#12739] / [i915#3591])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#11681] / [i915#6621])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_rps@thresholds-idle-park:
    - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#11681]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@i915_pm_rps@thresholds-idle-park.html

  * igt@i915_pm_rps@thresholds-park:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#11681])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@i915_pm_rps@thresholds-park.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#4387])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-tglu-1:       NOTRUN -> [SKIP][102] ([i915#5723])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@mock:
    - shard-mtlp:         NOTRUN -> [DMESG-WARN][103] ([i915#9311]) +1 other test dmesg-warn
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@i915_selftest@mock.html

  * igt@i915_selftest@mock@memory_region:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][104] ([i915#9311]) +1 other test dmesg-warn
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@i915_selftest@mock@memory_region.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#4215])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu-1:       NOTRUN -> [SKIP][106] ([i915#12454] / [i915#12712])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#4212]) +4 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs-cc:
    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#8709]) +3 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#8709]) +7 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html

  * igt@kms_async_flips@invalid-async-flip-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#12967])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_async_flips@invalid-async-flip-atomic.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#3555])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking:
    - shard-glk:          NOTRUN -> [FAIL][112] ([i915#12177])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:
    - shard-glk:          NOTRUN -> [FAIL][113] ([i915#11859])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#1769] / [i915#3555])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-tglu-1:       NOTRUN -> [SKIP][115] ([i915#1769] / [i915#3555])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#1769] / [i915#3555])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][117] -> [FAIL][118] ([i915#11808]) +1 other test fail
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#5286]) +2 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#5286]) +3 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#4538] / [i915#5286]) +5 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-tglu-1:       NOTRUN -> [SKIP][122] ([i915#5286]) +2 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
    - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#5286])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [PASS][124] -> [DMESG-FAIL][125] ([i915#11627] / [i915#13314])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#3638]) +4 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
    - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#3638]) +4 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-mtlp:         NOTRUN -> [SKIP][128] ([i915#6187])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][129] +7 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#4538] / [i915#5190]) +4 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#4538]) +7 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#5190])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#10307] / [i915#6095]) +119 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#6095]) +34 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-c-edp-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#6095]) +165 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][136] ([i915#6095]) +39 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#12313])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#6095]) +61 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#12313])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#12805])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#12805])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#6095]) +29 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#6095]) +15 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][144] ([i915#12313]) +2 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#3742]) +1 other test skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#3742]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#4087]) +3 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-8/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#11151] / [i915#7828]) +6 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-5/igt@kms_chamelium_frames@dp-crc-fast.html
    - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#11151] / [i915#7828])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-crc-single:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#11151] / [i915#7828]) +5 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_chamelium_frames@hdmi-crc-single.html

  * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#11151] / [i915#7828]) +2 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][153] ([i915#11151] / [i915#7828]) +4 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#11151] / [i915#7828]) +13 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#7116] / [i915#9424])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][156] ([i915#7173])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-4.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#3116])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_content_protection@dp-mst-type-0.html
    - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#3299]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][159] ([i915#3116] / [i915#3299])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@mei-interface:
    - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#8063] / [i915#9433])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#7116])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][163] ([i915#3555] / [i915#8814]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-tglu-1:       NOTRUN -> [SKIP][164] ([i915#3555]) +2 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#13049])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#13049]) +1 other test skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#3555]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][168] ([i915#13049]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#13049])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-random-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#8814])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-4/igt@kms_cursor_crc@cursor-random-64x21.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#3555]) +3 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#13049]) +3 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#9809])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#13046] / [i915#5354]) +3 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][175] ([i915#4103])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#4103] / [i915#4213])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [PASS][177] -> [DMESG-WARN][178] ([i915#12964]) +5 other tests dmesg-warn
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#9067])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-tglu-1:       NOTRUN -> [SKIP][180] ([i915#9067])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#4103])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#4103] / [i915#4213])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#3555]) +1 other test skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#3804])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_aux_dev:
    - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#1257])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_dp_aux_dev.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#12402])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][187] ([i915#8812])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#3840])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#3840])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#3840])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg1:          NOTRUN -> [SKIP][191] ([i915#3555] / [i915#3840])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#3555] / [i915#3840]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@kms_dsc@dsc-with-output-formats.html
    - shard-tglu-1:       NOTRUN -> [SKIP][193] ([i915#3555] / [i915#3840])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#3955])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-2x:
    - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#1839])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-mtlp:         NOTRUN -> [SKIP][196] ([i915#1839])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#1839]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_feature_discovery@display-4x.html
    - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#1839])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#658])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#9934]) +2 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@kms_flip@2x-flip-vs-panning.html
    - shard-tglu-1:       NOTRUN -> [SKIP][201] ([i915#3637]) +3 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#3637]) +4 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#9934]) +3 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][204] ([i915#9934]) +9 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-snb:          [PASS][205] -> [FAIL][206] ([i915#11989]) +1 other test fail
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-snb5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-snb5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-tglu:         [PASS][207] -> [FAIL][208] ([i915#11989]) +2 other tests fail
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-tglu-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-9/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg1:          NOTRUN -> [SKIP][209] ([i915#8381])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#8381])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-dg1:          [PASS][211] -> [DMESG-WARN][212] ([i915#4423]) +1 other test dmesg-warn
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a4:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][213] ([i915#4423])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a4.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-rkl:          NOTRUN -> [FAIL][214] ([i915#11989]) +1 other test fail
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#2672] / [i915#3555]) +3 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#2672]) +3 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][217] ([i915#2587] / [i915#2672]) +1 other test skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][218] ([i915#2672] / [i915#3555]) +1 other test skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][219] ([i915#2587] / [i915#2672]) +2 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#2672] / [i915#8813])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][221] ([i915#2587] / [i915#2672] / [i915#3555])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#2672] / [i915#3555] / [i915#8813]) +2 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#2672] / [i915#3555] / [i915#5190])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#2672])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][225] ([i915#2587] / [i915#2672] / [i915#3555])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][226] ([i915#2672] / [i915#3555]) +1 other test skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-dg1:          NOTRUN -> [SKIP][227] ([i915#2672] / [i915#3555]) +3 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][228] ([i915#2587] / [i915#2672]) +4 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#3555] / [i915#8813])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][230] ([i915#8810])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          [PASS][231] -> [FAIL][232] ([i915#6880]) +1 other test fail
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][233] +48 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][234] ([i915#1825]) +8 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#5354]) +10 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#8708]) +8 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#3458]) +7 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][238] ([i915#8708]) +29 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][239] +11 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#1825]) +23 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][241] ([i915#3458]) +26 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#5439])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#9766])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][244] +42 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#3023]) +17 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][246] ([i915#8708]) +4 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
    - shard-tglu-1:       NOTRUN -> [SKIP][247] +38 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#3555] / [i915#8228])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_hdr@bpc-switch-dpms.html
    - shard-dg1:          NOTRUN -> [SKIP][249] ([i915#3555] / [i915#8228])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          [PASS][250] -> [SKIP][251] ([i915#3555] / [i915#8228])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg2-10/igt@kms_hdr@static-toggle.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@kms_hdr@static-toggle.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#10656])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_joiner@basic-big-joiner.html
    - shard-mtlp:         NOTRUN -> [SKIP][253] ([i915#10656])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#10656])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          [PASS][255] -> [SKIP][256] ([i915#12388])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg2-10/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#12339])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_joiner@invalid-modeset-ultra-joiner.html
    - shard-dg1:          NOTRUN -> [SKIP][258] ([i915#12339])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][259] ([i915#13522])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#6301])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][261] ([i915#6301])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_panel_fitting@legacy.html
    - shard-dg1:          NOTRUN -> [SKIP][262] ([i915#6301])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane@pixel-format-source-clamping:
    - shard-mtlp:         [PASS][263] -> [DMESG-WARN][264] ([i915#1982]) +1 other test dmesg-warn
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-mtlp-3/igt@kms_plane@pixel-format-source-clamping.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-1/igt@kms_plane@pixel-format-source-clamping.html

  * igt@kms_plane_lowres@tiling-x:
    - shard-mtlp:         NOTRUN -> [SKIP][265] ([i915#11614] / [i915#3582]) +1 other test skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_plane_lowres@tiling-x.html

  * igt@kms_plane_lowres@tiling-x@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][266] ([i915#10226] / [i915#11614] / [i915#3582]) +2 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_plane_lowres@tiling-x@pipe-a-edp-1.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg1:          NOTRUN -> [SKIP][267] ([i915#3555]) +4 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-mtlp:         NOTRUN -> [SKIP][268] ([i915#6953])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-4/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][269] ([i915#12247]) +4 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#12247] / [i915#9423]) +1 other test skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation:
    - shard-glk:          NOTRUN -> [SKIP][271] +150 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk8/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#12247]) +7 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html
    - shard-tglu-1:       NOTRUN -> [SKIP][273] ([i915#12247]) +9 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-dg1:          NOTRUN -> [SKIP][274] ([i915#12247] / [i915#6953]) +1 other test skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d:
    - shard-mtlp:         NOTRUN -> [SKIP][275] ([i915#12247]) +4 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][276] ([i915#12247] / [i915#6953])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#12247]) +1 other test skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b:
    - shard-dg1:          NOTRUN -> [SKIP][278] ([i915#12247]) +7 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b.html

  * igt@kms_pm_backlight@fade:
    - shard-rkl:          NOTRUN -> [SKIP][279] ([i915#5354])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][280] ([i915#9812])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#3828])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_pm_dc@dc5-retention-flops.html
    - shard-dg1:          NOTRUN -> [SKIP][282] ([i915#3828])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-dg1:          NOTRUN -> [SKIP][283] ([i915#9685])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][284] ([i915#9340])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][285] ([i915#9519])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#9519])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-mtlp:         NOTRUN -> [SKIP][287] ([i915#9519]) +1 other test skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-4/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][288] ([i915#6524])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-crc-vgem:
    - shard-dg1:          NOTRUN -> [SKIP][289] ([i915#6524])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_prime@basic-crc-vgem.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-tglu-1:       NOTRUN -> [SKIP][290] ([i915#6524])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_prime@basic-modeset-hybrid.html
    - shard-dg2:          NOTRUN -> [SKIP][291] ([i915#6524] / [i915#6805])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
    - shard-mtlp:         NOTRUN -> [SKIP][292] ([i915#12316]) +3 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
    - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#11520]) +3 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
    - shard-snb:          NOTRUN -> [SKIP][294] ([i915#11520]) +7 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-snb1/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
    - shard-dg1:          NOTRUN -> [SKIP][295] ([i915#11520]) +11 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][296] ([i915#9808])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf@pipe-a-edp-1.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][297] ([i915#11520]) +2 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][298] ([i915#11520]) +4 other tests skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk8/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][299] ([i915#11520]) +4 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][300] ([i915#11520]) +1 other test skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-dg2:          NOTRUN -> [SKIP][301] ([i915#9683])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          NOTRUN -> [SKIP][302] ([i915#9683])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_psr2_su@page_flip-p010.html
    - shard-dg1:          NOTRUN -> [SKIP][303] ([i915#9683]) +1 other test skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-pr-cursor-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][304] ([i915#9732]) +10 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_psr@fbc-pr-cursor-mmap-cpu.html

  * igt@kms_psr@fbc-psr-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][305] ([i915#9688]) +8 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-4/igt@kms_psr@fbc-psr-dpms.html

  * igt@kms_psr@fbc-psr-no-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][306] ([i915#9732]) +11 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_psr@fbc-psr-no-drrs.html

  * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][307] ([i915#1072] / [i915#9732]) +29 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][308] ([i915#1072] / [i915#9732]) +15 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_psr@psr2-primary-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][309] ([i915#1072] / [i915#9732]) +8 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_psr@psr2-primary-mmap-gtt.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-tglu:         NOTRUN -> [SKIP][310] ([i915#5289])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg1:          NOTRUN -> [SKIP][311] ([i915#5289])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-snb:          NOTRUN -> [ABORT][312] ([i915#13179]) +1 other test abort
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-snb7/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          NOTRUN -> [FAIL][313] ([IGT#160])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_sysfs_edid_timing.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-tglu:         NOTRUN -> [SKIP][314] ([i915#8623])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][315] ([i915#8623])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
    - shard-dg2:          NOTRUN -> [SKIP][316] ([i915#8623])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vblank@ts-continuation-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][317] ([i915#12276]) +1 other test incomplete
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk9/igt@kms_vblank@ts-continuation-suspend.html

  * igt@kms_vrr@flip-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][318] ([i915#3555] / [i915#8808])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_vrr@flip-suspend.html

  * igt@kms_vrr@lobf:
    - shard-rkl:          NOTRUN -> [SKIP][319] ([i915#11920])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_vrr@lobf.html
    - shard-dg1:          NOTRUN -> [SKIP][320] ([i915#11920])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_vrr@lobf.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-dg1:          NOTRUN -> [SKIP][321] ([i915#9906])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-tglu-1:       NOTRUN -> [SKIP][322] ([i915#9906])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-glk:          NOTRUN -> [SKIP][323] ([i915#2437])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk8/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-dg2:          NOTRUN -> [SKIP][324] ([i915#2437])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_writeback@writeback-fb-id.html
    - shard-tglu-1:       NOTRUN -> [SKIP][325] ([i915#2437])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-rkl:          NOTRUN -> [SKIP][326] ([i915#2437] / [i915#9412])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_writeback@writeback-pixel-formats.html
    - shard-dg1:          NOTRUN -> [SKIP][327] ([i915#2437] / [i915#9412])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@global-sseu-config:
    - shard-dg2:          NOTRUN -> [SKIP][328] ([i915#7387])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@perf@global-sseu-config.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][329] +6 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg1:          NOTRUN -> [SKIP][330] ([i915#8516]) +1 other test skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][331] ([i915#8516])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-write:
    - shard-dg2:          NOTRUN -> [SKIP][332] ([i915#3291] / [i915#3708]) +1 other test skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-5/igt@prime_vgem@basic-write.html
    - shard-mtlp:         NOTRUN -> [SKIP][333] ([i915#10216] / [i915#3708])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][334] ([i915#3708] / [i915#4077])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-write-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][335] ([i915#3708])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@prime_vgem@fence-write-hang.html
    - shard-dg2:          NOTRUN -> [SKIP][336] ([i915#3708])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-5/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@bind-unbind-vf@vf-1:
    - shard-tglu-1:       NOTRUN -> [FAIL][337] ([i915#12910]) +9 other tests fail
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html

  * igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-2:
    - shard-mtlp:         NOTRUN -> [FAIL][338] ([i915#12910]) +9 other tests fail
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-2.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-dg1:          NOTRUN -> [SKIP][339] ([i915#9917])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          [ABORT][340] ([i915#13427]) -> [PASS][341]
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg2-5/igt@gem_create@create-ext-cpu-access-big.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_eio@in-flight-10ms:
    - shard-mtlp:         [ABORT][342] -> [PASS][343]
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-mtlp-7/igt@gem_eio@in-flight-10ms.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@gem_eio@in-flight-10ms.html

  * igt@gem_eio@in-flight-1us:
    - shard-mtlp:         [ABORT][344] ([i915#13193]) -> [PASS][345]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-mtlp-7/igt@gem_eio@in-flight-1us.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@gem_eio@in-flight-1us.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [INCOMPLETE][346] ([i915#11441] / [i915#13304]) -> [PASS][347] +1 other test pass
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg2-4/igt@gem_exec_suspend@basic-s0@smem.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-glk:          [INCOMPLETE][348] ([i915#13196]) -> [PASS][349] +1 other test pass
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk6/igt@gem_exec_suspend@basic-s3@smem.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk9/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_module_load@load:
    - shard-glk:          ([PASS][350], [PASS][351], [PASS][352], [PASS][353], [PASS][354], [PASS][355], [PASS][356], [PASS][357], [PASS][358], [PASS][359], [PASS][360], [PASS][361], [PASS][362], [PASS][363], [PASS][364], [PASS][365], [PASS][366], [PASS][367], [DMESG-WARN][368], [PASS][369], [PASS][370], [PASS][371]) ([i915#118]) -> ([PASS][372], [PASS][373], [PASS][374], [PASS][375], [PASS][376], [PASS][377], [PASS][378], [PASS][379], [PASS][380], [PASS][381], [PASS][382], [PASS][383], [PASS][384], [PASS][385], [PASS][386], [PASS][387], [PASS][388], [PASS][389], [PASS][390], [PASS][391], [PASS][392], [PASS][393], [PASS][394])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk2/igt@i915_module_load@load.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk4/igt@i915_module_load@load.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk1/igt@i915_module_load@load.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk3/igt@i915_module_load@load.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk7/igt@i915_module_load@load.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk6/igt@i915_module_load@load.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk6/igt@i915_module_load@load.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk8/igt@i915_module_load@load.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk2/igt@i915_module_load@load.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk1/igt@i915_module_load@load.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk8/igt@i915_module_load@load.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk3/igt@i915_module_load@load.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk4/igt@i915_module_load@load.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk9/igt@i915_module_load@load.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk7/igt@i915_module_load@load.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk9/igt@i915_module_load@load.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk8/igt@i915_module_load@load.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk1/igt@i915_module_load@load.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk7/igt@i915_module_load@load.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk7/igt@i915_module_load@load.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk6/igt@i915_module_load@load.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk2/igt@i915_module_load@load.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk6/igt@i915_module_load@load.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk8/igt@i915_module_load@load.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk6/igt@i915_module_load@load.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk4/igt@i915_module_load@load.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk8/igt@i915_module_load@load.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk4/igt@i915_module_load@load.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk8/igt@i915_module_load@load.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk4/igt@i915_module_load@load.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk6/igt@i915_module_load@load.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk3/igt@i915_module_load@load.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk8/igt@i915_module_load@load.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk7/igt@i915_module_load@load.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk1/igt@i915_module_load@load.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk3/igt@i915_module_load@load.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk7/igt@i915_module_load@load.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk1/igt@i915_module_load@load.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk2/igt@i915_module_load@load.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk9/igt@i915_module_load@load.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk7/igt@i915_module_load@load.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk2/igt@i915_module_load@load.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk7/igt@i915_module_load@load.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk1/igt@i915_module_load@load.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk9/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@gem-execbuf-stress@smem0:
    - shard-dg1:          [DMESG-WARN][395] ([i915#4423]) -> [PASS][396] +2 other tests pass
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg1-12/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-18/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][397] -> [PASS][398]
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-snb2/igt@i915_pm_rps@reset.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-snb7/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [DMESG-FAIL][399] ([i915#12061]) -> [PASS][400] +1 other test pass
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-mtlp-1/igt@i915_selftest@live@workarounds.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@i915_selftest@live@workarounds.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-rkl:          [FAIL][401] ([i915#13566]) -> [PASS][402] +2 other tests pass
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-random-128x42:
    - shard-tglu:         [FAIL][403] ([i915#13566]) -> [PASS][404] +7 other tests pass
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-tglu-10/igt@kms_cursor_crc@cursor-random-128x42.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_cursor_crc@cursor-random-128x42.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-snb:          [SKIP][405] -> [PASS][406] +4 other tests pass
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-snb5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-snb5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-tglu:         [FAIL][407] ([i915#11989]) -> [PASS][408] +2 other tests pass
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-tglu-7/igt@kms_flip@plain-flip-fb-recreate.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-7/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          [FAIL][409] ([i915#8717]) -> [PASS][410]
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg2-2/igt@kms_pm_rpm@i2c.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-1/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [SKIP][411] ([i915#9519]) -> [PASS][412] +1 other test pass
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_rotation_crc@sprite-rotation-180:
    - shard-rkl:          [DMESG-WARN][413] ([i915#12964]) -> [PASS][414] +1 other test pass
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-rkl-2/igt@kms_rotation_crc@sprite-rotation-180.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-1/igt@kms_rotation_crc@sprite-rotation-180.html

  * igt@kms_setmode@basic@pipe-b-edp-1:
    - shard-mtlp:         [FAIL][415] ([i915#5465]) -> [PASS][416]
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-mtlp-6/igt@kms_setmode@basic@pipe-b-edp-1.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-6/igt@kms_setmode@basic@pipe-b-edp-1.html

  * igt@perf_pmu@module-unload:
    - shard-mtlp:         [INCOMPLETE][417] -> [PASS][418]
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-mtlp-5/igt@perf_pmu@module-unload.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-4/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@gem_eio@in-flight-suspend:
    - shard-glk:          [INCOMPLETE][419] ([i915#13197] / [i915#13390]) -> [INCOMPLETE][420] ([i915#13390])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk7/igt@gem_eio@in-flight-suspend.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk2/igt@gem_eio@in-flight-suspend.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [DMESG-WARN][421] ([i915#13475]) -> [ABORT][422] ([i915#10131] / [i915#10887] / [i915#13493])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          [DMESG-WARN][423] ([i915#10887] / [i915#13475]) -> [ABORT][424] ([i915#10887] / [i915#9820])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@gem-evict-pwrite:
    - shard-rkl:          [DMESG-WARN][425] ([i915#12964]) -> [SKIP][426] ([i915#13328])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-rkl-2/igt@i915_pm_rpm@gem-evict-pwrite.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-1/igt@i915_pm_rpm@gem-evict-pwrite.html

  * igt@i915_selftest@mock:
    - shard-glk:          [DMESG-WARN][427] ([i915#1982] / [i915#9311]) -> [DMESG-WARN][428] ([i915#9311])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk9/igt@i915_selftest@mock.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk1/igt@i915_selftest@mock.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
    - shard-dg1:          [SKIP][429] ([i915#4423] / [i915#6095]) -> [SKIP][430] ([i915#6095])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg1-13/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][431] ([i915#7118] / [i915#9424]) -> [TIMEOUT][432] ([i915#7173])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg2-3/igt@kms_content_protection@atomic-dpms.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [TIMEOUT][433] ([i915#7173]) -> [SKIP][434] ([i915#9424])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg2-10/igt@kms_content_protection@lic-type-0.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-1/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          [FAIL][435] ([i915

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/index.html

--===============3280262705855440190==
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
<tr><td><b>Series:</b></td><td>Add AS_SDP to fastset (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/137035/">https://patchwork.freedesktop.org/series/137035/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_137035v5/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_137035v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16041_full -&gt; Patchwork_137035v=
5_full</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_137035v5_full need to be ver=
ified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_137035v5_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v=
5/index.html</p>
<h2>Participating hosts (11 -&gt; 12)</h2>
<p>Additional (1): shard-dg2-set2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
137035v5_full:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-tglu-6/igt@i915_suspend@basic-s3-without-i915.html">INC=
OMPLETE</a> ([i915#7443]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_137035v5/shard-tglu-9/igt@i915_suspend@basic-s3-without-=
i915.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_137035v5_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@api_intel_bb@blit-reloc-k=
eep-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@api_intel_bb@object-reloc-=
keep-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> ([i915#11078])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@device_reset@unbind-cold-=
reset-rebind.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-tglu-9/igt@device_reset@unbind-reset-rebind.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137=
035v5/shard-tglu-6/igt@device_reset@unbind-reset-rebind.html">ABORT</a> ([i=
915#12817] / [i915#5507])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@drm_fdinfo@busy-idle@vcs1=
.html">SKIP</a> ([i915#8414]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@drm_fdinfo@busy@rcs0.html"=
>SKIP</a> ([i915#8414]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@gem_basic@multigpu-create=
-close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@gem_ccs@block-copy-compre=
ssed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@gem_ccs@block-multicopy-i=
nplace.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-smem-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gem_ccs@suspend-resume@lin=
ear-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> ([i915#7697]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@gem_create@create-ext-cpu=
-access-sanity-check.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@file:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-snb7/igt@gem_ctx_persistence@file.ht=
ml">SKIP</a> ([i915#1099]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@gem_ctx_persistence@hang.=
html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@gem_ctx_sseu@invalid-sseu=
.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@gem_exec_balancer@bonded-d=
ual.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@gem_exec_balancer@bonded-=
false-hang.html">SKIP</a> ([i915#4812]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@gem_exec_balancer@bonded-=
pair.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@gem_exec_balancer@bonded-=
sync.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@gem_exec_balancer@parallel=
-balancer.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@gem_exec_balancer@paralle=
l-keep-submit-fence.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-channel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@gem_exec_fence@syncobj-cha=
nnel.html">DMESG-WARN</a> ([i915#12964]) +5 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@gem_exec_flush@basic-batc=
h-kernel-default-wb.html">SKIP</a> ([i915#3539] / [i915#4852]) +2 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@gem_exec_flush@basic-uc-p=
rw-default.html">SKIP</a> ([i915#3539]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-=
read-noreloc.html">SKIP</a> ([i915#3281]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-w=
c-noreloc.html">SKIP</a> ([i915#3281]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gem_exec_reloc@basic-wc.ht=
ml">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@gem_exec_reloc@basic-writ=
e-cpu-active.html">SKIP</a> ([i915#3281]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@thriceslice:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-snb7/igt@gem_exec_schedule@thricesli=
ce.html">SKIP</a> +226 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3-devices@smem:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-mtlp-7/igt@gem_exec_suspend@basic-s3-devices@smem.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_137035v5/shard-mtlp-7/igt@gem_exec_suspend@basic-s3-devices@smem.html">A=
BORT</a> ([i915#13193]) +2 other tests abort</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-5/igt@gem_exec_suspend@basic-s4-=
devices.html">ABORT</a> ([i915#7975] / [i915#8213]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-4/igt@gem_fenced_exec_thrash@no=
-spare-fences.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@gem_fenced_exec_thrash@no=
-spare-fences-busy.html">SKIP</a> ([i915#4860]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@gem_lmem_swapping@heavy-v=
erify-random.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@gem_lmem_swapping@paralle=
l-random-verify.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@gem_lmem_swapping@paralle=
l-random-verify-ccs.html">SKIP</a> ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@gem_lmem_swapping@paralle=
l-random-verify-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-glk8/igt@gem_lmem_swapping@smem-oom.=
html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1370=
35v5/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([=
i915#5493]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@gem_lmem_swapping@verify.h=
tml">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@gem_mmap_gtt@cpuset-basic=
-small-copy.html">SKIP</a> ([i915#4077]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@gem_mmap_gtt@fault-concur=
rent-x.html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear-via-pagefault:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-mtlp-8/igt@gem_mmap_offset@clear-via-pagefault.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
137035v5/shard-mtlp-7/igt@gem_mmap_offset@clear-via-pagefault.html">ABORT</=
a> ([i915#10729]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@gem_mmap_wc@close.html">S=
KIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@gem_mmap_wc@copy.html">SKI=
P</a> ([i915#4083]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc-unflushed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@gem_mmap_wc@write-cpu-rea=
d-wc-unflushed.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@gem_partial_pwrite_pread@=
writes-after-reads-uncached.html">SKIP</a> ([i915#3282]) +7 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@gem_pwrite@basic-exhaustio=
n.html">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@gem_pxp@protected-encrypt=
ed-src-copy-not-readible.html">SKIP</a> ([i915#4270]) +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@gem_pxp@protected-raw-src-=
copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gem_pxp@reject-modify-cont=
ext-protection-off-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@gem_pxp@verify-pxp-stale-b=
uf-optout-execution.html">TIMEOUT</a> ([i915#12917] / [i915#12964])</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gem_readwrite@beyond-eob.h=
tml">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-bad-handle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@gem_readwrite@read-bad-ha=
ndle.html">SKIP</a> ([i915#3282]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@gem_render_copy@y-tiled-m=
c-ccs-to-vebox-yf-tiled.html">SKIP</a> ([i915#8428]) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@gem_render_copy@y-tiled-to=
-vebox-yf-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@gem_set_tiling_vs_gtt.htm=
l">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gem_tiled_partial_pwrite_p=
read@reads.html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@gem_userptr_blits@access-=
control.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@gem_userptr_blits@coherenc=
y-sync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gem_userptr_blits@coherenc=
y-unsync.html">SKIP</a> ([i915#3297])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@gem_userptr_blits@coheren=
cy-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@gem_userptr_blits@create-=
destroy-unsync.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@gem_userptr_blits@forbidd=
en-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@gem_userptr_blits@map-fix=
ed-invalidate.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gem_userptr_blits@relocati=
ons.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gem_userptr_blits@sd-probe=
.html">SKIP</a> ([i915#3297] / [i915#4958])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@gen9_exec_parse@allowed-si=
ngle.html">SKIP</a> ([i915#2856]) +2 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@gen9_exec_parse@allowed-s=
ingle.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@gen9_exec_parse@bb-chained=
.html">SKIP</a> ([i915#2527]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@gen9_exec_parse@bb-oversi=
ze.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@gen9_exec_parse@bb-start-=
cmd.html">SKIP</a> ([i915#2527]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@i915_fb_tiling.html">SKIP=
</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@i915_module_load@reload-w=
ith-fault-injection.html">DMESG-WARN</a> ([i915#13475])</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_137035v5/shard-tglu-4/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> ([i915#10887] / [i915#12817] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@i915_pm_freq_api@freq-susp=
end.html">SKIP</a> ([i915#8399]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137=
035v5/shard-dg2-1/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a=
> ([i915#12455]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@i915_pm_freq_mult@media-f=
req@gt0.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@i915_pm_rc6_residency@rc6=
-idle.html">WARN</a> ([i915#2681]) +2 other tests warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_137035v5/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html"=
>FAIL</a> ([i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_137035v5/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html"=
>FAIL</a> ([i915#12739] / [i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@i915_pm_rps@min-max-confi=
g-idle.html">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@i915_pm_rps@thresholds-id=
le-park.html">SKIP</a> ([i915#11681]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@i915_pm_rps@thresholds-pa=
rk.html">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@i915_query@test-query-geo=
metry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@i915_selftest@mock.html">=
DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@i915_selftest@mock@memory_=
region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_addfb_basic@basic-y-t=
iled-legacy.html">SKIP</a> ([i915#4215])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_addfb_basic@invalid-s=
mem-bo-on-discrete.html">SKIP</a> ([i915#12454] / [i915#12712])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_addfb_basic@tile-pitc=
h-mismatch.html">SKIP</a> ([i915#4212]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs-cc.html">SKIP</a> ([i915#8=
709]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a> ([i915#8709]=
) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_async_flips@invalid-as=
ync-flip-atomic.html">SKIP</a> ([i915#12967])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-glk8/igt@kms_atomic_transition@modes=
et-transition-nonblocking.html">FAIL</a> ([i915#12177])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-glk8/igt@kms_atomic_transition@modes=
et-transition-nonblocking@2x-outputs.html">FAIL</a> ([i915#11859])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769=
] / [i915#3555])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#176=
9] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i9=
15#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:<=
/p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-tran=
sition@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_137035v5/shard-tglu-9/igt@kms_atomic_transit=
ion@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#1180=
8]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-r=
otate-0.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_big_fb@4-tiled-64bpp-=
rotate-90.html">SKIP</a> ([i915#5286]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_big_fb@4-tiled-8bpp-r=
otate-90.html">SKIP</a> ([i915#4538] / [i915#5286]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.=
html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@kms_big_fb@4-tiled-addfb-=
size-offset-overflow.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-str=
ide-64bpp-rotate-180-hflip.html">DMESG-FAIL</a> ([i915#11627] / [i915#13314=
])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-r=
otate-270.html">SKIP</a> ([i915#3638]) +4 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_big_fb@y-tiled-64bpp-=
rotate-270.html">SKIP</a> ([i915#3638]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@kms_big_fb@y-tiled-addfb-=
size-offset-overflow.html">SKIP</a> ([i915#6187])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@kms_big_fb@yf-tiled-64bpp=
-rotate-180.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190]) +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_big_fb@yf-tiled-8bpp-=
rotate-90.html">SKIP</a> ([i915#4538]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_big_fb@yf-tiled-addfb.=
html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_ccs@bad-aux-stride-4-t=
iled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#10307] / [i915#609=
5]) +119 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_ccs@bad-pixel-format-=
4-tiled-dg2-rc-ccs-cc@pipe-c-edp-1.html">SKIP</a> ([i915#6095]) +34 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4=
-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4.html">SKIP</a> ([i915#6095]) +165 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_ccs@ccs-on-another-bo=
-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +39 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_ccs@crc-primary-basic-=
4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-7/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +61 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12805])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12805])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_ccs@crc-primary-suspe=
nd-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#6095]) +29 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#6095]) +15 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer=
-y-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / =
[i915#6095]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_cdclk@mode-transition.=
html">SKIP</a> ([i915#3742]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_cdclk@mode-transition=
-all-outputs.html">SKIP</a> ([i915#3742]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-8/igt@kms_cdclk@plane-scaling@pi=
pe-d-hdmi-a-1.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-5/igt@kms_chamelium_frames@dp-cr=
c-fast.html">SKIP</a> ([i915#11151] / [i915#7828]) +6 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_chamelium_frames@dp-c=
rc-fast.html">SKIP</a> ([i915#11151] / [i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-single:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_chamelium_frames@hdmi-=
crc-single.html">SKIP</a> ([i915#11151] / [i915#7828]) +5 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-after-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_chamelium_hpd@dp-hpd-=
after-suspend.html">SKIP</a> ([i915#11151] / [i915#7828]) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-=
enable-disable-mode.html">SKIP</a> ([i915#11151] / [i915#7828]) +4 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_chamelium_hpd@hdmi-hp=
d-storm-disable.html">SKIP</a> ([i915#11151] / [i915#7828]) +13 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_content_protection@at=
omic-dpms.html">SKIP</a> ([i915#7116] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-10/igt@kms_content_protection@at=
omic-dpms@pipe-a-dp-4.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_content_protection@dp-=
mst-type-0.html">SKIP</a> ([i915#3116])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_content_protection@dp=
-mst-type-0.html">SKIP</a> ([i915#3299]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_content_protection@le=
gacy.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])=
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_content_protection@me=
i-interface.html">SKIP</a> ([i915#8063] / [i915#9433])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_content_protection@sr=
m.html">SKIP</a> ([i915#7116])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_cursor_crc@cursor-off=
screen-32x10.html">SKIP</a> ([i915#3555] / [i915#8814]) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_cursor_crc@cursor-off=
screen-32x32.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_cursor_crc@cursor-onsc=
reen-512x512.html">SKIP</a> ([i915#13049]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_cursor_crc@cursor-ran=
dom-32x32.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> ([i915#13049]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-4/igt@kms_cursor_crc@cursor-ran=
dom-64x21.html">SKIP</a> ([i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x32.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> ([i915#13049]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_cursor_legacy@2x-flip=
-vs-cursor-legacy.html">SKIP</a> ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_cursor_legacy@2x-long-=
cursor-vs-flip-legacy.html">SKIP</a> ([i915#13046] / [i915#5354]) +3 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_cursor_legacy@flip=
-vs-cursor-atomic-transitions-varying-size.html">DMESG-WARN</a> ([i915#1296=
4]) +5 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_cursor_legacy@modeset-=
atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915=
#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4103] / [i915#4213])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_display_modes@extended=
-mode-basic.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_dp_aux_dev.html">SKIP=
</a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_dp_linktrain_fallback=
@dp-fallback.html">SKIP</a> ([i915#12402])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_draw_crc@draw-method-=
mmap-gtt.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp=
-with-bpc.html">SKIP</a> ([i915#3840])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_dsc@dsc-with-bpc-form=
ats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> ([i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_feature_discovery@dis=
play-2x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@kms_feature_discovery@dis=
play-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_feature_discovery@disp=
lay-4x.html">SKIP</a> ([i915#1839]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_feature_discovery@dis=
play-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_feature_discovery@psr=
2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@kms_flip@2x-flip-vs-pannin=
g.html">SKIP</a> ([i915#9934]) +2 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_flip@2x-flip-vs-panni=
ng.html">SKIP</a> ([i915#3637]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_flip@2x-nonexisting-f=
b-interruptible.html">SKIP</a> ([i915#3637]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_flip@2x-plain-flip.htm=
l">SKIP</a> ([i915#9934]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_flip@2x-plain-flip-fb=
-recreate-interruptible.html">SKIP</a> ([i915#9934]) +9 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-snb5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_137035v5/shard-snb5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible=
.html">FAIL</a> ([i915#11989]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-tglu-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interrup=
tible.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_137035v5/shard-tglu-9/igt@kms_flip@flip-vs-absolute-wf_vblank=
-interruptible.html">FAIL</a> ([i915#11989]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_flip@flip-vs-fences.h=
tml">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_flip@flip-vs-fences-in=
terruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_137035v5/shard-dg1-14/igt@kms_flip@flip-vs-suspend-interruptible.html">D=
MESG-WARN</a> ([i915#4423]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_flip@flip-vs-suspend-=
interruptible@d-hdmi-a4.html">DMESG-WARN</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_flip@plain-flip-fb-rec=
reate.html">FAIL</a> ([i915#11989]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-64bpp-4tile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3=
555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i9=
15#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#=
3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2587] / [i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a=
> ([i915#2672] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2587] / [i9=
15#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html">=
SKIP</a> ([i915#2672] / [i915#3555] / [i915#8813]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> ([i915#2672] /=
 [i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2587] / [i915=
#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> ([i915#2672] / [i915#=
3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#35=
55]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i91=
5#2587] / [i915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-downscaling.html">SKIP</a> ([i915#3555] / [i915#=
8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr=
-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_frontbuffer_track=
ing@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">FAIL</a> ([i915#6880]) +1=
 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> +48 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-indfb-pgflip-blt.html">SKIP</a> ([i915#1825]) +8 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> ([i915#5354]) +10 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bc-rgb101010-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +8 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-5/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> ([i915#3458]) +7 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +29=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#1825]) +23 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-blt.html">SKIP</a> ([i915#3458]) +26 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_frontbuffer_tracking@=
pipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_frontbuffer_tracking@=
psr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> +42 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> ([i915#3023]) +17 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +4 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_frontbuffer_tracking@=
psr-rgb565-draw-pwrite.html">SKIP</a> +38 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_hdr@bpc-switch-dpms.ht=
ml">SKIP</a> ([i915#3555] / [i915#8228])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_hdr@bpc-switch-dpms.h=
tml">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-dg2-10/igt@kms_hdr@static-toggle.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard=
-dg2-3/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] / [i915#8228])=
</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_joiner@basic-big-joine=
r.html">SKIP</a> ([i915#10656])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-3/igt@kms_joiner@basic-big-join=
er.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_joiner@invalid-modeset=
-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-dg2-10/igt@kms_joiner@invalid-modeset-force-big-joiner.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_137035v5/shard-dg2-3/igt@kms_joiner@invalid-modeset-force-big-joine=
r.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_joiner@invalid-modeset=
-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_joiner@invalid-modese=
t-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_joiner@switch-modeset=
-ultra-joiner-big-joiner.html">SKIP</a> ([i915#13522])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> ([i915#6301])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_panel_fitting@legacy.=
html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-mtlp-3/igt@kms_plane@pixel-format-source-clamping.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_137035v5/shard-mtlp-1/igt@kms_plane@pixel-format-source-clamping.html">D=
MESG-WARN</a> ([i915#1982]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_plane_lowres@tiling-x=
.html">SKIP</a> ([i915#11614] / [i915#3582]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_plane_lowres@tiling-x=
@pipe-a-edp-1.html">SKIP</a> ([i915#10226] / [i915#11614] / [i915#3582]) +2=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_plane_multiple@tiling=
-yf.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-4/igt@kms_plane_scaling@intel-m=
ax-src-size.html">SKIP</a> ([i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-pixel-format@pipe-c.html">SKIP</a> ([i915#12247])=
 +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-rotation.html">SKIP</a> ([i915#12247] / [i915#9423=
]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-glk8/igt@kms_plane_scaling@plane-ups=
cale-20x20-with-rotation.html">SKIP</a> +150 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247]) +7 =
other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247]) +9=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i=
915#6953]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_plane_scaling@planes-=
downscale-factor-0-5-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247]) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i9=
15#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-a.html">SKIP</a> ([i915#12247=
]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-b:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#1224=
7]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_pm_backlight@fade.html=
">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_pm_backlight@fade-wit=
h-suspend.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_pm_dc@dc5-retention-fl=
ops.html">SKIP</a> ([i915#3828])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_pm_dc@dc5-retention-f=
lops.html">SKIP</a> ([i915#3828])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_pm_dc@dc6-psr.html">S=
KIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> ([i915#9340])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.h=
tml">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp-st=
ress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-4/igt@kms_pm_rpm@modeset-non-lp=
sp.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_prime@basic-crc-vgem.=
html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> ([i915#6524])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_prime@basic-modeset-hy=
brid.html">SKIP</a> ([i915#6524] / [i915#6805])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_psr2_sf@fbc-pr-overla=
y-plane-move-continuous-sf.html">SKIP</a> ([i915#12316]) +3 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_psr2_sf@fbc-pr-overlay=
-plane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +3 other tests sk=
ip</li>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-snb1/igt@kms_psr2_sf@fbc-pr-overlay-=
plane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +7 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms_psr2_sf@fbc-psr2-curs=
or-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +11 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf@p=
ipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-move-continuous-exceed-fully-sf@pipe-a-edp-1.html">SKIP</a> ([i91=
5#9808])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_psr2_sf@pr-cursor-pla=
ne-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-glk8/igt@kms_psr2_sf@pr-cursor-plane=
-move-continuous-sf.html">SKIP</a> ([i915#11520]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-2/igt@kms_psr2_sf@pr-overlay-pla=
ne-update-continuous-sf.html">SKIP</a> ([i915#11520]) +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_psr2_sf@pr-overlay-pr=
imary-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> ([i915#9683])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_psr2_su@page_flip-p01=
0.html">SKIP</a> ([i915#9683]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_psr@fbc-pr-cursor-mma=
p-cpu.html">SKIP</a> ([i915#9732]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-4/igt@kms_psr@fbc-psr-dpms.html=
">SKIP</a> ([i915#9688]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-2/igt@kms_psr@fbc-psr-no-drrs.h=
tml">SKIP</a> ([i915#9732]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@kms_psr@fbc-psr2-sprite-m=
map-gtt.html">SKIP</a> ([i915#1072] / [i915#9732]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_psr@psr-sprite-plane-o=
noff.html">SKIP</a> ([i915#1072] / [i915#9732]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_psr@psr2-primary-mmap-=
gtt.html">SKIP</a> ([i915#1072] / [i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-snb7/igt@kms_selftest@drm_framebuffe=
r.html">ABORT</a> ([i915#13179]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-7/igt@kms_sysfs_edid_timing.html=
">FAIL</a> ([IGT#160])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-glk9/igt@kms_vblank@ts-continuation-=
suspend.html">INCOMPLETE</a> ([i915#12276]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@kms_vrr@flip-suspend.html=
">SKIP</a> ([i915#3555] / [i915#8808])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@kms_vrr@lobf.html">SKIP</a=
> ([i915#11920])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-12/igt@kms_vrr@lobf.html">SKIP</=
a> ([i915#11920])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@kms_vrr@seamless-rr-switc=
h-drrs.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_vrr@seamless-rr-switc=
h-vrr.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-glk8/igt@kms_writeback@writeback-che=
ck-output-xrgb2101010.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> ([i915#2437])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@kms_writeback@writeback-f=
b-id.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-5/igt@kms_writeback@writeback-pi=
xel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-17/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@perf@global-sseu-config.ht=
ml">SKIP</a> ([i915#7387])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@perf_pmu@event-wait@rcs0.h=
tml">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-13/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a> ([i915#8516]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-rkl-3/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-5/igt@prime_vgem@basic-write.htm=
l">SKIP</a> ([i915#3291] / [i915#3708]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@prime_vgem@basic-write.ht=
ml">SKIP</a> ([i915#10216] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-4/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> ([i915#3708] / [i915#4077])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@prime_vgem@fence-write-ha=
ng.html">SKIP</a> ([i915#3708])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg2-5/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf@vf-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-tglu-1/igt@sriov_basic@bind-unbind-v=
f@vf-1.html">FAIL</a> ([i915#12910]) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-2:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-mtlp-5/igt@sriov_basic@enable-vfs-au=
toprobe-on@numvfs-2.html">FAIL</a> ([i915#12910]) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each-numvfs-all.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-dg2-5/igt@gem_create@create-ext-cpu-access-big.html">AB=
ORT</a> ([i915#13427]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_137035v5/shard-dg2-7/igt@gem_create@create-ext-cpu-access-b=
ig.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-10ms:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-mtlp-7/igt@gem_eio@in-flight-10ms.html">ABORT</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/sha=
rd-mtlp-5/igt@gem_eio@in-flight-10ms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-1us:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-mtlp-7/igt@gem_eio@in-flight-1us.html">ABORT</a> ([i915=
#13193]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_137035v5/shard-mtlp-3/igt@gem_eio@in-flight-1us.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-dg2-4/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLE=
TE</a> ([i915#11441] / [i915#13304]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-3/igt@gem_exec_suspend@bas=
ic-s0@smem.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-glk6/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLET=
E</a> ([i915#13196]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_137035v5/shard-glk9/igt@gem_exec_suspend@basic-s3@smem.html">=
PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_16041/shard-glk2/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk4/igt@i9=
15_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_16041/shard-glk1/igt@i915_module_load@load.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-=
glk3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk7/igt@i915_module_load@load.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
6041/shard-glk6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk6/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_16041/shard-glk8/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk2/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_16041/shard-glk1/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard=
-glk8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk3/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
16041/shard-glk4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk9/igt@i915_module=
_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_16041/shard-glk7/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk9/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_16041/shard-glk8/igt@i915_module_load@load.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shar=
d-glk1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk7/igt@i915_module_load@load=
.html">DMESG-WARN</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_16041/shard-glk7/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-glk6/igt@i9=
15_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_16041/shard-glk2/igt@i915_module_load@load.html">PASS</=
a>) ([i915#118]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_137035v5/shard-glk6/igt@i915_module_load@load.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-=
glk8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk6/igt@i915_module_load@=
load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_137035v5/shard-glk4/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk=
8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk4/igt@i915_module_load@loa=
d.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_137035v5/shard-glk8/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk4/=
igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_137035v5/shard-glk6/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_137035v5/shard-glk3/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk8/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_137035v5/shard-glk7/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
137035v5/shard-glk1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk3/igt@i9=
15_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_137035v5/shard-glk7/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137=
035v5/shard-glk1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk2/igt@i915_=
module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_137035v5/shard-glk9/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035=
v5/shard-glk7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk2/igt@i915_mod=
ule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_137035v5/shard-glk7/igt@i915_module_load@load.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/=
shard-glk1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-glk9/igt@i915_module=
_load@load.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@smem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-dg1-12/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html">D=
MESG-WARN</a> ([i915#4423]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_137035v5/shard-dg1-18/igt@i915_pm_rpm@gem-execbuf-stre=
ss@smem0.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-snb2/igt@i915_pm_rps@reset.html">INCOMPLETE</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard=
-snb7/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-mtlp-1/igt@i915_selftest@live@workarounds.html">DMESG-F=
AIL</a> ([i915#12061]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_137035v5/shard-mtlp-3/igt@i915_selftest@live@workarounds.ht=
ml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-128x42.html">F=
AIL</a> ([i915#13566]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_137035v5/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-128=
x42.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-tglu-10/igt@kms_cursor_crc@cursor-random-128x42.html">F=
AIL</a> ([i915#13566]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_137035v5/shard-tglu-5/igt@kms_cursor_crc@cursor-random-128x=
42.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-snb5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-tran=
sitions-varying-size.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_137035v5/shard-snb5/igt@kms_cursor_legacy@curs=
orb-vs-flipa-atomic-transitions-varying-size.html">PASS</a> +4 other tests =
pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-tglu-7/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</=
a> ([i915#11989]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_137035v5/shard-tglu-7/igt@kms_flip@plain-flip-fb-recreate.html">=
PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-dg2-2/igt@kms_pm_rpm@i2c.html">FAIL</a> ([i915#8717]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5=
/shard-dg2-1/igt@kms_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP=
</a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_137035v5/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-rkl-2/igt@kms_rotation_crc@sprite-rotation-180.html">DM=
ESG-WARN</a> ([i915#12964]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_137035v5/shard-rkl-1/igt@kms_rotation_crc@sprite-rotat=
ion-180.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-mtlp-6/igt@kms_setmode@basic@pipe-b-edp-1.html">FAIL</a=
> ([i915#5465]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_137035v5/shard-mtlp-6/igt@kms_setmode@basic@pipe-b-edp-1.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-mtlp-5/igt@perf_pmu@module-unload.html">INCOMPLETE</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v=
5/shard-mtlp-4/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-glk7/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a>=
 ([i915#13197] / [i915#13390]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_137035v5/shard-glk2/igt@gem_eio@in-flight-suspend.h=
tml">INCOMPLETE</a> ([i915#13390])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection=
.html">DMESG-WARN</a> ([i915#13475]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_137035v5/shard-mtlp-8/igt@i915_module_load@re=
load-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#10887] / [i=
915#13493])</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.=
html">DMESG-WARN</a> ([i915#10887] / [i915#13475]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg2-10/igt@i915_=
module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10887] / [i9=
15#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-evict-pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-rkl-2/igt@i915_pm_rpm@gem-evict-pwrite.html">DMESG-WARN=
</a> ([i915#12964]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_137035v5/shard-rkl-1/igt@i915_pm_rpm@gem-evict-pwrite.html">SK=
IP</a> ([i915#13328])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-glk9/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915=
#1982] / [i915#9311]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_137035v5/shard-glk1/igt@i915_selftest@mock.html">DMESG-WARN<=
/a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-dg1-13/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-=
rc-ccs-cc.html">SKIP</a> ([i915#4423] / [i915#6095]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v5/shard-dg1-14/igt@kms=
_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#60=
95])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-dg2-3/igt@kms_content_protection@atomic-dpms.html">SKIP=
</a> ([i915#7118] / [i915#9424]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_137035v5/shard-dg2-10/igt@kms_content_protection@=
atomic-dpms.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16041/shard-dg2-10/igt@kms_content_protection@lic-type-0.html">TIME=
OUT</a> ([i915#7173]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_137035v5/shard-dg2-1/igt@kms_content_protection@lic-type-0.h=
tml">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          [FAIL][435] ([i915</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3280262705855440190==--
