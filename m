Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6B61F0417
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Jun 2020 03:03:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE08D6E919;
	Sat,  6 Jun 2020 01:03:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 55F426E112;
 Sat,  6 Jun 2020 01:03:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47D3AA47E8;
 Sat,  6 Jun 2020 01:03:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 06 Jun 2020 01:03:54 -0000
Message-ID: <159140543427.20631.10408132748726398416@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200605200357.13069-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200605200357.13069-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Delete_unused_code?=
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

Series: drm/i915/gem: Delete unused code
URL   : https://patchwork.freedesktop.org/series/78055/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8594_full -> Patchwork_17894_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17894_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17894_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17894_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-snb:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-snb4/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-snb5/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  
#### Warnings ####

  * igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:
    - shard-snb:          [SKIP][3] ([fdo#109271]) -> [TIMEOUT][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-snb4/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-snb5/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_endless@dispatch@rcs0}:
    - shard-iclb:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-iclb5/igt@gem_exec_endless@dispatch@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-iclb5/igt@gem_exec_endless@dispatch@rcs0.html

  * {igt@gem_exec_reloc@basic-concurrent16}:
    - shard-snb:          [FAIL][7] ([i915#1930]) -> [TIMEOUT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html

  * {igt@kms_chamelium@vga-hpd-enable-disable-mode}:
    - shard-snb:          [SKIP][9] ([fdo#109271] / [fdo#111827]) -> [TIMEOUT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-snb4/igt@kms_chamelium@vga-hpd-enable-disable-mode.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-snb5/igt@kms_chamelium@vga-hpd-enable-disable-mode.html

  
Known issues
------------

  Here are the changes found in Patchwork_17894_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#118] / [i915#95]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-glk4/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-kbl2/igt@i915_suspend@forcewake.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-kbl1/igt@i915_suspend@forcewake.html
    - shard-glk:          [PASS][15] -> [INCOMPLETE][16] ([i915#58] / [k.org#198133])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-glk6/igt@i915_suspend@forcewake.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-glk7/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-apl7/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-apl2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][19] -> [DMESG-FAIL][20] ([i915#118] / [i915#95]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-glk1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-kbl:          [PASS][21] -> [DMESG-FAIL][22] ([i915#54] / [i915#95])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#128])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-kbl7/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-kbl2/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#93] / [i915#95])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#95]) +17 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#1188])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-skl10/igt@kms_hdr@bpc-switch.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][35] -> [DMESG-WARN][36] ([i915#1982])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][37] -> [FAIL][38] ([i915#173])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-iclb4/igt@kms_psr@no_drrs.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-iclb8/igt@kms_psr@psr2_suspend.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-d:
    - shard-tglb:         [PASS][41] -> [DMESG-WARN][42] ([i915#1982])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-tglb5/igt@kms_universal_plane@universal-plane-gen9-features-pipe-d.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-tglb5/igt@kms_universal_plane@universal-plane-gen9-features-pipe-d.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-skl:          [PASS][43] -> [DMESG-WARN][44] ([i915#1982]) +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-skl9/igt@prime_vgem@basic-fence-flip.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-skl8/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][45] ([i915#1930]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-glk7/igt@gem_exec_reloc@basic-concurrent0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [INCOMPLETE][47] ([i915#198]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-skl8/igt@i915_module_load@reload-with-fault-injection.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-skl2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][49] ([i915#151] / [i915#69]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-skl4/igt@i915_pm_rpm@system-suspend-modeset.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_pm_rps@reset:
    - shard-apl:          [DMESG-WARN][51] ([i915#95]) -> [PASS][52] +13 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-apl1/igt@i915_pm_rps@reset.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-apl8/igt@i915_pm_rps@reset.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-glk4/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-glk5/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][55] ([i915#118] / [i915#95]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-glk9/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +8 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-skl7/igt@kms_color@pipe-c-ctm-0-25.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-skl10/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_color@pipe-c-ctm-red-to-blue:
    - shard-kbl:          [DMESG-WARN][59] ([i915#93] / [i915#95]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-kbl4/igt@kms_color@pipe-c-ctm-red-to-blue.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-kbl4/igt@kms_color@pipe-c-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][61] ([i915#54]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@pipe-c-torture-bo:
    - shard-iclb:         [DMESG-WARN][63] ([i915#128]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-iclb5/igt@kms_cursor_legacy@pipe-c-torture-bo.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-iclb4/igt@kms_cursor_legacy@pipe-c-torture-bo.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1}:
    - shard-skl:          [FAIL][65] ([i915#79]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-apl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-skl:          [FAIL][69] ([i915#49]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][71] ([i915#1188]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-iclb:         [INCOMPLETE][77] ([i915#1078] / [i915#1185]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-iclb3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-iclb3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +4 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-wait-busy:
    - shard-iclb:         [DMESG-WARN][81] ([i915#1982]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-iclb6/igt@kms_vblank@pipe-b-wait-busy.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-iclb1/igt@kms_vblank@pipe-b-wait-busy.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][83] ([i915#658]) -> [SKIP][84] ([i915#588])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [INCOMPLETE][85] ([i915#155]) -> [DMESG-WARN][86] ([i915#180])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-kbl2/igt@i915_suspend@debugfs-reader.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-kbl7/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-snb:          [SKIP][87] ([fdo#109271] / [fdo#111827]) -> [INCOMPLETE][88] ([CI#80] / [i915#82])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-snb4/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][89] ([i915#1319] / [i915#1635]) -> [FAIL][90] ([fdo#110321] / [fdo#110336])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-apl3/igt@kms_content_protection@atomic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-apl1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][91] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][92] ([i915#1319] / [i915#1635])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-apl1/igt@kms_content_protection@legacy.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-apl7/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][93] ([i915#1319]) -> [TIMEOUT][94] ([i915#1319] / [i915#1958])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-kbl3/igt@kms_content_protection@srm.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-kbl4/igt@kms_content_protection@srm.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][95] ([i915#95]) -> [DMESG-WARN][96] ([i915#180] / [i915#95])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8594/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1078]: https://gitlab.freedesktop.org/drm/intel/issues/1078
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8594 -> Patchwork_17894

  CI-20190529: 20190529
  CI_DRM_8594: 6d6b387f9c60b269a434f75fe9b859a7aa6feb88 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5695: 53e8c878a6fb5708e63c99403691e8960b86ea9c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17894: 7b2f658eb02da85bb09391b95d3b556fc9e7d997 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17894/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
