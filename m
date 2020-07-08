Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23940217C65
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 02:59:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74E2C6E34D;
	Wed,  8 Jul 2020 00:59:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4C3A66E34D;
 Wed,  8 Jul 2020 00:59:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 460EDA0019;
 Wed,  8 Jul 2020 00:59:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 08 Jul 2020 00:59:40 -0000
Message-ID: <159416998026.3838.467687826424380644@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZG1h?=
 =?utf-8?q?-fence_annotations=2C_round_3_=28rev2=29?=
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

Series: dma-fence annotations, round 3 (rev2)
URL   : https://patchwork.freedesktop.org/series/79212/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8711_full -> Patchwork_18101_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18101_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18101_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18101_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_18101_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#1958] / [i915#2119])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-tglb5/igt@gem_exec_endless@dispatch@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-tglb3/igt@gem_exec_endless@dispatch@rcs0.html

  * igt@gem_exec_gttfill@all:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk4/igt@gem_exec_gttfill@all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-glk2/igt@gem_exec_gttfill@all.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#1930])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk6/igt@gem_exec_reloc@basic-concurrent0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl4/igt@gem_softpin@noreloc-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-kbl7/igt@gem_softpin@noreloc-s3.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +56 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl6/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-skl7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#750])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-tglb8/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-tglb1/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#62])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk9/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-glk6/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][19] -> [INCOMPLETE][20] ([i915#58] / [k.org#198133])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk5/igt@kms_flip@2x-flip-vs-panning-vs-hang@ab-hdmi-a1-hdmi-a2.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-glk8/igt@kms_flip@2x-flip-vs-panning-vs-hang@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@dpms-vs-vblank-race@a-dp1:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl6/igt@kms_flip@dpms-vs-vblank-race@a-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-kbl6/igt@kms_flip@dpms-vs-vblank-race@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#123] / [i915#69])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl2/igt@kms_frontbuffer_tracking@psr-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][31] -> [FAIL][32] ([i915#31])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl1/igt@kms_setmode@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-kbl4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-query-forked:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#1635] / [i915#95]) +16 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl8/igt@kms_vblank@pipe-c-query-forked.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-apl4/igt@kms_vblank@pipe-c-query-forked.html

  * igt@kms_vblank@pipe-d-wait-forked-busy-hang:
    - shard-tglb:         [PASS][35] -> [SKIP][36] ([fdo#112015])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-tglb5/igt@kms_vblank@pipe-d-wait-forked-busy-hang.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-tglb3/igt@kms_vblank@pipe-d-wait-forked-busy-hang.html

  * igt@vgem_basic@dmabuf-export:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#93] / [i915#95]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl2/igt@vgem_basic@dmabuf-export.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-kbl4/igt@vgem_basic@dmabuf-export.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [FAIL][39] ([i915#2079]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl4/igt@gem_exec_balancer@bonded-early.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-kbl1/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [DMESG-WARN][41] ([i915#118] / [i915#95]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk1/igt@gem_exec_whisper@basic-contexts-forked.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt:
    - shard-iclb:         [INCOMPLETE][43] ([i915#2119]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-iclb1/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-iclb3/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][45] ([i915#1436] / [i915#716]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl8/igt@gen9_exec_parse@allowed-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-apl3/igt@gen9_exec_parse@allowed-all.html
    - shard-kbl:          [DMESG-WARN][47] ([i915#1436] / [i915#716]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl7/igt@gen9_exec_parse@allowed-all.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-kbl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][49] ([i915#402]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-tglb6/igt@i915_module_load@reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-tglb3/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-apl:          [INCOMPLETE][51] ([i915#1635]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl4/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-apl6/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk2/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-glk9/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
    - shard-skl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl6/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-skl2/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-kbl:          [DMESG-WARN][57] ([i915#93] / [i915#95]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl4/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-kbl1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-kbl:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl7/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-kbl4/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +10 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][63] ([i915#72]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:
    - shard-apl:          [DMESG-WARN][65] ([i915#1982]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl1/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-apl6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@dpms-vs-vblank-race@a-edp1:
    - shard-tglb:         [DMESG-WARN][69] ([i915#1982]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-tglb1/igt@kms_flip@dpms-vs-vblank-race@a-edp1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-tglb8/igt@kms_flip@dpms-vs-vblank-race@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1:
    - shard-glk:          [FAIL][71] -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk8/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-glk6/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-skl:          [FAIL][73] -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl7/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-skl10/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - shard-iclb:         [FAIL][75] ([i915#49]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - shard-apl:          [DMESG-WARN][77] ([i915#1635] / [i915#95]) -> [PASS][78] +12 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl6/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-apl2/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][79] ([i915#69]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][81] ([fdo#109441]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-iclb6/igt@kms_psr@psr2_basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-apl:          [FAIL][83] ([i915#1732]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl3/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-apl3/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - shard-snb:          [WARN][85] ([i915#2036]) -> [WARN][86] ([i915#2021])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-snb5/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-snb4/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][87] ([i915#1515]) -> [FAIL][88] ([i915#1515])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-apl:          [SKIP][89] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][90] ([fdo#109271] / [fdo#111827])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl1/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-apl2/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][91] ([i915#1319] / [i915#2119]) -> [TIMEOUT][92] ([i915#1319] / [i915#1958] / [i915#2119])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl3/igt@kms_content_protection@srm.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-kbl4/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-d-cursor-alpha-transparent:
    - shard-apl:          [SKIP][93] ([fdo#109271] / [i915#1635]) -> [SKIP][94] ([fdo#109271]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl6/igt@kms_cursor_crc@pipe-d-cursor-alpha-transparent.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-apl2/igt@kms_cursor_crc@pipe-d-cursor-alpha-transparent.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][95] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][96] ([i915#93] / [i915#95]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-apl:          [SKIP][97] ([fdo#109271]) -> [SKIP][98] ([fdo#109271] / [i915#1635]) +3 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][99], [FAIL][100], [FAIL][101]) ([fdo#109271] / [i915#1436] / [i915#1784] / [i915#2110] / [i915#716]) -> [FAIL][102] ([i915#1436] / [i915#1784] / [i915#2110])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl3/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl7/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl6/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106]) ([fdo#109271] / [i915#1610] / [i915#1635] / [i915#2110] / [i915#716]) -> [FAIL][107] ([i915#1635] / [i915#2110])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl8/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl3/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl6/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl7/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/shard-apl4/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112015]: https://bugs.freedesktop.org/show_bug.cgi?id=112015
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8711 -> Patchwork_18101

  CI-20190529: 20190529
  CI_DRM_8711: c9761aec5a7938e206d29ace9f0d96ce93306ee6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5727: 90254c14f4e68bec9d4a114ddf039075f3c1a30c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18101: 7b01a65d5d5ae8c97bf447a461c05d9b0c7971e3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18101/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
