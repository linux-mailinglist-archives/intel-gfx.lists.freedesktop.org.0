Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15742160792
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 01:57:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 290AF6E393;
	Mon, 17 Feb 2020 00:57:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2B87A6E0AC;
 Mon, 17 Feb 2020 00:57:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1313AA47E9;
 Mon, 17 Feb 2020 00:57:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jerry (Fangzhi) Zuo" <Jerry.Zuo@amd.com>
Date: Mon, 17 Feb 2020 00:57:19 -0000
Message-ID: <158190103904.7224.7917709187012932165@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211160832.24259-1-Jerry.Zuo@amd.com>
In-Reply-To: <20200211160832.24259-1-Jerry.Zuo@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Add_support_for_DP_1=2E4_Compliance_edid_corruption_test_?=
 =?utf-8?b?KHJldjYp?=
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

Series: drm: Add support for DP 1.4 Compliance edid corruption test (rev6)
URL   : https://patchwork.freedesktop.org/series/70530/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7926_full -> Patchwork_16548_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16548_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +15 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-iclb3/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#677]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276]) +21 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb1/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-iclb7/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb7/igt@gem_exec_schedule@reorder-wide-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#447])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb1/igt@i915_pm_dc@dc5-dpms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_color@pipe-a-gamma:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#1149])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb7/igt@kms_color@pipe-a-gamma.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-tglb8/igt@kms_color@pipe-a-gamma.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([IGT#5])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#49])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl2/igt@kms_frontbuffer_tracking@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-skl7/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][25] -> [SKIP][26] ([i915#668])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#899])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-iclb6/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#69])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [PASS][37] -> [INCOMPLETE][38] ([i915#1176] / [i915#61])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw7/igt@perf_pmu@cpu-hotplug.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-hsw5/igt@perf_pmu@cpu-hotplug.html

  
#### Possible fixes ####

  * igt@gem_caching@reads:
    - shard-hsw:          [FAIL][39] ([i915#694]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw6/igt@gem_caching@reads.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-hsw6/igt@gem_caching@reads.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#110841]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][43] ([fdo#110854]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb3/igt@gem_exec_balancer@smoke.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][45] ([i915#677]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][47] ([fdo#112146]) -> [PASS][48] +8 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [INCOMPLETE][49] ([i915#716]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-skl8/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:
    - shard-glk:          [FAIL][53] ([i915#52] / [i915#54]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-glk7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-glk4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][55] ([i915#79]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html

  * {igt@kms_hdr@bpc-switch-dpms}:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][61] ([i915#899]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb5/igt@kms_psr@psr2_cursor_render.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][65] ([fdo#112080]) -> [PASS][66] +19 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb3/igt@perf_pmu@busy-vcs1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-iclb4/igt@perf_pmu@busy-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68] +25 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb7/igt@prime_busy@hang-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][69] ([fdo#112080]) -> [FAIL][70] ([IGT#28])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][71] ([i915#818]) -> [FAIL][72] ([i915#694]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw5/igt@gem_tiled_blits@normal.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-hsw1/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][73] ([i915#454]) -> [SKIP][74] ([i915#468])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][75] ([i915#974]) -> ([FAIL][76], [FAIL][77]) ([i915#1176] / [i915#974])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw2/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-hsw5/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/shard-hsw6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1176]: https://gitlab.freedesktop.org/drm/intel/issues/1176
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7926 -> Patchwork_16548

  CI-20190529: 20190529
  CI_DRM_7926: 6b2fe829d300abf285e9db8b252ffacd216df3ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5437: ae42fedfd0c536c560e8e17b06d9c7b94a4e8f0c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16548: ef3b47e265d695b7a204faa524604763ee0ee191 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
