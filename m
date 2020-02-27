Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EC417117A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 08:31:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02E936EC00;
	Thu, 27 Feb 2020 07:31:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B51776EBFD;
 Thu, 27 Feb 2020 07:31:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D3E6A00EF;
 Thu, 27 Feb 2020 07:31:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 27 Feb 2020 07:31:40 -0000
Message-ID: <158278870054.29658.8176304633916202290@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225143604.500731-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200225143604.500731-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Replace_the_hardcoded_I?=
 =?utf-8?q?915=5FFENCE=5FTIMEOUT?=
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

Series: series starting with [1/3] drm/i915: Replace the hardcoded I915_FENCE_TIMEOUT
URL   : https://patchwork.freedesktop.org/series/73914/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8008_full -> Patchwork_16706_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16706_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16706_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16706_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@vecs0-fds:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl3/igt@gem_exec_parallel@vecs0-fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-skl5/igt@gem_exec_parallel@vecs0-fds.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-skl:          [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl8/igt@sw_sync@sync_multi_producer_single_consumer.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-skl1/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-tglb:         [PASS][5] -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-tglb2/igt@sw_sync@sync_multi_producer_single_consumer.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-tglb6/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-snb:          [PASS][7] -> [TIMEOUT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb5/igt@sw_sync@sync_multi_producer_single_consumer.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-snb6/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-iclb:         [PASS][9] -> [TIMEOUT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@sw_sync@sync_multi_producer_single_consumer.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-iclb7/igt@sw_sync@sync_multi_producer_single_consumer.html

  
Known issues
------------

  Here are the changes found in Patchwork_16706_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#110841])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#110854])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112080]) +11 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([i915#677])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-skl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#454])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@modeset-vs-vblank-race:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#407])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-glk5/igt@kms_flip@modeset-vs-vblank-race.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-glk7/igt@kms_flip@modeset-vs-vblank-race.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#49])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +5 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#49])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-iclb5/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109276]) +21 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-iclb3/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [FAIL][43] ([i915#1277]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@gem_exec_balancer@hang.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-iclb7/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][45] ([i915#677]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][47] ([fdo#112146]) -> [PASS][48] +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * {igt@gem_exec_whisper@basic-contexts-forked}:
    - shard-apl:          [INCOMPLETE][49] ([fdo#103927]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl7/igt@gem_exec_whisper@basic-contexts-forked.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-apl6/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [FAIL][51] ([i915#54]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][55] ([IGT#5]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [DMESG-WARN][57] ([i915#42]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb4/igt@kms_flip@flip-vs-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-snb2/igt@kms_flip@flip-vs-suspend.html

  * {igt@kms_hdr@bpc-switch-suspend}:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][61] ([i915#69]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][63] ([fdo#108145]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][65] ([fdo#108145] / [i915#265]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][67] ([i915#899]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][71] ([i915#31]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl1/igt@kms_setmode@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-apl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [PASS][76] +11 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb7/igt@perf_pmu@busy-vcs1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-iclb1/igt@perf_pmu@busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][77] ([fdo#109276]) -> [PASS][78] +23 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-kbl:          [TIMEOUT][79] -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl3/igt@sw_sync@sync_multi_producer_single_consumer.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-kbl4/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][81] ([IGT#28]) -> [SKIP][82] ([fdo#112080]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [INCOMPLETE][83] ([fdo#103665]) -> [DMESG-WARN][84] ([i915#180])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl4/igt@gem_softpin@noreloc-s3.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/shard-kbl7/igt@gem_softpin@noreloc-s3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8008 -> Patchwork_16706

  CI-20190529: 20190529
  CI_DRM_8008: 13b6e2575f2c05722679bc1c9d0b97c13bde49a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5469: 4f875016eb1ebc211b8aadb280ae16c7e6cdc8ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16706: d545877af0ce392fdd9ec70d6d8698e0816d1813 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16706/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
