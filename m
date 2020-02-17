Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0AE161087
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 12:00:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 056066E91A;
	Mon, 17 Feb 2020 11:00:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0085D6E91A;
 Mon, 17 Feb 2020 11:00:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED7D8A00CC;
 Mon, 17 Feb 2020 11:00:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Mon, 17 Feb 2020 11:00:37 -0000
Message-ID: <158193723794.7222.11099127627970850704@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200213132214.30952-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200213132214.30952-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm/i915=3A_Update_dbuf_slices_only_with_full_modeset=22?=
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

Series: Revert "drm/i915: Update dbuf slices only with full modeset"
URL   : https://patchwork.freedesktop.org/series/73412/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7932_full -> Patchwork_16557_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16557_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +12 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-iclb3/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-apl8/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_shared@exec-shared-gtt-blt:
    - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#616])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-tglb6/igt@gem_ctx_shared@exec-shared-gtt-blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-tglb7/igt@gem_ctx_shared@exec-shared-gtt-blt.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb6/igt@gem_exec_schedule@deep-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-iclb2/igt@gem_exec_schedule@deep-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#69]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl3/igt@i915_pm_backlight@fade_with_suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-skl4/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#151] / [i915#69])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl9/igt@i915_pm_rpm@system-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-skl3/igt@i915_pm_rpm@system-suspend.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-tglb:         [PASS][19] -> [FAIL][20] ([i915#488])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-tglb3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-tglb1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-apl:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#221])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][27] -> [SKIP][28] ([i915#668]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109276]) +22 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-iclb8/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][39] ([fdo#110854]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +9 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][45] ([i915#644]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-iclb:         [INCOMPLETE][47] ([i915#189]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb2/igt@i915_pm_rpm@cursor-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-iclb8/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][49] ([i915#413]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb4/igt@i915_pm_rps@reset.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-iclb7/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-kbl6/igt@i915_suspend@forcewake.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-kbl4/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-tglb:         [FAIL][55] ([i915#1172]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-tglb6/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-tglb2/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-tglb:         [FAIL][57] ([fdo#111703]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_flip_tiling@flip-to-y-tiled:
    - shard-tglb:         [DMESG-FAIL][59] ([i915#402]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-tglb7/igt@kms_flip_tiling@flip-to-y-tiled.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-tglb8/igt@kms_flip_tiling@flip-to-y-tiled.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-tglb:         [SKIP][61] ([i915#668]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-tglb3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-tglb1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_plane@plane-panning-top-left-pipe-a-planes:
    - shard-tglb:         [FAIL][63] ([i915#1171]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-tglb6/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-tglb2/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [DMESG-WARN][65] ([IGT#6]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl2/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-skl6/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb3/igt@kms_psr@psr2_sprite_render.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][69] ([i915#31]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-apl8/igt@kms_setmode@basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-apl1/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][71] ([i915#31]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-kbl7/igt@kms_setmode@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-kbl7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][73] ([i915#69]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-skl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [PASS][76] +12 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb6/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-iclb2/igt@perf_pmu@busy-accuracy-98-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][77] ([fdo#109276]) -> [PASS][78] +19 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][79] ([IGT#28]) -> [SKIP][80] ([fdo#112080]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_selftest@mock_timelines:
    - shard-glk:          [INCOMPLETE][81] ([i915#58] / [k.org#198133]) -> [INCOMPLETE][82] ([i915#1234] / [i915#58] / [k.org#198133])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-glk8/igt@i915_selftest@mock_timelines.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-glk5/igt@i915_selftest@mock_timelines.html
    - shard-kbl:          [INCOMPLETE][83] ([fdo#103665]) -> [INCOMPLETE][84] ([fdo#103665] / [i915#1234])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-kbl6/igt@i915_selftest@mock_timelines.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-kbl1/igt@i915_selftest@mock_timelines.html
    - shard-apl:          [INCOMPLETE][85] ([fdo#103927]) -> [INCOMPLETE][86] ([fdo#103927] / [i915#1234])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-apl8/igt@i915_selftest@mock_timelines.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/shard-apl1/igt@i915_selftest@mock_timelines.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111703]: https://bugs.freedesktop.org/show_bug.cgi?id=111703
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1171]: https://gitlab.freedesktop.org/drm/intel/issues/1171
  [i915#1172]: https://gitlab.freedesktop.org/drm/intel/issues/1172
  [i915#1234]: https://gitlab.freedesktop.org/drm/intel/issues/1234
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#488]: https://gitlab.freedesktop.org/drm/intel/issues/488
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7932 -> Patchwork_16557

  CI-20190529: 20190529
  CI_DRM_7932: da6301c2a1bda78897e67fb22e011c1574b7c6a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5439: ed1f7d96d4d5d4565bcd3adb3a23b2002a25419e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16557: 1ef54320f2539d9245d33de5d44da5c1ab9c7862 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16557/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
