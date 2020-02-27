Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36ABE171281
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 09:27:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 823C36EC46;
	Thu, 27 Feb 2020 08:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 035096EC45;
 Thu, 27 Feb 2020 08:27:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EFB03A00FD;
 Thu, 27 Feb 2020 08:27:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Date: Thu, 27 Feb 2020 08:27:00 -0000
Message-ID: <158279202095.29656.6862930942548348876@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225140347.GA22864@embeddedor>
In-Reply-To: <20200225140347.GA22864@embeddedor>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Replace_zero-length_array_with_flexible-array_member?=
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

Series: drm: Replace zero-length array with flexible-array member
URL   : https://patchwork.freedesktop.org/series/73916/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8008_full -> Patchwork_16708_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16708_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16708_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16708_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-tglb8/igt@gem_exec_whisper@basic-fds-priority.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-tglb6/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-skl:          [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl8/igt@sw_sync@sync_multi_producer_single_consumer.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-skl8/igt@sw_sync@sync_multi_producer_single_consumer.html

  
Known issues
------------

  Here are the changes found in Patchwork_16708_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@default:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@default.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@default.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#1239])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112080]) +9 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276] / [i915#677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_selftest@live_gt_heartbeat:
    - shard-skl:          [PASS][21] -> [DMESG-FAIL][22] ([fdo#112406])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl1/igt@i915_selftest@live_gt_heartbeat.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-skl10/igt@i915_selftest@live_gt_heartbeat.html

  * igt@i915_selftest@live_gt_lrc:
    - shard-tglb:         [PASS][23] -> [DMESG-FAIL][24] ([i915#1233])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-tglb7/igt@i915_selftest@live_gt_lrc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-tglb8/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-glk7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1188])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl3/igt@kms_hdr@bpc-switch.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +7 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#899])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-skl:          [PASS][35] -> [DMESG-WARN][36] ([IGT#6])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl2/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-skl5/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109276]) +16 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-iclb7/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [FAIL][41] ([i915#1277]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@gem_exec_balancer@hang.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-iclb8/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][43] ([fdo#109276] / [i915#677]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][45] ([i915#677]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +15 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#112146]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-apl:          [INCOMPLETE][51] ([fdo#103927]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl7/igt@gem_exec_whisper@basic-contexts-forked.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-apl2/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [FAIL][53] ([i915#413]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-tglb3/igt@i915_pm_rps@reset.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-tglb1/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][55] ([i915#413]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb6/igt@i915_pm_rps@waitboost.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-iclb3/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [FAIL][57] ([i915#54]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][61] ([IGT#5]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [DMESG-WARN][63] ([i915#42]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb4/igt@kms_flip@flip-vs-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-snb5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][65] ([i915#1188]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][67] ([i915#69]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][69] ([fdo#108145]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [PASS][76] +7 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb8/igt@perf_pmu@init-busy-vcs1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][77] ([i915#454]) -> [SKIP][78] ([i915#468])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          [TIMEOUT][79] ([i915#1319]) -> [TIMEOUT][80] ([i915#1319] / [i915#727]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl2/igt@kms_content_protection@legacy.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/shard-kbl6/igt@kms_content_protection@legacy.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8008 -> Patchwork_16708

  CI-20190529: 20190529
  CI_DRM_8008: 13b6e2575f2c05722679bc1c9d0b97c13bde49a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5469: 4f875016eb1ebc211b8aadb280ae16c7e6cdc8ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16708: bdffb4ce0539293c70c3d140d5981a8e80979c4f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
