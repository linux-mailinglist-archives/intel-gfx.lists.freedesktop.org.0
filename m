Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD00D141274
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 21:47:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B59A6F91C;
	Fri, 17 Jan 2020 20:47:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3456B6F91B;
 Fri, 17 Jan 2020 20:47:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2A232A41FB;
 Fri, 17 Jan 2020 20:47:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 17 Jan 2020 20:47:18 -0000
Message-ID: <157929403815.26754.16164809720811573362@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115083346.2601512-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200115083346.2601512-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=5D_drm/i915=3A_Keep_track_of_request_am?=
 =?utf-8?q?ong_the_scheduling_lists_=28rev3=29?=
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

Series: series starting with [v2] drm/i915: Keep track of request among the scheduling lists (rev3)
URL   : https://patchwork.freedesktop.org/series/72048/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7748_full -> Patchwork_16108_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16108_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16108_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16108_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_async@concurrent-writes-bsd1:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb1/igt@gem_exec_async@concurrent-writes-bsd1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-tglb4/igt@gem_exec_async@concurrent-writes-bsd1.html

  * igt@gem_exec_async@concurrent-writes-bsd2:
    - shard-tglb:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-tglb8/igt@gem_exec_async@concurrent-writes-bsd2.html

  * igt@runner@aborted:
    - shard-kbl:          NOTRUN -> ([FAIL][4], [FAIL][5], [FAIL][6]) ([i915#841])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-kbl3/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-kbl7/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-kbl7/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-apl:          [FAIL][7] ([i915#667]) -> ([FAIL][8], [FAIL][9])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-apl6/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-apl8/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-apl7/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16108_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@processes:
    - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#570])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-glk1/igt@gem_ctx_persistence@processes.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-glk5/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#679])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-glk1/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-glk8/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-persistence:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb4/igt@gem_ctx_persistence@vcs1-persistence.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-iclb6/igt@gem_ctx_persistence@vcs1-persistence.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [PASS][16] -> [INCOMPLETE][17] ([i915#69])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-skl9/igt@gem_eio@in-flight-suspend.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-skl5/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][18] -> [INCOMPLETE][19] ([i915#82])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-snb2/igt@gem_eio@kms.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-snb5/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@hang:
    - shard-kbl:          [PASS][20] -> [INCOMPLETE][21] ([fdo#103665])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-kbl7/igt@gem_exec_balancer@hang.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-kbl3/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_create@basic:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([fdo#111736] / [i915#472])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb7/igt@gem_exec_create@basic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-tglb3/igt@gem_exec_create@basic.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][24] -> [SKIP][25] ([fdo#112080]) +9 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#109276]) +24 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([i915#677])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#112146]) +7 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-render:
    - shard-tglb:         [PASS][32] -> [INCOMPLETE][33] ([fdo#111606] / [fdo#111677] / [i915#472]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb8/igt@gem_exec_schedule@preempt-queue-render.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-tglb6/igt@gem_exec_schedule@preempt-queue-render.html

  * igt@gem_exec_schedule@preempt-queue-vebox:
    - shard-tglb:         [PASS][34] -> [INCOMPLETE][35] ([fdo#111677] / [i915#472])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb5/igt@gem_exec_schedule@preempt-queue-vebox.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-tglb3/igt@gem_exec_schedule@preempt-queue-vebox.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][36] -> [INCOMPLETE][37] ([i915#463] / [i915#472])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb8/igt@gem_exec_schedule@smoketest-bsd1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [PASS][38] -> [INCOMPLETE][39] ([fdo#103665] / [i915#530])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-kbl4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-kbl1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-tglb:         [PASS][40] -> [TIMEOUT][41] ([fdo#112126] / [fdo#112271])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [PASS][42] -> [TIMEOUT][43] ([fdo#112271] / [i915#530])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-glk:          [PASS][44] -> [TIMEOUT][45] ([fdo#112271] / [i915#530])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-glk4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-glk4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [PASS][46] -> [TIMEOUT][47] ([fdo#112271] / [i915#530]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-skl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-skl10/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-glk:          [PASS][48] -> [TIMEOUT][49] ([fdo#112271])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-glk4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-glk4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-iclb:         [PASS][50] -> [FAIL][51] ([i915#520])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-iclb6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-apl:          [PASS][52] -> [INCOMPLETE][53] ([CI#80] / [fdo#103927] / [i915#530])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-kbl:          [PASS][54] -> [TIMEOUT][55] ([fdo#112271] / [i915#530])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-hsw:          [PASS][56] -> [INCOMPLETE][57] ([i915#530] / [i915#61]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-hsw5/igt@gem_persistent_relocs@forked-thrashing.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-hsw7/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@i915_selftest@live_execlists:
    - shard-kbl:          [PASS][58] -> [DMESG-FAIL][59] ([i915#841])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-kbl2/igt@i915_selftest@live_execlists.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-kbl7/igt@i915_selftest@live_execlists.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][60] -> [DMESG-WARN][61] ([i915#109])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-skl5/igt@kms_color@pipe-a-ctm-0-5.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-skl5/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - shard-skl:          [PASS][62] -> [FAIL][63] ([i915#54])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][64] -> [FAIL][65] ([i915#79])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-tglb:         [PASS][66] -> [FAIL][67] ([i915#49])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][68] -> [DMESG-WARN][69] ([i915#180]) +3 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-position-covered-pipe-c-planes:
    - shard-skl:          [PASS][70] -> [FAIL][71] ([i915#247])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-skl2/igt@kms_plane@plane-position-covered-pipe-c-planes.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-skl4/igt@kms_plane@plane-position-covered-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][72] -> [FAIL][73] ([fdo#108145] / [i915#265]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][74] -> [SKIP][75] ([fdo#109441]) +3 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][76] -> [FAIL][77] ([i915#31])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-apl7/igt@kms_setmode@basic.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-apl3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][78] -> [DMESG-WARN][79] ([i915#180]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-apl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][80] -> [INCOMPLETE][81] ([i915#61])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Possible fixes ####

  * igt@drm_import_export@prime:
    - shard-hsw:          [INCOMPLETE][82] ([CI#80] / [i915#61]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-hsw2/igt@drm_import_export@prime.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-hsw5/igt@drm_import_export@prime.html

  * igt@gem_busy@close-race:
    - shard-tglb:         [INCOMPLETE][84] ([i915#472] / [i915#977]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb6/igt@gem_busy@close-race.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-tglb5/igt@gem_busy@close-race.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [FAIL][86] ([i915#679]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-apl4/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-apl2/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][88] ([fdo#109276] / [fdo#112080]) -> [PASS][89] +4 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb5/igt@gem_ctx_persistence@vcs1-queued.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [FAIL][90] ([i915#490]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-snb6/igt@gem_eio@in-flight-contexts-1us.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-snb7/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@in-flight-external:
    - shard-tglb:         [INCOMPLETE][92] ([i915#472] / [i915#534]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb6/igt@gem_eio@in-flight-external.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-tglb3/igt@gem_eio@in-flight-external.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][94] ([i915#472] / [i915#476]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb3/igt@gem_exec_parallel@basic.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-tglb4/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][96] ([i915#677]) -> [PASS][97] +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-tglb:         [INCOMPLETE][98] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][100] ([fdo#112146]) -> [PASS][101] +7 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [INCOMPLETE][102] ([i915#456] / [i915#472]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb3/igt@gem_exec_suspend@basic-s0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-tglb4/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-apl:          [TIMEOUT][104] ([fdo#112271]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-kbl:          [TIMEOUT][106] ([fdo#112271] / [i915#530]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][108] ([fdo#103665] / [i915#530]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-kbl3/igt@gem_persistent_relocs@forked-thrashing.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-kbl7/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][110] ([i915#472] / [i915#707] / [i915#796]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb6/igt@gem_pipe_control_store_loop@reused-buffer.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-tglb7/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][112] ([i915#644]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][114] ([i915#180]) -> [PASS][115] +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-apl4/igt@gem_softpin@noreloc-s3.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-apl2/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][116] ([i915#472]) -> [PASS][117] +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb6/igt@gem_sync@basic-store-each.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-tglb1/igt@gem_sync@basic-store-each.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][118] ([i915#413]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb4/igt@i915_pm_rps@reset.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-iclb1/igt@i915_pm_rps@reset.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][120] ([i915#109]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-skl3/igt@kms_color@pipe-b-ctm-0-75.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-skl10/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
    - shard-apl:          [DMESG-WARN][122] -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-apl1/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-apl7/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][124] ([i915#79]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          [INCOMPLETE][126] ([i915#58] / [k.org#198133]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][128] ([fdo#108145]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][130] ([fdo#109642] / [fdo#111068]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][132] ([fdo#109441]) -> [PASS][133] +3 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][134] ([i915#180]) -> [PASS][135] +6 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][136] ([fdo#112080]) -> [PASS][137] +13 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][138] ([fdo#109276]) -> [PASS][139] +21 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][140] ([fdo#109349]) -> [DMESG-WARN][141] ([fdo#107724])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#841]: https://gitlab.freedesktop.org/drm/intel/issues/841
  [i915#977]: https://gitlab.freedesktop.org/drm/intel/issues/977
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16108/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
