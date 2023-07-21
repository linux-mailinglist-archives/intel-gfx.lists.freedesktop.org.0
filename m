Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B6F75D043
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 19:01:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A185110E04B;
	Fri, 21 Jul 2023 17:01:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E0A1610E04B;
 Fri, 21 Jul 2023 17:01:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB46CA00CC;
 Fri, 21 Jul 2023 17:01:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2083918415709812069=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Date: Fri, 21 Jul 2023 17:01:50 -0000
Message-ID: <168995891086.22548.15317232089301689148@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230721134235.15517-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20230721134235.15517-1-andriy.shevchenko@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv1=2C1/1=5D_drm/i915=3A_Move_abs=5Fdiff=28?=
 =?utf-8?q?=29_to_math=2Eh?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2083918415709812069==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v1,1/1] drm/i915: Move abs_diff() to math.h
URL   : https://patchwork.freedesktop.org/series/121129/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13404_full -> Patchwork_121129v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_121129v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_121129v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_121129v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@dpms-vs-vblank-race@b-vga1:
    - shard-snb:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-snb2/igt@kms_flip@dpms-vs-vblank-race@b-vga1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-snb7/igt@kms_flip@dpms-vs-vblank-race@b-vga1.html

  
Known issues
------------

  Here are the changes found in Patchwork_121129v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@smoketest:
    - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-snb7/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-mtlp:         NOTRUN -> [SKIP][4] ([i915#4771])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-7/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2846])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-glk8/igt@gem_exec_fair@basic-deadline.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace:
    - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#4473] / [i915#4771])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@gem_exec_fair@basic-pace.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [PASS][8] -> [FAIL][9] ([i915#2842]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_reloc@basic-cpu-active:
    - shard-mtlp:         NOTRUN -> [SKIP][10] ([i915#3281]) +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@gem_exec_reloc@basic-cpu-active.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          [PASS][11] -> [ABORT][12] ([i915#7975] / [i915#8213])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-8/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-mtlp:         [PASS][13] -> [TIMEOUT][14] ([i915#7392])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-3/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][15] ([i915#4860]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-7/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][16] ([i915#4077]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-7/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gem_partial_pwrite_pread@write-snoop:
    - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#3282])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@gem_partial_pwrite_pread@write-snoop.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][18] ([i915#8428])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@gem_tiled_pread_basic:
    - shard-mtlp:         NOTRUN -> [SKIP][19] ([i915#4079])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-7/igt@gem_tiled_pread_basic.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-mtlp:         NOTRUN -> [SKIP][20] ([i915#3297])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-7/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-mtlp:         NOTRUN -> [SKIP][21] ([i915#2856])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-tglu:         [PASS][22] -> [FAIL][23] ([i915#7940]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-tglu-10/igt@i915_pm_rpm@cursor-dpms.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-tglu-4/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_selftest@live@gt_mocs:
    - shard-mtlp:         [PASS][24] -> [DMESG-FAIL][25] ([i915#7059])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-1/igt@i915_selftest@live@gt_mocs.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-3/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - shard-rkl:          [PASS][26] -> [DMESG-FAIL][27] ([i915#4258])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-rkl-1/igt@i915_selftest@live@gt_pm.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-rkl-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@workarounds:
    - shard-dg2:          [PASS][28] -> [DMESG-FAIL][29] ([i915#7913])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-3/igt@i915_selftest@live@workarounds.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-6/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][30] -> [FAIL][31] ([fdo#103375]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_async_flips@test-cursor:
    - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#6229])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_async_flips@test-cursor.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [PASS][33] -> [FAIL][34] ([i915#5138]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-mtlp:         [PASS][35] -> [FAIL][36] ([i915#3743])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][37] ([fdo#111615]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#3886] / [i915#6095]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#6095]) +7 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs.html

  * igt@kms_cdclk@plane-scaling@pipe-b-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#4087]) +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-b-dp-4.html

  * igt@kms_chamelium_audio@hdmi-audio:
    - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#7828])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_chamelium_audio@hdmi-audio.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#7118])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@uevent@pipe-a-dp-2:
    - shard-dg2:          NOTRUN -> [FAIL][43] ([i915#1339])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-12/igt@kms_content_protection@uevent@pipe-a-dp-2.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#3359])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][45] -> [FAIL][46] ([i915#2346])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#3555])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_fence_pin_leak:
    - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#4881])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][49] ([i915#3637]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][50] -> [FAIL][51] ([i915#2122])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
    - shard-apl:          [PASS][52] -> [FAIL][53] ([i915#79])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-vga1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][54] ([i915#8841]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-snb7/igt@kms_flip@flip-vs-suspend@a-vga1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#2672]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [PASS][56] -> [FAIL][57] ([i915#6880]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#8708]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#1825]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#3555] / [i915#8228]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-rkl-1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_lowres@tiling-x@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#3582]) +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_plane_lowres@tiling-x@pipe-c-edp-1.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#5176]) +5 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-rkl-1/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#5176]) +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#5235]) +15 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-dp-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][65] ([fdo#109271]) +154 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-snb2/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1.html

  * igt@kms_prime@d3hot:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271]) +9 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-apl6/igt@kms_prime@d3hot.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#4348])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [FAIL][68] ([i915#5465]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-snb1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-dg2:          [PASS][69] -> [FAIL][70] ([fdo#103375])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@sysfs_heartbeat_interval@nopreempt@ccs0:
    - shard-mtlp:         [PASS][71] -> [FAIL][72] ([i915#6015])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-7/igt@sysfs_heartbeat_interval@nopreempt@ccs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-5/igt@sysfs_heartbeat_interval@nopreempt@ccs0.html

  * igt@v3d/v3d_submit_csd@bad-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#2575]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@v3d/v3d_submit_csd@bad-bo.html

  * igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#7711])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][75] ([i915#7742]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_eio@kms:
    - shard-dg2:          [INCOMPLETE][77] ([i915#7892]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-7/igt@gem_eio@kms.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-7/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - {shard-dg1}:        [FAIL][79] ([i915#5784]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg1-13/igt@gem_eio@reset-stress.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg1-19/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [FAIL][81] ([i915#2842]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][83] ([i915#5493]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-12/igt@gem_lmem_swapping@smem-oom@lmem0.html
    - {shard-dg1}:        [TIMEOUT][85] ([i915#5493]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_softpin@evict-active:
    - {shard-dg1}:        [ABORT][87] ([i915#4983]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg1-19/igt@gem_softpin@evict-active.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg1-14/igt@gem_softpin@evict-active.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [DMESG-WARN][89] ([i915#7061]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
    - shard-mtlp:         [FAIL][91] ([i915#8691]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-5/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@i915_pipe_stress@stress-xrgb8888-untiled.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-dg2:          [FAIL][93] ([i915#8230]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-7/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-12/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-glk:          [DMESG-WARN][95] ([i915#118]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-glk8/igt@i915_pm_rc6_residency@rc6-fence.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-glk8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
    - {shard-dg1}:        [FAIL][97] ([i915#3591]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html

  * igt@i915_pm_rpm@gem-execbuf-stress@lmem0:
    - {shard-dg1}:        [FAIL][99] ([i915#7940]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg1-16/igt@i915_pm_rpm@gem-execbuf-stress@lmem0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg1-18/igt@i915_pm_rpm@gem-execbuf-stress@lmem0.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [SKIP][101] ([i915#1397]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-rkl-4/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - {shard-dg1}:        [SKIP][103] ([i915#1397]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_selftest@live@client:
    - shard-snb:          [ABORT][105] -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-snb7/igt@i915_selftest@live@client.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-snb4/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@slpc:
    - shard-mtlp:         [DMESG-WARN][107] ([i915#6367]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-1/igt@i915_selftest@live@slpc.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-3/igt@i915_selftest@live@slpc.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
    - shard-mtlp:         [FAIL][109] ([i915#2521]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-5/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][111] ([i915#5138]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-mtlp:         [FAIL][113] ([i915#3743]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_mc_ccs:
    - shard-dg2:          [FAIL][115] -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-11/igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_mc_ccs.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-12/igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_mc_ccs.html

  * igt@kms_cursor_legacy@cursor-vs-flip-legacy:
    - shard-mtlp:         [FAIL][117] ([i915#8248]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-2/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-2/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][119] ([i915#2346]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3:
    - shard-dg2:          [FAIL][121] ([fdo#103375]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-8/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [FAIL][123] ([i915#6880]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [ABORT][125] ([i915#180] / [i915#8213]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@sysfs_heartbeat_interval@nopreempt@vcs0:
    - shard-mtlp:         [FAIL][127] ([i915#6015]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-7/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-5/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html

  
#### Warnings ####

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][129] ([i915#7118] / [i915#7162]) -> [SKIP][130] ([i915#7118])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-12/igt@kms_content_protection@type1.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-10/igt@kms_content_protection@type1.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [CRASH][131] ([i915#7331]) -> [INCOMPLETE][132] ([i915#5493])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-2/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  * igt@sysfs_preempt_timeout@timeout@vecs0:
    - shard-mtlp:         [ABORT][133] ([i915#8521]) -> [TIMEOUT][134] ([i915#7947])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-2/igt@sysfs_preempt_timeout@timeout@vecs0.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@sysfs_preempt_timeout@timeout@vecs0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1339]: https://gitlab.freedesktop.org/drm/intel/issues/1339
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3582]: https://gitlab.freedesktop.org/drm/intel/issues/3582
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4348]: https://gitlab.freedesktop.org/drm/intel/issues/4348
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6015]: https://gitlab.freedesktop.org/drm/intel/issues/6015
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6229]: https://gitlab.freedesktop.org/drm/intel/issues/6229
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7331]: https://gitlab.freedesktop.org/drm/intel/issues/7331
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7691]: https://gitlab.freedesktop.org/drm/intel/issues/7691
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7892]: https://gitlab.freedesktop.org/drm/intel/issues/7892
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#7947]: https://gitlab.freedesktop.org/drm/intel/issues/7947
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8230]: https://gitlab.freedesktop.org/drm/intel/issues/8230
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8248]: https://gitlab.freedesktop.org/drm/intel/issues/8248
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8521]: https://gitlab.freedesktop.org/drm/intel/issues/8521
  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
  [i915#8691]: https://gitlab.freedesktop.org/drm/intel/issues/8691
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841


Build changes
-------------

  * Linux: CI_DRM_13404 -> Patchwork_121129v1

  CI-20190529: 20190529
  CI_DRM_13404: 526f3e5b744ee37c2fd643a2efec898a1f967d36 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7398: 602cdd3c87fad86cab8b15fe4242f2a119ce48df @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_121129v1: 526f3e5b744ee37c2fd643a2efec898a1f967d36 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/index.html

--===============2083918415709812069==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [v1,1/1] drm/i915: Move abs_diff() to math.h</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/121129/">https://patchwork.freedesktop.org/series/121129/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13404_full -&gt; Patchwork_121129v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_121129v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_121129v1_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_121129v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@dpms-vs-vblank-race@b-vga1:<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-snb2/igt@kms_flip@dpms-vs-vblank-race@b-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-snb7/igt@kms_flip@dpms-vs-vblank-race@b-vga1.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_121129v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-snb7/igt@gem_ctx_persistence@smoketest.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-7/igt@gem_exec_balancer@bonded-pair.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-glk8/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-glk3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@gem_exec_fair@basic-pace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4473">i915#4473</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-active:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@gem_exec_reloc@basic-cpu-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-8/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-3/igt@gem_exec_whisper@basic-contexts-priority-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-priority-all.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-7/igt@gem_fenced_exec_thrash@no-spare-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-7/igt@gem_mmap_gtt@cpuset-medium-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-snoop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@gem_partial_pwrite_pread@write-snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@gem_render_copy@linear-to-vebox-y-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-7/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-7/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-tglu-10/igt@i915_pm_rpm@cursor-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-tglu-4/igt@i915_pm_rpm@cursor-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-1/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-3/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-rkl-1/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-rkl-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_async_flips@test-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6229">i915#6229</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-b-dp-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4087">i915#4087</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_chamelium_audio@hdmi-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-6/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-12/igt@kms_content_protection@uevent@pipe-a-dp-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1339">i915#1339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_fence_pin_leak.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4881">i915#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-vga1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-snb7/igt@kms_flip@flip-vs-suspend@a-vga1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-rkl-1/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_plane_lowres@tiling-x@pipe-c-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3582">i915#3582</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-rkl-1/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-dp-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-snb2/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +154 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-apl6/igt@kms_prime@d3hot.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4348">i915#4348</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-snb1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5465">i915#5465</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-7/igt@sysfs_heartbeat_interval@nopreempt@ccs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-5/igt@sysfs_heartbeat_interval@nopreempt@ccs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6015">i915#6015</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@v3d/v3d_submit_csd@bad-bo.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-7/igt@gem_eio@kms.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7892">i915#7892</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-7/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg1-13/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg1-19/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>
<p>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-12/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a></p>
</li>
<li>
<p>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-active:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg1-19/igt@gem_softpin@evict-active.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg1-14/igt@gem_softpin@evict-active.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7061">i915#7061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-5/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8691">i915#8691</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-7/igt@i915_pm_rc6_residency@rc6-accuracy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8230">i915#8230</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-12/igt@i915_pm_rc6_residency@rc6-accuracy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-glk8/igt@i915_pm_rc6_residency@rc6-fence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-glk8/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@bcs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@lmem0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg1-16/igt@i915_pm_rpm@gem-execbuf-stress@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg1-18/igt@i915_pm_rpm@gem-execbuf-stress@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-rkl-4/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-snb7/igt@i915_selftest@live@client.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-snb4/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-3/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-5/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-11/igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_mc_ccs.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-12/igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_mc_ccs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-legacy:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-2/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8248">i915#8248</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-2/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-8/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-7/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6015">i915#6015</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-5/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-12/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7162">i915#7162</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-10/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7331">i915#7331</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-dg2-2/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13404/shard-mtlp-2/igt@sysfs_preempt_timeout@timeout@vecs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8521">i915#8521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121129v1/shard-mtlp-8/igt@sysfs_preempt_timeout@timeout@vecs0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7947">i915#7947</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13404 -&gt; Patchwork_121129v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13404: 526f3e5b744ee37c2fd643a2efec898a1f967d36 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7398: 602cdd3c87fad86cab8b15fe4242f2a119ce48df @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_121129v1: 526f3e5b744ee37c2fd643a2efec898a1f967d36 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============2083918415709812069==--
