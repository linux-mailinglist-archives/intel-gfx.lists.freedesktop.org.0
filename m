Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E2811D605
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 19:41:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D56446E0D8;
	Thu, 12 Dec 2019 18:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2B5B96E0D8;
 Thu, 12 Dec 2019 18:41:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 232B2A0073;
 Thu, 12 Dec 2019 18:41:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Thu, 12 Dec 2019 18:41:09 -0000
Message-ID: <157617606913.32010.12857108967094985896@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212072737.884335-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191212072737.884335-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/uc=3A_Ignore_maybe-un?=
 =?utf-8?q?used_debug-only_i915_local?=
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

Series: series starting with [CI,1/2] drm/i915/uc: Ignore maybe-unused debug-only i915 local
URL   : https://patchwork.freedesktop.org/series/70800/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7548_full -> Patchwork_15708_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15708_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@bonded-slice:
    - shard-kbl:          [PASS][1] -> [FAIL][2] ([i915#800])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-kbl3/igt@gem_exec_balancer@bonded-slice.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-kbl7/igt@gem_exec_balancer@bonded-slice.html

  * igt@gem_exec_parallel@contexts:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4] ([i915#140])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-iclb5/igt@gem_exec_parallel@contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-iclb7/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_reloc@basic-gtt-read-active:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#109]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl10/igt@gem_exec_reloc@basic-gtt-read-active.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl2/igt@gem_exec_reloc@basic-gtt-read-active.html

  * igt@gem_exec_schedule@preempt-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-iclb4/igt@gem_exec_schedule@preempt-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-iclb6/igt@gem_exec_schedule@preempt-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111606] / [fdo#111677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-tglb5/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#472] / [i915#707])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-tglb2/igt@gem_sync@basic-each.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-tglb5/igt@gem_sync@basic-each.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +10 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([fdo#112057])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-tglb7/igt@i915_selftest@live_requests.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-tglb6/igt@i915_selftest@live_requests.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#747])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-kbl1/igt@i915_selftest@mock_sanitycheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-kbl6/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-apl4/igt@i915_suspend@sysfs-reader.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#54]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#88])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl2/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl4/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([fdo#112347] / [i915#667])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl2/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#79])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#474] / [i915#667])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#648] / [i915#667])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl8/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl4/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [PASS][39] -> [INCOMPLETE][40] ([fdo#112391] / [i915#648] / [i915#667])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#648])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl8/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#69]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([fdo#108145] / [i915#265])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([fdo#108145])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][49] -> [FAIL][50] ([i915#173])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-iclb7/igt@kms_psr@no_drrs.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@perf_pmu@multi-client-vcs1:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#112080]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-iclb2/igt@perf_pmu@multi-client-vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-iclb8/igt@perf_pmu@multi-client-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-apl4/igt@gem_ctx_isolation@bcs0-s3.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-apl8/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-s3:
    - shard-tglb:         [INCOMPLETE][55] ([i915#456]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-tglb5/igt@gem_ctx_isolation@vcs1-s3.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-tglb8/igt@gem_ctx_isolation@vcs1-s3.html
    - shard-iclb:         [SKIP][57] ([fdo#109276] / [fdo#112080]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-iclb8/igt@gem_ctx_isolation@vcs1-s3.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-iclb1/igt@gem_ctx_isolation@vcs1-s3.html

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][59] ([i915#570]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl7/igt@gem_ctx_persistence@processes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl5/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [FAIL][61] ([i915#679]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl6/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl10/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][63] ([fdo#110854]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs0-contexts:
    - shard-iclb:         [DMESG-WARN][65] -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-iclb7/igt@gem_exec_parallel@vcs0-contexts.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-iclb6/igt@gem_exec_parallel@vcs0-contexts.html

  * igt@gem_exec_parallel@vecs0-contexts:
    - shard-tglb:         [INCOMPLETE][67] ([i915#472]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-tglb4/igt@gem_exec_parallel@vecs0-contexts.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-tglb3/igt@gem_exec_parallel@vecs0-contexts.html

  * {igt@gem_exec_schedule@pi-shared-iova-bsd2}:
    - shard-iclb:         [SKIP][69] ([fdo#109276]) -> [PASS][70] +13 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@preempt-other-bsd:
    - shard-iclb:         [SKIP][71] ([fdo#112146]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-iclb2/igt@gem_exec_schedule@preempt-other-bsd.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-iclb8/igt@gem_exec_schedule@preempt-other-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-tglb:         [TIMEOUT][73] ([i915#530]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-tglb7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-tglb6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-hsw:          [TIMEOUT][75] ([i915#530]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-hsw4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-hsw4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-hsw:          [FAIL][77] ([i915#520]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-hsw6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][79] ([i915#707] / [i915#796]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-tglb6/igt@gem_pipe_control_store_loop@reused-buffer.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-tglb2/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][81] ([i915#644]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][83] ([i915#454]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl2/igt@i915_pm_dc@dc6-psr.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-apl:          [SKIP][85] ([fdo#109271]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-apl7/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-apl3/igt@i915_pm_rc6_residency@rc6-accuracy.html
    - shard-glk:          [SKIP][87] ([fdo#109271]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-glk6/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-glk3/igt@i915_pm_rc6_residency@rc6-accuracy.html
    - shard-kbl:          [SKIP][89] ([fdo#109271]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-kbl4/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-kbl1/igt@i915_pm_rc6_residency@rc6-accuracy.html
    - shard-skl:          [SKIP][91] ([fdo#109271]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl3/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl1/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_selftest@live_active:
    - shard-glk:          [DMESG-FAIL][93] ([i915#765]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-glk2/igt@i915_selftest@live_active.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-glk2/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_gt_pm:
    - shard-apl:          [DMESG-FAIL][95] ([i915#801]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-apl2/igt@i915_selftest@live_gt_pm.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-apl4/igt@i915_selftest@live_gt_pm.html
    - shard-glk:          [DMESG-FAIL][97] ([i915#801]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-glk2/igt@i915_selftest@live_gt_pm.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-glk2/igt@i915_selftest@live_gt_pm.html
    - shard-skl:          [DMESG-FAIL][99] ([i915#801]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl8/igt@i915_selftest@live_gt_pm.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl10/igt@i915_selftest@live_gt_pm.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][101] ([i915#180]) -> [PASS][102] +4 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-kbl7/igt@i915_suspend@forcewake.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-kbl2/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - shard-skl:          [FAIL][103] ([i915#54]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [FAIL][105] ([IGT#5]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:
    - shard-skl:          [FAIL][107] ([i915#52] / [i915#54]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled:
    - shard-skl:          [FAIL][109] ([i915#177] / [i915#52] / [i915#54]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-skl:          [FAIL][111] ([i915#49]) -> [PASS][112] +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - shard-skl:          [FAIL][113] ([i915#53]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl6/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl3/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [INCOMPLETE][115] ([fdo#103665] / [i915#648] / [i915#667]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-kbl6/igt@kms_plane@pixel-format-pipe-b-planes.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-kbl4/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][117] ([fdo#108145]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][119] ([fdo#109441]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][121] ([i915#31]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-apl1/igt@kms_setmode@basic.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-apl4/igt@kms_setmode@basic.html

  * igt@perf@rc6-disable:
    - shard-kbl:          [FAIL][123] ([i915#50]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-kbl7/igt@perf@rc6-disable.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-kbl2/igt@perf@rc6-disable.html
    - shard-skl:          [FAIL][125] ([i915#50]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-skl3/igt@perf@rc6-disable.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-skl6/igt@perf@rc6-disable.html
    - shard-apl:          [FAIL][127] ([i915#50]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-apl1/igt@perf@rc6-disable.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-apl1/igt@perf@rc6-disable.html
    - shard-glk:          [FAIL][129] ([i915#50]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-glk6/igt@perf@rc6-disable.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-glk9/igt@perf@rc6-disable.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][131] ([fdo#112080]) -> [PASS][132] +7 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][133] ([fdo#109276] / [fdo#112080]) -> [FAIL][134] ([IGT#28])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][135] ([i915#454]) -> [SKIP][136] ([i915#468])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#50]: https://gitlab.freedesktop.org/drm/intel/issues/50
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#800]: https://gitlab.freedesktop.org/drm/intel/issues/800
  [i915#801]: https://gitlab.freedesktop.org/drm/intel/issues/801
  [i915#88]: https://gitlab.freedesktop.org/drm/intel/issues/88


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7548 -> Patchwork_15708

  CI-20190529: 20190529
  CI_DRM_7548: 406e570d4e8be08530c7a7cad1e593d5347d1577 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15708: 6f7d167a53ce832dfc5decab188615bf685b2b46 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
