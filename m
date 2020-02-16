Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF65E1603E5
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Feb 2020 12:58:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F14F66E297;
	Sun, 16 Feb 2020 11:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1FA496E297;
 Sun, 16 Feb 2020 11:58:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 136FAA011A;
 Sun, 16 Feb 2020 11:58:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sun, 16 Feb 2020 11:58:47 -0000
Message-ID: <158185432704.23350.14329121752651932789@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200212150102.7600-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200212150102.7600-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Force_state-=3Emodeset=3Dtrue_when_distrust=5Fbios=5Fw?=
 =?utf-8?q?m=3D=3Dtrue?=
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

Series: drm/i915: Force state->modeset=true when distrust_bios_wm==true
URL   : https://patchwork.freedesktop.org/series/73367/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7926_full -> Patchwork_16544_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16544_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +13 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb3/igt@gem_exec_schedule@in-order-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +18 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb1/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-iclb8/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-kbl2/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_color@pipe-a-gamma:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#1149])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb7/igt@kms_color@pipe-a-gamma.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-tglb6/igt@kms_color@pipe-a-gamma.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge:
    - shard-hsw:          [PASS][15] -> [INCOMPLETE][16] ([i915#61])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw1/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-hsw5/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-glk5/igt@kms_flip@flip-vs-expired-vblank.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-glk1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#221]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl6/igt@kms_flip@flip-vs-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-skl5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#49])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl2/igt@kms_frontbuffer_tracking@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-skl7/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [PASS][23] -> [SKIP][24] ([i915#668]) +9 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#69])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109642] / [fdo#111068])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [PASS][35] -> [INCOMPLETE][36] ([i915#1176] / [i915#61])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw7/igt@perf_pmu@cpu-hotplug.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-hsw5/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][37] -> [FAIL][38] ([i915#831])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Possible fixes ####

  * igt@gem_caching@reads:
    - shard-hsw:          [FAIL][39] ([i915#694]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw6/igt@gem_caching@reads.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-hsw1/igt@gem_caching@reads.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#110841]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][43] ([fdo#110854]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb3/igt@gem_exec_balancer@smoke.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][45] ([i915#677]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][47] ([fdo#112146]) -> [PASS][48] +8 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [INCOMPLETE][49] ([i915#716]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-skl2/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][51] ([i915#413]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb3/igt@i915_pm_rps@waitboost.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-iclb4/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-kbl4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-tglb:         [FAIL][55] ([fdo#111703]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge:
    - shard-tglb:         [FAIL][57] ([i915#70]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb1/igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-tglb5/igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-tglb:         [DMESG-FAIL][59] ([i915#402]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-tglb2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - shard-tglb:         [FAIL][61] ([i915#559]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb3/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-tglb7/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][63] ([i915#79]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html

  * {igt@kms_hdr@bpc-switch-dpms}:
    - shard-skl:          [FAIL][65] ([i915#1188]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - shard-tglb:         [FAIL][69] ([i915#1139]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb7/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-tglb6/igt@kms_plane_cursor@pipe-a-overlay-size-256.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][73] ([i915#31]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl4/igt@kms_setmode@basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-kbl1/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [PASS][76] +13 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb3/igt@perf_pmu@busy-vcs1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-iclb4/igt@perf_pmu@busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][77] ([fdo#109276]) -> [PASS][78] +24 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][79] ([IGT#28]) -> [SKIP][80] ([fdo#112080])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][81] ([i915#818]) -> [FAIL][82] ([i915#694]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw5/igt@gem_tiled_blits@normal.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-hsw1/igt@gem_tiled_blits@normal.html

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][83] ([i915#974]) -> ([FAIL][84], [FAIL][85]) ([i915#1176] / [i915#974])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw2/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-hsw6/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/shard-hsw5/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111703]: https://bugs.freedesktop.org/show_bug.cgi?id=111703
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1139]: https://gitlab.freedesktop.org/drm/intel/issues/1139
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1176]: https://gitlab.freedesktop.org/drm/intel/issues/1176
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#559]: https://gitlab.freedesktop.org/drm/intel/issues/559
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7926 -> Patchwork_16544

  CI-20190529: 20190529
  CI_DRM_7926: 6b2fe829d300abf285e9db8b252ffacd216df3ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5437: ae42fedfd0c536c560e8e17b06d9c7b94a4e8f0c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16544: 13b07a71ab0c312340f89f3b3ba477895ea6a0d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16544/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
