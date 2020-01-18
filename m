Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A931415E3
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2020 06:12:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36A9C6F9B3;
	Sat, 18 Jan 2020 05:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6C9526F9B2;
 Sat, 18 Jan 2020 05:12:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 626D0A0087;
 Sat, 18 Jan 2020 05:12:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Sat, 18 Jan 2020 05:12:05 -0000
Message-ID: <157932432539.11511.2753361317317033140@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115152437.13207-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200115152437.13207-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Align_engine-=3Euabi=5Fclass/instance_with_i915=5Fdrm?=
 =?utf-8?q?=2Eh?=
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

Series: drm/i915: Align engine->uabi_class/instance with i915_drm.h
URL   : https://patchwork.freedesktop.org/series/72078/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7751_full -> Patchwork_16114_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16114_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16114_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16114_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-hsw2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16114_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][2] -> [INCOMPLETE][3] ([i915#472] / [i915#977])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb7/igt@gem_busy@close-race.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-tglb6/igt@gem_busy@close-race.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([fdo#111735] / [i915#472])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb5/igt@gem_ctx_shared@q-smoketest-all.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-tglb1/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([fdo#111736] / [i915#472])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb5/igt@gem_exec_await@wide-contexts.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-tglb6/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([i915#472] / [i915#476]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb7/igt@gem_exec_parallel@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-tglb7/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([i915#470] / [i915#472])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb4/igt@gem_exec_parallel@fds.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-tglb3/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_parallel@rcs0-fds:
    - shard-hsw:          [PASS][14] -> [TIMEOUT][15] ([fdo#112271])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-hsw7/igt@gem_exec_parallel@rcs0-fds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-hsw2/igt@gem_exec_parallel@rcs0-fds.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112146]) +5 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#109276]) +14 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-render:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([fdo#111606] / [fdo#111677] / [i915#472])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb8/igt@gem_exec_schedule@preempt-queue-render.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-tglb6/igt@gem_exec_schedule@preempt-queue-render.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#472] / [i915#707])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd2.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([i915#472]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb4/igt@gem_exec_suspend@basic-s0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-tglb3/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#520])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl9/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-skl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-hsw:          [PASS][28] -> [FAIL][29] ([i915#520])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-kbl:          [PASS][30] -> [TIMEOUT][31] ([fdo#112271] / [i915#530])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [PASS][32] -> [TIMEOUT][33] ([fdo#112271] / [i915#530])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-skl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-apl:          [PASS][34] -> [TIMEOUT][35] ([fdo#112271] / [i915#530])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-glk:          [PASS][36] -> [TIMEOUT][37] ([fdo#112271] / [i915#530])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-glk1/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-glk9/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-snb:          [PASS][38] -> [FAIL][39] ([i915#520])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-snb5/igt@gem_persistent_relocs@forked-thrashing.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-snb4/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [PASS][40] -> [DMESG-WARN][41] ([i915#109])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl8/igt@kms_color@pipe-b-ctm-0-75.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-skl9/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][42] -> [DMESG-WARN][43] ([i915#180]) +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#699])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl3/igt@kms_flip_tiling@flip-changes-tiling.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-skl5/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
    - shard-tglb:         [PASS][46] -> [FAIL][47] ([i915#49]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([fdo#108145] / [i915#265]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109642] / [fdo#111068])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb5/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([fdo#109441])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb4/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#31])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl1/igt@kms_setmode@basic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-skl2/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][56] -> [SKIP][57] ([fdo#112080]) +8 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb8/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][58] ([fdo#109276] / [fdo#112080]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb5/igt@gem_ctx_isolation@vcs1-none.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb4/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-apl:          [FAIL][60] ([i915#679]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl4/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-apl1/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][62] ([fdo#110841]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][64] ([fdo#110854]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][66] ([fdo#112080]) -> [PASS][67] +15 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][68] ([i915#677]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][70] ([fdo#112146]) -> [PASS][71] +4 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb1/igt@gem_exec_schedule@preempt-bsd.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb8/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [INCOMPLETE][72] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [INCOMPLETE][74] ([fdo#111677] / [i915#472]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][76] ([fdo#112271] / [i915#530]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-kbl:          [TIMEOUT][78] ([fdo#112271] / [i915#530]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-skl:          [TIMEOUT][80] ([fdo#112271] / [i915#530]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-skl1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
    - shard-snb:          [TIMEOUT][82] ([fdo#112271] / [i915#530]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-snb7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-snb7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-iclb:         [FAIL][84] ([i915#520]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][86] ([fdo#103665] / [i915#530]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl3/igt@gem_persistent_relocs@forked-thrashing.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-kbl3/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][88] ([i915#644]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][90] ([i915#472]) -> [PASS][91] +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb6/igt@gem_sync@basic-store-each.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-tglb1/igt@gem_sync@basic-store-each.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][92] ([i915#180]) -> [PASS][93] +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl6/igt@gem_workarounds@suspend-resume.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-apl3/igt@gem_workarounds@suspend-resume.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][94] ([i915#109]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl2/igt@kms_color@pipe-a-ctm-0-75.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][96] ([i915#300]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][98] ([i915#221]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl2/igt@kms_flip@flip-vs-suspend.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-skl9/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [FAIL][100] ([i915#49]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][102] ([i915#56]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][104] ([fdo#108145]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-skl:          [DMESG-WARN][106] ([IGT#6]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl2/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-skl9/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][108] ([fdo#109642] / [fdo#111068]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@kms_psr2_su@frontbuffer.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][110] ([fdo#109441]) -> [PASS][111] +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][112] ([i915#31]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl4/igt@kms_setmode@basic.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-apl7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][114] ([i915#180]) -> [PASS][115] +3 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][116] ([fdo#109276]) -> [PASS][117] +15 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][118] ([IGT#28]) -> [SKIP][119] ([fdo#109276] / [fdo#112080])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][120] ([fdo#109276] / [fdo#112080]) -> [FAIL][121] ([IGT#28])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][122] ([i915#468]) -> [FAIL][123] ([i915#454])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][124] ([i915#454]) -> [SKIP][125] ([i915#468])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#977]: https://gitlab.freedesktop.org/drm/intel/issues/977


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7751 -> Patchwork_16114

  CI-20190529: 20190529
  CI_DRM_7751: bffb5bf41a2e3d84ee5043dcccad49578656a012 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16114: 6122f6e7ddab862408cb9e9181546b95b0ca0dca @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
