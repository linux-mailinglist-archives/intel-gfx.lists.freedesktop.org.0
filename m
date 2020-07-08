Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFDE217CF0
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 04:10:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A206E84C;
	Wed,  8 Jul 2020 02:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7FA516E84A;
 Wed,  8 Jul 2020 02:10:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79193A47DB;
 Wed,  8 Jul 2020 02:10:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal@hardline.pl>
Date: Wed, 08 Jul 2020 02:10:54 -0000
Message-ID: <159417425446.3837.9880544684620418818@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200707215218.272031-1-michal@hardline.pl>
In-Reply-To: <20200707215218.272031-1-michal@hardline.pl>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/uc=3A_Extract_uc_usage_det?=
 =?utf-8?q?ails_into_separate_debugfs?=
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

Series: series starting with [1/2] drm/i915/uc: Extract uc usage details into separate debugfs
URL   : https://patchwork.freedesktop.org/series/79220/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8711_full -> Patchwork_18102_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18102_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18102_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18102_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_18102_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk4/igt@gem_exec_whisper@basic-fds-forked-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-glk6/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [PASS][5] -> [WARN][6] ([i915#1519])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-hsw1/igt@i915_pm_rc6_residency@rc6-fence.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-hsw6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-snb:          [PASS][7] -> [SKIP][8] ([fdo#109271]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-snb1/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-snb2/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-apl6/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#79])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
    - shard-tglb:         [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#31])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl1/igt@kms_setmode@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-kbl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-query-forked:
    - shard-snb:          [PASS][25] -> [TIMEOUT][26] ([i915#1958] / [i915#2119])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-snb5/igt@kms_vblank@pipe-a-query-forked.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-snb5/igt@kms_vblank@pipe-a-query-forked.html

  * igt@kms_vblank@pipe-b-query-forked:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1635] / [i915#95]) +19 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl2/igt@kms_vblank@pipe-b-query-forked.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-apl6/igt@kms_vblank@pipe-b-query-forked.html

  * igt@vgem_basic@dmabuf-export:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#93] / [i915#95]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl2/igt@vgem_basic@dmabuf-export.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-kbl4/igt@vgem_basic@dmabuf-export.html

  
#### Possible fixes ####

  * igt@gem_eio@wait-wedge-10ms:
    - shard-apl:          [DMESG-WARN][31] ([i915#1635] / [i915#95]) -> [PASS][32] +15 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl7/igt@gem_eio@wait-wedge-10ms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-apl3/igt@gem_eio@wait-wedge-10ms.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [FAIL][33] ([i915#2079]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl4/igt@gem_exec_balancer@bonded-early.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-kbl6/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_create@madvise:
    - shard-glk:          [DMESG-WARN][35] ([i915#118] / [i915#95]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk5/igt@gem_exec_create@madvise.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-glk4/igt@gem_exec_create@madvise.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt:
    - shard-iclb:         [INCOMPLETE][37] ([i915#2119]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-iclb1/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-iclb4/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][39] ([i915#1436] / [i915#716]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl8/igt@gen9_exec_parse@allowed-all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-apl1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][41] ([i915#402]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-tglb6/igt@i915_module_load@reload.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-tglb2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-apl:          [INCOMPLETE][43] ([i915#1635]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl4/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-apl7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk2/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-glk2/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-kbl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl7/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-kbl3/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-kbl:          [DMESG-WARN][49] ([i915#93] / [i915#95]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-kbl3/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][51] ([i915#79]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@dpms-vs-vblank-race@a-edp1:
    - shard-tglb:         [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-tglb1/igt@kms_flip@dpms-vs-vblank-race@a-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-tglb1/igt@kms_flip@dpms-vs-vblank-race@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +10 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1:
    - shard-glk:          [FAIL][57] -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk8/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-glk1/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-skl:          [FAIL][59] -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl7/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-skl3/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - shard-iclb:         [FAIL][61] ([i915#49]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][63] ([i915#1188]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][65] ([i915#69]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][67] ([fdo#108145] / [i915#265]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-yf:
    - shard-skl:          [DMESG-WARN][69] ([i915#1982]) -> [PASS][70] +10 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl8/igt@kms_plane_lowres@pipe-a-tiling-yf.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-skl6/igt@kms_plane_lowres@pipe-a-tiling-yf.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][71] ([fdo#109642] / [fdo#111068]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-iclb4/igt@kms_psr2_su@frontbuffer.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-iclb4/igt@kms_psr@psr2_sprite_render.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][75] ([i915#31]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-hsw1/igt@kms_setmode@basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-hsw6/igt@kms_setmode@basic.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-apl:          [FAIL][77] ([i915#1732]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl3/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-apl1/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][79] ([i915#1930]) -> [TIMEOUT][80] ([i915#1958] / [i915#2119])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][81] ([i915#658]) -> [SKIP][82] ([i915#588])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-apl:          [SKIP][83] ([fdo#109271] / [fdo#111827]) -> [SKIP][84] ([fdo#109271] / [fdo#111827] / [i915#1635])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl2/igt@kms_chamelium@hdmi-audio-edid.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-apl6/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-apl:          [SKIP][85] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][86] ([fdo#109271] / [fdo#111827])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl1/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-apl2/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][87] ([fdo#110321] / [fdo#110336]) -> [DMESG-FAIL][88] ([fdo#110321] / [i915#1635] / [i915#95])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl8/igt@kms_content_protection@legacy.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-apl1/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][89] ([i915#1319] / [i915#2119]) -> [TIMEOUT][90] ([i915#1319] / [i915#1958] / [i915#2119])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl3/igt@kms_content_protection@srm.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-kbl3/igt@kms_content_protection@srm.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-snb:          [SKIP][91] ([fdo#109271]) -> [TIMEOUT][92] ([i915#1958] / [i915#2119]) +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-snb5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-snb5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
    - shard-tglb:         [DMESG-FAIL][93] ([i915#1982]) -> [FAIL][94] ([i915#2122])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-tglb8/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-tglb6/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][95] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][96] ([i915#93] / [i915#95]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack:
    - shard-apl:          [SKIP][97] ([fdo#109271]) -> [SKIP][98] ([fdo#109271] / [i915#1635]) +6 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-apl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-apl:          [SKIP][99] ([fdo#109271] / [i915#1635]) -> [SKIP][100] ([fdo#109271]) +3 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-apl8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104]) ([fdo#109271] / [i915#1610] / [i915#1635] / [i915#2110] / [i915#716]) -> [FAIL][105] ([i915#1635] / [i915#2110])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl3/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl7/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl8/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl6/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/shard-apl3/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8711 -> Patchwork_18102

  CI-20190529: 20190529
  CI_DRM_8711: c9761aec5a7938e206d29ace9f0d96ce93306ee6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5727: 90254c14f4e68bec9d4a114ddf039075f3c1a30c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18102: 5e31699bbc9920bc11a4ab1ab1e312cdc2aed02a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18102/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
