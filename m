Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8778214327B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 20:37:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBA066EA81;
	Mon, 20 Jan 2020 19:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A220B6E22C;
 Mon, 20 Jan 2020 19:37:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 92538A0134;
 Mon, 20 Jan 2020 19:37:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 20 Jan 2020 19:37:27 -0000
Message-ID: <157954904757.679.4837264428827966677@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200117125849.3024805-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200117125849.3024805-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Be_paranoid_and_reset_the_GPU_before_release_=28rev?=
 =?utf-8?q?2=29?=
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

Series: drm/i915/gt: Be paranoid and reset the GPU before release (rev2)
URL   : https://patchwork.freedesktop.org/series/72185/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7769_full -> Patchwork_16159_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16159_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +10 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#69]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-skl5/igt@gem_ctx_isolation@vcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-skl8/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-apl3/igt@gem_ctx_isolation@vecs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-apl2/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_reloc@basic-gtt-active:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#109])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-skl10/igt@gem_exec_reloc@basic-gtt-active.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-skl10/igt@gem_exec_reloc@basic-gtt-active.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +25 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-iclb8/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-skl:          [PASS][15] -> [TIMEOUT][16] ([fdo#112271] / [i915#530])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-skl8/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-skl5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [PASS][17] -> [INCOMPLETE][18] ([CI#80] / [fdo#103927] / [i915#530])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#520])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-iclb2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [PASS][21] -> [TIMEOUT][22] ([fdo#112271] / [i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [PASS][23] -> [INCOMPLETE][24] ([fdo#103665] / [i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl4/igt@gem_persistent_relocs@forked-thrashing.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-kbl7/igt@gem_persistent_relocs@forked-thrashing.html
    - shard-iclb:         [PASS][25] -> [TIMEOUT][26] ([fdo#112271] / [i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb6/igt@gem_persistent_relocs@forked-thrashing.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-iclb2/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#644])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [PASS][29] -> [INCOMPLETE][30] ([i915#82])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-snb5/igt@i915_selftest@mock_requests.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-snb6/igt@i915_selftest@mock_requests.html
    - shard-kbl:          [PASS][31] -> [INCOMPLETE][32] ([fdo#103665])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl1/igt@i915_selftest@mock_requests.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-kbl1/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#54])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][39] -> [FAIL][40] ([i915#31])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl2/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-kbl3/igt@kms_setmode@basic.html

  * igt@perf@oa-exponents:
    - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#84])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-glk4/igt@perf@oa-exponents.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-glk8/igt@perf@oa-exponents.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#112080]) +12 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb4/igt@perf_pmu@init-busy-vcs1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-iclb6/igt@perf_pmu@init-busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][45] ([fdo#112080]) -> [PASS][46] +10 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][47] ([i915#570]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-skl8/igt@gem_ctx_persistence@processes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-skl5/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [fdo#112080]) -> [PASS][50] +6 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb6/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][51] ([i915#140]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb4/igt@gem_exec_balancer@hang.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-iclb8/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][53] ([i915#677]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][55] ([fdo#112146]) -> [PASS][56] +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb4/igt@gem_exec_schedule@preempt-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-iclb8/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-kbl:          [TIMEOUT][57] ([fdo#112271] / [i915#530]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl3/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-kbl1/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][59] ([i915#716]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl2/igt@gen9_exec_parse@allowed-all.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-kbl4/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-iclb:         [DMESG-WARN][61] ([fdo#111764]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb1/igt@i915_pm_rpm@system-suspend-execbuf.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-iclb4/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [DMESG-WARN][65] ([i915#109]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-skl1/igt@kms_color@pipe-c-ctm-0-5.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-skl7/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
    - shard-hsw:          [SKIP][67] ([fdo#109271]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-hsw5/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-hsw5/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][69] ([IGT#5]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][71] ([i915#79]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][73] ([i915#79]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +5 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][79] ([fdo#109276]) -> [PASS][80] +26 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [TIMEOUT][81] ([fdo#112271] / [i915#530]) -> [INCOMPLETE][82] ([fdo#103665] / [i915#530])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-kbl6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][83], [FAIL][84], [FAIL][85]) ([i915#716] / [i915#997]) -> ([FAIL][86], [FAIL][87], [FAIL][88]) ([fdo#103665] / [i915#873] / [i915#997])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl2/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl1/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl7/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-kbl1/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-kbl7/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/shard-kbl1/igt@runner@aborted.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#873]: https://gitlab.freedesktop.org/drm/intel/issues/873
  [i915#997]: https://gitlab.freedesktop.org/drm/intel/issues/997


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7769 -> Patchwork_16159

  CI-20190529: 20190529
  CI_DRM_7769: 15e78429922635916a012ba594255cf07a5b07ad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5372: 0d00a27fbbd4d4a77d24499ea9811e07e65eb0ac @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16159: 8c1040bacc5671ec6ffb585fea1700e176ab3812 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16159/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
