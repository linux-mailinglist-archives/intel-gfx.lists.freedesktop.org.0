Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB7C192491
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 10:49:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8162C6E053;
	Wed, 25 Mar 2020 09:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BBECE89EA6;
 Wed, 25 Mar 2020 09:49:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B3D61A47EA;
 Wed, 25 Mar 2020 09:49:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 25 Mar 2020 09:49:12 -0000
Message-ID: <158512975270.29636.13242889137147275830@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=5Fdevice_managed_resources_=28rev8=29?=
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

Series: drm_device managed resources (rev8)
URL   : https://patchwork.freedesktop.org/series/73633/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8185_full -> Patchwork_17078_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17078_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#69])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-skl10/igt@gem_eio@in-flight-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-skl10/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [i915#677])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-iclb3/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +6 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180] / [i915#93] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-kbl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-xtiled:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#52] / [i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-xtiled.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-xtiled.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#34])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-glk9/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-glk9/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#79])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#221])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-skl4/igt@kms_flip@flip-vs-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-skl5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [PASS][19] -> [INCOMPLETE][20] ([i915#1185] / [i915#250])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109642] / [fdo#111068])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-iclb7/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#31])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-skl7/igt@kms_setmode@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-skl9/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-kbl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#112080]) +12 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb4/igt@perf_pmu@init-busy-vcs1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-iclb8/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109276]) +18 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][35] ([fdo#112080]) -> [PASS][36] +14 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#110841]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd:
    - shard-iclb:         [SKIP][39] ([i915#677]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][41] ([fdo#109276]) -> [PASS][42] +16 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb3/igt@gem_exec_schedule@out-order-bsd2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb4/igt@gem_exec_schedule@preempt-queue-chain-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-iclb6/igt@gem_exec_schedule@preempt-queue-chain-bsd.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-apl6/igt@gem_softpin@noreloc-s3.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-apl3/igt@gem_softpin@noreloc-s3.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl7/igt@i915_suspend@debugfs-reader.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-kbl6/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [TIMEOUT][49] ([fdo#103375]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl4/igt@i915_suspend@forcewake.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-kbl3/igt@i915_suspend@forcewake.html

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing:
    - shard-kbl:          [INCOMPLETE][51] -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl4/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-kbl3/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [DMESG-WARN][53] ([i915#180] / [i915#95]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - shard-hsw:          [FAIL][55] ([i915#57]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-hsw5/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_lease@atomic_implicit_crtc:
    - shard-snb:          [SKIP][59] ([fdo#109271]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-snb4/igt@kms_lease@atomic_implicit_crtc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-snb6/igt@kms_lease@atomic_implicit_crtc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [INCOMPLETE][61] ([i915#155]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb3/igt@kms_psr@psr2_suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-iclb2/igt@kms_psr@psr2_suspend.html

  
#### Warnings ####

  * igt@gem_userptr_blits@sync-unmap:
    - shard-hsw:          [DMESG-WARN][65] ([fdo#111870]) -> [DMESG-WARN][66] ([fdo#110789] / [fdo#111870])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-hsw1/igt@gem_userptr_blits@sync-unmap.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-hsw1/igt@gem_userptr_blits@sync-unmap.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][67] ([i915#658]) -> [SKIP][68] ([i915#588])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][69] ([i915#468]) -> [FAIL][70] ([i915#454])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-kbl:          [FAIL][71] ([i915#54]) -> [FAIL][72] ([i915#54] / [i915#93] / [i915#95]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
    - shard-apl:          [FAIL][73] ([i915#54]) -> [FAIL][74] ([i915#54] / [i915#95])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:
    - shard-kbl:          [FAIL][75] ([i915#70]) -> [FAIL][76] ([i915#70] / [i915#93] / [i915#95])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl1/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-kbl4/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [FAIL][77] ([fdo#103375]) -> [DMESG-WARN][78] ([i915#180] / [i915#93] / [i915#95])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-kbl:          [FAIL][79] ([i915#53]) -> [FAIL][80] ([i915#53] / [i915#93] / [i915#95])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-kbl3/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - shard-apl:          [FAIL][81] ([i915#53]) -> [FAIL][82] ([i915#53] / [i915#95])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-apl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-apl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          [FAIL][83] ([fdo#108145]) -> [FAIL][84] ([fdo#108145] / [i915#93] / [i915#95])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110789]: https://bugs.freedesktop.org/show_bug.cgi?id=110789
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8185 -> Patchwork_17078

  CI-20190529: 20190529
  CI_DRM_8185: dbd2532fc5cf023b28bd631b51eea8452739b421 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5537: 190245120758e754813d76b2c6c613413a0dba29 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17078: baa4dcb0aee21ef3ce40fc5bba95afaa08330465 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
