Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D83991611A3
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 13:09:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3085B6E932;
	Mon, 17 Feb 2020 12:09:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2CEF36E930;
 Mon, 17 Feb 2020 12:09:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25A32A0003;
 Mon, 17 Feb 2020 12:09:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 17 Feb 2020 12:09:00 -0000
Message-ID: <158194134012.7221.664859031906216639@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200213161122.3689609-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200213161122.3689609-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_Ensure_=27ENABLE=5FB?=
 =?utf-8?q?OOT=5FFETCH=27_is_enabled_before_ppGTT?=
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

Series: series starting with [1/2] drm/i915/gt: Ensure 'ENABLE_BOOT_FETCH' is enabled before ppGTT
URL   : https://patchwork.freedesktop.org/series/73419/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7933_full -> Patchwork_16561_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16561_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-glk4/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-glk3/igt@gem_ctx_persistence@close-replace-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_16561_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][3] -> [TIMEOUT][4] ([fdo#112271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-tglb7/igt@gem_exec_balancer@hang.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-tglb7/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-iclb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +6 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +16 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-apl7/igt@gem_softpin@noreloc-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-apl2/igt@gem_softpin@noreloc-s3.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#52] / [i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#221])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-skl10/igt@kms_flip@flip-vs-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-skl9/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [PASS][27] -> [SKIP][28] ([i915#668]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#899])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109642] / [fdo#111068])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-iclb4/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#112080]) +11 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-iclb5/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][39] ([fdo#112080]) -> [PASS][40] +11 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#110841]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][43] ([fdo#109276]) -> [PASS][44] +20 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-iclb5/igt@gem_exec_schedule@out-order-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-iclb1/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][45] ([i915#677]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][47] ([fdo#112146]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][49] ([i915#454]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-skl3/igt@i915_pm_dc@dc6-psr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-skl1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [FAIL][51] ([i915#182]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-skl9/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][53] ([i915#79]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][55] ([i915#221]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][59] ([i915#123] / [i915#69]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][63] ([i915#31]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-apl4/igt@kms_setmode@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-apl4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][67] ([IGT#28]) -> [SKIP][68] ([fdo#112080])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][69] ([i915#454]) -> [SKIP][70] ([i915#468])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-iclb:         [SKIP][71] ([fdo#110892]) -> [INCOMPLETE][72] ([i915#189])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-iclb7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-iclb2/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][73] ([fdo#109349]) -> [DMESG-WARN][74] ([i915#1226])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#182]: https://gitlab.freedesktop.org/drm/intel/issues/182
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7933 -> Patchwork_16561

  CI-20190529: 20190529
  CI_DRM_7933: 30e316a9d8477309cc3e070d72f0dedbfc7604e9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5440: 860924b6ccbed75b66ab4b65897bb9abc91763ea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16561: 6797ddd102fab7c8ce533f916399abfa97476e62 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
