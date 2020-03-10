Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2FE1809B9
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 21:58:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1933B6E419;
	Tue, 10 Mar 2020 20:58:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D3BCB6E2F8;
 Tue, 10 Mar 2020 20:58:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CC949A47E6;
 Tue, 10 Mar 2020 20:58:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Tue, 10 Mar 2020 20:58:21 -0000
Message-ID: <158387390183.1135.11012599239069557101@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200309213940.27965-1-manasi.d.navare@intel.com>
In-Reply-To: <20200309213940.27965-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/2=5D_drm/edid=3A_Name_the_detailed_?=
 =?utf-8?q?monitor_range_flags?=
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

Series: series starting with [v5,1/2] drm/edid: Name the detailed monitor range flags
URL   : https://patchwork.freedesktop.org/series/74471/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8106_full -> Patchwork_16898_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16898_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#69])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-skl1/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-skl5/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110841])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb8/igt@gem_exec_async@concurrent-writes-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_create@madvise:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk6/igt@gem_exec_create@madvise.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-glk2/igt@gem_exec_create@madvise.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +13 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [PASS][17] -> [DMESG-WARN][18] ([i915#42])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-snb6/igt@kms_flip@flip-vs-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-snb4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#49])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +8 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#899])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109642] / [fdo#111068])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-iclb7/igt@kms_psr@psr2_cursor_render.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112080]) +5 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb2/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-iclb7/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [INCOMPLETE][33] ([fdo#103927] / [i915#1402]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-apl1/igt@gem_ctx_persistence@close-replace-race.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-apl1/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@processes:
    - shard-kbl:          [FAIL][35] ([i915#570] / [i915#679]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl2/igt@gem_ctx_persistence@processes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-kbl2/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [FAIL][37] ([i915#1277]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-tglb1/igt@gem_exec_balancer@hang.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-tglb5/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][39] ([fdo#109276] / [i915#677]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [DMESG-WARN][45] ([i915#118] / [i915#95]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk2/igt@gem_exec_whisper@basic-queues-forked.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-glk1/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@i915_suspend@sysfs-reader:
    - shard-snb:          [DMESG-WARN][47] ([i915#42]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-snb4/igt@i915_suspend@sysfs-reader.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-snb2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - shard-skl:          [FAIL][49] ([i915#54]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:
    - shard-apl:          [FAIL][51] ([i915#54]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][53] ([i915#79]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][55] ([i915#1188]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [INCOMPLETE][57] -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [INCOMPLETE][59] ([i915#69]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][61] ([fdo#108145]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][63] ([fdo#108145] / [i915#265]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][67] ([i915#31]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl7/igt@kms_setmode@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-kbl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][71] ([fdo#112080]) -> [PASS][72] +10 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][73] ([fdo#109276]) -> [PASS][74] +11 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_linear_blits@normal:
    - shard-apl:          [TIMEOUT][75] ([i915#1322]) -> [TIMEOUT][76] ([fdo#111732] / [i915#1322])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-apl4/igt@gem_linear_blits@normal.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-apl3/igt@gem_linear_blits@normal.html

  * igt@i915_pm_rpm@fences:
    - shard-snb:          [INCOMPLETE][77] ([i915#82]) -> [SKIP][78] ([fdo#109271])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-snb4/igt@i915_pm_rpm@fences.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-snb4/igt@i915_pm_rpm@fences.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][79] ([i915#180] / [i915#56]) -> [DMESG-WARN][80] ([i915#180])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][81], [FAIL][82]) ([fdo#103927] / [i915#1402]) -> [FAIL][83] ([fdo#103927])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-apl1/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-apl2/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/shard-apl1/igt@runner@aborted.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1322]: https://gitlab.freedesktop.org/drm/intel/issues/1322
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8106 -> Patchwork_16898

  CI-20190529: 20190529
  CI_DRM_8106: 5b0076e8066ea8218e7857ee1aa28b0670acde94 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5504: d6788bf0404f76b66170e18eb26c85004b5ccb25 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16898: 37b27cd7ece9cd682017cebe77b194f7948b9caf @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16898/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
