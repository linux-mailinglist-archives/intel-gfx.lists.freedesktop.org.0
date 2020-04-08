Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 276061A2BEF
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 00:39:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF3406EB0F;
	Wed,  8 Apr 2020 22:39:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 698E16EB0F;
 Wed,  8 Apr 2020 22:39:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 59CBFA47EA;
 Wed,  8 Apr 2020 22:39:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Paauwe, Bob J" <bob.j.paauwe@intel.com>
Date: Wed, 08 Apr 2020 22:39:32 -0000
Message-ID: <158638557233.19347.4635208771414174057@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200407215546.5445-1-bob.j.paauwe@intel.com>
In-Reply-To: <20200407215546.5445-1-bob.j.paauwe@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?ing_YUV444_packed_format_support_for_skl+_=28rev5=29?=
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

Series: Adding YUV444 packed format support for skl+ (rev5)
URL   : https://patchwork.freedesktop.org/series/73020/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8269_full -> Patchwork_17241_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17241_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-iclb6/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#454])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#454])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-skl4/igt@i915_pm_dc@dc6-psr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-skl9/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#54] / [i915#93] / [i915#95]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-glk3/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-glk3/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#52] / [i915#54]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#52] / [i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#46])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#34])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#49])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#49])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#49])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-glk1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-glk2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#49])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-kbl:          [PASS][35] -> [INCOMPLETE][36] ([i915#155]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180] / [i915#93] / [i915#95])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145] / [i915#265]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf@gen12-mi-rpc:
    - shard-tglb:         [PASS][43] -> [FAIL][44] ([i915#1085])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-tglb8/igt@perf@gen12-mi-rpc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-tglb6/igt@perf@gen12-mi-rpc.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@fences:
    - shard-tglb:         [SKIP][45] ([i915#1316] / [i915#579]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-tglb5/igt@i915_pm_rpm@fences.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-tglb8/igt@i915_pm_rpm@fences.html
    - shard-skl:          [SKIP][47] ([fdo#109271]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-skl10/igt@i915_pm_rpm@fences.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-skl1/igt@i915_pm_rpm@fences.html
    - shard-iclb:         [SKIP][49] ([i915#1316] / [i915#579]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-iclb4/igt@i915_pm_rpm@fences.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-iclb7/igt@i915_pm_rpm@fences.html
    - shard-glk:          [SKIP][51] ([fdo#109271]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-glk5/igt@i915_pm_rpm@fences.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-glk1/igt@i915_pm_rpm@fences.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-glk:          [FAIL][55] ([i915#52] / [i915#54]) -> [PASS][56] +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_draw_crc@fill-fb:
    - shard-apl:          [FAIL][57] ([i915#95]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-apl8/igt@kms_draw_crc@fill-fb.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-apl3/igt@kms_draw_crc@fill-fb.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][59] ([i915#79]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][61] ([i915#180] / [i915#95]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-apl8/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][63] ([i915#1188]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-skl6/igt@kms_hdr@bpc-switch.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][65] ([fdo#108145] / [i915#265]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][67] ([i915#173]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-iclb1/igt@kms_psr@no_drrs.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-iclb7/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-a-accuracy-idle:
    - shard-snb:          [SKIP][71] ([fdo#109271]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-snb7/igt@kms_vblank@pipe-a-accuracy-idle.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-snb4/igt@kms_vblank@pipe-a-accuracy-idle.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][75] ([i915#69]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-skl6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-skl7/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][77] ([i915#1542]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-iclb5/igt@perf@blocking-parameterized.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-iclb4/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][79] ([i915#588]) -> [SKIP][80] ([i915#658])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rpm@cursor:
    - shard-snb:          [SKIP][81] ([fdo#109271]) -> [INCOMPLETE][82] ([i915#82])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-snb5/igt@i915_pm_rpm@cursor.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-snb5/igt@i915_pm_rpm@cursor.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          [FAIL][83] ([i915#357]) -> [FAIL][84] ([i915#357] / [i915#93] / [i915#95])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-kbl6/igt@kms_content_protection@uevent.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-kbl3/igt@kms_content_protection@uevent.html
    - shard-apl:          [FAIL][85] ([i915#357]) -> [FAIL][86] ([i915#357] / [i915#95])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-apl2/igt@kms_content_protection@uevent.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-apl7/igt@kms_content_protection@uevent.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          [FAIL][87] ([fdo#108145] / [i915#265]) -> [FAIL][88] ([fdo#108145] / [i915#265] / [i915#95]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-kbl:          [FAIL][89] ([fdo#108145] / [i915#265]) -> [FAIL][90] ([fdo#108145] / [i915#265] / [i915#93] / [i915#95])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1085]: https://gitlab.freedesktop.org/drm/intel/issues/1085
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1316]: https://gitlab.freedesktop.org/drm/intel/issues/1316
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#357]: https://gitlab.freedesktop.org/drm/intel/issues/357
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5577 -> IGTPW_4428
  * Linux: CI_DRM_8269 -> Patchwork_17241

  CI-20190529: 20190529
  CI_DRM_8269: 301d0427e2e3108839bf6c36f58dd0b2b5258c25 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4428: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4428/index.html
  IGT_5577: 7ee7e86fd79e4dbb6300ef4c23e50cb699216ae2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17241: 6c533ea6ac21d40eeb4ac157b771579e9bc19b9b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17241/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
