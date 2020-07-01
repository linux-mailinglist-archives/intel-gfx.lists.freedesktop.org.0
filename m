Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A59A2108E8
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 12:06:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A39096E888;
	Wed,  1 Jul 2020 10:06:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0176E6E884;
 Wed,  1 Jul 2020 10:06:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE493A47DB;
 Wed,  1 Jul 2020 10:06:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Wed, 01 Jul 2020 10:06:43 -0000
Message-ID: <159359800394.16670.4532390483118774348@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200701010655.226379-1-jose.souza@intel.com>
In-Reply-To: <20200701010655.226379-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/tgl=3A_Implement_WA_1?=
 =?utf-8?q?8011464164?=
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

Series: series starting with [v2,1/2] drm/i915/tgl: Implement WA 18011464164
URL   : https://patchwork.freedesktop.org/series/78965/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8680_full -> Patchwork_18051_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18051_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18051_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18051_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-iclb3/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-iclb1/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_18051_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8] ([i915#402])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-tglb3/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-tglb6/igt@i915_module_load@reload.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +11 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-skl2/igt@kms_color@pipe-c-ctm-0-25.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-skl5/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1635] / [i915#95]) +15 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#93] / [i915#95]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#72])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@2x-plain-flip-ts-check@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-hsw1/igt@kms_flip@2x-plain-flip-ts-check@ab-vga1-hdmi-a1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-hsw6/igt@kms_flip@2x-plain-flip-ts-check@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-hsw:          [PASS][21] -> [INCOMPLETE][22] ([i915#2055])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-hsw7/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#1928])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         [PASS][27] -> [DMESG-WARN][28] ([i915#1982])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][29] -> [DMESG-FAIL][30] ([fdo#108145] / [i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_prime@basic-crc@second-to-first:
    - shard-kbl:          [PASS][31] -> [DMESG-FAIL][32] ([i915#95])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-kbl2/igt@kms_prime@basic-crc@second-to-first.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-kbl6/igt@kms_prime@basic-crc@second-to-first.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#31])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-glk4/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-glk7/igt@kms_setmode@basic.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][37] -> [FAIL][38] ([i915#1542])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-iclb8/igt@perf@polling-parameterized.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-iclb1/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-glk:          [DMESG-WARN][39] ([i915#118] / [i915#95]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-glk7/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-glk7/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [DMESG-WARN][41] ([i915#1436] / [i915#716]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-glk4/igt@gen9_exec_parse@allowed-single.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-glk5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][43] ([i915#198] / [i915#2110]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-skl3/igt@i915_selftest@mock@requests.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-skl10/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][45] ([i915#118] / [i915#95]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-glk4/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][47] ([i915#300]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - shard-glk:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-glk9/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-glk5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][51] ([i915#79]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [FAIL][53] ([i915#79]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][55] ([i915#2055]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-hsw4/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-hsw6/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][57] ([i915#1982]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-kbl6/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-kbl7/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt:
    - shard-kbl:          [DMESG-WARN][59] ([i915#93] / [i915#95]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt:
    - shard-tglb:         [DMESG-WARN][61] ([i915#402]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-farfromfence:
    - shard-tglb:         [DMESG-WARN][63] ([i915#1982]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-tglb7/igt@kms_frontbuffer_tracking@psr-farfromfence.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-tglb8/igt@kms_frontbuffer_tracking@psr-farfromfence.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][65] ([i915#1188]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-skl5/igt@kms_hdr@bpc-switch.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-b-planes:
    - shard-skl:          [DMESG-WARN][67] ([i915#1982]) -> [PASS][68] +6 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-skl3/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-skl10/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][69] ([fdo#108145] / [i915#1982]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][71] ([fdo#108145] / [i915#265]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][75] ([i915#31]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-kbl7/igt@kms_setmode@basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-kbl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +7 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-wait-idle:
    - shard-apl:          [DMESG-WARN][79] ([i915#1982]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-apl7/igt@kms_vblank@pipe-c-wait-idle.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-apl6/igt@kms_vblank@pipe-c-wait-idle.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][81] ([i915#1542]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-iclb6/igt@perf@blocking-parameterized.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-iclb5/igt@perf@blocking-parameterized.html
    - shard-tglb:         [FAIL][83] ([i915#1542]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-tglb5/igt@perf@blocking-parameterized.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-tglb7/igt@perf@blocking-parameterized.html

  * igt@perf@invalid-oa-metric-set-id:
    - shard-apl:          [DMESG-WARN][85] ([i915#1635] / [i915#95]) -> [PASS][86] +20 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-apl2/igt@perf@invalid-oa-metric-set-id.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-apl4/igt@perf@invalid-oa-metric-set-id.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [FAIL][87] ([i915#1820]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][89] ([i915#1515]) -> [WARN][90] ([i915#1515])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][91] ([i915#1319] / [i915#2119]) -> [TIMEOUT][92] ([i915#1319] / [i915#1958] / [i915#2119])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-kbl2/igt@kms_content_protection@srm.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-kbl6/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
    - shard-apl:          [SKIP][93] ([fdo#109271]) -> [SKIP][94] ([fdo#109271] / [i915#1635]) +10 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-apl3/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-skl:          [DMESG-FAIL][95] ([i915#1982]) -> [DMESG-WARN][96] ([i915#1982])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][97] ([fdo#109349]) -> [DMESG-WARN][98] ([i915#1226])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-apl:          [SKIP][99] ([fdo#109271] / [i915#1635]) -> [SKIP][100] ([fdo#109271]) +5 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-apl3/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-apl6/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
    - shard-apl:          [DMESG-FAIL][101] ([fdo#108145] / [i915#1635] / [i915#1982] / [i915#95]) -> [DMESG-FAIL][102] ([fdo#108145] / [i915#1635] / [i915#95])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html

  * igt@kms_vblank@pipe-a-query-idle-hang:
    - shard-apl:          [DMESG-WARN][103] ([i915#1635] / [i915#95]) -> [DMESG-WARN][104] ([i915#1982])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-apl3/igt@kms_vblank@pipe-a-query-idle-hang.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-apl7/igt@kms_vblank@pipe-a-query-idle-hang.html

  * igt@runner@aborted:
    - shard-iclb:         [FAIL][105] ([i915#2110]) -> ([FAIL][106], [FAIL][107]) ([i915#1580] / [i915#2110])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-iclb1/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-iclb1/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-iclb8/igt@runner@aborted.html
    - shard-apl:          ([FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111]) ([fdo#109271] / [i915#1610] / [i915#1635] / [i915#716]) -> ([FAIL][112], [FAIL][113]) ([fdo#109271] / [i915#1635] / [i915#716])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-apl4/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-apl3/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-apl6/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8680/shard-apl6/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-apl1/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/shard-apl7/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8680 -> Patchwork_18051

  CI-20190529: 20190529
  CI_DRM_8680: 62fec61ed93afa7efb507345bffc9121ca489271 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5718: af1ef32bfae90bcdbaf1b5d84c61ff4e04368505 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18051: 31a52be7f251c26b096eed75745f4605263a39ac @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18051/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
