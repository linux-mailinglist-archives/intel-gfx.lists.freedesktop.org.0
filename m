Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE15A21AD29
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 04:47:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A1506EB5E;
	Fri, 10 Jul 2020 02:47:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A64C26E3B8;
 Fri, 10 Jul 2020 02:47:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9F73BA0BD0;
 Fri, 10 Jul 2020 02:47:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 10 Jul 2020 02:47:36 -0000
Message-ID: <159434925662.20499.17808820853313747907@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200709224504.11345-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200709224504.11345-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/perf=3A_Use_GTT_when_?=
 =?utf-8?q?saving/restoring_engine_GPR?=
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

Series: series starting with [CI,1/2] drm/i915/perf: Use GTT when saving/restoring engine GPR
URL   : https://patchwork.freedesktop.org/series/79320/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8724_full -> Patchwork_18130_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18130_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [PASS][1] -> [FAIL][2] ([i915#2079])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-kbl3/igt@gem_exec_balancer@bonded-early.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-kbl3/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_params@invalid-fence-in:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#93] / [i915#95]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-kbl4/igt@gem_exec_params@invalid-fence-in.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-kbl2/igt@gem_exec_params@invalid-fence-in.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-kbl4/igt@i915_suspend@sysfs-reader.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-kbl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#129])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-skl1/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-skl1/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +12 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-skl8/igt@kms_color@pipe-b-ctm-negative.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-skl3/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1635] / [i915#95]) +15 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-glk6/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-glk7/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([IGT#5])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl4/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-apl3/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][27] -> [DMESG-WARN][28] ([i915#1982])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-iclb5/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109642] / [fdo#111068])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-iclb3/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#456])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-tglb8/igt@kms_psr@psr2_suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-tglb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][35] -> [FAIL][36] ([i915#31])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-kbl7/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-kbl6/igt@kms_setmode@basic.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][37] -> [FAIL][38] ([i915#1542])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-iclb2/igt@perf@blocking-parameterized.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-iclb6/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][39] -> [FAIL][40] ([i915#1820])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-kbl3/igt@perf_pmu@semaphore-busy@rcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-apl:          [DMESG-WARN][41] ([i915#1635] / [i915#95]) -> [PASS][42] +21 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl3/igt@gem_exec_flush@basic-wb-rw-before-default.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-apl1/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-kbl:          [DMESG-WARN][43] ([i915#165]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-kbl2/igt@gem_workarounds@suspend-resume-context.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-kbl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_color@pipe-a-ctm-negative:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-skl9/igt@kms_color@pipe-a-ctm-negative.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-skl10/igt@kms_color@pipe-a-ctm-negative.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [FAIL][47] ([i915#79]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-kbl1/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-kbl4/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-glk:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-glk5/igt@kms_frontbuffer_tracking@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-glk9/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-tglb:         [DMESG-WARN][53] ([i915#402]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-tglb2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-tglb3/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-iclb6/igt@kms_psr@psr2_sprite_plane_onoff.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_vblank@pipe-a-query-busy-hang:
    - shard-apl:          [DMESG-WARN][57] ([i915#1982]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl2/igt@kms_vblank@pipe-a-query-busy-hang.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-apl3/igt@kms_vblank@pipe-a-query-busy-hang.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - shard-snb:          [WARN][59] ([i915#2021]) -> [WARN][60] ([i915#2036])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-snb4/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-snb5/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-apl:          [SKIP][61] ([fdo#109271]) -> [SKIP][62] ([fdo#109271] / [i915#1635]) +6 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl6/igt@gem_render_copy@linear-to-vebox-y-tiled.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-apl4/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          [SKIP][63] ([fdo#109271] / [i915#1635] / [i915#1937]) -> [SKIP][64] ([fdo#109271] / [i915#1937])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][65] ([i915#1515]) -> [FAIL][66] ([i915#1515])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [INCOMPLETE][68] ([i915#155] / [i915#636])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-kbl7/igt@i915_suspend@forcewake.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-kbl1/igt@i915_suspend@forcewake.html

  * igt@kms_color_chamelium@pipe-a-ctm-max:
    - shard-apl:          [SKIP][69] ([fdo#109271] / [fdo#111827]) -> [SKIP][70] ([fdo#109271] / [fdo#111827] / [i915#1635])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-max.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-max.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][71] ([i915#93] / [i915#95]) -> [DMESG-WARN][72] ([i915#180] / [i915#93] / [i915#95])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-apl:          [SKIP][73] ([fdo#109271] / [i915#1635]) -> [SKIP][74] ([fdo#109271]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-apl2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [DMESG-FAIL][75] ([fdo#108145] / [i915#1982]) -> [FAIL][76] ([fdo#108145] / [i915#265])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][77], [FAIL][78]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][79] ([i915#1635] / [i915#2110])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl2/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl3/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/shard-apl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8724 -> Patchwork_18130

  CI-20190529: 20190529
  CI_DRM_8724: 0165f1cb39da5c3253af7f640a886484f7846089 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5729: a048d54f58dd70b07dbeb4541b273ec230ddb586 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18130: b70978f20e3ba6e3d2434354ca48f21aa48aa096 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18130/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
