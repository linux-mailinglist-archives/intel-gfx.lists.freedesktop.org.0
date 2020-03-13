Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F4236184082
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 06:30:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F276F6E1C0;
	Fri, 13 Mar 2020 05:30:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B53426E1C0;
 Fri, 13 Mar 2020 05:30:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE773A0019;
 Fri, 13 Mar 2020 05:30:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Fri, 13 Mar 2020 05:30:18 -0000
Message-ID: <158407741868.30353.12769199475258045748@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200312111542.2418545-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200312111542.2418545-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/3=5D_lib/i915/perf=3A_remove_genera?=
 =?utf-8?q?tion_code_for_mathml_render?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [v2,1/3] lib/i915/perf: remove generation code for mathml render
URL   : https://patchwork.freedesktop.org/series/74641/
State : failure

== Summary ==

CI Bug Log - changes from IGT_5506_full -> IGTPW_4298_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with IGTPW_4298_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in IGTPW_4298_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in IGTPW_4298_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-tglb3/igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-tglb6/igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait.html

  
Known issues
------------

  Here are the changes found in IGTPW_4298_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110854])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#454])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#413])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb7/igt@i915_pm_rps@waitboost.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb6/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#72])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-glk1/igt@kms_flip@flip-vs-expired-vblank.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-glk1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-apl8/igt@kms_flip@flip-vs-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-apl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109642] / [fdo#111068])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb4/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][29] -> [FAIL][30] ([i915#31])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-kbl7/igt@kms_setmode@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-kbl3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm:
    - shard-glk:          [PASS][31] -> [SKIP][32] ([fdo#109271])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-glk6/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-glk9/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html
    - shard-tglb:         [PASS][33] -> [SKIP][34] ([fdo#112015])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-tglb7/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-tglb6/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109278])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb4/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb3/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html

  * igt@perf_pmu@busy-accuracy-2-vcs1:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#112080]) +8 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb1/igt@perf_pmu@busy-accuracy-2-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb6/igt@perf_pmu@busy-accuracy-2-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109276]) +22 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb5/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][41] ([fdo#112080]) -> [PASS][42] +9 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb7/igt@gem_busy@extended-parallel-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb2/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@vcs1-s3:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-kbl2/igt@gem_ctx_isolation@vcs1-s3.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-kbl7/igt@gem_ctx_isolation@vcs1-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [INCOMPLETE][45] ([i915#1402]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb4/igt@gem_ctx_persistence@close-replace-race.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][47] ([fdo#110841]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][51] ([fdo#109276] / [i915#677]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][55] ([fdo#109276]) -> [PASS][56] +17 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-tglb:         [INCOMPLETE][57] ([i915#1401]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-tglb6/igt@gem_exec_whisper@basic-fds-priority.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-tglb2/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_softpin@noreloc-s3:
    - shard-hsw:          [INCOMPLETE][59] ([i915#61]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-hsw5/igt@gem_softpin@noreloc-s3.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-hsw5/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@sync-unmap:
    - shard-snb:          [DMESG-WARN][61] ([fdo#111870] / [i915#478]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-snb6/igt@gem_userptr_blits@sync-unmap.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-snb6/igt@gem_userptr_blits@sync-unmap.html
    - shard-hsw:          [DMESG-WARN][63] ([fdo#111870]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-hsw7/igt@gem_userptr_blits@sync-unmap.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-hsw6/igt@gem_userptr_blits@sync-unmap.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +4 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-apl7/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][67] ([i915#72]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][69] ([fdo#109642] / [fdo#111068]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb6/igt@kms_psr2_su@page_flip.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Warnings ####

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-snb:          [DMESG-WARN][73] ([fdo#111870] / [i915#478]) -> [DMESG-WARN][74] ([fdo#110789] / [fdo#111870] / [i915#478])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-snb2/igt@gem_userptr_blits@dmabuf-sync.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-snb6/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-hsw:          [DMESG-WARN][75] ([fdo#111870]) -> [DMESG-WARN][76] ([fdo#110789] / [fdo#111870])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-hsw6/igt@gem_userptr_blits@dmabuf-sync.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-hsw4/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-snb:          [DMESG-WARN][77] ([fdo#110789] / [fdo#111870] / [i915#478]) -> [DMESG-WARN][78] ([fdo#111870] / [i915#478])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-snb6/igt@gem_userptr_blits@sync-unmap-after-close.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-snb2/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@runner@aborted:
    - shard-hsw:          ([FAIL][79], [FAIL][80], [FAIL][81], [FAIL][82], [FAIL][83], [FAIL][84]) ([fdo#111870]) -> ([FAIL][85], [FAIL][86], [FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92]) ([fdo#111870] / [i915#478])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-hsw1/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-hsw6/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-hsw2/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-hsw7/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-hsw1/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5506/shard-hsw7/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-hsw4/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-hsw2/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-hsw4/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-hsw5/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-hsw1/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-hsw2/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-hsw6/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/shard-hsw6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110789]: https://bugs.freedesktop.org/show_bug.cgi?id=110789
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112015]: https://bugs.freedesktop.org/show_bug.cgi?id=112015
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1401]: https://gitlab.freedesktop.org/drm/intel/issues/1401
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5506 -> IGTPW_4298

  CI-20190529: 20190529
  CI_DRM_8126: 2bd9e989a5653d4cd710e9dd2b42b0a080f1add8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4298: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/index.html
  IGT_5506: 59fd8a0d01dac58dc6c7d86ef391ed4393ab5aae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4298/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
