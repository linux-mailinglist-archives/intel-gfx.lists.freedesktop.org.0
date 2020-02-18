Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F273B163354
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 21:46:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0041C89BC2;
	Tue, 18 Feb 2020 20:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F8F889B8E;
 Tue, 18 Feb 2020 20:46:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 977EDA00C7;
 Tue, 18 Feb 2020 20:46:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 18 Feb 2020 20:46:07 -0000
Message-ID: <158205876761.31430.8830359787645666759@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200213001418.5899-1-brian.welty@intel.com>
In-Reply-To: <20200213001418.5899-1-brian.welty@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Fix_selftest=5Fmocs_for_DGFX_=28rev3=29?=
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

Series: drm/i915/selftests: Fix selftest_mocs for DGFX (rev3)
URL   : https://patchwork.freedesktop.org/series/73387/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7950_full -> Patchwork_16589_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16589_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#110841])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +20 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-hsw:          [PASS][9] -> [FAIL][10] ([i915#694]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-hsw6/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-hsw5/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([fdo#111870] / [i915#211] / [i915#836])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-apl3/igt@gem_userptr_blits@sync-unmap-after-close.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-apl3/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#454])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#72])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][21] -> [FAIL][22] ([i915#57])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-hsw2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
    - shard-tglb:         [PASS][25] -> [SKIP][26] ([i915#668]) +5 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#112080]) +11 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-tglb:         [FAIL][33] ([i915#1241]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-tglb7/igt@gem_ctx_persistence@close-replace-race.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [FAIL][35] ([i915#1241]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-skl3/igt@gem_ctx_persistence@close-replace-race.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-skl9/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [FAIL][37] -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-iclb4/igt@gem_exec_balancer@hang.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-iclb2/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][39] ([fdo#112080]) -> [PASS][40] +16 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +8 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_linear_blits@normal:
    - shard-hsw:          [FAIL][45] ([i915#694]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-hsw8/igt@gem_linear_blits@normal.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-hsw2/igt@gem_linear_blits@normal.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][47] ([i915#447]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-iclb6/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic:
    - shard-glk:          [FAIL][49] ([i915#67]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-glk7/igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-glk1/igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][51] ([i915#79]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-hsw:          [INCOMPLETE][55] ([i915#61]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-hsw5/igt@kms_flip@flip-vs-suspend-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [SKIP][57] ([i915#668]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html

  * {igt@kms_hdr@bpc-switch-dpms}:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][63] ([fdo#109642] / [fdo#111068]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-iclb4/igt@kms_psr@psr2_basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][67] ([i915#31]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-apl6/igt@kms_setmode@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-apl7/igt@kms_setmode@basic.html

  * igt@perf@short-reads:
    - shard-apl:          [TIMEOUT][69] ([fdo#112271] / [i915#51]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-apl4/igt@perf@short-reads.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-apl1/igt@perf@short-reads.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][71] ([fdo#109276]) -> [PASS][72] +23 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][73] ([i915#818]) -> [DMESG-FAIL][74] ([i915#44])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-hsw8/igt@gem_tiled_blits@interruptible.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][75] ([i915#818]) -> [FAIL][76] ([i915#694])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-hsw1/igt@gem_tiled_blits@normal.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-hsw2/igt@gem_tiled_blits@normal.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][77] ([fdo#103927] / [i915#974]) -> ([FAIL][78], [FAIL][79]) ([fdo#103927] / [fdo#111870] / [i915#211] / [i915#771] / [i915#974])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/shard-apl2/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-apl8/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/shard-apl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1241]: https://gitlab.freedesktop.org/drm/intel/issues/1241
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#211]: https://gitlab.freedesktop.org/drm/intel/issues/211
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#67]: https://gitlab.freedesktop.org/drm/intel/issues/67
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#771]: https://gitlab.freedesktop.org/drm/intel/issues/771
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7950 -> Patchwork_16589

  CI-20190529: 20190529
  CI_DRM_7950: eebe6906446d83547d0a3f29ffa3f124a8971b40 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5444: c46bae259d427f53fcfcd5f05de0181a9e82d6fe @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16589: 57a0abd044c141876bb459321a6938611ee1b428 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16589/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
