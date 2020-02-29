Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A78174917
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 21:11:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D15436E3A2;
	Sat, 29 Feb 2020 20:10:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0DEAE89D2F;
 Sat, 29 Feb 2020 20:10:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F3C75A47E6;
 Sat, 29 Feb 2020 20:10:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Sat, 29 Feb 2020 20:10:56 -0000
Message-ID: <158300705697.19635.4666403720392098804@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227170047.31089-1-jani.nikula@intel.com>
In-Reply-To: <20200227170047.31089-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_add_i915=5Fioc32=2Eh_fo?=
 =?utf-8?q?r_compat_=28rev2=29?=
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

Series: series starting with [1/3] drm/i915: add i915_ioc32.h for compat (rev2)
URL   : https://patchwork.freedesktop.org/series/74033/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8024_full -> Patchwork_16758_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16758_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#1291])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-tglb6/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-tglb1/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +11 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +24 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-iclb8/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#118] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-glk8/igt@gem_exec_whisper@basic-queues-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-glk2/igt@gem_exec_whisper@basic-queues-all.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-skl10/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-skl10/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#454])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#413])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-tglb8/igt@i915_pm_rps@waitboost.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-tglb3/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +6 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([IGT#5])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-tglb:         [PASS][29] -> [FAIL][30] ([i915#488])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-tglb2/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-tglb8/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#1188])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-skl9/igt@kms_hdr@bpc-switch.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-c-planes:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#1036])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-skl2/igt@kms_plane@plane-panning-bottom-right-pipe-c-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-skl7/igt@kms_plane@plane-panning-bottom-right-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-iclb7/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][39] ([fdo#112080]) -> [PASS][40] +11 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#110841]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][43] ([fdo#110854]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][45] ([fdo#109276] / [i915#677]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +14 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +5 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][53] ([i915#644]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [FAIL][55] ([i915#644]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_fence_blits@normal:
    - shard-apl:          [TIMEOUT][57] ([i915#1286]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-apl3/igt@gem_tiled_fence_blits@normal.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-apl2/igt@gem_tiled_fence_blits@normal.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [DMESG-FAIL][59] ([fdo#112406]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-skl10/igt@i915_selftest@live@gt_heartbeat.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-skl10/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         [INCOMPLETE][61] ([i915#1233]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-tglb2/igt@i915_selftest@live@gt_lrc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-tglb2/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-random:
    - shard-skl:          [FAIL][63] ([i915#54]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [FAIL][67] ([i915#96]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@all-pipes-forked-bo:
    - shard-iclb:         [INCOMPLETE][69] -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-iclb7/igt@kms_cursor_legacy@all-pipes-forked-bo.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-iclb7/igt@kms_cursor_legacy@all-pipes-forked-bo.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:
    - shard-tglb:         [SKIP][71] ([i915#668]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][73] ([fdo#108145]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][75] ([i915#899]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][77] ([fdo#109441]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-iclb4/igt@kms_psr@psr2_sprite_plane_onoff.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +4 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][81] ([IGT#28]) -> [SKIP][82] ([fdo#112080])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-snb:          [INCOMPLETE][83] ([i915#82]) -> [SKIP][84] ([fdo#109271])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-snb5/igt@i915_pm_dc@dc5-psr.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-snb4/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][85] ([i915#468]) -> [FAIL][86] ([i915#454])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][87] ([i915#454]) -> [SKIP][88] ([i915#468])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [DMESG-FAIL][89] -> [DMESG-WARN][90] ([i915#1297])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#1036]: https://gitlab.freedesktop.org/drm/intel/issues/1036
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1286]: https://gitlab.freedesktop.org/drm/intel/issues/1286
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#1297]: https://gitlab.freedesktop.org/drm/intel/issues/1297
  [i915#1333]: https://gitlab.freedesktop.org/drm/intel/issues/1333
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#488]: https://gitlab.freedesktop.org/drm/intel/issues/488
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8024 -> Patchwork_16758

  CI-20190529: 20190529
  CI_DRM_8024: 3290680f9735978238a1d3df1efa83326a843327 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5474: 1be610f852de155cd915e7cda65cb2737adf04d4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16758: 7fd44b356045ac94f174e2ffb7de0029d50ca299 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16758/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
