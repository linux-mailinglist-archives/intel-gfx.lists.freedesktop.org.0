Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 778321629DB
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 16:51:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB23E6EA36;
	Tue, 18 Feb 2020 15:51:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B6D2E6EA35;
 Tue, 18 Feb 2020 15:51:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AFD7BA47E8;
 Tue, 18 Feb 2020 15:51:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 18 Feb 2020 15:51:52 -0000
Message-ID: <158204111271.31430.8110597719856611168@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200215092902.4131132-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200215092902.4131132-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Mark_the_mock_ring-=3Evma_as_being_in_the_GG?=
 =?utf-8?b?VFQgKHJldjMp?=
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

Series: drm/i915/selftests: Mark the mock ring->vma as being in the GGTT (rev3)
URL   : https://patchwork.freedesktop.org/series/73496/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7947_full -> Patchwork_16582_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16582_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16582_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16582_full:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@mock_timelines:
    - shard-iclb:         [INCOMPLETE][1] ([i915#1234]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-iclb2/igt@i915_selftest@mock_timelines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-iclb3/igt@i915_selftest@mock_timelines.html
    - shard-skl:          [INCOMPLETE][3] ([i915#1234]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-skl5/igt@i915_selftest@mock_timelines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-skl8/igt@i915_selftest@mock_timelines.html
    - shard-tglb:         [INCOMPLETE][5] ([i915#1234]) -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-tglb8/igt@i915_selftest@mock_timelines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-tglb1/igt@i915_selftest@mock_timelines.html

  
Known issues
------------

  Here are the changes found in Patchwork_16582_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110841])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-snb:          [PASS][9] -> [TIMEOUT][10] ([fdo#111518] / [fdo#112271] / [i915#1084])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-snb4/igt@gem_eio@in-flight-contexts-10ms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-snb4/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112080]) +18 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd2:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276]) +23 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +6 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-hsw:          [PASS][19] -> [FAIL][20] ([i915#694]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-hsw8/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-hsw8/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_ppgtt@blt-vs-render-ctx0:
    - shard-hsw:          [PASS][21] -> [INCOMPLETE][22] ([CI#80] / [i915#61])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-hsw4/igt@gem_ppgtt@blt-vs-render-ctx0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-hsw4/igt@gem_ppgtt@blt-vs-render-ctx0.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#79]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-tglb:         [PASS][29] -> [SKIP][30] ([i915#668]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-tglb3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-tglb1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145] / [i915#265])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#899])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109642] / [fdo#111068])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-iclb5/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][45] -> [FAIL][46] ([i915#831])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-hsw4/igt@prime_mmap_coherency@ioctl-errors.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-hsw4/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][47] ([fdo#112080]) -> [PASS][48] +14 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-iclb:         [FAIL][49] ([i915#1241]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-iclb5/igt@gem_ctx_persistence@close-replace-race.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-iclb2/igt@gem_ctx_persistence@close-replace-race.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@blt}:
    - shard-apl:          [FAIL][51] ([i915#679]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-apl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-apl2/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd}:
    - shard-skl:          [INCOMPLETE][53] ([i915#1197]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-skl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@render}:
    - shard-skl:          [FAIL][55] ([i915#679]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-skl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox}:
    - shard-apl:          [INCOMPLETE][57] ([fdo#103927] / [i915#1239]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-apl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-apl2/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][59] ([fdo#110854]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][61] ([fdo#112146]) -> [PASS][62] +4 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][63] ([i915#69]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-skl5/igt@gem_softpin@noreloc-s3.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-skl7/igt@gem_softpin@noreloc-s3.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [FAIL][65] ([i915#96]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][69] ([i915#221]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-skl9/igt@kms_flip@flip-vs-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-skl5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][73] ([i915#34]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][77] ([fdo#108145]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][79] ([fdo#109441]) -> [PASS][80] +4 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-iclb8/igt@kms_psr@psr2_cursor_render.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][81] ([fdo#109276]) -> [PASS][82] +21 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-iclb3/igt@prime_busy@hang-bsd2.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][83] ([fdo#112080]) -> [FAIL][84] ([IGT#28])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][85] ([IGT#28]) -> [SKIP][86] ([fdo#112080])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][87] ([i915#694]) -> [FAIL][88] ([i915#818]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-hsw2/igt@gem_tiled_blits@normal.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-hsw1/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][89] ([i915#454]) -> [SKIP][90] ([i915#468])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@universal-planes:
    - shard-snb:          [INCOMPLETE][91] ([i915#82]) -> [SKIP][92] ([fdo#109271])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-snb7/igt@i915_pm_rpm@universal-planes.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-snb5/igt@i915_pm_rpm@universal-planes.html

  * igt@i915_selftest@mock_timelines:
    - shard-glk:          [INCOMPLETE][93] ([i915#1234] / [i915#58] / [k.org#198133]) -> [INCOMPLETE][94] ([i915#58] / [k.org#198133])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-glk2/igt@i915_selftest@mock_timelines.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-glk6/igt@i915_selftest@mock_timelines.html
    - shard-kbl:          [INCOMPLETE][95] ([fdo#103665] / [i915#1234]) -> [INCOMPLETE][96] ([fdo#103665])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-kbl7/igt@i915_selftest@mock_timelines.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-kbl4/igt@i915_selftest@mock_timelines.html
    - shard-apl:          [INCOMPLETE][97] ([fdo#103927] / [i915#1234]) -> [INCOMPLETE][98] ([fdo#103927])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7947/shard-apl2/igt@i915_selftest@mock_timelines.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/shard-apl8/igt@i915_selftest@mock_timelines.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111518]: https://bugs.freedesktop.org/show_bug.cgi?id=111518
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1234]: https://gitlab.freedesktop.org/drm/intel/issues/1234
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1241]: https://gitlab.freedesktop.org/drm/intel/issues/1241
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7947 -> Patchwork_16582

  CI-20190529: 20190529
  CI_DRM_7947: 0a7167dda3bc154af3fbbc8ac5cfc51bde7371db @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5444: c46bae259d427f53fcfcd5f05de0181a9e82d6fe @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16582: 54546d3bd619aa288c25d18f6636f29cb3c85982 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16582/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
