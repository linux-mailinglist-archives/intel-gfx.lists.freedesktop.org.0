Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E195412FEF1
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 23:46:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E4286E365;
	Fri,  3 Jan 2020 22:46:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 35DFD6E35F;
 Fri,  3 Jan 2020 22:46:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2BEBBA0114;
 Fri,  3 Jan 2020 22:46:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Jan 2020 22:46:52 -0000
Message-ID: <157809161214.20615.5881505092542056663@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200103104516.1757103-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200103104516.1757103-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/selftest=3A_Move_igt=5Fato?=
 =?utf-8?q?mic=5Fsection=5B=5D_out_of_the_header?=
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

Series: series starting with [1/2] drm/i915/selftest: Move igt_atomic_section[] out of the header
URL   : https://patchwork.freedesktop.org/series/71599/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7673_full -> Patchwork_15985_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15985_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#435]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb1/igt@gem_busy@close-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-tglb3/igt@gem_busy@close-race.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl1/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-skl4/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-iclb7/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#461])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#469])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb9/igt@gem_eio@unwedge-stress.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-tglb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-skl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#472] / [i915#707])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb7/igt@gem_sync@basic-each.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-tglb6/igt@gem_sync@basic-each.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#183])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-apl3/igt@gem_tiled_swapping@non-threaded.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-apl2/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#454])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-kbl6/igt@i915_suspend@forcewake.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-kbl4/igt@i915_suspend@forcewake.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-apl2/igt@i915_suspend@sysfs-reader.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-apl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#34])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#49]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112080]) +8 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@perf_pmu@enable-race-vecs0:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#470] / [i915#923])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb8/igt@perf_pmu@enable-race-vecs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-tglb2/igt@perf_pmu@enable-race-vecs0.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109276]) +22 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-iclb8/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-iclb:         [DMESG-WARN][35] ([fdo#111764]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb1/igt@gem_ctx_isolation@rcs0-s3.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-iclb8/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [fdo#112080]) -> [PASS][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][39] ([fdo#111735]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-kbl7/igt@gem_eio@in-flight-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-kbl6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@smoke:
    - shard-tglb:         [INCOMPLETE][43] ([fdo#111593]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb1/igt@gem_exec_balancer@smoke.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-tglb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][45] ([fdo#112080]) -> [PASS][46] +9 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +16 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb5/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-iclb2/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#112146]) -> [PASS][50] +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [INCOMPLETE][51] ([fdo#111606] / [fdo#111677]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_linear_blits@interruptible:
    - shard-glk:          [DMESG-WARN][53] ([i915#667]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-glk7/igt@gem_linear_blits@interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-glk5/igt@gem_linear_blits@interruptible.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][55] ([i915#530]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-iclb2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][57] ([i915#435] / [i915#472]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb3/igt@gem_sync@basic-store-each.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-tglb1/igt@gem_sync@basic-store-each.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-skl:          [DMESG-WARN][59] ([i915#716]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl6/igt@gen9_exec_parse@allowed-single.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][61] ([i915#725]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-hsw2/igt@i915_selftest@live_blt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-hsw7/igt@i915_selftest@live_blt.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][63] ([IGT#5]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-skl:          [FAIL][65] ([i915#52] / [i915#54]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][67] ([i915#221]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl1/igt@kms_flip@flip-vs-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-skl5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-skl:          [FAIL][69] ([i915#49]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-skl:          [FAIL][73] ([i915#247]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl3/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-skl1/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][75] ([fdo#108145]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][77] ([fdo#108145] / [i915#265]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][79] ([fdo#109441]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [DMESG-WARN][81] ([i915#402]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb1/igt@kms_psr@psr2_suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-tglb7/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][83] ([i915#31]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-apl1/igt@kms_setmode@basic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-apl6/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-dirty-switch:
    - shard-tglb:         [SKIP][85] ([fdo#112080]) -> [SKIP][86] ([fdo#111912] / [fdo#112080])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-switch.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-tglb3/igt@gem_ctx_isolation@vcs2-dirty-switch.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][87] ([i915#818]) -> [FAIL][88] ([i915#832])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/shard-hsw5/igt@gem_tiled_blits@interruptible.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/shard-hsw1/igt@gem_tiled_blits@interruptible.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#923]: https://gitlab.freedesktop.org/drm/intel/issues/923


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7673 -> Patchwork_15985

  CI-20190529: 20190529
  CI_DRM_7673: 6e3335ed7b56aaf9d55ddf51cddea4d844dc3a78 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15985: b72498a874fb5e74f609ab51783377cebf2734a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
