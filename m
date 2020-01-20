Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0965A142220
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 04:49:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFF516E550;
	Mon, 20 Jan 2020 03:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 681406E09C;
 Mon, 20 Jan 2020 03:49:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 606D5A363B;
 Mon, 20 Jan 2020 03:49:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 20 Jan 2020 03:49:01 -0000
Message-ID: <157949214137.680.5306552462280769602@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200116203150.923826-1-matthew.auld@intel.com>
In-Reply-To: <20200116203150.923826-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/userptr=3A_add_user?=
 =?utf-8?q?=5Fsize_limit_check?=
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

Series: series starting with [v2,1/2] drm/i915/userptr: add user_size limit check
URL   : https://patchwork.freedesktop.org/series/72141/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7758_full -> Patchwork_16138_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16138_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +10 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@processes:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#570])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl1/igt@gem_ctx_persistence@processes.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-apl3/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb1/igt@gem_ctx_persistence@vcs1-cleanup.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb5/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-skl7/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [PASS][9] -> [FAIL][10] ([i915#490])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-snb5/igt@gem_eio@in-flight-contexts-1us.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-snb5/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#69]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl2/igt@gem_eio@in-flight-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-skl3/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_create@basic:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111736] / [i915#472])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb1/igt@gem_exec_create@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-tglb6/igt@gem_exec_create@basic.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb8/igt@gem_exec_nop@basic-series.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-tglb5/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([i915#677])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@smoketest-blt:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#470] / [i915#472]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb5/igt@gem_exec_schedule@smoketest-blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-tglb3/igt@gem_exec_schedule@smoketest-blt.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#472] / [i915#707])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd2.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-apl:          [PASS][25] -> [TIMEOUT][26] ([fdo#112271] / [i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-skl:          [PASS][27] -> [TIMEOUT][28] ([fdo#112271] / [i915#530])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-skl8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-glk:          [PASS][29] -> [TIMEOUT][30] ([fdo#112271] / [i915#530])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-glk3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-glk2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-tglb:         [PASS][31] -> [TIMEOUT][32] ([fdo#112126] / [fdo#112271] / [i915#530])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-tglb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [PASS][33] -> [INCOMPLETE][34] ([CI#80] / [fdo#103665])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-hsw:          [PASS][35] -> [INCOMPLETE][36] ([i915#530] / [i915#61])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-hsw5/igt@gem_persistent_relocs@forked-thrashing.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-hsw7/igt@gem_persistent_relocs@forked-thrashing.html
    - shard-snb:          [PASS][37] -> [FAIL][38] ([i915#520])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-snb6/igt@gem_persistent_relocs@forked-thrashing.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-snb4/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][39] -> [FAIL][40] ([i915#644])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
    - shard-snb:          [PASS][43] -> [SKIP][44] ([fdo#109271]) +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-snb6/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-snb1/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([IGT#5])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#52] / [i915#54])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][49] -> [INCOMPLETE][50] ([i915#221])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180]) +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
    - shard-tglb:         [PASS][53] -> [FAIL][54] ([i915#49])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#49])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [PASS][57] -> [INCOMPLETE][58] ([i915#146] / [i915#69])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([fdo#108145] / [i915#265])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][61] -> [SKIP][62] ([fdo#109642] / [fdo#111068])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][63] -> [SKIP][64] ([fdo#109276]) +14 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-iclb:         [FAIL][65] ([i915#570]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_ctx_persistence@processes.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb8/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][67] ([fdo#109276] / [fdo#112080]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_ctx_persistence@vcs1-queued.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [INCOMPLETE][69] ([fdo#111735] / [i915#472]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-tglb8/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][71] ([i915#461] / [i915#472]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][73] ([i915#82]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-snb6/igt@gem_eio@kms.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-snb2/igt@gem_eio@kms.html
    - shard-tglb:         [INCOMPLETE][75] ([i915#472] / [i915#476]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb6/igt@gem_eio@kms.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-tglb5/igt@gem_eio@kms.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [INCOMPLETE][77] ([fdo#111736] / [i915#472]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb3/igt@gem_exec_await@wide-all.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-tglb1/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][79] ([i915#140]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb2/igt@gem_exec_balancer@hang.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb8/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][81] ([fdo#110854]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][83] ([i915#472]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb4/igt@gem_exec_create@madvise.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-tglb7/igt@gem_exec_create@madvise.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][85] ([fdo#112080]) -> [PASS][86] +7 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][87] ([i915#677]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][89] ([fdo#109276]) -> [PASS][90] +21 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][91] ([fdo#112146]) -> [PASS][92] +4 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][93] ([i915#472] / [i915#707]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb4/igt@gem_exec_schedule@smoketest-vebox.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-tglb8/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-kbl:          [TIMEOUT][95] ([fdo#112271] / [i915#530]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
    - shard-hsw:          [TIMEOUT][97] ([fdo#112271] / [i915#530]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][99] ([fdo#103665] / [i915#530]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-kbl7/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][101] ([i915#644]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][103] ([i915#716]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl8/igt@gen9_exec_parse@allowed-all.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-skl10/igt@gen9_exec_parse@allowed-all.html

  * {igt@i915_pm_rc6_residency@rc6-idle}:
    - shard-apl:          [FAIL][105] ([i915#973]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl3/igt@i915_pm_rc6_residency@rc6-idle.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-apl3/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][107] ([i915#413]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@i915_pm_rps@reset.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb2/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live_execlists:
    - shard-kbl:          [INCOMPLETE][109] ([fdo#103665] / [fdo#112175] / [fdo#112259]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl6/igt@i915_selftest@live_execlists.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-kbl2/igt@i915_selftest@live_execlists.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [DMESG-WARN][111] ([i915#180]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [DMESG-WARN][113] ([i915#109]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl3/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-skl2/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [DMESG-WARN][115] ([i915#180]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [FAIL][117] ([i915#34]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [FAIL][119] ([i915#49]) -> [PASS][120] +5 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [INCOMPLETE][121] ([i915#140] / [i915#250]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][123] ([fdo#109441]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][125] ([fdo#109276] / [fdo#112080]) -> [FAIL][126] ([IGT#28])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_rpm@gem-mmap-cpu:
    - shard-snb:          [SKIP][127] ([fdo#109271]) -> [INCOMPLETE][128] ([i915#82])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-snb4/igt@i915_pm_rpm@gem-mmap-cpu.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/shard-snb1/igt@i915_pm_rpm@gem-mmap-cpu.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#973]: https://gitlab.freedesktop.org/drm/intel/issues/973


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7758 -> Patchwork_16138

  CI-20190529: 20190529
  CI_DRM_7758: d19270ce1f367fbfc1ff3b539bcb50e11ded181f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5371: 1b2816124ec3dbd53b81725d39292f45d41d895b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16138: c568210f923fc55c7bd29bd9f9bf5c0be46a8e63 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16138/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
