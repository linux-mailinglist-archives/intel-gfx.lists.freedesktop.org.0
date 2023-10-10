Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A797BF9D9
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:36:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91CDF10E163;
	Tue, 10 Oct 2023 11:36:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 836F010E075;
 Tue, 10 Oct 2023 11:36:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B3E4A3ECB;
 Tue, 10 Oct 2023 11:36:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6555585321584817791=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <john.c.harrison@intel.com>
Date: Tue, 10 Oct 2023 11:36:12 -0000
Message-ID: <169693777246.28098.11353036775005396680@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231009183802.673882-1-John.C.Harrison@Intel.com>
In-Reply-To: <20231009183802.673882-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgTW9y?=
 =?utf-8?q?e_print_message_helper_updates_=28rev2=29?=
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

--===============6555585321584817791==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: More print message helper updates (rev2)
URL   : https://patchwork.freedesktop.org/series/124853/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13732_full -> Patchwork_124853v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_124853v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_124853v2_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/index.html

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_124853v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-1/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-dg2:          [PASS][2] -> [FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg2-7/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@i915_pm_rc6_residency@rc6-accuracy.html

  
Known issues
------------

  Here are the changes found in Patchwork_124853v2_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [FAIL][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) ([i915#8293]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk3/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk8/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk5/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk8/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk8/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk8/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk9/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk9/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk9/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#8411]) +1 other test skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@api_intel_bb@blit-reloc-keep-cache.html
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#8411]) +1 other test skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@drm_fdinfo@busy-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#8414]) +9 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@drm_fdinfo@busy-check-all@vecs1.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#3281]) +2 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#7697])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          NOTRUN -> [ABORT][58] ([i915#7461])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [PASS][59] -> [FAIL][60] ([i915#6268])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@preservation@vcs1:
    - shard-mtlp:         [PASS][61] -> [ABORT][62] ([i915#9414])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-5/igt@gem_ctx_isolation@preservation@vcs1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-2/igt@gem_ctx_isolation@preservation@vcs1.html

  * igt@gem_ctx_persistence@engines-hang@vcs0:
    - shard-mtlp:         [PASS][63] -> [ABORT][64] ([i915#9262])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-6/igt@gem_ctx_persistence@engines-hang@vcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-4/igt@gem_ctx_persistence@engines-hang@vcs0.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#8555])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_persistence@idempotent:
    - shard-snb:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#1099])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-snb1/igt@gem_ctx_persistence@idempotent.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          NOTRUN -> [ABORT][67] ([i915#7975] / [i915#8213])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@gem_eio@hibernate.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#3539] / [i915#4852]) +4 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [PASS][69] -> [FAIL][70] ([i915#2842]) +1 other test fail
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [PASS][71] -> [FAIL][72] ([i915#2842])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4812]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:
    - shard-snb:          NOTRUN -> [SKIP][74] ([fdo#109271]) +124 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-snb1/igt@gem_exec_fence@syncobj-backward-timeline-chain-engines.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#3281]) +7 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#3281]) +1 other test skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_exec_schedule@noreorder-corked@ccs0:
    - shard-mtlp:         [PASS][77] -> [DMESG-FAIL][78] ([i915#8962])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-6/igt@gem_exec_schedule@noreorder-corked@ccs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-4/igt@gem_exec_schedule@noreorder-corked@ccs0.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#4537] / [i915#4812]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-glk:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#4613])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk9/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [PASS][81] -> [DMESG-WARN][82] ([i915#4936] / [i915#5493])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_gtt@basic-read-write-distinct:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#4077]) +14 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@gem_mmap_gtt@basic-read-write-distinct.html

  * igt@gem_mmap_gtt@basic-write-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#4077])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@gem_mmap_gtt@basic-write-gtt.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4083]) +5 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_partial_pwrite_pread@write-display:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#3282]) +3 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_partial_pwrite_pread@write-display.html

  * igt@gem_pread@bench:
    - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#3282]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@gem_pread@bench.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][88] ([i915#2658])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-snb7/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          NOTRUN -> [WARN][89] ([i915#2658])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk9/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#4270]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#4885])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#4079])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_tiled_pread_pwrite.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#3297]) +1 other test skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([fdo#109289]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([fdo#109289])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#2856]) +3 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@gen9_exec_parse@allowed-single.html
    - shard-apl:          NOTRUN -> [INCOMPLETE][97] ([i915#5566])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-apl4/igt@gen9_exec_parse@allowed-single.html
    - shard-glk:          [PASS][98] -> [INCOMPLETE][99] ([i915#5566])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk4/igt@gen9_exec_parse@allowed-single.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk8/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#2527])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@gen9_exec_parse@bb-start-out.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][101] ([i915#8617])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-dg1:          [PASS][102] -> [SKIP][103] ([i915#1397]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg1-18/igt@i915_pm_rpm@dpms-non-lpsp.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-rkl:          [PASS][104] -> [SKIP][105] ([i915#1397]) +1 other test skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#1397]) +1 other test skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@i915_pm_rpm@modeset-lpsp-stress.html
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#1397])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          [PASS][108] -> [SKIP][109] ([i915#1397])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg2-6/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#6621])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][111] -> [FAIL][112] ([fdo#103375]) +1 other test fail
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#404])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#1769] / [i915#3555])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#1769] / [i915#3555])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([fdo#111614]) +3 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#5286])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#5190]) +9 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [PASS][119] -> [FAIL][120] ([i915#3743]) +1 other test fail
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][121] ([fdo#111615]) +2 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#4538] / [i915#5190]) +1 other test skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
    - shard-rkl:          NOTRUN -> [SKIP][123] ([fdo#110723])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#3886] / [i915#5354] / [i915#6095])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_rc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#5354] / [i915#6095]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#5354] / [i915#6095]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#3734] / [i915#5354] / [i915#6095]) +1 other test skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#5354]) +5 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#3689] / [i915#3886] / [i915#5354]) +10 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#3689] / [i915#5354]) +17 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-1/igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#5354]) +37 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-1/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#4087]) +3 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([fdo#111827])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_chamelium_color@ctm-blue-to-red.html
    - shard-rkl:          NOTRUN -> [SKIP][134] ([fdo#111827])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-mtlp:         NOTRUN -> [SKIP][135] ([fdo#111827])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_edid@vga-edid-read:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#7828]) +6 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_chamelium_edid@vga-edid-read.html

  * igt@kms_chamelium_frames@vga-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#7828])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_chamelium_frames@vga-frame-dump.html

  * igt@kms_color@deep-color:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#3555])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-2/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#7118]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#3299]) +1 other test skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#3299])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#7118])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#3555] / [i915#8814])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#3359]) +1 other test skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][145] ([i915#8841]) +1 other test dmesg-warn
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-snb7/igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#3546])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#4213])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([fdo#109274] / [i915#5354]) +5 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][149] -> [FAIL][150] ([i915#2346])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@single-move@all-pipes:
    - shard-mtlp:         [PASS][151] -> [DMESG-WARN][152] ([i915#2017])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-8/igt@kms_cursor_legacy@single-move@all-pipes.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#9227])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#9227])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg1-17/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#9226] / [i915#9261]) +1 other test skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#9226] / [i915#9261]) +1 other test skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg1-17/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#1257])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_dp_aux_dev.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#3555] / [i915#3840])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#3555] / [i915#3840]) +1 other test skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([fdo#109274]) +3 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_flip@2x-dpms-vs-vblank-race.html
    - shard-rkl:          NOTRUN -> [SKIP][161] ([fdo#111825]) +4 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#3637])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#8381])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([fdo#109274] / [fdo#111767])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@absolute-wf_vblank@d-edp1:
    - shard-mtlp:         [PASS][165] -> [DMESG-WARN][166] ([i915#9157])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-6/igt@kms_flip@absolute-wf_vblank@d-edp1.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-8/igt@kms_flip@absolute-wf_vblank@d-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][167] ([i915#3555] / [i915#8810])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#2672])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#2672]) +2 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#2672] / [i915#3555])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:
    - shard-dg2:          [PASS][171] -> [FAIL][172] ([i915#6880]) +1 other test fail
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][173] ([fdo#111825] / [i915#1825]) +4 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#8708]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#8708]) +10 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#3458]) +15 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
    - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#3023]) +5 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#1825]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#3555] / [i915#8228])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
    - shard-mtlp:         NOTRUN -> [SKIP][180] ([fdo#109289]) +1 other test skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][181] ([i915#8292])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg1-16/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#5176] / [i915#9423]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][183] ([i915#5235]) +11 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][184] ([i915#5235]) +3 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#5235]) +3 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#5235]) +3 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#658]) +2 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#1072]) +5 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#1072]) +1 other test skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-rkl:          [PASS][190] -> [INCOMPLETE][191] ([i915#8875])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-2/igt@kms_rotation_crc@primary-rotation-270.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#4235])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-mtlp:         NOTRUN -> [SKIP][193] ([i915#4235])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#3555] / [i915#4098])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [FAIL][195] ([i915#5465]) +1 other test fail
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-snb1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-mtlp:         NOTRUN -> [SKIP][196] ([i915#3555] / [i915#8809])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          NOTRUN -> [FAIL][197] ([IGT#2])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_sysfs_edid_timing.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([fdo#109309])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
    - shard-mtlp:         [PASS][199] -> [FAIL][200] ([i915#9196]) +1 other test fail
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html

  * igt@kms_vblank@pipe-c-query-idle-hang:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#4070] / [i915#6768])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_vblank@pipe-c-query-idle-hang.html

  * igt@kms_vblank@pipe-d-query-busy-hang:
    - shard-glk:          NOTRUN -> [SKIP][202] ([fdo#109271]) +57 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk9/igt@kms_vblank@pipe-d-query-busy-hang.html

  * igt@kms_vblank@pipe-d-wait-forked-busy:
    - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#4070] / [i915#533] / [i915#6768])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_vblank@pipe-d-wait-forked-busy.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#3555])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@kms_vrr@negative-basic.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#3708])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#3708] / [i915#4077])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@prime_vgem@basic-gtt.html

  * igt@v3d/v3d_job_submission@array-job-submission:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#2575]) +10 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@v3d/v3d_job_submission@array-job-submission.html

  * igt@v3d/v3d_submit_csd@bad-multisync-extension:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([fdo#109315]) +1 other test skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@v3d/v3d_submit_csd@bad-multisync-extension.html

  * igt@v3d/v3d_wait_bo@unused-bo-0ns:
    - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#2575])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@v3d/v3d_wait_bo@unused-bo-0ns.html

  * igt@vc4/vc4_mmap@mmap-bo:
    - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#7711]) +4 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@vc4/vc4_mmap@mmap-bo.html
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#7711]) +1 other test skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@vc4/vc4_mmap@mmap-bo.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [FAIL][212] ([i915#7742]) -> [PASS][213]
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_ctx_persistence@legacy-engines-hostile@blt:
    - shard-mtlp:         [ABORT][214] ([i915#9414]) -> [PASS][215]
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-4/igt@gem_ctx_persistence@legacy-engines-hostile@blt.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@gem_ctx_persistence@legacy-engines-hostile@blt.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          [FAIL][216] ([i915#5784]) -> [PASS][217]
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg1-17/igt@gem_eio@unwedge-stress.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg1-14/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][218] ([i915#2842]) -> [PASS][219]
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-rkl:          [FAIL][220] ([i915#2842]) -> [PASS][221]
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-mtlp:         [DMESG-FAIL][222] ([i915#8962]) -> [PASS][223]
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-4/igt@gem_exec_flush@basic-wb-rw-before-default.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-8/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [INCOMPLETE][224] -> [PASS][225]
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [INCOMPLETE][226] ([i915#9407]) -> [PASS][227]
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][228] ([i915#1397]) -> [PASS][229]
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-3/igt@i915_pm_rpm@dpms-lpsp.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][230] ([i915#7790]) -> [PASS][231]
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-snb1/igt@i915_pm_rps@reset.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-snb1/igt@i915_pm_rps@reset.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][232] ([i915#5138]) -> [PASS][233] +1 other test pass
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-tglu:         [FAIL][234] ([i915#3743]) -> [PASS][235] +3 other tests pass
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-apl:          [FAIL][236] ([i915#2346]) -> [PASS][237]
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@forked-bo@all-pipes:
    - shard-mtlp:         [DMESG-WARN][238] ([i915#2017]) -> [PASS][239]
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-4/igt@kms_cursor_legacy@forked-bo@all-pipes.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-8/igt@kms_cursor_legacy@forked-bo@all-pipes.html

  * {igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-2}:
    - shard-rkl:          [INCOMPLETE][240] -> [PASS][241]
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-2.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-2.html

  * {igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4}:
    - shard-dg1:          [FAIL][242] ([i915#9196]) -> [PASS][243]
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg1-14/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4.html

  * igt@perf@enable-disable@0-rcs0:
    - shard-dg2:          [FAIL][244] ([i915#8724]) -> [PASS][245]
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-2/igt@perf@enable-disable@0-rcs0.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [FAIL][246] ([i915#4349]) -> [PASS][247] +3 other tests pass
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-4/igt@perf_pmu@busy-double-start@bcs0.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-8/igt@perf_pmu@busy-double-start@bcs0.html

  
#### Warnings ####

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][248] ([i915#4816]) -> [SKIP][249] ([i915#4070] / [i915#4816])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-rkl:          [INCOMPLETE][250] ([i915#8875] / [i915#9475]) -> [INCOMPLETE][251] ([i915#8875])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-4/igt@kms_rotation_crc@primary-rotation-90.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-2/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [INCOMPLETE][252] ([i915#5493]) -> [CRASH][253] ([i915#9351])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg2-7/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  * igt@syncobj_timeline@invalid-signal-illegal-point:
    - shard-mtlp:         [DMESG-WARN][254] ([i915#2017]) -> [DMESG-WARN][255] ([i915#2017] / [i915#9157])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-4/igt@syncobj_timeline@invalid-signal-illegal-point.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-7/igt@syncobj_timeline@invalid-signal-illegal-point.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8724]: https://gitlab.freedesktop.org/drm/intel/issues/8724
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
  [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
  [i915#9157]: https://gitlab.freedesktop.org/drm/intel/issues/9157
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
  [i915#9407]: https://gitlab.freedesktop.org/drm/intel/issues/9407
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9475]: https://gitlab.freedesktop.org/drm/intel/issues/9475


Build changes
-------------

  * Linux: CI_DRM_13732 -> Patchwork_124853v2
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_13732: 7c57bbfe2c6194cc4d4edf50466b057d7b191251 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7523: 361c2f92f1fe5641090f2fc59951fcaba15387f5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124853v2: 7c57bbfe2c6194cc4d4edf50466b057d7b191251 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/index.html

--===============6555585321584817791==
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
<tr><td><b>Series:</b></td><td>More print message helper updates (rev2)</td=
></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/124853/">https://patchwork.freedesktop.org/series/124853/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_124853v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13732_full -&gt; Patchwork_124853v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_124853v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_124853v2_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v=
2/index.html</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
124853v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-1/igt@gem_exec_suspend@basic-s0@=
lmem0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-dg2-7/igt@i915_pm_rc6_residency@rc6-accuracy.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
4853v2/shard-dg2-3/igt@i915_pm_rc6_residency@rc6-accuracy.html">FAIL</a></l=
i>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124853v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13732/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13732/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13732/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13732/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk5/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk5/b=
oot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13732/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13732/shard-glk4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732=
/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13732/shard-glk3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3732/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13732/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shar=
d-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-glk9/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_124853v2/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-g=
lk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_124853v2/shard-glk2/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk3/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v=
2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_124853v2/shard-glk3/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_124853v2/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_124853v2/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_124853v2/shard-glk4/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_124853v2/shard-glk8/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk8/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_124853v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_124853v2/shard-glk8/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk=
8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_124853v2/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk9/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_124853v2/shard-glk9/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@api_intel_bb@blit-reloc-kee=
p-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8411">i915#8411</a>) +1 other test skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@api_intel_bb@blit-reloc-kee=
p-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8411">i915#8411</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@drm_fdinfo@busy-check-all=
@vecs1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8414">i915#8414</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@gem_bad_reloc@negative-rel=
oc-lut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@gem_close_race@multigpu-ba=
sic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_create@create-ext-cpu-=
access-big.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7461">i915#7461</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853=
v2/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation@vcs1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-mtlp-5/igt@gem_ctx_isolation@preservation@vcs1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
124853v2/shard-mtlp-2/igt@gem_ctx_isolation@preservation@vcs1.html">ABORT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9=
414</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-mtlp-6/igt@gem_ctx_persistence@engines-hang@vcs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_124853v2/shard-mtlp-4/igt@gem_ctx_persistence@engines-hang@vcs0.html">ABO=
RT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9262">i9=
15#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_ctx_persistence@heartb=
eat-stop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@idempotent:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-snb1/igt@gem_ctx_persistence@idempot=
ent.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@gem_eio@hibernate.html">AB=
ORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975">i=
915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_exec_fair@basic-none-s=
hare.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4852">i915#4852</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
4853v2/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
124853v2/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#28=
42</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@gem_exec_fence@submit3.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/48=
12">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-snb1/igt@gem_exec_fence@syncobj-back=
ward-timeline-chain-engines.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +124 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-g=
tt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3281">i915#3281</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-=
noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder-corked@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-mtlp-6/igt@gem_exec_schedule@noreorder-corked@ccs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_124853v2/shard-mtlp-4/igt@gem_exec_schedule@noreorder-corked@ccs0.html"=
>DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8962">i915#8962</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_exec_schedule@preempt-=
queue-contexts-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-glk9/igt@gem_lmem_evict@dontneed-evi=
ct-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124=
853v2/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4936">i915#49=
36</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i=
915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read-write-distinct:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@gem_mmap_gtt@basic-read-wr=
ite-distinct.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4077">i915#4077</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@gem_mmap_gtt@basic-write-=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_mmap_wc@write-gtt-read=
-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4083">i915#4083</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-display:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_partial_pwrite_pread@w=
rite-display.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@bench:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@gem_pread@bench.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i91=
5#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-snb7/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">=
i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-glk9/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_pxp@protected-encrypte=
d-src-copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4270">i915#4270</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_tiled_pread_pwrite.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
9">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@gem_userptr_blits@readonl=
y-pwrite-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@gen7_exec_parse@basic-all=
ocation.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@gen7_exec_parse@basic-allo=
wed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@gen9_exec_parse@allowed-si=
ngle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2856">i915#2856</a>) +3 other tests skip</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-apl4/igt@gen9_exec_parse@allowed-sing=
le.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5566">i915#5566</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13732/shard-glk4/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2=
/shard-glk8/igt@gen9_exec_parse@allowed-single.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</=
p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@gen9_exec_parse@bb-start-o=
ut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@i915_module_load@reload-w=
ith-fault-injection.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/8617">i915#8617</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-dg1-18/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/s=
hard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +1 other tes=
t skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/sha=
rd-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@i915_pm_rpm@modeset-lpsp-st=
ress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1397">i915#1397</a>) +1 other test skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp-st=
ress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1397">i915#1397</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-dg2-6/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_124853v2/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wai=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@i915_pm_rps@min-max-config=
-loaded.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
4853v2/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375=
</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/404">i915#404</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_big_fb@4-tiled-8bpp-rot=
ate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111614">fdo#111614</a>) +3 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-rot=
ate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5286">i915#5286</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_big_fb@y-tiled-64bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5190">i915#5190</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_124853v2/shard-tglu-7/igt@kms_big_fb@y-tiled=
-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 ot=
her test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_big_fb@y-tiled-max-hw=
-stride-64bpp-rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5190">i915#5190</a>) +1 other test skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D110723">fdo#110723</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_ccs@pipe-a-missing-cc=
s-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_ccs@pipe-a-random-ccs-=
data-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_ccs@pipe-b-ccs-on-ano=
ther-bo-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_ccs@pipe-b-crc-primary=
-basic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3734">i915#3734</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_ccs@pipe-c-bad-aux-str=
ide-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5354">i915#5354</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_ccs@pipe-c-bad-rotatio=
n-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +10 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-1/igt@kms_ccs@pipe-d-crc-primary=
-basic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-1/igt@kms_ccs@pipe-d-crc-sprite-=
planes-basic-4_tiled_mtl_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a>) +37 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_cdclk@plane-scaling@pi=
pe-c-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_chamelium_color@ctm-blu=
e-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_chamelium_color@ctm-blu=
e-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_chamelium_color@ctm-g=
reen-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@vga-edid-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_chamelium_edid@vga-edi=
d-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@vga-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_chamelium_frames@vga-f=
rame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-2/igt@kms_color@deep-color.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_content_protection@ato=
mic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7118">i915#7118</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@kms_content_protection@dp=
-mst-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3299">i915#3299</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_content_protection@dp=
-mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_content_protection@lic=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-ran=
dom-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-snb7/igt@kms_cursor_crc@cursor-suspe=
nd@pipe-b-vga-1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/8841">i915#8841</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_cursor_legacy@2x-curs=
or-vs-flip-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_cursor_legacy@cursorb-=
vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5354">i915#5354</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_124853v2/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-move@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-mtlp-8/igt@kms_cursor_legacy@single-move@all-pipes.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_124853v2/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2017">i915#2017</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@=
fbc-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg1-17/igt@kms_dirtyfb@dirtyfb-ioctl=
@fbc-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@=
psr-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9226">i915#9226</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg1-17/igt@kms_dirtyfb@dirtyfb-ioctl=
@psr-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9226">i915#9226</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_dp_aux_dev.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1257">i915#=
1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_dsc@dsc-with-formats.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_flip@2x-dpms-vs-vblank-=
race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109274">fdo#109274</a>) +3 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_flip@2x-dpms-vs-vblank-=
race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111825">fdo#111825</a>) +4 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_flip@2x-dpms-vs-vblan=
k-race-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_flip@2x-flip-vs-fences=
-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_flip@2x-flip-vs-rmfb-i=
nterruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@absolute-wf_vblank@d-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-mtlp-6/igt@kms_flip@absolute-wf_vblank@d-edp1.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
24853v2/shard-mtlp-8/igt@kms_flip@absolute-wf_vblank@d-edp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9157">i91=
5#9157</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-=
32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8810">i915=
#8810</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri=
-indfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_frontbuffer_trackin=
g@fbc-1p-offscren-pri-indfb-draw-pwrite.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>) +1 other test =
fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +4 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +10 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_frontbuffer_tracking@ps=
r-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +15 other tests skip<=
/p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_frontbuffer_tracking@ps=
r-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +5 other tests skip</=
p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_hdr@bpc-switch.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_pipe_b_c_ivb@pipe-b-d=
ouble-modeset-then-modeset-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109289">fdo#109289</a>) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg1-16/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423<=
/a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-=
hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg1-17/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1=
1 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-e=
dp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-=
hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-6/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/658">i915#658</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_psr@psr2_cursor_mmap_c=
pu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1072">i915#1072</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_psr@psr2_no_drrs.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072"=
>i915#1072</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-rkl-2/igt@kms_rotation_crc@primary-rotation-270.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_124853v2/shard-rkl-7/igt@kms_rotation_crc@primary-rotation-270.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8875"=
>i915#8875</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_rotation_crc@sprite-ro=
tation-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_rotation_crc@sprite-r=
otation-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_setmode@basic-clone-si=
ngle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-snb1/igt@kms_setmode@basic@pipe-a-hd=
mi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5465">i915#5465</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_setmode@invalid-clone=
-single-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_sysfs_edid_timing.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/iss=
ues/2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_tv_load_detect@load-de=
tect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109309">fdo#109309</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-d-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_124853v2/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pi=
pe-d-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9196">i915#9196</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-query-idle-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_vblank@pipe-c-query-id=
le-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/6768">i915#6768</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-busy-hang:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-glk9/igt@kms_vblank@pipe-d-query-bus=
y-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +57 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-busy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_vblank@pipe-d-wait-for=
ked-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/533">i915#533</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/6768">i915#6768</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@kms_vrr@negative-basic.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@prime_vgem@basic-fence-fl=
ip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@prime_vgem@basic-gtt.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708"=
>i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_job_submission@array-job-submission:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@v3d/v3d_job_submission@arr=
ay-job-submission.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2575">i915#2575</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-multisync-extension:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@v3d/v3d_submit_csd@bad-mul=
tisync-extension.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109315">fdo#109315</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@unused-bo-0ns:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@v3d/v3d_wait_bo@unused-bo=
-0ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_mmap@mmap-bo:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@vc4/vc4_mmap@mmap-bo.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7711">=
i915#7711</a>) +4 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@vc4/vc4_mmap@mmap-bo.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7711">=
i915#7711</a>) +1 other test skip</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742=
">i915#7742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_124853v2/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile@blt:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-mtlp-4/igt@gem_ctx_persistence@legacy-engines-hostile@b=
lt.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9414">i915#9414</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@gem_ctx_persistence@legacy-engi=
nes-hostile@blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-dg1-17/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v=
2/shard-dg1-14/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13732/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_124853v2/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a></p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13732/shard-rkl-3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_124853v2/shard-rkl-6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-mtlp-4/igt@gem_exec_flush@basic-wb-rw-before-default.ht=
ml">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8962">i915#8962</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_124853v2/shard-mtlp-8/igt@gem_exec_flush@basic-wb-rw-befo=
re-default.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-snb4/igt@i915_module_load@reload-with-fault-injection.h=
tml">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_124853v2/shard-snb7/igt@i915_module_load@reload-with-fault-inj=
ection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9407=
">i915#9407</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_124853v2/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-rkl-3/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/=
shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-snb1/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/7790">i915#7790</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2=
/shard-snb1/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-hflip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotat=
e-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_124853v2/shard-tglu-5/igt@kms_big_fb@x-tiled=
-max-hw-stride-64bpp-rotate-180-async-flip.html">PASS</a> +3 other tests pa=
ss</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_124853v2/shard-apl6/igt@kms_cursor_legacy@flip-vs-curso=
r-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@forked-bo@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-mtlp-4/igt@kms_cursor_legacy@forked-bo@all-pipes.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2017">i915#2017</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_124853v2/shard-mtlp-8/igt@kms_cursor_legacy@forked-bo@all-pip=
es.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a-h=
dmi-a-2}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers@pipe-a-hdmi-a-2.html">INCOMPLETE</a> -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_pl=
ane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-2.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hd=
mi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_124853v2/shard-dg1-14/igt@kms_universal_plane@cursor-f=
b-leak@pipe-a-hdmi-a-4.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8724">i915#8724</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124=
853v2/shard-dg2-2/igt@perf@enable-disable@0-rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-mtlp-4/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_124853v2/shard-mtlp-8/igt@perf_pmu@busy-double-start@bcs0.html">PASS</a> =
+3 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4816">i915#4816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_124853v2/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pi=
pe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-rkl-4/igt@kms_rotation_crc@primary-rotation-90.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/88=
75">i915#8875</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9475">i915#9475</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_124853v2/shard-rkl-2/igt@kms_rotation_crc@primary-rotatio=
n-90.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8875">i915#8875</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-dg2-7/igt@prime_mmap@test_aperture_limit@test_aperture_=
limit-smem.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5493">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@prime_mmap@test_ape=
rture_limit@test_aperture_limit-smem.html">CRASH</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/9351">i915#9351</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-signal-illegal-point:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13732/shard-mtlp-4/igt@syncobj_timeline@invalid-signal-illegal-poin=
t.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2017">i915#2017</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_124853v2/shard-mtlp-7/igt@syncobj_timeline@invalid-si=
gnal-illegal-point.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2017">i915#2017</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/9157">i915#9157</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13732 -&gt; Patchwork_124853v2</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13732: 7c57bbfe2c6194cc4d4edf50466b057d7b191251 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7523: 361c2f92f1fe5641090f2fc59951fcaba15387f5 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124853v2: 7c57bbfe2c6194cc4d4edf50466b057d7b191251 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6555585321584817791==--
