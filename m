Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBBBB36DB7
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 17:29:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F36610E680;
	Tue, 26 Aug 2025 15:29:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 539DC10E13F;
 Tue, 26 Aug 2025 15:29:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9091600773866584316=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/psr=3A_Check_PS?=
 =?utf-8?q?R_pause_counter_in_=5F=5Fpsr=5Fwait=5Ffor=5Fidle=5Flocked?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Aug 2025 15:29:55 -0000
Message-ID: <175622219532.271012.15833933180509436528@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250826074457.1992524-1-jouni.hogander@intel.com>
In-Reply-To: <20250826074457.1992524-1-jouni.hogander@intel.com>
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

--===============9091600773866584316==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/psr: Check PSR pause counter in __psr_wait_for_idle_locked
URL   : https://patchwork.freedesktop.org/series/153498/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17070_full -> Patchwork_153498v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_153498v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_153498v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 12)
------------------------------

  Additional (1): shard-dg2-set2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_153498v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglu-1:       NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_fbcon_fbt@fbc-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_153498v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][2] ([i915#8411])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#11078]) +1 other test skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg1:          NOTRUN -> [SKIP][4] ([i915#11078])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@fbdev@read:
    - shard-rkl:          [PASS][5] -> [SKIP][6] ([i915#14544] / [i915#2582])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@fbdev@read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@fbdev@read.html

  * igt@gem_basic@multigpu-create-close:
    - shard-dg1:          NOTRUN -> [SKIP][7] ([i915#7697])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@gem_basic@multigpu-create-close.html

  * igt@gem_busy@semaphore:
    - shard-dg2-9:        NOTRUN -> [SKIP][8] ([i915#3936])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_busy@semaphore.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-dg1:          NOTRUN -> [SKIP][9] ([i915#3555] / [i915#9323])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2-9:        NOTRUN -> [SKIP][10] ([i915#7697])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu-1:       NOTRUN -> [SKIP][11] ([i915#6335])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#8562])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-tglu-1:       NOTRUN -> [SKIP][13] +41 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#8555])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg1:          NOTRUN -> [SKIP][15] ([i915#8555])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#280])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@gem_ctx_sseu@invalid-args.html
    - shard-tglu-1:       NOTRUN -> [SKIP][17] ([i915#280])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#4812]) +2 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-dg1:          NOTRUN -> [SKIP][19] ([i915#4812]) +3 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#4771]) +1 other test skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#4036])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#4525])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-tglu-1:       NOTRUN -> [SKIP][23] ([i915#4525])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#4525])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-dg2-9:        NOTRUN -> [SKIP][25] ([i915#6334]) +2 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_exec_capture@capture-invisible.html
    - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#6334]) +1 other test skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_fence@concurrent:
    - shard-dg2-9:        NOTRUN -> [SKIP][27] ([i915#4812])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#3539] / [i915#4852]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#3539] / [i915#4852]) +3 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@gem_exec_flush@basic-wb-ro-before-default.html

  * igt@gem_exec_reloc@basic-gtt-wc:
    - shard-dg2-9:        NOTRUN -> [SKIP][30] ([i915#3281]) +2 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-wc.html
    - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#3281])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc.html

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#3281]) +6 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@gem_exec_reloc@basic-wc-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3281]) +20 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4537] / [i915#4812]) +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-rkl:          [PASS][35] -> [DMESG-WARN][36] ([i915#12964]) +9 other tests dmesg-warn
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@gem_exec_whisper@basic-queues-priority-all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4860]) +5 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg1:          NOTRUN -> [SKIP][38] ([i915#4860]) +4 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][39] ([i915#4613]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglu-1:       NOTRUN -> [SKIP][40] ([i915#4613]) +1 other test skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify.html
    - shard-glk:          NOTRUN -> [SKIP][41] ([i915#4613]) +3 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk8/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#4613])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][43] -> [TIMEOUT][44] ([i915#5493]) +1 other test timeout
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_media_vme:
    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#284])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#4077]) +8 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-dg2-9:        NOTRUN -> [SKIP][47] ([i915#4077]) +4 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#4077]) +17 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-rkl:          [PASS][49] -> [SKIP][50] ([i915#14544] / [i915#1850])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@gem_mmap_wc@set-cache-level.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-dg2-9:        NOTRUN -> [SKIP][51] ([i915#4083]) +2 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@gem_mmap_wc@write-prefaulted:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#4083]) +3 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@gem_mmap_wc@write-prefaulted.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg2-9:        NOTRUN -> [SKIP][53] ([i915#3282]) +3 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pread@exhaustion:
    - shard-tglu-1:       NOTRUN -> [WARN][54] ([i915#2658])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@gem_pread@exhaustion.html

  * igt@gem_pread@snoop:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#3282]) +9 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@gem_pread@snoop.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          NOTRUN -> [WARN][56] ([i915#14702] / [i915#2658])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pwrite_snooped:
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#3282])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@gem_pwrite_snooped.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#4270]) +2 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4270]) +5 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-11/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-rkl:          [PASS][60] -> [TIMEOUT][61] ([i915#12917] / [i915#12964])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#5190] / [i915#8428]) +7 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][63] ([i915#5190] / [i915#8428]) +3 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#4079]) +2 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg2-9:        NOTRUN -> [SKIP][65] ([i915#4885])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_softpin@evict-snoop.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4885])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#4079]) +2 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@gem_tiled_pread_pwrite.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#3297]) +1 other test skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@gem_userptr_blits@create-destroy-unsync.html
    - shard-tglu-1:       NOTRUN -> [SKIP][69] ([i915#3297])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-dg2-9:        NOTRUN -> [SKIP][70] ([i915#3297]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg2-9:        NOTRUN -> [SKIP][71] ([i915#3281] / [i915#3297])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#3297] / [i915#4958])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@gem_userptr_blits@sd-probe.html
    - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#3297] / [i915#4958])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#3297]) +1 other test skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#3297]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglu:         NOTRUN -> [SKIP][76] ([i915#2527] / [i915#2856]) +2 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#2527]) +3 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#2527])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-tglu-1:       NOTRUN -> [SKIP][79] ([i915#2527] / [i915#2856])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg2-9:        NOTRUN -> [SKIP][80] ([i915#2856]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gen9_exec_parse@secure-batches.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#2856]) +3 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_drm_fdinfo@all-busy-check-all:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#14123])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@i915_drm_fdinfo@all-busy-check-all.html

  * igt@i915_drm_fdinfo@busy-check-all@vecs0:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#11527]) +15 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@i915_drm_fdinfo@busy-check-all@vecs0.html

  * igt@i915_drm_fdinfo@busy-hang@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#14073]) +7 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@i915_drm_fdinfo@busy-hang@rcs0.html

  * igt@i915_drm_fdinfo@virtual-busy-hang-all:
    - shard-dg2-9:        NOTRUN -> [SKIP][85] ([i915#14118])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@i915_drm_fdinfo@virtual-busy-hang-all.html

  * igt@i915_drm_fdinfo@virtual-busy-idle-all:
    - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#14118])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@i915_drm_fdinfo@virtual-busy-idle-all.html

  * igt@i915_module_load@resize-bar:
    - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#6412])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#8399])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#11681] / [i915#6621])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@i915_pm_rps@min-max-config-loaded.html
    - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#11681] / [i915#6621])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@thresholds:
    - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#11681])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@i915_pm_rps@thresholds.html

  * igt@i915_pm_rps@thresholds-idle-park:
    - shard-dg2-9:        NOTRUN -> [SKIP][92] ([i915#11681])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@i915_pm_rps@thresholds-idle-park.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#4387])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@hwconfig_table:
    - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#6245])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@i915_query@hwconfig_table.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#6188])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-11/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_selftest@live@workarounds:
    - shard-dg2-9:        NOTRUN -> [DMESG-FAIL][96] ([i915#12061]) +1 other test dmesg-fail
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-glk:          NOTRUN -> [INCOMPLETE][97] ([i915#4817]) +1 other test incomplete
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-rkl:          [PASS][98] -> [INCOMPLETE][99] ([i915#4817])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-5/igt@i915_suspend@fence-restore-untiled.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-3/igt@i915_suspend@fence-restore-untiled.html

  * igt@i915_suspend@forcewake:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][100] ([i915#4817])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk10/igt@i915_suspend@forcewake.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#7707])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#4212]) +2 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_addfb_basic@no-handle:
    - shard-dg1:          [PASS][103] -> [DMESG-WARN][104] ([i915#4391] / [i915#4423])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-15/igt@kms_addfb_basic@no-handle.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-14/igt@kms_addfb_basic@no-handle.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#9531])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:
    - shard-rkl:          [PASS][106] -> [SKIP][107] ([i915#14544]) +46 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-dg2-9:        NOTRUN -> [SKIP][108] +5 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#5286]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#4538] / [i915#5286]) +5 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#5286]) +1 other test skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu-1:       NOTRUN -> [SKIP][112] ([i915#5286]) +2 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#3638]) +2 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#3638])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-270:
    - shard-dg2-9:        NOTRUN -> [SKIP][115] ([i915#4538] / [i915#5190]) +3 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#4538] / [i915#5190]) +17 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-dg2-9:        NOTRUN -> [SKIP][117] ([i915#5190]) +1 other test skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#5190]) +2 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#4538]) +3 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_busy@extended-modeset-hang-oldfb-with-reset:
    - shard-dg1:          [PASS][120] -> [DMESG-WARN][121] ([i915#4423]) +5 other tests dmesg-warn
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-15/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-14/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#12313])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#6095]) +144 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][124] ([i915#10307] / [i915#6095]) +9 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][125] ([i915#12313]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][126] ([i915#6095]) +29 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#6095]) +29 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#12313])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#12313])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#12313])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#12805])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][133] ([i915#12805])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#6095]) +13 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#14098] / [i915#6095]) +46 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][136] ([i915#6095]) +4 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#10307] / [i915#6095]) +155 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#6095]) +49 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#3742])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#3742]) +1 other test skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][141] ([i915#13781]) +4 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#13783]) +4 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html

  * igt@kms_chamelium_audio@dp-audio-edid:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#11151] / [i915#7828]) +15 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_chamelium_audio@dp-audio-edid.html
    - shard-tglu-1:       NOTRUN -> [SKIP][144] ([i915#11151] / [i915#7828]) +6 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_chamelium_audio@dp-audio-edid.html

  * igt@kms_chamelium_color@degamma:
    - shard-dg2:          NOTRUN -> [SKIP][145] +22 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_edid@vga-edid-read:
    - shard-tglu:         NOTRUN -> [SKIP][146] ([i915#11151] / [i915#7828]) +2 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_chamelium_edid@vga-edid-read.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#11151] / [i915#7828]) +4 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
    - shard-dg2-9:        NOTRUN -> [SKIP][148] ([i915#11151] / [i915#7828]) +3 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#11151] / [i915#7828])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_color@legacy-gamma:
    - shard-rkl:          [PASS][150] -> [SKIP][151] ([i915#12655] / [i915#14544]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_color@legacy-gamma.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_color@legacy-gamma.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][152] ([i915#7116] / [i915#9424])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#3299])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][154] ([i915#3116] / [i915#3299])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2-9:        NOTRUN -> [SKIP][155] ([i915#3299])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][156] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#9424])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#7118])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_content_protection@srm.html
    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#7116])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#7118] / [i915#9424]) +1 other test skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][161] ([i915#12964]) +4 other tests dmesg-warn
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-b-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#3555])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][163] ([i915#13049]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [FAIL][164] ([i915#13566]) +1 other test fail
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-tglu-1:       NOTRUN -> [SKIP][165] ([i915#3555]) +1 other test skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2-9:        NOTRUN -> [SKIP][166] ([i915#13049])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#13049]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#3555]) +9 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][169] ([i915#13566]) +5 other tests fail
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2-9:        NOTRUN -> [SKIP][170] ([i915#3555]) +2 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-64x21:
    - shard-rkl:          [PASS][171] -> [FAIL][172] ([i915#13566]) +2 other tests fail
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-64x21.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-64x21.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][173] ([i915#12358] / [i915#14152])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-5/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - shard-rkl:          [PASS][174] -> [SKIP][175] ([i915#11190] / [i915#14544]) +3 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-dg2-9:        NOTRUN -> [SKIP][176] ([i915#13046] / [i915#5354]) +3 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][177] +5 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#13046] / [i915#5354]) +5 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2-9:        NOTRUN -> [SKIP][179] ([i915#9067])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#9067])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-tglu-1:       NOTRUN -> [SKIP][181] ([i915#4103])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#4103] / [i915#4213]) +2 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
    - shard-dg1:          NOTRUN -> [SKIP][183] ([i915#4103] / [i915#4213])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#9833])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
    - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#9723])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#9723])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-dg1:          NOTRUN -> [SKIP][187] ([i915#13691])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#3804])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_aux_dev:
    - shard-dg2-9:        NOTRUN -> [SKIP][189] ([i915#1257])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_dp_aux_dev.html

  * igt@kms_dp_link_training@non-uhbr-mst:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#13749])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@kms_dp_link_training@non-uhbr-mst.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-dg1:          NOTRUN -> [SKIP][191] ([i915#13749])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#13748])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dp_linktrain_fallback@dsc-fallback:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#13707])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2-9:        NOTRUN -> [SKIP][194] ([i915#8812])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#3840] / [i915#9688])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-tglu-1:       NOTRUN -> [SKIP][196] ([i915#3840])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#3555] / [i915#3840]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#3555] / [i915#3840]) +1 other test skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][199] ([i915#9878])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg1:          NOTRUN -> [SKIP][200] ([i915#3469])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#3469])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#2065] / [i915#4854])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-1x:
    - shard-rkl:          [PASS][203] -> [SKIP][204] ([i915#14544] / [i915#9738])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_feature_discovery@display-1x.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_feature_discovery@display-1x.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#1839])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_feature_discovery@display-2x.html
    - shard-tglu-1:       NOTRUN -> [SKIP][206] ([i915#1839])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-tglu:         NOTRUN -> [SKIP][207] ([i915#1839])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@psr1:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#658])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_feature_discovery@psr1.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg2-9:        NOTRUN -> [SKIP][209] ([i915#658])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_feature_discovery@psr2.html
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#658])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_feature_discovery@psr2.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#4881])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#9934]) +9 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][213] ([i915#9934]) +4 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:
    - shard-dg2-9:        NOTRUN -> [SKIP][214] ([i915#9934])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][215] -> [FAIL][216] ([i915#13027]) +1 other test fail
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][217] ([i915#8381])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][218] -> [TIMEOUT][219] ([i915#14033]) +1 other test timeout
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-snb5/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#3637] / [i915#9934]) +1 other test skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][221] ([i915#3637] / [i915#9934]) +6 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@bo-too-big-interruptible:
    - shard-rkl:          [PASS][222] -> [SKIP][223] ([i915#14544] / [i915#3637]) +9 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_flip@bo-too-big-interruptible.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_flip@bo-too-big-interruptible.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg2-9:        NOTRUN -> [SKIP][224] ([i915#8381])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][225] ([i915#12745] / [i915#4839])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][226] ([i915#12745])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk6/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#2672]) +3 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:
    - shard-rkl:          [PASS][228] -> [SKIP][229] ([i915#14544] / [i915#3555]) +2 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#2672] / [i915#3555])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][231] ([i915#2587] / [i915#2672]) +2 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][232] ([i915#2672] / [i915#3555]) +1 other test skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][233] ([i915#2672] / [i915#3555]) +1 other test skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][234] ([i915#2672] / [i915#3555]) +2 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg2-9:        NOTRUN -> [SKIP][235] ([i915#2672]) +2 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][236] ([i915#2587] / [i915#2672] / [i915#3555])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][237] ([i915#2587] / [i915#2672]) +1 other test skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#2672]) +4 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][239] ([i915#2587] / [i915#2672] / [i915#3555])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][240] ([i915#2672] / [i915#3555])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-dg1:          NOTRUN -> [SKIP][241] ([i915#2672] / [i915#3555])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#2587] / [i915#2672])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#2672] / [i915#3555] / [i915#5190]) +3 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-rkl:          [PASS][244] -> [SKIP][245] ([i915#14544] / [i915#1849] / [i915#5354]) +11 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][246] ([i915#8708]) +9 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-snb:          [PASS][247] -> [SKIP][248] +3 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][249] +39 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-glk:          NOTRUN -> [SKIP][250] +290 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [FAIL][251] ([i915#6880])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#10055])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-glk10:        NOTRUN -> [SKIP][253] +414 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#3458]) +27 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-dg2-9:        NOTRUN -> [SKIP][255] ([i915#8708]) +10 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][256] +30 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#1825]) +6 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#8708]) +22 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#5354]) +46 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][260] ([i915#3458]) +14 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
    - shard-dg2-9:        NOTRUN -> [SKIP][261] ([i915#3458]) +8 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-dg1:          NOTRUN -> [SKIP][262] ([i915#5439])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2-9:        NOTRUN -> [SKIP][263] ([i915#10055])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-dg2-9:        NOTRUN -> [SKIP][264] ([i915#9766])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#3023]) +2 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-dg2-9:        NOTRUN -> [SKIP][266] ([i915#5354]) +11 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][267] ([i915#3555] / [i915#8228]) +1 other test skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#3555] / [i915#8228]) +2 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_hdr@invalid-metadata-sizes.html
    - shard-dg1:          NOTRUN -> [SKIP][269] ([i915#3555] / [i915#8228])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_invalid_mode@clock-too-high:
    - shard-rkl:          [PASS][270] -> [SKIP][271] ([i915#14544] / [i915#3555] / [i915#8826]) +2 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_invalid_mode@clock-too-high.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_invalid_mode@clock-too-high.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][272] ([i915#12388])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#10656])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#13688])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_joiner@basic-max-non-joiner.html
    - shard-tglu-1:       NOTRUN -> [SKIP][275] ([i915#13688])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_joiner@basic-max-non-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][276] ([i915#12339])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-11/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#10656])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_joiner@invalid-modeset-big-joiner.html
    - shard-dg2-9:        NOTRUN -> [SKIP][278] ([i915#10656])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][279] ([i915#12388])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_joiner@invalid-modeset-force-big-joiner.html
    - shard-dg1:          NOTRUN -> [SKIP][280] ([i915#12388])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][281] ([i915#12394])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#13522])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_panel_fitting@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][283] ([i915#6301])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][284]
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-snb7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - shard-glk10:        NOTRUN -> [SKIP][285] ([i915#11190]) +2 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk10/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-glk:          NOTRUN -> [FAIL][286] ([i915#10647] / [i915#12169])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk8/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-2:
    - shard-glk:          NOTRUN -> [FAIL][287] ([i915#10647]) +1 other test fail
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk8/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-2.html

  * igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:
    - shard-rkl:          [PASS][288] -> [SKIP][289] ([i915#14544] / [i915#7294]) +1 other test skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html

  * igt@kms_plane_lowres@tiling-y:
    - shard-dg2-9:        NOTRUN -> [SKIP][290] ([i915#8821])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_plane_lowres@tiling-y.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][291] ([i915#13958])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-tglu-1:       NOTRUN -> [SKIP][292] ([i915#13958])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-dg1:          NOTRUN -> [SKIP][293] ([i915#14259])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#14259])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-tglu-1:       NOTRUN -> [SKIP][295] ([i915#14259])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@invalid-num-scalers:
    - shard-rkl:          [PASS][296] -> [SKIP][297] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_plane_scaling@invalid-num-scalers.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_scaling@invalid-num-scalers.html

  * igt@kms_plane_scaling@invalid-parameters:
    - shard-rkl:          [PASS][298] -> [SKIP][299] ([i915#14544] / [i915#8152])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_plane_scaling@invalid-parameters.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_scaling@invalid-parameters.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-rkl:          [PASS][300] -> [SKIP][301] ([i915#14544] / [i915#3555] / [i915#8152])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-a:
    - shard-rkl:          [PASS][302] -> [SKIP][303] ([i915#12247] / [i915#14544]) +2 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-a.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:
    - shard-rkl:          [PASS][304] -> [SKIP][305] ([i915#12247] / [i915#14544] / [i915#8152]) +1 other test skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-tglu:         NOTRUN -> [SKIP][306] ([i915#12247]) +3 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
    - shard-rkl:          [PASS][307] -> [SKIP][308] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-tglu-1:       NOTRUN -> [SKIP][309] ([i915#9812])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-dg2-9:        NOTRUN -> [SKIP][310] ([i915#12343])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][311] ([i915#9812])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-tglu:         NOTRUN -> [SKIP][312] ([i915#3828])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2-9:        NOTRUN -> [SKIP][313] ([i915#9340])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg1:          NOTRUN -> [SKIP][314] ([i915#8430])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [PASS][315] -> [SKIP][316] ([i915#9519]) +1 other test skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
    - shard-tglu:         NOTRUN -> [SKIP][317] ([i915#9519])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@fences:
    - shard-rkl:          [PASS][318] -> [SKIP][319] ([i915#14544] / [i915#1849])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_pm_rpm@fences.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_pm_rpm@fences.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg1:          NOTRUN -> [SKIP][320] ([i915#9519])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          NOTRUN -> [SKIP][321] ([i915#9519]) +1 other test skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [PASS][322] -> [SKIP][323] ([i915#9519])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-tglu-1:       NOTRUN -> [SKIP][324] ([i915#9519])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-crc-vgem:
    - shard-dg2:          NOTRUN -> [SKIP][325] ([i915#6524] / [i915#6805])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-11/igt@kms_prime@basic-crc-vgem.html
    - shard-rkl:          [PASS][326] -> [SKIP][327] ([i915#14544] / [i915#6524])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_prime@basic-crc-vgem.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_prime@basic-crc-vgem.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][328] ([i915#6524])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-dg1:          NOTRUN -> [SKIP][329] ([i915#6524])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_prime@d3hot.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-rkl:          [PASS][330] -> [SKIP][331] ([i915#11521] / [i915#14544])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_properties@plane-properties-atomic.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][332] ([i915#11520]) +7 other tests skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk8/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][333] ([i915#11520]) +3 other tests skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
    - shard-dg2-9:        NOTRUN -> [SKIP][334] ([i915#11520]) +3 other tests skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html
    - shard-rkl:          NOTRUN -> [SKIP][335] ([i915#11520]) +1 other test skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
    - shard-dg2:          NOTRUN -> [SKIP][336] ([i915#11520]) +11 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html
    - shard-tglu-1:       NOTRUN -> [SKIP][337] ([i915#11520]) +3 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-glk10:        NOTRUN -> [SKIP][338] ([i915#11520]) +9 other tests skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk10/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
    - shard-dg1:          NOTRUN -> [SKIP][339] ([i915#11520]) +5 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-dg2-9:        NOTRUN -> [SKIP][340] ([i915#9683])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-tglu-1:       NOTRUN -> [SKIP][341] ([i915#9683])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-psr-cursor-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][342] ([i915#1072] / [i915#9732]) +3 other tests skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_psr@fbc-psr-cursor-mmap-cpu.html

  * igt@kms_psr@fbc-psr-cursor-plane-move:
    - shard-dg2-9:        NOTRUN -> [SKIP][343] ([i915#1072] / [i915#9732]) +8 other tests skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_psr@fbc-psr-cursor-plane-move.html

  * igt@kms_psr@fbc-psr2-cursor-blt:
    - shard-dg1:          NOTRUN -> [SKIP][344] ([i915#1072] / [i915#9732]) +14 other tests skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_psr@fbc-psr2-cursor-blt.html

  * igt@kms_psr@fbc-psr2-cursor-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][345] ([i915#9732]) +9 other tests skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_psr@fbc-psr2-cursor-mmap-cpu.html

  * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][346] ([i915#9732]) +13 other tests skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html

  * igt@kms_psr@psr2-primary-blt:
    - shard-dg2:          NOTRUN -> [SKIP][347] ([i915#1072] / [i915#9732]) +33 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_psr@psr2-primary-blt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg1:          NOTRUN -> [SKIP][348] ([i915#9685])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
    - shard-dg2:          NOTRUN -> [SKIP][349] ([i915#9685])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2-9:        NOTRUN -> [SKIP][350] ([i915#12755])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][351] ([i915#12755] / [i915#5190])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][352] ([i915#5289]) +1 other test skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][353] ([i915#12755]) +1 other test skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-tglu:         NOTRUN -> [SKIP][354] ([i915#3555]) +3 other tests skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-glk:          NOTRUN -> [ABORT][355] ([i915#13179]) +1 other test abort
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk1/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][356] ([i915#12276]) +1 other test incomplete
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk5/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1.html

  * igt@kms_vrr@negative-basic:
    - shard-dg1:          NOTRUN -> [SKIP][357] ([i915#3555] / [i915#9906])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-dg2:          NOTRUN -> [SKIP][358] ([i915#9906]) +1 other test skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_vrr@seamless-rr-switch-virtual.html
    - shard-tglu-1:       NOTRUN -> [SKIP][359] ([i915#9906]) +1 other test skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@kms_writeback@writeback-check-output:
    - shard-tglu:         NOTRUN -> [SKIP][360] ([i915#2437])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-dg2:          NOTRUN -> [SKIP][361] ([i915#2437] / [i915#9412]) +1 other test skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-glk:          NOTRUN -> [SKIP][362] ([i915#2437])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk8/igt@kms_writeback@writeback-invalid-parameters.html
    - shard-dg2-9:        NOTRUN -> [SKIP][363] ([i915#2437])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-rkl:          NOTRUN -> [SKIP][364] ([i915#2437] / [i915#9412])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@global-sseu-config-invalid:
    - shard-dg2:          NOTRUN -> [SKIP][365] ([i915#7387])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@perf@global-sseu-config-invalid.html

  * igt@perf@non-zero-reason:
    - shard-dg2:          NOTRUN -> [FAIL][366] ([i915#9100]) +1 other test fail
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@perf@non-zero-reason.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [PASS][367] -> [FAIL][368] ([i915#4349]) +4 other tests fail
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-5/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@interrupts-sync:
    - shard-rkl:          [PASS][369] -> [FAIL][370] ([i915#14470])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@perf_pmu@interrupts-sync.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@perf_pmu@interrupts-sync.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg1:          NOTRUN -> [SKIP][371] ([i915#8516]) +1 other test skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][372] ([i915#3708] / [i915#4077])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2-9:        NOTRUN -> [SKIP][373] ([i915#3708] / [i915#4077])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@prime_vgem@coherency-gtt.html
    - shard-rkl:          NOTRUN -> [SKIP][374] ([i915#3708])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg2-9:        NOTRUN -> [SKIP][375] ([i915#3708])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-dg1:          NOTRUN -> [SKIP][376] ([i915#9917])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@sriov_basic@bind-unbind-vf.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-dg2:          NOTRUN -> [SKIP][377] ([i915#9917]) +1 other test skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2-9:        NOTRUN -> [SKIP][378] ([i915#4818])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests@dma_fence_chain:
    - shard-rkl:          [DMESG-WARN][379] ([i915#12964]) -> [PASS][380] +9 other tests pass
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@dmabuf@all-tests@dma_fence_chain.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@fbdev@unaligned-write:
    - shard-rkl:          [SKIP][381] ([i915#14544] / [i915#2582]) -> [PASS][382]
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@fbdev@unaligned-write.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@fbdev@unaligned-write.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [INCOMPLETE][383] ([i915#13356]) -> [PASS][384] +1 other test pass
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg2-1/igt@gem_ccs@suspend-resume.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-11/igt@gem_ccs@suspend-resume.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-rkl:          [TIMEOUT][385] ([i915#12917] / [i915#12964]) -> [PASS][386]
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@gem_pxp@create-regular-context-2.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-8/igt@gem_pxp@create-regular-context-2.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][387] ([i915#5138]) -> [PASS][388]
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-mtlp-3/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_color@ctm-red-to-blue:
    - shard-rkl:          [SKIP][389] ([i915#12655] / [i915#14544]) -> [PASS][390] +2 other tests pass
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_color@ctm-red-to-blue.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_color@ctm-red-to-blue.html

  * igt@kms_cursor_crc@cursor-random-128x42:
    - shard-tglu:         [FAIL][391] ([i915#13566]) -> [PASS][392] +1 other test pass
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-tglu-10/igt@kms_cursor_crc@cursor-random-128x42.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-5/igt@kms_cursor_crc@cursor-random-128x42.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-rkl:          [FAIL][393] ([i915#2346]) -> [PASS][394]
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@2x-modeset-vs-vblank-race@ab-vga1-hdmi-a1:
    - shard-snb:          [FAIL][395] ([i915#10826]) -> [PASS][396] +1 other test pass
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-snb7/igt@kms_flip@2x-modeset-vs-vblank-race@ab-vga1-hdmi-a1.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-snb7/igt@kms_flip@2x-modeset-vs-vblank-race@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-rkl:          [SKIP][397] ([i915#14544] / [i915#3637]) -> [PASS][398] +5 other tests pass
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_flip@flip-vs-fences-interruptible.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-rkl:          [SKIP][399] ([i915#14544] / [i915#3555]) -> [PASS][400] +4 other tests pass
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][401] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][402] +10 other tests pass
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          [SKIP][403] ([i915#3555] / [i915#8228]) -> [PASS][404] +1 other test pass
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg2-7/igt@kms_hdr@static-toggle.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-11/igt@kms_hdr@static-toggle.html

  * igt@kms_invalid_mode@overflow-vrefresh:
    - shard-rkl:          [SKIP][405] ([i915#14544] / [i915#8826]) -> [PASS][406]
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_invalid_mode@overflow-vrefresh.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_invalid_mode@overflow-vrefresh.html

  * igt@kms_invalid_mode@zero-hdisplay:
    - shard-rkl:          [SKIP][407] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][408]
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_invalid_mode@zero-hdisplay.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_invalid_mode@zero-hdisplay.html

  * igt@kms_lease@lease-invalid-plane:
    - shard-rkl:          [SKIP][409] ([i915#14544]) -> [PASS][410] +55 other tests pass
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_lease@lease-invalid-plane.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_lease@lease-invalid-plane.html

  * igt@kms_pipe_crc_basic@read-crc:
    - shard-rkl:          [SKIP][411] ([i915#11190] / [i915#14544]) -> [PASS][412] +1 other test pass
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_plane@plane-position-hole-dpms:
    - shard-rkl:          [SKIP][413] ([i915#14544] / [i915#8825]) -> [PASS][414] +2 other tests pass
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane@plane-position-hole-dpms.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_plane@plane-position-hole-dpms.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
    - shard-rkl:          [SKIP][415] ([i915#14544] / [i915#8152]) -> [PASS][416] +1 other test pass
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-a:
    - shard-rkl:          [SKIP][417] ([i915#12247] / [i915#14544]) -> [PASS][418] +4 other tests pass
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-a.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
    - shard-rkl:          [SKIP][419] ([i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][420]
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-rkl:          [SKIP][421] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][422]
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b:
    - shard-rkl:          [SKIP][423] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][424] +4 other tests pass
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-rkl:          [SKIP][425] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][426]
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [SKIP][427] ([i915#9519]) -> [PASS][428]
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg2-5/igt@kms_pm_rpm@dpms-lpsp.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][429] ([i915#9519]) -> [PASS][430] +1 other test pass
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-rkl:          [SKIP][431] ([i915#11521] / [i915#14544]) -> [PASS][432]
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_vblank@ts-continuation-dpms-suspend:
    - shard-rkl:          [INCOMPLETE][433] ([i915#12276]) -> [PASS][434]
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-3/igt@kms_vblank@ts-continuation-dpms-suspend.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_vblank@ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@api_intel_bb@crc32:
    - shard-rkl:          [SKIP][435] ([i915#14544] / [i915#6230]) -> [SKIP][436] ([i915#6230])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@api_intel_bb@crc32.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@api_intel_bb@crc32.html

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          [SKIP][437] ([i915#8411]) -> [SKIP][438] ([i915#14544] / [i915#8411]) +1 other test skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@api_intel_bb@object-reloc-keep-cache.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          [SKIP][439] ([i915#9323]) -> [SKIP][440] ([i915#14544] / [i915#9323]) +1 other test skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@gem_ccs@suspend-resume.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_ccs@suspend-resume.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-rkl:          [SKIP][441] ([i915#6335]) -> [SKIP][442] ([i915#14544] / [i915#6335])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@gem_create@create-ext-cpu-access-big.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          [SKIP][443] ([i915#280]) -> [SKIP][444] ([i915#14544] / [i915#280])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@gem_ctx_sseu@engines.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          [SKIP][445] ([i915#4525]) -> [SKIP][446] ([i915#14544] / [i915#4525])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@gem_exec_balancer@parallel-contexts.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-rkl:          [SKIP][447] ([i915#14544] / [i915#3281]) -> [SKIP][448] ([i915#3281]) +8 other tests skip
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-active.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_reloc@basic-gtt-read-active:
    - shard-rkl:          [SKIP][449] ([i915#3281]) -> [SKIP][450] ([i915#14544] / [i915#3281]) +5 other tests skip
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-read-active.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read-active.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          [SKIP][451] ([i915#14544] / [i915#4613] / [i915#7582]) -> [SKIP][452] ([i915#4613] / [i915#7582])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-rkl:          [SKIP][453] ([i915#4613]) -> [SKIP][454] ([i915#14544] / [i915#4613]) +2 other tests skip
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-rkl:          [SKIP][455] ([i915#14544] / [i915#4613]) -> [SKIP][456] ([i915#4613]) +3 other tests skip
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@gem_lmem_swapping@parallel-random.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-rkl:          [SKIP][457] ([i915#3282]) -> [SKIP][458] ([i915#14544] / [i915#3282]) +2 other tests skip
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@gem_partial_pwrite_pread@reads-display.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          [SKIP][459] ([i915#14544] / [i915#3282]) -> [SKIP][460] ([i915#3282]) +5 other tests skip
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@gem_pwrite@basic-exhaustion.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-rkl:          [SKIP][461] ([i915#14544] / [i915#4270]) -> [TIMEOUT][462] ([i915#12917] / [i915#12964])
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-on.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          [SKIP][463] ([i915#14544] / [i915#3282] / [i915#3297]) -> [SKIP][464] ([i915#3282] / [i915#3297])
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-rkl:          [SKIP][465] ([i915#14544] / [i915#3297]) -> [SKIP][466] ([i915#3297]) +1 other test skip
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-rkl:          [SKIP][467] ([i915#14544] / [i915#2527]) -> [SKIP][468] ([i915#2527]) +2 other tests skip
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@gen9_exec_parse@bb-chained.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          [SKIP][469] ([i915#2527]) -> [SKIP][470] ([i915#14544] / [i915#2527]) +3 other tests skip
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@gen9_exec_parse@bb-start-param.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-rkl:          [SKIP][471] ([i915#14544] / [i915#8399]) -> [SKIP][472] ([i915#8399])
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          [SKIP][473] ([i915#6590]) -> [SKIP][474] ([i915#14544] / [i915#6590]) +1 other test skip
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@i915_pm_freq_mult@media-freq@gt0.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-rkl:          [SKIP][475] ([i915#14498] / [i915#14544]) -> [SKIP][476] ([i915#14498])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_query@hwconfig_table:
    - shard-rkl:          [SKIP][477] ([i915#6245]) -> [SKIP][478] ([i915#14544] / [i915#6245])
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@i915_query@hwconfig_table.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@i915_query@hwconfig_table.html

  * igt@intel_hwmon@hwmon-read:
    - shard-rkl:          [SKIP][479] ([i915#7707]) -> [SKIP][480] ([i915#14544] / [i915#7707])
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@intel_hwmon@hwmon-read.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@intel_hwmon@hwmon-read.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          [SKIP][481] ([i915#14544] / [i915#7707]) -> [SKIP][482] ([i915#7707])
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@intel_hwmon@hwmon-write.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@intel_hwmon@hwmon-write.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-rkl:          [SKIP][483] ([i915#14544]) -> [SKIP][484] ([i915#9531])
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          [SKIP][485] ([i915#14544]) -> [SKIP][486] ([i915#5286]) +4 other tests skip
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][487] ([i915#5286]) -> [SKIP][488] ([i915#14544]) +7 other tests skip
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-dg1:          [SKIP][489] ([i915#4538] / [i915#5286]) -> [SKIP][490] ([i915#4423] / [i915#4538] / [i915#5286])
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          [SKIP][491] ([i915#3638]) -> [SKIP][492] ([i915#14544]) +3 other tests skip
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-90.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          [SKIP][493] ([i915#14544]) -> [SKIP][494] ([i915#3638]) +4 other tests skip
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          [SKIP][495] -> [SKIP][496] ([i915#14544]) +15 other tests skip
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          [SKIP][497] ([i915#14544]) -> [SKIP][498] ([i915#14098] / [i915#6095]) +13 other tests skip
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][499] ([i915#14544]) -> [SKIP][500] ([i915#12313])
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][501] ([i915#14098] / [i915#6095]) -> [SKIP][502] ([i915#14544]) +10 other tests skip
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs.html
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][503] ([i915#12313]) -> [SKIP][504] ([i915#14544])
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          [SKIP][505] ([i915#6095]) -> [SKIP][506] ([i915#4423] / [i915#6095]) +1 other test skip
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-13/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3.html
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-12/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:
    - shard-rkl:          [SKIP][507] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][508] ([i915#11151] / [i915#7828]) +9 other tests skip
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-rkl:          [SKIP][509] ([i915#11151] / [i915#7828]) -> [SKIP][510] ([i915#11151] / [i915#14544] / [i915#7828]) +9 other tests skip
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_color@deep-color:
    - shard-rkl:          [SKIP][511] ([i915#12655] / [i915#14544] / [i915#3555]) -> [SKIP][512] ([i915#12655] / [i915#3555])
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_color@deep-color.html
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          [SKIP][513] ([i915#7118] / [i915#9424]) -> [SKIP][514] ([i915#14544])
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_content_protection@atomic-dpms.html
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          [SKIP][515] ([i915#14544]) -> [SKIP][516] ([i915#3116])
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0.html
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          [SKIP][517] ([i915#9424]) -> [SKIP][518] ([i915#14544])
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_content_protection@mei-interface.html
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_content_protection@mei-interface.html
    - shard-dg1:          [SKIP][519] ([i915#9433]) -> [SKIP][520] ([i915#9424])
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-13/igt@kms_content_protection@mei-interface.html
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-16/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@uevent:
    - shard-rkl:          [SKIP][521] ([i915#14544]) -> [SKIP][522] ([i915#7118] / [i915#9424])
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_content_protection@uevent.html
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-rkl:          [SKIP][523] ([i915#3555]) -> [SKIP][524] ([i915#14544]) +2 other tests skip
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-32x10.html
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-rkl:          [SKIP][525] ([i915#14544]) -> [SKIP][526] ([i915#13049]) +1 other test skip
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x170.html
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-rkl:          [SKIP][527] ([i915#14544]) -> [SKIP][528] ([i915#3555]) +6 other tests skip
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-64x21:
    - shard-rkl:          [SKIP][529] ([i915#14544]) -> [FAIL][530] ([i915#13566]) +2 other tests fail
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_cursor_crc@cursor-random-64x21.html
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_cursor_crc@cursor-random-64x21.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          [SKIP][531] ([i915#13049]) -> [SKIP][532] ([i915#14544]) +2 other tests skip
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          [SKIP][533] ([i915#14544]) -> [SKIP][534] +18 other tests skip
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          [SKIP][535] ([i915#11190] / [i915#14544]) -> [SKIP][536] ([i915#4103])
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          [SKIP][537] ([i915#4103]) -> [SKIP][538] ([i915#11190] / [i915#14544])
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][539] ([i915#4103]) -> [SKIP][540] ([i915#14544])
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-rkl:          [SKIP][541] ([i915#14544]) -> [FAIL][542] ([i915#2346])
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-rkl:          [DMESG-WARN][543] ([i915#12964]) -> [SKIP][544] ([i915#14544]) +1 other test skip
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg1:          [SKIP][545] ([i915#9067]) -> [SKIP][546] ([i915#4423] / [i915#9067])
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-15/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-14/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          [SKIP][547] ([i915#14544]) -> [SKIP][548] ([i915#9723])
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-rkl:          [SKIP][549] ([i915#13749]) -> [SKIP][550] ([i915#14544]) +1 other test skip
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_dp_link_training@non-uhbr-sst.html
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          [SKIP][551] ([i915#11190] / [i915#14544]) -> [SKIP][552] ([i915#3555] / [i915#3840])
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_dsc@dsc-basic.html
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-rkl:          [SKIP][553] ([i915#14544]) -> [SKIP][554] ([i915#3555] / [i915#3840])
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_dsc@dsc-with-formats.html
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][555] ([i915#3955]) -> [SKIP][556] ([i915#14544] / [i915#3955]) +1 other test skip
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          [SKIP][557] ([i915#14544] / [i915#4854]) -> [SKIP][558] ([i915#4854])
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_feature_discovery@chamelium.html
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-rkl:          [SKIP][559] ([i915#14544] / [i915#9337]) -> [SKIP][560] ([i915#9337])
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-rkl:          [SKIP][561] ([i915#9934]) -> [SKIP][562] ([i915#14544] / [i915#9934]) +7 other tests skip
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_flip@2x-flip-vs-dpms.html
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          [SKIP][563] ([i915#14544] / [i915#9934]) -> [SKIP][564] ([i915#9934]) +6 other tests skip
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_flip@2x-plain-flip.html
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@plain-flip-interruptible:
    - shard-rkl:          [DMESG-WARN][565] ([i915#12964]) -> [SKIP][566] ([i915#14544] / [i915#3637]) +1 other test skip
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_flip@plain-flip-interruptible.html
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_flip@plain-flip-interruptible.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible:
    - shard-rkl:          [SKIP][567] ([i915#14544] / [i915#3637]) -> [DMESG-WARN][568] ([i915#12964])
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_flip@wf_vblank-ts-check-interruptible.html
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_flip@wf_vblank-ts-check-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          [SKIP][569] ([i915#2672] / [i915#3555]) -> [SKIP][570] ([i915#14544] / [i915#3555]) +4 other tests skip
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
    - shard-rkl:          [SKIP][571] ([i915#14544] / [i915#3555]) -> [SKIP][572] ([i915#2672] / [i915#3555]) +1 other test skip
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:
    - shard-rkl:          [SKIP][573] ([i915#14544] / [i915#1849] / [i915#5354]) -> [DMESG-WARN][574] ([i915#12964])
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][575] ([i915#1825]) -> [SKIP][576] ([i915#14544] / [i915#1849] / [i915#5354]) +34 other tests skip
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          [SKIP][577] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][578] ([i915#5439])
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][579] ([i915#3023]) -> [SKIP][580] ([i915#14544] / [i915#1849] / [i915#5354]) +19 other tests skip
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:
    - shard-dg1:          [SKIP][581] ([i915#3458]) -> [SKIP][582] ([i915#3458] / [i915#4423])
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][583] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][584]
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][585] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][586] ([i915#1825]) +41 other tests skip
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render:
    - shard-dg1:          [SKIP][587] -> [SKIP][588] ([i915#4423]) +1 other test skip
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render.html
   [588]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][589] -> [SKIP][590] ([i915#14544] / [i915#1849] / [i915#5354])
   [589]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [590]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          [SKIP][591] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][592] ([i915#3023]) +20 other tests skip
   [591]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
   [592]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][593] ([i915#10433] / [i915#3458]) -> [SKIP][594] ([i915#3458])
   [593]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [594]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][595] ([i915#8708]) -> [SKIP][596] ([i915#4423] / [i915#8708])
   [595]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
   [596]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-slowdraw:
    - shard-dg2:          [SKIP][597] ([i915#3458]) -> [SKIP][598] ([i915#10433] / [i915#3458])
   [597]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-slowdraw.html
   [598]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-slowdraw.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          [SKIP][599] ([i915#3555] / [i915#8228]) -> [SKIP][600] ([i915#14544])
   [599]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_hdr@bpc-switch.html
   [600]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          [SKIP][601] ([i915#14544]) -> [SKIP][602] ([i915#3555] / [i915#8228])
   [601]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html
   [602]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-mtlp:         [SKIP][603] ([i915#1187] / [i915#12713]) -> [SKIP][604] ([i915#12713])
   [603]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html
   [604]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-mtlp-8/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-rkl:          [SKIP][605] ([i915#10656] / [i915#14544]) -> [SKIP][606] ([i915#10656])
   [605]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_joiner@basic-big-joiner.html
   [606]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-rkl:          [SKIP][607] ([i915#12388] / [i915#14544]) -> [SKIP][608] ([i915#12388])
   [607]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html
   [608]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-rkl:          [SKIP][609] ([i915#12339]) -> [SKIP][610] ([i915#12339] / [i915#14544])
   [609]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_joiner@basic-ultra-joiner.html
   [610]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][611] ([i915#14544] / [i915#4070] / [i915#4816]) -> [SKIP][612] ([i915#4070] / [i915#4816])
   [611]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [612]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          [SKIP][613] ([i915#14544]) -> [SKIP][614] ([i915#6301])
   [613]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html
   [614]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane_multiple@2x-tiling-4:
    - shard-rkl:          [SKIP][615] ([i915#14544]) -> [SKIP][616] ([i915#13958]) +1 other test skip
   [615]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html
   [616]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-4.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-rkl:          [SKIP][617] ([i915#13958]) -> [SKIP][618] ([i915#14544])
   [617]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-y.html
   [618]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          [SKIP][619] ([i915#14259]) -> [SKIP][620] ([i915#14544]) +1 other test skip
   [619]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_plane_multiple@tiling-yf.html
   [620]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-rkl:          [SKIP][621] ([i915#14544] / [i915#8152]) -> [SKIP][622]
   [621]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [622]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
    - shard-rkl:          [DMESG-WARN][623] ([i915#12964]) -> [SKIP][624] ([i915#14544] / [i915#6953] / [i915#8152])
   [623]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
   [624]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:
    - shard-rkl:          [DMESG-WARN][625] ([i915#12964]) -> [SKIP][626] ([i915#12247] / [i915#14544] / [i915#8152])
   [625]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
   [626]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-rkl:          [SKIP][627] ([i915#5354]) -> [SKIP][628] ([i915#14544] / [i915#5354]) +2 other tests skip
   [627]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_pm_backlight@bad-brightness.html
   [628]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-rkl:          [SKIP][629] ([i915#14544] / [i915#5354]) -> [SKIP][630] ([i915#5354])
   [629]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html
   [630]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-rkl:          [DMESG-WARN][631] ([i915#12964]) -> [SKIP][632] ([i915#13441] / [i915#14544])
   [631]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_pm_dc@dc5-dpms-negative.html
   [632]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-rkl:          [SKIP][633] ([i915#14544] / [i915#3828]) -> [SKIP][634] ([i915#3828])
   [633]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html
   [634]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][635] ([i915#14544] / [i915#4281]) -> [SKIP][636] ([i915#4281])
   [635]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
   [636]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][637] ([i915#9340]) -> [SKIP][638] ([i915#3828])
   [637]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html
   [638]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          [SKIP][639] ([i915#8430]) -> [SKIP][640] ([i915#14544] / [i915#8430])
   [639]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_pm_lpsp@screens-disabled.html
   [640]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][641] ([i915#9519]) -> [SKIP][642] ([i915#14544] / [i915#9519]) +2 other tests skip
   [641]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [642]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-pc8-residency-stress:
    - shard-rkl:          [SKIP][643] ([i915#12916]) -> [SKIP][644] ([i915#12916] / [i915#14544])
   [643]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_pm_rpm@modeset-pc8-residency-stress.html
   [644]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          [SKIP][645] ([i915#14544] / [i915#6524]) -> [SKIP][646] ([i915#6524])
   [645]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html
   [646]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
    - shard-rkl:          [SKIP][647] ([i915#11520]) -> [SKIP][648] ([i915#11520] / [i915#14544]) +7 other tests skip
   [647]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
   [648]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          [SKIP][649] ([i915#11520] / [i915#14544]) -> [SKIP][650] ([i915#11520]) +7 other tests skip
   [649]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
   [650]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr@fbc-pr-no-drrs:
    - shard-rkl:          [SKIP][651] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][652] ([i915#1072] / [i915#9732]) +21 other tests skip
   [651]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_psr@fbc-pr-no-drrs.html
   [652]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_psr@fbc-pr-no-drrs.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          [SKIP][653] ([i915#1072] / [i915#9732]) -> [SKIP][654] ([i915#1072] / [i915#14544] / [i915#9732]) +19 other tests skip
   [653]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_psr@fbc-psr2-sprite-render.html
   [654]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          [SKIP][655] ([i915#14544] / [i915#9685]) -> [SKIP][656] ([i915#9685]) +2 other tests skip
   [655]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [656]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-rkl:          [SKIP][657] ([i915#5289]) -> [SKIP][658] ([i915#14544])
   [657]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
   [658]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-rkl:          [SKIP][659] ([i915#14544] / [i915#3555]) -> [SKIP][660] ([i915#3555])
   [659]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
   [660]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_vblank@query-forked-busy:
    - shard-rkl:          [SKIP][661] ([i915#14544]) -> [DMESG-WARN][662] ([i915#12964]) +1 other test dmesg-warn
   [661]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_vblank@query-forked-busy.html
   [662]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_vblank@query-forked-busy.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-rkl:          [SKIP][663] ([i915#9906]) -> [SKIP][664] ([i915#14544]) +1 other test skip
   [663]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_vrr@flip-basic-fastset.html
   [664]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-rkl:          [SKIP][665] ([i915#14544]) -> [SKIP][666] ([i915#9906])
   [665]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
   [666]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-rkl:          [SKIP][667] ([i915#2437] / [i915#9412]) -> [SKIP][668] ([i915#14544] / [i915#2437] / [i915#9412])
   [667]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_writeback@writeback-check-output-xrgb2101010.html
   [668]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          [SKIP][669] ([i915#2436]) -> [SKIP][670] ([i915#14544] / [i915#2436])
   [669]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [670]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          [SKIP][671] ([i915#2435]) -> [SKIP][672] ([i915#14544] / [i915#2435])
   [671]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@perf@per-context-mode-unprivileged.html
   [672]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-rkl:          [SKIP][673] ([i915#2433]) -> [SKIP][674] ([i915#14544] / [i915#2433])
   [673]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@perf@unprivileged-single-ctx-counters.html
   [674]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@perf@unprivileged-single-ctx-counters.html

  * igt@prime_vgem@fence-write-hang:
    - shard-rkl:          [SKIP][675] ([i915#14544] / [i915#3708]) -> [SKIP][676] ([i915#3708])
   [675]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@prime_vgem@fence-write-hang.html
   [676]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-rkl:          [SKIP][677] ([i915#9917]) -> [SKIP][678] ([i915#14544] / [i915#9917])
   [677]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@sriov_basic@bind-unbind-vf.html
   [678]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
  [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
  [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441
  [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
  [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
  [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
  [i915#14123]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14123
  [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14470]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14470
  [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14702]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702
  [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1850
  [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
  [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4036]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036
  [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
  [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
  [i915#4958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
  [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
  [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9738]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9738
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
  [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_17070 -> Patchwork_153498v1

  CI-20190529: 20190529
  CI_DRM_17070: 9a7b262940bab808a7f3470846922306f686bd84 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8509: 9709b23ae933687339ed89c526df2677102e9153 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_153498v1: 9a7b262940bab808a7f3470846922306f686bd84 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/index.html

--===============9091600773866584316==
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
<tr><td><b>Series:</b></td><td>drm/i915/psr: Check PSR pause counter in __psr_wait_for_idle_locked</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/153498/">https://patchwork.freedesktop.org/series/153498/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17070_full -&gt; Patchwork_153498v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_153498v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_153498v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (11 -&gt; 12)</h2>
<p>Additional (1): shard-dg2-set2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_153498v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_fbcon_fbt@fbc-suspend:<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_fbcon_fbt@fbc-suspend.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_153498v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@device_reset@cold-reset-bound.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@gem_basic@multigpu-create-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_busy@semaphore.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936">i915#3936</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@gem_ctx_param@set-priority-not-supported.html">SKIP</a> +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-hostile.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@gem_exec_balancer@bonded-false-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@gem_exec_balancer@bonded-semaphore.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771">i915#4771</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@gem_exec_balancer@invalid-bonds.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036">i915#4036</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_exec_capture@capture-invisible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +2 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@gem_exec_capture@capture-invisible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_exec_fence@concurrent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@gem_exec_flush@basic-uc-pro-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@gem_exec_flush@basic-wb-ro-before-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@gem_exec_reloc@basic-wc-read-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@gem_exec_schedule@preempt-queue-chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@gem_exec_whisper@basic-queues-priority-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_exec_whisper@basic-queues-priority-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +9 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@gem_fence_thrash@bo-write-verify-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk8/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@gem_mmap_gtt@fault-concurrent-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@gem_mmap_wc@set-cache-level.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1850">i915#1850</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_mmap_wc@write-cpu-read-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-prefaulted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@gem_mmap_wc@write-prefaulted.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_partial_pwrite_pread@reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@gem_pread@snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk1/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702">i915#14702</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite_snooped:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@gem_pwrite_snooped.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@gem_pxp@create-valid-protected-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-11/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@gem_pxp@reject-modify-context-protection-off-1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_softpin@evict-snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@gem_tiled_pread_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gem_userptr_blits@relocations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@gem_userptr_blits@sd-probe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958">i915#4958</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@gem_userptr_blits@sd-probe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958">i915#4958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@gen9_exec_parse@secure-batches.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@i915_drm_fdinfo@all-busy-check-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14123">i915#14123</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-check-all@vecs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@i915_drm_fdinfo@busy-check-all@vecs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527">i915#11527</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-hang@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@i915_drm_fdinfo@busy-hang@rcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073">i915#14073</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-hang-all:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@i915_drm_fdinfo@virtual-busy-hang-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118">i915#14118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-idle-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@i915_drm_fdinfo@virtual-busy-idle-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118">i915#14118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@i915_module_load@resize-bar.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@i915_pm_rps@min-max-config-loaded.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@i915_pm_rps@min-max-config-loaded.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@i915_pm_rps@thresholds.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@i915_pm_rps@thresholds-idle-park.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-11/igt@i915_query@query-topology-coherent-slice-mask.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188">i915#6188</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk1/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-5/igt@i915_suspend@fence-restore-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-3/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk10/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_addfb_basic@clobberred-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@no-handle:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-15/igt@kms_addfb_basic@no-handle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-14/igt@kms_addfb_basic@no-handle.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_busy@extended-modeset-hang-oldfb-with-reset:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-15/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-14/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +5 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +144 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +155 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +49 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781">i915#13781</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783">i915#13783</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio-edid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_chamelium_audio@dp-audio-edid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +15 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_chamelium_audio@dp-audio-edid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_chamelium_color@degamma.html">SKIP</a> +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@vga-edid-read:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_chamelium_edid@vga-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@legacy-gamma:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_color@legacy-gamma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_color@legacy-gamma.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-b-hdmi-a-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +4 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-64x21.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-64x21.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-5/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358">i915#12358</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152">i915#14152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833">i915#9833</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691">i915#13691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@kms_dp_link_training@non-uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_dp_link_training@uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dsc-fallback:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878">i915#9878</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065">i915#2065</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-1x:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_feature_discovery@display-1x.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_feature_discovery@display-1x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9738">i915#9738</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_feature_discovery@psr1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_fence_pin_leak.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881">i915#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027">i915#13027</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_flip@2x-flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-snb5/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_flip@2x-nonexisting-fb-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_flip@bo-too-big-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_flip@bo-too-big-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_flip@flip-vs-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk6/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk6/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> +290 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> +414 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_invalid_mode@clock-too-high.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_invalid_mode@clock-too-high.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688">i915#13688</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688">i915#13688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-11/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394">i915#12394</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522">i915#13522</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-snb7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk10/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk8/igt@kms_plane_alpha_blend@constant-alpha-max.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169">i915#12169</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk8/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_plane_lowres@tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821">i915#8821</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_plane_multiple@tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_plane_multiple@tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_plane_scaling@invalid-num-scalers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_scaling@invalid-num-scalers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-parameters:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_plane_scaling@invalid-parameters.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_scaling@invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_pm_rpm@fences.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_pm_rpm@fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-11/igt@kms_prime@basic-crc-vgem.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805">i915#6805</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_prime@basic-crc-vgem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_prime@basic-crc-vgem.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_prime@d3hot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_properties@plane-properties-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521">i915#11521</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk8/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +11 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk10/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_psr@fbc-psr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-move:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_psr@fbc-psr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_psr@fbc-psr2-cursor-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_psr@fbc-psr2-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_psr@psr2-primary-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-13/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_scaling_modes@scaling-mode-full-aspect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk1/igt@kms_selftest@drm_framebuffer.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk5/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276">i915#12276</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-9/igt@kms_writeback@writeback-check-output.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-glk8/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-1/igt@perf@global-sseu-config-invalid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@perf@non-zero-reason.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100">i915#9100</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-5/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@interrupts-sync:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@perf_pmu@interrupts-sync.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@perf_pmu@interrupts-sync.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14470">i915#14470</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@prime_vgem@fence-read-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-15/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-3/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-9/igt@tools_test@sysfs_l3_parity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818">i915#4818</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence_chain:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@dmabuf@all-tests@dma_fence_chain.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> +9 other tests pass</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@fbdev@unaligned-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg2-1/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-11/igt@gem_ccs@suspend-resume.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@gem_pxp@create-regular-context-2.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-8/igt@gem_pxp@create-regular-context-2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-mtlp-3/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_color@ctm-red-to-blue.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_color@ctm-red-to-blue.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-tglu-10/igt@kms_cursor_crc@cursor-random-128x42.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-tglu-5/igt@kms_cursor_crc@cursor-random-128x42.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-snb7/igt@kms_flip@2x-modeset-vs-vblank-race@ab-vga1-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826">i915#10826</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-snb7/igt@kms_flip@2x-modeset-vs-vblank-race@ab-vga1-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_flip@flip-vs-fences-interruptible.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> +10 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg2-7/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-11/igt@kms_hdr@static-toggle.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_invalid_mode@overflow-vrefresh.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_invalid_mode@overflow-vrefresh.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_invalid_mode@zero-hdisplay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_invalid_mode@zero-hdisplay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-invalid-plane:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_lease@lease-invalid-plane.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_lease@lease-invalid-plane.html">PASS</a> +55 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_pipe_crc_basic@read-crc.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane@plane-position-hole-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_plane@plane-position-hole-dpms.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-a.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg2-5/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521">i915#11521</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_properties@plane-properties-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-3/igt@kms_vblank@ts-continuation-dpms-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276">i915#12276</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_vblank@ts-continuation-dpms-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-active:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-read-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-display:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@gem_partial_pwrite_pread@reads-display.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-display.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@gem_pxp@reject-modify-context-protection-on.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@gen9_exec_parse@bb-chained.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@gen9_exec_parse@bb-chained.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590">i915#6590</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498">i915#14498</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498">i915#14498</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#6245</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-13/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-12/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-13/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433">i915#9433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-16/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-64x21:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_cursor_crc@cursor-random-64x21.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_cursor_crc@cursor-random-64x21.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</a> +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-15/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-14/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337">i915#9337</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_flip@plain-flip-interruptible.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_flip@plain-flip-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_flip@wf_vblank-ts-check-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_flip@wf_vblank-ts-check-interruptible.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-slowdraw:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-slowdraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-slowdraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i915#1187</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-mtlp-8/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-7/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_pm_dc@dc5-dpms-negative.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441">i915#13441</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916">i915#12916</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916">i915#12916</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-no-drrs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_psr@fbc-pr-no-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_psr@fbc-pr-no-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_setmode@invalid-clone-single-crtc-stealing.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_setmode@invalid-clone-single-crtc-stealing.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-forked-busy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_vblank@query-forked-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_vblank@query-forked-busy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-4/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-2/igt@perf@per-context-mode-unprivileged.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435">i915#2435</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435">i915#2435</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433">i915#2433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433">i915#2433</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-6/igt@prime_vgem@fence-write-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-2/igt@prime_vgem@fence-write-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17070/shard-rkl-4/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153498v1/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17070 -&gt; Patchwork_153498v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17070: 9a7b262940bab808a7f3470846922306f686bd84 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8509: 9709b23ae933687339ed89c526df2677102e9153 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_153498v1: 9a7b262940bab808a7f3470846922306f686bd84 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============9091600773866584316==--
