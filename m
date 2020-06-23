Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F882046E5
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 03:55:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 369D06E150;
	Tue, 23 Jun 2020 01:55:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DE5AC6E150;
 Tue, 23 Jun 2020 01:55:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ADC83A00E7;
 Tue, 23 Jun 2020 01:55:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 23 Jun 2020 01:55:18 -0000
Message-ID: <159287731868.27517.11594316268357785781@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200622232821.3093-1-lucas.demarchi@intel.com>
In-Reply-To: <20200622232821.3093-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgVmFy?=
 =?utf-8?q?iable_renames?=
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

Series: Variable renames
URL   : https://patchwork.freedesktop.org/series/78714/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8653_full -> Patchwork_18006_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18006_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@hang:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#1635] / [i915#95]) +15 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-apl8/igt@gem_exec_balancer@hang.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-apl7/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-glk5/igt@gem_exec_whisper@basic-contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-glk4/igt@gem_exec_whisper@basic-contexts.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#151] / [i915#69])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-skl4/igt@i915_pm_rpm@system-suspend-execbuf.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-skl1/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][7] -> [DMESG-FAIL][8] ([i915#118] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-glk2/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-glk7/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-glk5/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-glk:          [PASS][11] -> [INCOMPLETE][12] ([i915#58] / [k.org#198133])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-glk7/igt@kms_color@pipe-b-ctm-0-25.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-glk5/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_flip@2x-flip-vs-wf_vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#1928])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-glk7/igt@kms_flip@2x-flip-vs-wf_vblank@ac-hdmi-a1-hdmi-a2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-glk5/igt@kms_flip@2x-flip-vs-wf_vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +6 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-iclb:         [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#93] / [i915#95])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-kbl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-kbl7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-128:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +14 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-skl5/igt@kms_plane_cursor@pipe-b-viewport-size-128.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-skl3/igt@kms_plane_cursor@pipe-b-viewport-size-128.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#899])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-none.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#31])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-kbl1/igt@kms_setmode@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-kbl3/igt@kms_setmode@basic.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - shard-tglb:         [PASS][29] -> [DMESG-WARN][30] ([i915#1982]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-tglb6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-tglb8/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  * igt@prime_busy@after-wait@bcs0:
    - shard-tglb:         [PASS][31] -> [DMESG-WARN][32] ([i915#402])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-tglb1/igt@prime_busy@after-wait@bcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-tglb3/igt@prime_busy@after-wait@bcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-glk:          [DMESG-WARN][33] ([i915#118] / [i915#95]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-glk6/igt@gem_ctx_shared@q-smoketest-all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-glk8/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [CRASH][35] -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-apl2/igt@gem_eio@in-flight-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-apl6/igt@gem_eio@in-flight-suspend.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][37] ([i915#1436] / [i915#716]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-apl4/igt@gen9_exec_parse@allowed-all.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-apl1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [INCOMPLETE][39] ([i915#69]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-skl5/igt@i915_pm_backlight@fade_with_suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-skl8/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
    - shard-apl:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-apl4/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-apl8/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic:
    - shard-kbl:          [DMESG-WARN][43] ([i915#93] / [i915#95]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-kbl7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-kbl6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-skl4/igt@kms_color@pipe-a-ctm-0-5.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [INCOMPLETE][47] -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-iclb:         [INCOMPLETE][49] ([i915#1185]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-iclb3/igt@kms_fbcon_fbt@fbc-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-iclb3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-glk5/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-glk7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][53] ([i915#1928]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@b-dp1:
    - shard-apl:          [FAIL][55] ([i915#79]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-apl6/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [INCOMPLETE][57] ([i915#198]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +5 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc:
    - shard-apl:          [DMESG-WARN][61] ([i915#1635] / [i915#95]) -> [PASS][62] +10 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-apl8/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-apl7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:
    - shard-tglb:         [DMESG-WARN][63] ([i915#1982]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][65] ([i915#1188]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][67] ([fdo#108145] / [i915#265]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - shard-kbl:          [DMESG-WARN][69] ([i915#1982]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-kbl3/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-kbl1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  
#### Warnings ####

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][71] ([i915#93] / [i915#95]) -> [DMESG-WARN][72] ([i915#180] / [i915#93] / [i915#95])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][73] ([i915#454]) -> [SKIP][74] ([i915#468])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-tglb8/igt@i915_pm_dc@dc6-psr.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-apl:          [SKIP][75] ([fdo#109271] / [fdo#111827]) -> [SKIP][76] ([fdo#109271] / [fdo#111827] / [i915#1635])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-apl3/igt@kms_chamelium@hdmi-hpd-storm-disable.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-apl4/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          [SKIP][77] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][78] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-apl6/igt@kms_chamelium@vga-hpd.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-apl3/igt@kms_chamelium@vga-hpd.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-kbl:          [DMESG-WARN][79] ([i915#93] / [i915#95]) -> [DMESG-FAIL][80] ([i915#54] / [i915#95])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-apl:          [SKIP][81] ([fdo#109271] / [i915#1635]) -> [SKIP][82] ([fdo#109271]) +5 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-apl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-apl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - shard-apl:          [DMESG-FAIL][83] ([i915#1635] / [i915#95]) -> [DMESG-WARN][84] ([i915#1635] / [i915#95])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-apl1/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-apl4/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-tglb:         [INCOMPLETE][85] ([i915#1602] / [i915#402] / [i915#456]) -> [INCOMPLETE][86] ([i915#1602] / [i915#456])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-tglb2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@prime_nv_pcopy@test3_2:
    - shard-apl:          [SKIP][87] ([fdo#109271]) -> [SKIP][88] ([fdo#109271] / [i915#1635]) +6 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8653/shard-apl2/igt@prime_nv_pcopy@test3_2.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/shard-apl4/igt@prime_nv_pcopy@test3_2.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8653 -> Patchwork_18006

  CI-20190529: 20190529
  CI_DRM_8653: dce458f7b00797dbc291296aacfab37075db7fee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5716: 71a22c37ae6541f9d991d81f15cbade1da402b75 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18006: 1f292211d1e31fa07247acb455b42921d629ad26 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18006/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
