Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C31B312990B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 18:03:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 538DB6E2DA;
	Mon, 23 Dec 2019 17:03:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B95996E2D6;
 Mon, 23 Dec 2019 17:03:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AFA29A363D;
 Mon, 23 Dec 2019 17:03:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Mon, 23 Dec 2019 17:03:08 -0000
Message-ID: <157712058869.16935.16521722548140548507@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191223010654.67037-1-jose.souza@intel.com>
In-Reply-To: <20191223010654.67037-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv6=2Crebased=2C1/7=5D_drm/i915/display=3A_?=
 =?utf-8?q?Share_intel=5Fconnector=5Fneeds=5Fmodeset=28=29?=
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

Series: series starting with [v6,rebased,1/7] drm/i915/display: Share intel_connector_needs_modeset()
URL   : https://patchwork.freedesktop.org/series/71280/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7623_full -> Patchwork_15891_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15891_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#461])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [PASS][3] -> [FAIL][4] ([i915#232])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-snb4/igt@gem_eio@reset-stress.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-snb6/igt@gem_eio@reset-stress.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd2:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb1/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111606] / [fdo#111677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#463])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb2/igt@gem_exec_schedule@smoketest-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb7/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#707])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb2/igt@gem_exec_schedule@smoketest-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#472] / [i915#707])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb1/igt@gem_sync@basic-each.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb4/igt@gem_sync@basic-each.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb5/igt@gem_sync@basic-store-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb3/igt@gem_sync@basic-store-all.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#456] / [i915#460]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb4/igt@i915_pm_backlight@fade_with_suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb4/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_rpm@sysfs-read:
    - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] ([i915#766])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb4/igt@i915_pm_rpm@sysfs-read.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb4/igt@i915_pm_rpm@sysfs-read.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#54]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#460])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#49]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#123] / [i915#667])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-tglb:         [PASS][35] -> [FAIL][36] ([fdo#111842] / [i915#608])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb2/igt@kms_psr2_su@frontbuffer.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb6/igt@kms_psr2_su@frontbuffer.html

  
#### Possible fixes ####

  * igt@gem_eio@suspend:
    - shard-tglb:         [INCOMPLETE][37] ([i915#460]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb4/igt@gem_eio@suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb5/igt@gem_eio@suspend.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [INCOMPLETE][39] ([fdo#111736]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb6/igt@gem_exec_await@wide-all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb1/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [INCOMPLETE][41] ([i915#435]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb3/igt@gem_exec_nop@basic-sequential.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb7/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd1:
    - shard-tglb:         [INCOMPLETE][43] ([fdo#111606] / [fdo#111677]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb2/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-iclb:         [TIMEOUT][45] ([i915#530]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-iclb2/igt@gem_persistent_relocs@forked-thrashing.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-iclb2/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-tglb:         [INCOMPLETE][47] ([i915#456] / [i915#460]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb1/igt@i915_pm_rpm@system-suspend-devices.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb5/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [FAIL][51] ([i915#54]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:
    - shard-skl:          [FAIL][53] ([i915#52] / [i915#54]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html

  * igt@kms_draw_crc@draw-method-rgb565-render-xtiled:
    - shard-kbl:          [INCOMPLETE][55] ([fdo#103665] / [i915#667]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-kbl7/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-kbl2/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][57] ([i915#79]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][59] ([i915#34]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:
    - shard-tglb:         [FAIL][61] ([i915#49]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][63] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-skl:          [FAIL][65] ([i915#49]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [INCOMPLETE][67] ([i915#435] / [i915#667]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-tglb:         [INCOMPLETE][69] ([i915#667]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-skl:          [FAIL][71] ([i915#53]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-skl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-kbl:          [INCOMPLETE][73] ([fdo#103665] / [i915#435] / [i915#648] / [i915#667]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-kbl7/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-kbl3/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +5 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][77] ([fdo#108145]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  
#### Warnings ####

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][79] ([i915#832]) -> [FAIL][80] ([i915#818])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-hsw2/igt@gem_tiled_blits@interruptible.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-hsw2/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][81] ([i915#454]) -> [SKIP][82] ([i915#468])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][83] ([i915#468]) -> [FAIL][84] ([i915#454])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/shard-tglb6/igt@i915_pm_dc@dc6-psr.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111842]: https://bugs.freedesktop.org/show_bug.cgi?id=111842
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#766]: https://gitlab.freedesktop.org/drm/intel/issues/766
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832


Participating hosts (10 -> 9)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7623 -> Patchwork_15891

  CI-20190529: 20190529
  CI_DRM_7623: 08c8f85caff9f010e7c66e79a2b6fa8a4a230fc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15891: cbdcc93ef09aa010a92dc3ea3a0d667040cce506 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
