Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3A3184013
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 05:48:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E1956EB1F;
	Fri, 13 Mar 2020 04:48:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C59DE6E1F2;
 Fri, 13 Mar 2020 04:47:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C290CA00C7;
 Fri, 13 Mar 2020 04:47:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Fri, 13 Mar 2020 04:47:59 -0000
Message-ID: <158407487979.30351.6180472439191027789@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311083632.3249-1-anshuman.gupta@intel.com>
In-Reply-To: <20200311083632.3249-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Enable_non-contiguous_pipe_fusing?=
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

Series: drm/i915: Enable non-contiguous pipe fusing
URL   : https://patchwork.freedesktop.org/series/74570/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8113_full -> Patchwork_16920_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16920_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2] ([i915#1402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-iclb5/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-iclb2/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [PASS][3] -> [INCOMPLETE][4] ([fdo#103927] / [i915#1402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-apl3/igt@gem_ctx_persistence@close-replace-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@pi-distinct-iova-blt:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#859])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-apl2/igt@gem_exec_schedule@pi-distinct-iova-blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-apl6/igt@gem_exec_schedule@pi-distinct-iova-blt.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-iclb1/igt@gem_exec_schedule@preempt-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-iclb7/igt@gem_exec_schedule@preempt-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#118] / [i915#95]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#151] / [i915#69])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-skl8/igt@i915_pm_rpm@system-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-skl7/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_selftest@live@active:
    - shard-kbl:          [PASS][17] -> [DMESG-FAIL][18] ([i915#666])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-kbl2/igt@i915_selftest@live@active.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-kbl2/igt@i915_selftest@live@active.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#52] / [i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#49])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-snb:          [PASS][27] -> [DMESG-WARN][28] ([i915#42])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-snb2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-snb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#69])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-iclb4/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf@oa-exponents:
    - shard-apl:          [PASS][37] -> [FAIL][38] ([i915#84])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-apl4/igt@perf@oa-exponents.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-apl3/igt@perf@oa-exponents.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#112080]) +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-iclb2/igt@perf_pmu@busy-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-iclb7/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_blits@basic:
    - shard-skl:          [DMESG-WARN][41] ([i915#836]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-skl10/igt@gem_blits@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-skl3/igt@gem_blits@basic.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-skl:          [INCOMPLETE][43] ([i915#1402]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-skl3/igt@gem_ctx_persistence@close-replace-race.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-skl8/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-iclb1/igt@gem_exec_schedule@deep-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-iclb7/igt@gem_exec_schedule@deep-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][47] ([fdo#109276] / [i915#677]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [SKIP][49] ([fdo#109276]) -> [PASS][50] +7 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [SKIP][51] ([fdo#112080]) -> [PASS][52] +8 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-iclb6/igt@gem_exec_store@cachelines-vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-iclb2/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-tglb:         [INCOMPLETE][53] ([i915#1318] / [i915#1401]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-tglb7/igt@gem_exec_whisper@basic-fds-forked.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-tglb2/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [DMESG-WARN][55] ([i915#118] / [i915#95]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-glk3/igt@gem_exec_whisper@basic-fds-priority.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-glk7/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_linear_blits@normal:
    - shard-apl:          [TIMEOUT][57] ([i915#1322]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-apl8/igt@gem_linear_blits@normal.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-apl8/igt@gem_linear_blits@normal.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][59] ([i915#644]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_legacy@pipe-c-single-bo:
    - shard-hsw:          [DMESG-WARN][61] ([i915#44]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-hsw5/igt@kms_cursor_legacy@pipe-c-single-bo.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-hsw6/igt@kms_cursor_legacy@pipe-c-single-bo.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
    - shard-snb:          [SKIP][65] ([fdo#109271]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][69] ([i915#1188]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_mmap_write_crc@main:
    - shard-hsw:          [DMESG-FAIL][71] ([i915#44]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-hsw5/igt@kms_mmap_write_crc@main.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-hsw6/igt@kms_mmap_write_crc@main.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-iclb:         [INCOMPLETE][73] ([i915#250]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-iclb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][75] ([i915#899]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][77] ([fdo#109642] / [fdo#111068]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-iclb6/igt@kms_psr2_su@frontbuffer.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][79] ([fdo#109441]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][81] ([i915#31]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-kbl4/igt@kms_setmode@basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-kbl1/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][83] ([i915#658]) -> [SKIP][84] ([i915#588])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][85] ([i915#454]) -> [SKIP][86] ([i915#468])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [FAIL][87] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][88] ([i915#1319])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-kbl3/igt@kms_content_protection@atomic.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-kbl6/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][89] ([i915#180]) -> [INCOMPLETE][90] ([i915#155])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][91], [FAIL][92]) ([i915#1389] / [i915#1402] / [i915#92]) -> [FAIL][93] ([i915#92])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-kbl6/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-kbl6/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          [FAIL][94] ([fdo#103927]) -> ([FAIL][95], [FAIL][96]) ([fdo#103927] / [i915#1402])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/shard-apl1/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-apl6/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/shard-apl1/igt@runner@aborted.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1318]: https://gitlab.freedesktop.org/drm/intel/issues/1318
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1322]: https://gitlab.freedesktop.org/drm/intel/issues/1322
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1401]: https://gitlab.freedesktop.org/drm/intel/issues/1401
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#859]: https://gitlab.freedesktop.org/drm/intel/issues/859
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8113 -> Patchwork_16920

  CI-20190529: 20190529
  CI_DRM_8113: 1e2be4486f17a3f853c134097b068d000e7c6433 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16920: 0514610816580178c8b380ccfb6cb00d2ce8de55 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
