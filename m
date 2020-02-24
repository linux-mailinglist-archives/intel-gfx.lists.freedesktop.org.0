Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1224116AC6B
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 17:58:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 071AE6E5C5;
	Mon, 24 Feb 2020 16:58:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 012796E5C5;
 Mon, 24 Feb 2020 16:58:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED4B8A66C9;
 Mon, 24 Feb 2020 16:58:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Mon, 24 Feb 2020 16:58:36 -0000
Message-ID: <158256351694.28362.4046010132965442210@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200222002824.17103-1-lucas.demarchi@intel.com>
In-Reply-To: <20200222002824.17103-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Add_Wa=5F1608008084?=
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

Series: drm/i915/tgl: Add Wa_1608008084
URL   : https://patchwork.freedesktop.org/series/73801/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7984_full -> Patchwork_16674_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16674_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +12 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl6/igt@gem_ctx_isolation@vecs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-apl2/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +11 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd1.html

  * igt@gem_exec_schedule@smoketest-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@gem_exec_schedule@smoketest-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-iclb2/igt@gem_exec_schedule@smoketest-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-hsw:          [PASS][11] -> [FAIL][12] ([i915#694])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-tglb8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_selftest@live_gtt:
    - shard-kbl:          [PASS][15] -> [TIMEOUT][16] ([fdo#112271])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl2/igt@i915_selftest@live_gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-kbl4/igt@i915_selftest@live_gtt.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][17] -> [FAIL][18] ([fdo#103375])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [PASS][19] -> [INCOMPLETE][20] ([i915#61])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-hsw7/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-snb:          [PASS][21] -> [INCOMPLETE][22] ([i915#82])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#49])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +5 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#899])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([IGT#6])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl8/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-skl9/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#173])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb8/igt@kms_psr@no_drrs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][37] -> [FAIL][38] ([i915#831])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw7/igt@prime_mmap_coherency@ioctl-errors.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-hsw7/igt@prime_mmap_coherency@ioctl-errors.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-tglb:         [PASS][39] -> [TIMEOUT][40] ([fdo#112271])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb1/igt@sw_sync@sync_multi_producer_single_consumer.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-tglb3/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-snb:          [PASS][41] -> [TIMEOUT][42] ([fdo#112271])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb2/igt@sw_sync@sync_multi_producer_single_consumer.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-snb4/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][43] ([fdo#110854]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][45] ([fdo#112080]) -> [PASS][46] +7 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_reuse@baggage:
    - shard-apl:          [TIMEOUT][47] ([fdo#112271]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl7/igt@gem_exec_reuse@baggage.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-apl8/igt@gem_exec_reuse@baggage.html

  * {igt@gem_exec_schedule@implicit-both-bsd2}:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [i915#677]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][51] ([fdo#109276]) -> [PASS][52] +10 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][53] ([i915#677]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][55] ([i915#644]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-skl5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_blits@interruptible:
    - shard-glk:          [TIMEOUT][57] ([fdo#112271]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk6/igt@gem_tiled_blits@interruptible.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-glk3/igt@gem_tiled_blits@interruptible.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-glk:          [FAIL][59] -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk4/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-glk9/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-hsw:          [FAIL][61] ([i915#694]) -> [PASS][62] +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw4/igt@gen7_exec_parse@basic-offset.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-hsw5/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][63] ([i915#447]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-iclb2/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][65] ([i915#413]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb5/igt@i915_pm_rps@reset.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-iclb8/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@mock_buddy:
    - shard-skl:          [INCOMPLETE][67] -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl3/igt@i915_selftest@mock_buddy.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-skl8/igt@i915_selftest@mock_buddy.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][71] ([i915#79]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][75] ([i915#34]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk5/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-glk8/igt@kms_flip@plain-flip-ts-check-interruptible.html
    - shard-kbl:          [INCOMPLETE][77] ([CI#80] / [fdo#103665]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl4/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-kbl7/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-glk:          [FAIL][79] ([i915#49]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * {igt@kms_hdr@bpc-switch}:
    - shard-skl:          [FAIL][81] ([i915#1188]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl6/igt@kms_hdr@bpc-switch.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][83] ([i915#69]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][85] ([fdo#108145]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][87] ([fdo#108145] / [i915#265]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-tglb:         [SKIP][89] ([i915#668]) -> [PASS][90] +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb5/igt@kms_psr@psr2_primary_mmap_gtt.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-tglb1/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][91] ([fdo#109441]) -> [PASS][92] +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][93] ([i915#31]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl3/igt@kms_setmode@basic.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-apl1/igt@kms_setmode@basic.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-kbl:          [TIMEOUT][95] ([fdo#112271]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl1/igt@sw_sync@sync_multi_producer_single_consumer.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-kbl4/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-hsw:          [TIMEOUT][97] ([fdo#112271]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw2/igt@sw_sync@sync_multi_producer_single_consumer.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-hsw5/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][99] ([fdo#112080]) -> [FAIL][100] ([IGT#28])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [TIMEOUT][101] ([fdo#112271]) -> [INCOMPLETE][102] ([i915#69])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl1/igt@gem_softpin@noreloc-s3.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-skl8/igt@gem_softpin@noreloc-s3.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][103] ([i915#694]) -> [FAIL][104] ([i915#818]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw2/igt@gem_tiled_blits@normal.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-hsw2/igt@gem_tiled_blits@normal.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          [TIMEOUT][105] ([fdo#112271]) -> [TIMEOUT][106] ([fdo#112271] / [i915#727])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl6/igt@kms_content_protection@legacy.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/shard-kbl4/igt@kms_content_protection@legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7984 -> Patchwork_16674

  CI-20190529: 20190529
  CI_DRM_7984: ab1d770e389d9407be633b5afbe6859e0072ca9d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5458: 5f7e4ae6a91ed2c104593b8abd5b71a6cc96fc10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16674: c3736a13438c1d45dfc51de78d0965a37b2bd86d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16674/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
