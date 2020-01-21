Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B3D143877
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 09:40:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECA216EBE9;
	Tue, 21 Jan 2020 08:40:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BBEDA6E1FB;
 Tue, 21 Jan 2020 08:40:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 91DB1A0119;
 Tue, 21 Jan 2020 08:40:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 21 Jan 2020 08:40:36 -0000
Message-ID: <157959603659.11479.16590110396767063132@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200120104924.4000706-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200120104924.4000706-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915/gt=3A_Acquire_ce-=3Eactive?=
 =?utf-8?q?_before_ce-=3Epin=5Fcount/ce-=3Epin=5Fmutex?=
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

Series: series starting with [1/5] drm/i915/gt: Acquire ce->active before ce->pin_count/ce->pin_mutex
URL   : https://patchwork.freedesktop.org/series/72269/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7779_full -> Patchwork_16172_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16172_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#69])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-skl8/igt@gem_ctx_isolation@bcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-skl2/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-iclb4/igt@gem_ctx_isolation@vcs1-none.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-iclb6/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111735] / [i915#472])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-tglb7/igt@gem_ctx_shared@q-smoketest-vebox.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-tglb3/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112080]) +12 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#463] / [i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-tglb4/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#460] / [i915#472]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-tglb1/igt@gem_exec_suspend@basic-s4-devices.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-tglb4/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-hsw:          [PASS][19] -> [TIMEOUT][20] ([fdo#112271] / [i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [PASS][21] -> [TIMEOUT][22] ([fdo#112271] / [i915#530]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-kbl:          [PASS][23] -> [TIMEOUT][24] ([fdo#112271] / [i915#530]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#644])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#644])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-skl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-skl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_ringfill@basic-default-forked:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#472]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-tglb2/igt@gem_ringfill@basic-default-forked.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-tglb7/igt@gem_ringfill@basic-default-forked.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [PASS][31] -> [FAIL][32] ([i915#818]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-hsw8/igt@gem_tiled_blits@normal.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-hsw5/igt@gem_tiled_blits@normal.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [PASS][33] -> [INCOMPLETE][34] ([i915#82])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-snb1/igt@i915_selftest@mock_requests.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-snb1/igt@i915_selftest@mock_requests.html
    - shard-glk:          [PASS][35] -> [INCOMPLETE][36] ([i915#58] / [k.org#198133])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-glk4/igt@i915_selftest@mock_requests.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-glk1/igt@i915_selftest@mock_requests.html
    - shard-apl:          [PASS][37] -> [INCOMPLETE][38] ([fdo#103927])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-apl2/igt@i915_selftest@mock_requests.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-apl8/igt@i915_selftest@mock_requests.html
    - shard-hsw:          [PASS][39] -> [INCOMPLETE][40] ([i915#61]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-hsw4/igt@i915_selftest@mock_requests.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-hsw5/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#72])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([IGT#5])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([fdo#108145] / [i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-iclb6/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109276]) +25 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][57] ([fdo#112080]) -> [PASS][58] +12 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-iclb7/igt@gem_busy@busy-vcs1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +7 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][61] ([fdo#109276] / [fdo#112080]) -> [PASS][62] +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111735] / [i915#472]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-tglb:         [INCOMPLETE][65] ([i915#472]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-tglb5/igt@gem_exec_nop@basic-parallel.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-tglb2/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][67] ([fdo#112146]) -> [PASS][68] +7 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][69] ([i915#677]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [INCOMPLETE][71] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * {igt@gem_mmap_offset@open-flood}:
    - shard-snb:          [INCOMPLETE][73] ([i915#82]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-snb1/igt@gem_mmap_offset@open-flood.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-snb5/igt@gem_mmap_offset@open-flood.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-hsw:          [INCOMPLETE][75] ([i915#530] / [i915#61]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-hsw1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-hsw4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-apl:          [TIMEOUT][77] ([fdo#112271] / [i915#530]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-hsw:          [TIMEOUT][79] ([fdo#112271] / [i915#530]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [TIMEOUT][81] ([fdo#112271] / [i915#530]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-skl9/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-skl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-kbl:          [FAIL][83] ([i915#520]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][85] ([fdo#103665] / [i915#530]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-kbl3/igt@gem_persistent_relocs@forked-thrashing.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][87] ([i915#472] / [i915#707]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-tglb3/igt@gem_sync@basic-each.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-tglb2/igt@gem_sync@basic-each.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [INCOMPLETE][89] ([i915#151] / [i915#69]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-skl1/igt@i915_pm_rpm@system-suspend-execbuf.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-skl9/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_selftest@mock_requests:
    - shard-iclb:         [INCOMPLETE][91] ([i915#140]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-iclb6/igt@i915_selftest@mock_requests.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-iclb8/igt@i915_selftest@mock_requests.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - shard-skl:          [DMESG-WARN][93] ([i915#109]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-skl7/igt@kms_color@pipe-b-ctm-0-5.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-skl8/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-snb:          [INCOMPLETE][95] ([CI#80] / [i915#82]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-snb1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-random:
    - shard-skl:          [FAIL][97] ([i915#54]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-random.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x85-random.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:
    - shard-skl:          [FAIL][99] ([i915#52] / [i915#54]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-skl2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][101] ([i915#180]) -> [PASS][102] +3 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][103] ([i915#49]) -> [PASS][104] +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][105] ([i915#69]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][107] ([fdo#108145]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-y:
    - shard-skl:          [DMESG-WARN][109] ([IGT#6]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-skl5/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-skl2/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][111] ([fdo#109441]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-iclb3/igt@kms_psr@psr2_basic.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][113] ([i915#31]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-kbl1/igt@kms_setmode@basic.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-kbl2/igt@kms_setmode@basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][115] ([fdo#109276]) -> [PASS][116] +24 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][117] ([IGT#28]) -> [SKIP][118] ([fdo#109276] / [fdo#112080])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][119] ([fdo#107724]) -> [SKIP][120] ([fdo#109349])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][121] ([i915#997]) -> ([FAIL][122], [FAIL][123]) ([i915#873] / [i915#997])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-apl3/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-apl8/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-apl1/igt@runner@aborted.html
    - shard-glk:          ([FAIL][124], [FAIL][125], [FAIL][126]) ([i915#997] / [k.org#202321]) -> ([FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130]) ([i915#873] / [i915#997] / [k.org#202321])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-glk7/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-glk6/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/shard-glk3/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-glk7/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-glk1/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-glk2/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/shard-glk2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#873]: https://gitlab.freedesktop.org/drm/intel/issues/873
  [i915#997]: https://gitlab.freedesktop.org/drm/intel/issues/997
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (9 -> 10)
------------------------------

  Additional (1): pig-glk-j5005 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7779 -> Patchwork_16172

  CI-20190529: 20190529
  CI_DRM_7779: 9481f0a0238efb8a7f001e4cdc16388fc097a7e4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5373: 224e565df36693ab8ae8f58eb6ae42600c2464e2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16172: 0614af4d0caa263584b0d1f877c0618998f678e9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
