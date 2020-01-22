Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25955145890
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 16:24:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DD436F585;
	Wed, 22 Jan 2020 15:24:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7ADF86F583;
 Wed, 22 Jan 2020 15:24:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 721EFA0134;
 Wed, 22 Jan 2020 15:24:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 22 Jan 2020 15:24:43 -0000
Message-ID: <157970668346.22395.7322134744405450755@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121132107.267709-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200121132107.267709-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Don=27t_show_the_blank_process_name_for_internal/simul?=
 =?utf-8?q?ated_errors?=
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

Series: drm/i915: Don't show the blank process name for internal/simulated errors
URL   : https://patchwork.freedesktop.org/series/72337/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7783_full -> Patchwork_16188_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16188_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16188_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16188_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic_transition@5x-modeset-transitions:
    - shard-tglb:         NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-tglb6/igt@kms_atomic_transition@5x-modeset-transitions.html

  
#### Warnings ####

  * igt@kms_atomic_transition@5x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][2] ([fdo#112021]) -> [SKIP][3] +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb2/igt@kms_atomic_transition@5x-modeset-transitions-nonblocking-fencing.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-tglb6/igt@kms_atomic_transition@5x-modeset-transitions-nonblocking-fencing.html

  
Known issues
------------

  Here are the changes found in Patchwork_16188_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb7/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@processes:
    - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#570])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-kbl3/igt@gem_ctx_persistence@processes.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-kbl2/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-tglb:         [PASS][8] -> [FAIL][9] ([i915#679])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb6/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-tglb8/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#110854])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112080]) +10 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([i915#677])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-self-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112146]) +4 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb8/igt@gem_exec_schedule@preempt-self-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb4/igt@gem_exec_schedule@preempt-self-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#109276]) +17 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb2/igt@gem_exec_schedule@promotion-bsd1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb3/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [PASS][20] -> [TIMEOUT][21] ([fdo#112271] / [i915#530])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb8/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-apl:          [PASS][22] -> [TIMEOUT][23] ([fdo#112271] / [i915#530])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-tglb:         [PASS][24] -> [TIMEOUT][25] ([fdo#112126] / [fdo#112271] / [i915#530])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb8/igt@gem_persistent_relocs@forked-thrashing.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-tglb6/igt@gem_persistent_relocs@forked-thrashing.html
    - shard-kbl:          [PASS][26] -> [INCOMPLETE][27] ([fdo#103665] / [i915#530])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-kbl2/igt@gem_persistent_relocs@forked-thrashing.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][28] -> [INCOMPLETE][29] ([i915#69])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl6/igt@gem_softpin@noreloc-s3.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-skl9/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][30] -> [FAIL][31] ([i915#413])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb4/igt@i915_pm_rps@waitboost.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb7/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [PASS][32] -> [INCOMPLETE][33] ([i915#82])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-snb6/igt@i915_selftest@mock_requests.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-snb5/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#54])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt:
    - shard-tglb:         [PASS][36] -> [FAIL][37] ([i915#49])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([fdo#108145])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#109441])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb3/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][44] -> [DMESG-WARN][45] ([i915#180]) +6 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-snb:          [PASS][46] -> [DMESG-WARN][47] ([i915#42])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-snb1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-snb2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-iclb:         [PASS][48] -> [DMESG-WARN][49] ([fdo#111764])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][50] -> [FAIL][51] ([i915#831])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-hsw6/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][52] ([i915#180]) -> [PASS][53] +4 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-switch:
    - shard-iclb:         [SKIP][54] ([fdo#109276] / [fdo#112080]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-switch.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-switch.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][56] ([i915#677]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][58] ([fdo#112146]) -> [PASS][59] +4 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd2:
    - shard-iclb:         [SKIP][60] ([fdo#109276]) -> [PASS][61] +15 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb8/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb1/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [INCOMPLETE][62] ([i915#463] / [i915#472]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb1/igt@gem_exec_schedule@smoketest-all.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-tglb2/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_whisper@normal:
    - shard-tglb:         [INCOMPLETE][64] ([i915#472]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb7/igt@gem_exec_whisper@normal.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-tglb6/igt@gem_exec_whisper@normal.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-hsw:          [INCOMPLETE][66] ([i915#530] / [i915#61]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-hsw6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-hsw7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-apl:          [TIMEOUT][68] ([fdo#112271] / [i915#530]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
    - shard-hsw:          [TIMEOUT][70] ([fdo#112271] / [i915#530]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][72] ([fdo#112271]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-tglb:         [TIMEOUT][74] ([fdo#112126] / [fdo#112271]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-tglb8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-tglb:         [TIMEOUT][76] ([fdo#112126] / [fdo#112271] / [i915#530]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-glk:          [TIMEOUT][78] ([fdo#112271]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-glk2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-glk9/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][80] ([i915#644]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [FAIL][82] ([i915#644]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][84] ([i915#454]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock_requests:
    - shard-hsw:          [INCOMPLETE][86] ([i915#61]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-hsw1/igt@i915_selftest@mock_requests.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-hsw5/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-toggle:
    - shard-skl:          [DMESG-WARN][88] ([i915#109]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl6/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-skl9/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][90] ([IGT#5]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][92] ([i915#221]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglb:         [FAIL][94] ([i915#49]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][96] ([fdo#108145]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][98] ([fdo#108145] / [i915#265]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][100] ([fdo#109441]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][102] ([i915#31]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl5/igt@kms_setmode@basic.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-skl6/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][104] ([fdo#112080]) -> [PASS][105] +10 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb8/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb1/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][106] ([IGT#28]) -> [SKIP][107] ([fdo#109276] / [fdo#112080])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@kms_atomic_transition@4x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][108] ([fdo#112041]) -> [SKIP][109] ([fdo#112022] / [fdo#112041]) +3 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb8/igt@kms_atomic_transition@4x-modeset-transitions-nonblocking-fencing.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-tglb2/igt@kms_atomic_transition@4x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][110] ([fdo#112016] / [fdo#112021]) -> [SKIP][111] ([fdo#112016]) +2 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb8/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-tglb4/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][112] ([fdo#107724]) -> [SKIP][113] ([fdo#109349])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112041]: https://bugs.freedesktop.org/show_bug.cgi?id=112041
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7783 -> Patchwork_16188

  CI-20190529: 20190529
  CI_DRM_7783: 3ee976286895f0bd54388efc16b12f62c624ff19 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5376: 5cf58d947a02379d2885d6dd4f8bb487cfc3eed2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16188: 17188d18afa72cc78b03403c29397915ac2fe879 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
