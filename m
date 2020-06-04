Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 737451EE26F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 12:28:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E24C689EBD;
	Thu,  4 Jun 2020 10:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7CD9C89EBD;
 Thu,  4 Jun 2020 10:28:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 769C2A011B;
 Thu,  4 Jun 2020 10:28:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vidya Srinivas" <vidya.srinivas@intel.com>
Date: Thu, 04 Jun 2020 10:28:46 -0000
Message-ID: <159126652645.14555.9274110608347919556@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1591247028-5868-1-git-send-email-vidya.srinivas@intel.com>
In-Reply-To: <1591247028-5868-1-git-send-email-vidya.srinivas@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_DP_PHY_compliance_for_JSL?=
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

Series: drm/i915/dp: DP PHY compliance for JSL
URL   : https://patchwork.freedesktop.org/series/77977/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8579_full -> Patchwork_17863_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17863_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17863_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17863_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_dc@dc5-dpms:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb5/igt@i915_pm_dc@dc5-dpms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-tglb7/igt@i915_pm_dc@dc5-dpms.html

  
Known issues
------------

  Here are the changes found in Patchwork_17863_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@invalid-balancer:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#1927])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk9/igt@gem_exec_balancer@invalid-balancer.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-glk2/igt@gem_exec_balancer@invalid-balancer.html

  * igt@gem_mmap_offset@basic-uaf:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#95]) +20 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl3/igt@gem_mmap_offset@basic-uaf.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-apl1/igt@gem_mmap_offset@basic-uaf.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl7/igt@i915_suspend@debugfs-reader.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-kbl3/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl3/igt@i915_suspend@forcewake.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-apl6/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-skl3/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl4/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-apl4/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-iclb:         [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#52] / [i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html

  * igt@kms_flip_tiling@flip-yf-tiled:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_flip_tiling@flip-yf-tiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-skl3/igt@kms_flip_tiling@flip-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-glk:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk4/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-glk5/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#49])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1188])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#69])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-skl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@syncobj_wait@single-wait-all-signaled:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#93] / [i915#95]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl7/igt@syncobj_wait@single-wait-all-signaled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-kbl3/igt@syncobj_wait@single-wait-all-signaled.html

  
#### Possible fixes ####

  * {igt@gem_exec_schedule@implicit-write-read@rcs0}:
    - shard-snb:          [INCOMPLETE][37] ([i915#82]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-snb5/igt@gem_exec_schedule@implicit-write-read@rcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-snb6/igt@gem_exec_schedule@implicit-write-read@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-glk:          [DMESG-WARN][39] ([i915#118] / [i915#95]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-apl2/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-skl:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +8 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-skl10/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-tglb:         [DMESG-WARN][45] ([i915#402]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1}:
    - shard-skl:          [FAIL][47] ([i915#46]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-kbl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-tglb:         [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][53] ([i915#69]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][55] ([fdo#108145] / [i915#265]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][61] ([i915#31]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk8/igt@kms_setmode@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-glk6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +5 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-tglb:         [FAIL][65] ([i915#1542]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb7/igt@perf@blocking-parameterized.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-tglb7/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@rc6-runtime-pm:
    - shard-glk:          [TIMEOUT][67] ([i915#1958]) -> [PASS][68] +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk5/igt@perf_pmu@rc6-runtime-pm.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-glk6/igt@perf_pmu@rc6-runtime-pm.html

  * igt@vgem_basic@dmabuf-mmap:
    - shard-apl:          [DMESG-WARN][69] ([i915#95]) -> [PASS][70] +18 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@vgem_basic@dmabuf-mmap.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-apl3/igt@vgem_basic@dmabuf-mmap.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][71] ([i915#1515]) -> [FAIL][72] ([i915#1515])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][73] ([i915#1319] / [i915#1635]) -> [DMESG-FAIL][74] ([fdo#110321] / [i915#95])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@kms_content_protection@atomic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-apl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][75] ([i915#1319]) -> [FAIL][76] ([fdo#110321] / [fdo#110336])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl1/igt@kms_content_protection@atomic-dpms.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-apl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][77] ([fdo#110321]) -> [TIMEOUT][78] ([i915#1319] / [i915#1635])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@kms_content_protection@srm.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-apl8/igt@kms_content_protection@srm.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][79] ([fdo#109349]) -> [DMESG-WARN][80] ([i915#1226])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_vblank@pipe-d-query-idle-hang:
    - shard-glk:          [TIMEOUT][81] ([i915#1640] / [i915#1958]) -> [SKIP][82] ([fdo#109271])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk5/igt@kms_vblank@pipe-d-query-idle-hang.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-glk6/igt@kms_vblank@pipe-d-query-idle-hang.html

  * igt@runner@aborted:
    - shard-glk:          [FAIL][83] ([k.org#202321]) -> ([FAIL][84], [FAIL][85]) ([i915#1611] / [k.org#202321])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk9/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-glk6/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/shard-glk2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1640]: https://gitlab.freedesktop.org/drm/intel/issues/1640
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#275]: https://gitlab.freedesktop.org/drm/intel/issues/275
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8579 -> Patchwork_17863

  CI-20190529: 20190529
  CI_DRM_8579: 289eb12c88c49a4ac8d325dc457d8878c7f5bdc0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5694: a9b6c4c74bfddf7d3d2da3be08804fe315945cea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17863: ce289f0dd8a55b4539309ed6a20bcd48ff88f449 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17863/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
