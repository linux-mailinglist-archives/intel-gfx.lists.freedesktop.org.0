Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA37D142061
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Jan 2020 23:15:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E95A86E45F;
	Sun, 19 Jan 2020 22:14:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DE3F96E45F;
 Sun, 19 Jan 2020 22:14:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CE9E1A363B;
 Sun, 19 Jan 2020 22:14:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Sun, 19 Jan 2020 22:14:58 -0000
Message-ID: <157947209881.23913.8106624356249557487@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200116185421.66585-1-jose.souza@intel.com>
In-Reply-To: <20200116185421.66585-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Brebased=2C1/3=5D_drm/i915/dc3co=3A_Do_the_?=
 =?utf-8?q?full_calculation_of_DC3CO_exit_only_once?=
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

Series: series starting with [rebased,1/3] drm/i915/dc3co: Do the full calculation of DC3CO exit only once
URL   : https://patchwork.freedesktop.org/series/72132/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7757_full -> Patchwork_16135_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16135_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-iclb6/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110841])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111735] / [i915#472]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111593] / [i915#472])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-tglb6/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@vcs1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112080]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb2/igt@gem_exec_parallel@vcs1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-iclb8/igt@gem_exec_parallel@vcs1.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#463] / [i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-tglb4/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-kbl2/igt@gem_exec_suspend@basic-s3.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-kbl7/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-glk:          [PASS][19] -> [TIMEOUT][20] ([fdo#112271] / [i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-glk3/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-glk2/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-hsw:          [PASS][21] -> [INCOMPLETE][22] ([i915#530] / [i915#61])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-hsw5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-hsw5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-skl:          [PASS][23] -> [TIMEOUT][24] ([fdo#112271] / [i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl10/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-skl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-kbl:          [PASS][25] -> [TIMEOUT][26] ([fdo#112271] / [i915#530]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [PASS][27] -> [TIMEOUT][28] ([fdo#112271] / [i915#530])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-hsw:          [PASS][29] -> [TIMEOUT][30] ([fdo#112271] / [i915#530])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [PASS][31] -> [INCOMPLETE][32] ([fdo#103665] / [i915#530]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-kbl1/igt@gem_persistent_relocs@forked-thrashing.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#644])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#454])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#454])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl4/igt@i915_pm_dc@dc6-psr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-skl4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][39] -> [FAIL][40] ([i915#413])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb4/igt@i915_pm_rps@waitboost.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-iclb4/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#472])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb8/igt@i915_selftest@live_requests.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-tglb5/igt@i915_selftest@live_requests.html

  * igt@i915_suspend@debugfs-reader:
    - shard-iclb:         [PASS][43] -> [DMESG-WARN][44] ([fdo#111764])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb2/igt@i915_suspend@debugfs-reader.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-iclb1/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][45] -> [DMESG-WARN][46] ([i915#109]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-skl5/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
    - shard-tglb:         [PASS][47] -> [DMESG-WARN][48] ([i915#402])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset:
    - shard-kbl:          [PASS][49] -> [DMESG-WARN][50] ([i915#56] / [i915#78])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-kbl2/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-kbl2/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][51] -> [FAIL][52] ([i915#79])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-glk4/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip_tiling@flip-x-tiled:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([fdo#108145] / [i915#699])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl1/igt@kms_flip_tiling@flip-x-tiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-skl3/igt@kms_flip_tiling@flip-x-tiled.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([fdo#108145]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([fdo#108145] / [i915#265])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#109441]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf@short-reads:
    - shard-glk:          [PASS][61] -> [TIMEOUT][62] ([fdo#112271] / [i915#51])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-glk8/igt@perf@short-reads.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-glk8/igt@perf@short-reads.html

  * igt@perf_pmu@enable-race-vecs0:
    - shard-tglb:         [PASS][63] -> [INCOMPLETE][64] ([i915#470] / [i915#472])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb4/igt@perf_pmu@enable-race-vecs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-tglb3/igt@perf_pmu@enable-race-vecs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [FAIL][65] ([i915#679]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl4/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-skl8/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@processes:
    - shard-glk:          [FAIL][67] ([i915#570]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-glk2/igt@gem_ctx_persistence@processes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-glk4/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-apl:          [FAIL][69] ([i915#679]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-apl3/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-apl6/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][71] ([fdo#109276] / [fdo#112080]) -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][73] ([i915#461] / [i915#472]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][75] ([i915#82]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-snb6/igt@gem_eio@kms.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-snb1/igt@gem_eio@kms.html
    - shard-tglb:         [INCOMPLETE][77] ([i915#472] / [i915#476]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb3/igt@gem_eio@kms.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-tglb1/igt@gem_eio@kms.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [INCOMPLETE][79] ([fdo#111736] / [i915#472]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb3/igt@gem_exec_await@wide-all.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-tglb4/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [INCOMPLETE][81] ([fdo#108838] / [i915#472]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb7/igt@gem_exec_create@forked.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-tglb5/igt@gem_exec_create@forked.html

  * igt@gem_exec_parallel@vcs0-fds:
    - shard-tglb:         [INCOMPLETE][83] ([i915#470] / [i915#472]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb3/igt@gem_exec_parallel@vcs0-fds.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-tglb3/igt@gem_exec_parallel@vcs0-fds.html

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - shard-skl:          [DMESG-WARN][85] ([i915#109]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl6/igt@gem_exec_reloc@basic-gtt-wc-active.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-skl6/igt@gem_exec_reloc@basic-gtt-wc-active.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [SKIP][87] ([fdo#112146]) -> [PASS][88] +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1:
    - shard-tglb:         [INCOMPLETE][89] ([fdo#111677] / [i915#472]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-kbl:          [TIMEOUT][91] ([fdo#112271] / [i915#530]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [TIMEOUT][93] ([fdo#112271] / [i915#530]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-skl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@i915_pm_rpm@debugfs-read:
    - shard-skl:          [INCOMPLETE][95] ([i915#151]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl9/igt@i915_pm_rpm@debugfs-read.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-skl4/igt@i915_pm_rpm@debugfs-read.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-kbl:          [INCOMPLETE][97] ([fdo#103665] / [i915#151]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-kbl3/igt@i915_pm_rpm@system-suspend-modeset.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-kbl6/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][101] ([IGT#5]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][103] ([i915#79]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][105] ([i915#180]) -> [PASS][106] +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-skl:          [FAIL][107] ([i915#699]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl1/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-skl3/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [FAIL][109] ([i915#49]) -> [PASS][110] +5 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-tglb:         [SKIP][111] ([i915#668]) -> [PASS][112] +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb5/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-tglb8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][113] ([fdo#108145]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][115] ([fdo#109441]) -> [PASS][116] +4 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][117] ([fdo#112080]) -> [PASS][118] +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb5/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-iclb1/igt@perf_pmu@busy-accuracy-98-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][119] ([fdo#109276]) -> [PASS][120] +17 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][121] ([i915#454]) -> [SKIP][122] ([i915#468])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb8/igt@i915_pm_dc@dc6-psr.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7757 -> Patchwork_16135

  CI-20190529: 20190529
  CI_DRM_7757: 181f4cf3bdbbf2a8a67e406ef16f1cdc957379b6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5370: a98fb02cc2816a48eec374392d9b6941abb6af2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16135: f6fdaaaf5313aeac850412cb2d728a5735ab4b5f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16135/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
