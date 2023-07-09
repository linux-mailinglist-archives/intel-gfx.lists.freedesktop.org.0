Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9215074C8DA
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 00:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2CD110E07D;
	Sun,  9 Jul 2023 22:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6585F10E059;
 Sun,  9 Jul 2023 22:28:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 55079A0BA8;
 Sun,  9 Jul 2023 22:28:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3175952766206900142=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>
Date: Sun, 09 Jul 2023 22:28:46 -0000
Message-ID: <168894172631.32575.6611198542791531353@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230709202511.287794-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20230709202511.287794-1-dmitry.baryshkov@linaro.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/bridge=5Fconnector=3A_implement_OOB_HPD_handling_=28rev2=29?=
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

--===============3175952766206900142==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/bridge_connector: implement OOB HPD handling (rev2)
URL   : https://patchwork.freedesktop.org/series/120395/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13359_full -> Patchwork_120395v2_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_120395v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [PASS][1] -> [FAIL][2] ([i915#7742]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-3/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-mtlp:         NOTRUN -> [SKIP][3] ([i915#8414])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@drm_fdinfo@virtual-busy-all.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][4] -> [FAIL][5] ([i915#2842]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_reloc@basic-range:
    - shard-mtlp:         NOTRUN -> [SKIP][6] ([i915#3281])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@gem_exec_reloc@basic-range.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-mtlp:         [PASS][7] -> [FAIL][8] ([i915#6363])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-mtlp-5/igt@gem_exec_whisper@basic-queues-forked-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-8/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#4860])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-10/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_mmap@short-mmap:
    - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#4083])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-10/igt@gem_mmap@short-mmap.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-mtlp:         NOTRUN -> [SKIP][11] ([i915#4077]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [PASS][12] -> [DMESG-WARN][13] ([i915#7061])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-12/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
    - shard-mtlp:         [PASS][14] -> [FAIL][15] ([i915#8691])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-mtlp-3/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-rkl:          [PASS][16] -> [SKIP][17] ([i915#1397]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          [PASS][18] -> [SKIP][19] ([i915#1397]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-12/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-9/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][20] -> [FAIL][21] ([fdo#103375])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#8502]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs.html

  * igt@kms_async_flips@crc@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][23] ([i915#8247]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-11/igt@kms_async_flips@crc@pipe-d-dp-4.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#404])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-10/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][25] -> [FAIL][26] ([i915#5138]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-mtlp:         [PASS][27] -> [FAIL][28] ([i915#3743]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-mtlp:         NOTRUN -> [SKIP][29] ([fdo#111615])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf_tiled_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#6095]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-yf_tiled_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3689] / [i915#5354])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-10/igt@kms_ccs@pipe-c-missing-ccs-buffer-yf_tiled_ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          [PASS][32] -> [SKIP][33] ([i915#4087] / [i915#7213])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-9/igt@kms_cdclk@mode-transition-all-outputs.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-7/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4087] / [i915#7213]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-5/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_chamelium_edid@vga-edid-read:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#7828])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-10/igt@kms_chamelium_edid@vga-edid-read.html

  * igt@kms_content_protection@atomic:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#7118]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-5/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#8814])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:
    - shard-apl:          [PASS][38] -> [ABORT][39] ([i915#180])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-apl4/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-apl1/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][40] -> [FAIL][41] ([i915#2346])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#3555])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a2:
    - shard-glk:          [PASS][43] -> [FAIL][44] ([i915#2122])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-glk1/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-glk3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#2672])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
    - shard-dg2:          [PASS][46] -> [FAIL][47] ([i915#6880])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:
    - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#1825]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#3555] / [i915#8228])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@invalid-hdr:
    - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#8228])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-3/igt@kms_hdr@invalid-hdr.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#6953])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#5176]) +7 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-dp-4.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#5176]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#5235]) +19 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-9/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d-dp-4.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#5235]) +7 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#5235]) +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][57] ([fdo#109271]) +32 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-snb1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-hdmi-a-1.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-dg2:          [PASS][58] -> [FAIL][59] ([fdo#103375] / [i915#6121])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-9/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-5/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [PASS][60] -> [FAIL][61] ([i915#7484])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html

  * igt@v3d/v3d_submit_csd@bad-perfmon:
    - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#2575])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@v3d/v3d_submit_csd@bad-perfmon.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@virtual-idle:
    - shard-rkl:          [FAIL][63] ([i915#7742]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-7/igt@drm_fdinfo@virtual-idle.html

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-dg2:          [ABORT][65] ([i915#7461] / [i915#8211] / [i915#8234]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-3/igt@gem_barrier_race@remote-request@rcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-10/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_eio@hibernate:
    - {shard-dg1}:        [ABORT][67] ([i915#4391] / [i915#7975] / [i915#8213]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg1-14/igt@gem_eio@hibernate.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg1-13/igt@gem_eio@hibernate.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [FAIL][69] ([i915#2842]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-2/igt@gem_exec_fair@basic-none@bcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-1/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-mtlp:         [ABORT][71] ([i915#8131]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-mtlp-6/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][73] ([i915#5493]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - {shard-dg1}:        [SKIP][75] ([i915#1937]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg1-18/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg1-19/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - {shard-dg1}:        [SKIP][77] ([i915#1397]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg1-13/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg1-19/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          [SKIP][79] ([i915#1397]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-11/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-12/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [SKIP][81] ([i915#1397]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-6/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglu:         [DMESG-FAIL][83] ([i915#8534]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-tglu-6/igt@i915_selftest@live@gt_lrc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-tglu-6/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-mtlp:         [FAIL][85] ([i915#3743]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [FAIL][87] ([i915#2346]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
    - shard-apl:          [FAIL][89] ([i915#79]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:
    - shard-glk:          [FAIL][91] ([i915#79]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-dg2:          [FAIL][93] ([i915#6880]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [FAIL][95] ([IGT#2]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-10/igt@kms_sysfs_edid_timing.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-11/igt@kms_sysfs_edid_timing.html

  * igt@perf_pmu@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [FAIL][97] ([i915#4349]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-7/igt@perf_pmu@most-busy-idle-check-all@rcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-6/igt@perf_pmu@most-busy-idle-check-all@rcs0.html

  
#### Warnings ####

  * igt@kms_content_protection@mei_interface:
    - shard-dg2:          [SKIP][99] ([i915#7118]) -> [SKIP][100] ([i915#7118] / [i915#7162]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-7/igt@kms_content_protection@mei_interface.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-11/igt@kms_content_protection@mei_interface.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          [SKIP][101] ([fdo#109285]) -> [SKIP][102] ([fdo#109285] / [i915#4098])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-3/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][103] ([i915#4816]) -> [SKIP][104] ([i915#4070] / [i915#4816])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6363]: https://gitlab.freedesktop.org/drm/intel/issues/6363
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7178]: https://gitlab.freedesktop.org/drm/intel/issues/7178
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8131]: https://gitlab.freedesktop.org/drm/intel/issues/8131
  [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8234]: https://gitlab.freedesktop.org/drm/intel/issues/8234
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8534]: https://gitlab.freedesktop.org/drm/intel/issues/8534
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8691]: https://gitlab.freedesktop.org/drm/intel/issues/8691
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814


Build changes
-------------

  * Linux: CI_DRM_13359 -> Patchwork_120395v2

  CI-20190529: 20190529
  CI_DRM_13359: 81f922be3924d51446e0f2779e333fd50192a98b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7377: d1574543ba4bb322597345530053475c07be0eb9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_120395v2: 81f922be3924d51446e0f2779e333fd50192a98b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/index.html

--===============3175952766206900142==
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
<tr><td><b>Series:</b></td><td>drm/bridge_connector: implement OOB HPD handling (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/120395/">https://patchwork.freedesktop.org/series/120395/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13359_full -&gt; Patchwork_120395v2_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_120395v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-3/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@gem_exec_reloc@basic-range.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-mtlp-5/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-8/igt@gem_exec_whisper@basic-queues-forked-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6363">i915#6363</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-10/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-10/igt@gem_mmap@short-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@gem_mmap_gtt@fault-concurrent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-12/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7061">i915#7061</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-mtlp-3/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8691">i915#8691</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-12/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-9/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-11/igt@kms_async_flips@crc@pipe-d-dp-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8247">i915#8247</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-10/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/404">i915#404</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-yf_tiled_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-10/igt@kms_ccs@pipe-c-missing-ccs-buffer-yf_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-9/igt@kms_cdclk@mode-transition-all-outputs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-7/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4087">i915#4087</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7213">i915#7213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-5/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4087">i915#4087</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7213">i915#7213</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@vga-edid-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-10/igt@kms_chamelium_edid@vga-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-5/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-apl4/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-apl1/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-glk1/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-glk3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-8/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-3/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-dp-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-9/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d-dp-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-snb1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-9/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-5/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7484">i915#7484</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-perfmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@v3d/v3d_submit_csd@bad-perfmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-7/igt@drm_fdinfo@virtual-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-3/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8211">i915#8211</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8234">i915#8234</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-10/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg1-14/igt@gem_eio@hibernate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg1-13/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-2/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-1/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-mtlp-6/igt@gem_exec_whisper@basic-contexts-forked-all.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8131">i915#8131</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-forked-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg1-18/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1937</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg1-19/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg1-13/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg1-19/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-11/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-12/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-6/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-tglu-6/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8534">i915#8534</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-tglu-6/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-10/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-11/igt@kms_sysfs_edid_timing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-7/igt@perf_pmu@most-busy-idle-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-6/igt@perf_pmu@most-busy-idle-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-dg2-7/igt@kms_content_protection@mei_interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-dg2-11/igt@kms_content_protection@mei_interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7162">i915#7162</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-3/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13359/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4816">i915#4816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120395v2/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13359 -&gt; Patchwork_120395v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13359: 81f922be3924d51446e0f2779e333fd50192a98b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7377: d1574543ba4bb322597345530053475c07be0eb9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_120395v2: 81f922be3924d51446e0f2779e333fd50192a98b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============3175952766206900142==--
