Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 702711684E1
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 18:26:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE0E86F4E4;
	Fri, 21 Feb 2020 17:26:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D07516F4E4;
 Fri, 21 Feb 2020 17:26:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C7748A47E7;
 Fri, 21 Feb 2020 17:26:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>
Date: Fri, 21 Feb 2020 17:26:18 -0000
Message-ID: <158230597878.7919.10602237854972338149@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219161822.24592-1-michal.winiarski@intel.com>
In-Reply-To: <20200219161822.24592-1-michal.winiarski@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/pmu=3A_Avoid_using_globals?=
 =?utf-8?q?_for_CPU_hotplug_state?=
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

Series: series starting with [1/2] drm/i915/pmu: Avoid using globals for CPU hotplug state
URL   : https://patchwork.freedesktop.org/series/73663/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7966_full -> Patchwork_16628_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7966_full and Patchwork_16628_full:

### New IGT tests (2) ###

  * igt@gem_eio@context-create:
    - Statuses : 8 pass(s)
    - Exec time: [0.02, 0.12] s

  * igt@kms_mmap_write_crc@main:
    - Statuses : 8 pass(s)
    - Exec time: [4.00, 21.80] s

  

Known issues
------------

  Here are the changes found in Patchwork_16628_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2] ([fdo#103665])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-kbl7/igt@gem_ctx_isolation@bcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-kbl4/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl3/igt@gem_ctx_isolation@vecs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-apl1/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-iclb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][7] -> [FAIL][8] ([i915#818])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-hsw6/igt@gem_tiled_blits@interruptible.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-hsw2/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_rpm@universal-planes-dpms:
    - shard-tglb:         [PASS][9] -> [TIMEOUT][10] ([fdo#112126] / [fdo#112271]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-tglb1/igt@i915_pm_rpm@universal-planes-dpms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-tglb1/igt@i915_pm_rpm@universal-planes-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#413])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb7/igt@i915_pm_rps@waitboost.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-iclb5/igt@i915_pm_rps@waitboost.html

  * igt@kms_color@pipe-a-degamma:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#71])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl5/igt@kms_color@pipe-a-degamma.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-skl6/igt@kms_color@pipe-a-degamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#300])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
    - shard-apl:          [PASS][17] -> [FAIL][18] ([i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#72])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#52] / [i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-panning-vs-hang-interruptible:
    - shard-tglb:         [PASS][27] -> [TIMEOUT][28] ([fdo#112271] / [i915#561]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-tglb6/igt@kms_flip@flip-vs-panning-vs-hang-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-tglb8/igt@kms_flip@flip-vs-panning-vs-hang-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#49])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#899])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#112080]) +9 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb4/igt@perf_pmu@busy-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-iclb8/igt@perf_pmu@busy-vcs1.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [PASS][39] -> [INCOMPLETE][40] ([i915#1176] / [i915#61])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-hsw2/igt@perf_pmu@cpu-hotplug.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-hsw5/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109276]) +20 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][43] ([fdo#110854]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * {igt@gem_exec_schedule@implicit-read-write-bsd1}:
    - shard-iclb:         [SKIP][45] ([fdo#109276] / [i915#677]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * {igt@gem_exec_schedule@implicit-write-read-bsd}:
    - shard-iclb:         [SKIP][47] ([i915#677]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][49] ([fdo#109276]) -> [PASS][50] +18 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb6/igt@gem_exec_schedule@out-order-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-iclb1/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +7 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * {igt@gem_exec_whisper@basic-contexts-forked}:
    - shard-apl:          [INCOMPLETE][53] ([fdo#103927]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl3/igt@gem_exec_whisper@basic-contexts-forked.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-apl8/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][55] ([i915#644]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][57] ([i915#454]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-a:
    - shard-snb:          [SKIP][59] ([fdo#109271]) -> [PASS][60] +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-snb6/igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-a.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-snb6/igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-a.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-random:
    - shard-apl:          [FAIL][61] ([i915#54]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][63] ([i915#300]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +5 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [SKIP][69] ([i915#668]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * {igt@kms_hdr@bpc-switch-dpms}:
    - shard-skl:          [FAIL][71] ([i915#1188]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][73] ([fdo#108145]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][77] ([fdo#112080]) -> [PASS][78] +10 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb3/igt@perf_pmu@init-busy-vcs1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][79] ([i915#831]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-hsw7/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][81] ([fdo#112080]) -> [FAIL][82] ([IGT#28])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][83] ([i915#694]) -> [FAIL][84] ([i915#818])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-hsw2/igt@gem_tiled_blits@normal.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-hsw2/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][85] ([i915#468]) -> [FAIL][86] ([i915#454])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][87] ([i915#454]) -> [SKIP][88] ([i915#468])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-snb:          [INCOMPLETE][89] ([i915#82]) -> [SKIP][90] ([fdo#109271])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-snb6/igt@i915_pm_rpm@gem-idle.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/shard-snb2/igt@i915_pm_rpm@gem-idle.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1176]: https://gitlab.freedesktop.org/drm/intel/issues/1176
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#561]: https://gitlab.freedesktop.org/drm/intel/issues/561
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7966 -> Patchwork_16628

  CI-20190529: 20190529
  CI_DRM_7966: 014bfb094e0b4e80d7510dc5d6f45e5e73bbb419 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5451: 1c42f971d37a066da3e588783611ab08d5afbded @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16628: 547528017979d02096d4957b1f838b0f3ccea60e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16628/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
