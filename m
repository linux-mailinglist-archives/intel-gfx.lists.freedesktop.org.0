Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1275A1F5134
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 11:33:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3971F6E4FB;
	Wed, 10 Jun 2020 09:33:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 841B56E4F8;
 Wed, 10 Jun 2020 09:33:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C028A011B;
 Wed, 10 Jun 2020 09:33:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai-Heng Feng" <kai.heng.feng@canonical.com>
Date: Wed, 10 Jun 2020 09:33:40 -0000
Message-ID: <159178162047.20176.17870581075044085491@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200610075542.12882-1-kai.heng.feng@canonical.com>
In-Reply-To: <20200610075542.12882-1-kai.heng.feng@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Init_lspcon_after_HPD_in_intel=5Fdp=5Fdetect=28=29_=28?=
 =?utf-8?q?rev2=29?=
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

Series: drm/i915: Init lspcon after HPD in intel_dp_detect() (rev2)
URL   : https://patchwork.freedesktop.org/series/73480/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8604_full -> Patchwork_17918_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17918_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl2/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-skl6/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_eio@kms:
    - shard-skl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982]) +10 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl6/igt@gem_eio@kms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-skl7/igt@gem_eio@kms.html

  * igt@gem_exec_create@forked:
    - shard-hsw:          [PASS][5] -> [INCOMPLETE][6] ([i915#61])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-hsw7/igt@gem_exec_create@forked.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-hsw8/igt@gem_exec_create@forked.html

  * igt@i915_selftest@perf@request:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#1823])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-tglb7/igt@i915_selftest@perf@request.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-tglb7/igt@i915_selftest@perf@request.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-kbl:          [PASS][9] -> [DMESG-FAIL][10] ([i915#54] / [i915#95]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-kbl:          [PASS][15] -> [DMESG-FAIL][16] ([i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-kbl4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#93] / [i915#95]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl4/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-kbl2/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#95]) +25 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl2/igt@kms_hdr@bpc-switch.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_invalid_dotclock:
    - shard-snb:          [PASS][23] -> [SKIP][24] ([fdo#109271]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-snb5/igt@kms_invalid_dotclock.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-snb2/igt@kms_invalid_dotclock.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109642] / [fdo#111068])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-iclb8/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-iclb8/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#31])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl8/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-skl5/igt@kms_setmode@basic.html

  * igt@syncobj_wait@single-wait-submitted:
    - shard-tglb:         [PASS][35] -> [DMESG-WARN][36] ([i915#402]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-tglb7/igt@syncobj_wait@single-wait-submitted.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-tglb5/igt@syncobj_wait@single-wait-submitted.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@q-independent@bcs0:
    - shard-apl:          [FAIL][37] ([i915#2013]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl2/igt@gem_ctx_shared@q-independent@bcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-apl7/igt@gem_ctx_shared@q-independent@bcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][39] ([i915#93] / [i915#95]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-kbl7/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][41] ([i915#118] / [i915#95]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-glk7/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl7/igt@kms_color@pipe-a-ctm-0-5.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-skl2/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [INCOMPLETE][47] ([i915#198]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl8/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-skl4/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-kbl:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl4/igt@kms_flip_tiling@flip-changes-tiling.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-kbl7/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc:
    - shard-apl:          [DMESG-WARN][53] ([i915#95]) -> [PASS][54] +11 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-apl6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-skl:          [FAIL][55] ([i915#49]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][61] ([fdo#108145] / [i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][65] ([i915#31]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl4/igt@kms_setmode@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-kbl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-query-busy-hang:
    - shard-tglb:         [DMESG-WARN][67] ([i915#402]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-tglb1/igt@kms_vblank@pipe-c-query-busy-hang.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-tglb7/igt@kms_vblank@pipe-c-query-busy-hang.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][69] ([i915#588]) -> [SKIP][70] ([i915#658])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][71] ([i915#454]) -> [DMESG-FAIL][72] ([i915#1982])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl4/igt@i915_pm_dc@dc6-psr.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-skl2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][73] ([i915#1319]) -> [TIMEOUT][74] ([i915#1319] / [i915#1958]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl3/igt@kms_content_protection@atomic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-kbl4/igt@kms_content_protection@atomic.html
    - shard-apl:          [FAIL][75] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][76] ([i915#1319] / [i915#1635])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl1/igt@kms_content_protection@atomic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-apl1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][77] ([i915#1319]) -> [FAIL][78] ([fdo#110321] / [fdo#110336])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl3/igt@kms_content_protection@atomic-dpms.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-apl4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][79] ([i915#1319] / [i915#1635]) -> [FAIL][80] ([fdo#110321])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl2/igt@kms_content_protection@lic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-apl6/igt@kms_content_protection@lic.html

  * igt@kms_draw_crc@fill-fb:
    - shard-apl:          [DMESG-WARN][81] ([i915#95]) -> [DMESG-FAIL][82] ([i915#95])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl7/igt@kms_draw_crc@fill-fb.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-apl8/igt@kms_draw_crc@fill-fb.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-kbl:          [FAIL][83] ([i915#64]) -> [DMESG-FAIL][84] ([i915#95])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl6/igt@kms_fbcon_fbt@fbc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-kbl3/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][85] ([i915#93] / [i915#95]) -> [DMESG-WARN][86] ([i915#180] / [i915#93] / [i915#95])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          [DMESG-FAIL][87] ([fdo#108145] / [i915#95]) -> [FAIL][88] ([fdo#108145] / [i915#265])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1823]: https://gitlab.freedesktop.org/drm/intel/issues/1823
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2013]: https://gitlab.freedesktop.org/drm/intel/issues/2013
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#64]: https://gitlab.freedesktop.org/drm/intel/issues/64
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8604 -> Patchwork_17918

  CI-20190529: 20190529
  CI_DRM_8604: 24c6364ec0e3c895ec4237d7a8f3516316a761ff @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5700: 88e379cef970db3dab020966d5dd117de7cc03ab @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17918: abe9efda047415736cc8faf7ff2abb094fc9039c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17918/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
