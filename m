Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A65149560
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2020 12:55:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66A646E804;
	Sat, 25 Jan 2020 11:55:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 53DD46E802;
 Sat, 25 Jan 2020 11:55:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 40C48A0093;
 Sat, 25 Jan 2020 11:55:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 25 Jan 2020 11:55:35 -0000
Message-ID: <157995333522.29037.3427088020219799329@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200123125934.1401755-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200123125934.1401755-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Detect_overflow_in_calculating_dumb_buffer_size?=
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

Series: drm/i915/gem: Detect overflow in calculating dumb buffer size
URL   : https://patchwork.freedesktop.org/series/72467/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7804_full -> Patchwork_16234_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16234_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-tglb:         [PASS][1] -> [FAIL][2] ([i915#679])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-tglb5/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-tglb5/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-persistence:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb1/igt@gem_ctx_persistence@vcs1-persistence.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb5/igt@gem_ctx_persistence@vcs1-persistence.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-hang-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb3/igt@gem_exec_schedule@preempt-hang-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb1/igt@gem_exec_schedule@preempt-hang-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [PASS][11] -> [INCOMPLETE][12] ([fdo#103927] / [i915#530])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-kbl:          [PASS][13] -> [INCOMPLETE][14] ([fdo#103665] / [i915#530])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-hsw:          [PASS][15] -> [INCOMPLETE][16] ([i915#530] / [i915#61])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-hsw:          [PASS][17] -> [INCOMPLETE][18] ([i915#61]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-hsw5/igt@gem_persistent_relocs@forked-thrashing.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-hsw7/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [PASS][19] -> [FAIL][20] ([i915#818])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-hsw1/igt@gem_tiled_blits@normal.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-hsw5/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#447])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb1/igt@i915_pm_dc@dc5-dpms.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#413])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb4/igt@i915_pm_rps@waitboost.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb4/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [PASS][25] -> [INCOMPLETE][26] ([i915#82]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-snb6/igt@i915_selftest@mock_requests.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-snb2/igt@i915_selftest@mock_requests.html
    - shard-glk:          [PASS][27] -> [INCOMPLETE][28] ([i915#58] / [k.org#198133])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-glk4/igt@i915_selftest@mock_requests.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-glk8/igt@i915_selftest@mock_requests.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#69])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl9/igt@i915_suspend@fence-restore-untiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-skl6/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#109]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl2/igt@kms_color@pipe-a-ctm-0-5.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#129])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl7/igt@kms_color@pipe-b-ctm-green-to-red.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-skl5/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#79])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [PASS][39] -> [FAIL][40] ([i915#79])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][43] -> [FAIL][44] ([i915#49]) +6 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([fdo#108145])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109642] / [fdo#111068])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109441])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][51] -> [FAIL][52] ([i915#31])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-apl4/igt@kms_setmode@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-apl2/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#112080]) +17 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109276]) +23 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb5/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][57] ([fdo#109276] / [fdo#112080]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb8/igt@gem_ctx_isolation@vcs1-clean.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb1/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-glk:          [FAIL][59] ([i915#679]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-glk3/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-glk8/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-tglb:         [FAIL][61] ([i915#679]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-tglb5/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-tglb8/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][63] ([fdo#112080]) -> [PASS][64] +6 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][65] ([i915#677]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd2:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68] +11 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb5/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb4/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][69] ([fdo#112146]) -> [PASS][70] +6 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb4/igt@gem_exec_schedule@wide-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb6/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [INCOMPLETE][71] ([i915#140]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-glk:          [INCOMPLETE][73] ([i915#58] / [k.org#198133]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-glk7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-glk2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][75] ([fdo#103665]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-kbl2/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][77] ([i915#644]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_selftest@mock_requests:
    - shard-tglb:         [INCOMPLETE][79] ([i915#472]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-tglb4/igt@i915_selftest@mock_requests.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-tglb5/igt@i915_selftest@mock_requests.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +4 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-kbl3/igt@i915_suspend@forcewake.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-kbl2/igt@i915_suspend@forcewake.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][85] ([i915#109]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl2/igt@kms_color@pipe-b-ctm-0-75.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - shard-skl:          [FAIL][87] ([i915#52] / [i915#54]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][89] ([i915#79]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][91] ([i915#221]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][93] ([i915#49]) -> [PASS][94] +3 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][95] ([fdo#108145]) -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][97] ([fdo#109441]) -> [PASS][98] +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][99] ([i915#31]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-hsw6/igt@kms_setmode@basic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-hsw7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][101] ([fdo#109276] / [fdo#112080]) -> [FAIL][102] ([IGT#28])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-hsw:          [INCOMPLETE][103] ([i915#61]) -> [INCOMPLETE][104] ([i915#530] / [i915#61])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-hsw1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-hsw5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][105] ([i915#818]) -> [FAIL][106] ([i915#694])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-hsw7/igt@gem_tiled_blits@interruptible.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-hsw8/igt@gem_tiled_blits@interruptible.html

  * igt@kms_atomic_transition@3x-modeset-transitions:
    - shard-hsw:          [SKIP][107] ([fdo#109271] / [i915#439]) -> [SKIP][108] ([fdo#109271])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-hsw2/igt@kms_atomic_transition@3x-modeset-transitions.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-hsw5/igt@kms_atomic_transition@3x-modeset-transitions.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][109] ([fdo#109349]) -> [DMESG-WARN][110] ([fdo#107724])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#439]: https://gitlab.freedesktop.org/drm/intel/issues/439
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7804 -> Patchwork_16234

  CI-20190529: 20190529
  CI_DRM_7804: 74ed9d57007ab848a57ec6d785de4187b70acd9b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5382: 8dbe5ce61baa2d563d4dd7c56a018bb1e1077467 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16234: e926202e473d6377549444b307814405cd3a4ce5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16234/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
