Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6573D204A47
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 08:57:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8D9A6E226;
	Tue, 23 Jun 2020 06:57:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D7A06E226;
 Tue, 23 Jun 2020 06:57:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9649CA0091;
 Tue, 23 Jun 2020 06:57:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ayaz A Siddiqui" <ayaz.siddiqui@intel.com>
Date: Tue, 23 Jun 2020 06:57:41 -0000
Message-ID: <159289546158.27518.3778558746292193025@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200623045957.1649059-1-ayaz.siddiqui@intel.com>
In-Reply-To: <20200623045957.1649059-1-ayaz.siddiqui@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Initialize_reserved_and_unspecified_MOCS_indices_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/gt: Initialize reserved and unspecified MOCS indices (rev2)
URL   : https://patchwork.freedesktop.org/series/78012/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8654_full -> Patchwork_18008_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18008_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-glk7/igt@gem_ctx_shared@q-smoketest-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-glk7/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_reloc@basic-range:
    - shard-tglb:         [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-tglb3/igt@gem_exec_reloc@basic-range.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-tglb7/igt@gem_exec_reloc@basic-range.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
    - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#1172] / [i915#1897]) +16 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-tglb6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-tglb3/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-apl7/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-apl3/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-snb:          [PASS][9] -> [SKIP][10] ([fdo#109271])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-snb4/igt@kms_fbcon_fbt@fbc-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-snb1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1635] / [i915#95]) +14 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#1897]) +130 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#93] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-kbl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-kbl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-128:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +5 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-skl10/igt@kms_plane_cursor@pipe-b-viewport-size-128.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-skl2/igt@kms_plane_cursor@pipe-b-viewport-size-128.html

  * igt@kms_psr2_su@page_flip:
    - shard-tglb:         [PASS][21] -> [SKIP][22] ([i915#1911])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-tglb2/igt@kms_psr2_su@page_flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-tglb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#198])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-skl8/igt@kms_psr@suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-skl7/igt@kms_psr@suspend.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - shard-tglb:         [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-tglb7/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-tglb7/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@smoketest-all:
    - shard-glk:          [DMESG-WARN][27] ([i915#118] / [i915#95]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-glk4/igt@gem_exec_schedule@smoketest-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-glk2/igt@gem_exec_schedule@smoketest-all.html

  * igt@i915_module_load@reload:
    - shard-iclb:         [DMESG-WARN][29] ([i915#1982]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-iclb8/igt@i915_module_load@reload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-iclb5/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [INCOMPLETE][31] ([i915#151] / [i915#69]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-skl1/igt@i915_pm_rpm@system-suspend-execbuf.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-skl6/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-apl:          [DMESG-WARN][33] ([i915#1982]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-apl4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-apl2/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-skl:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-skl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-skl9/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge:
    - shard-glk:          [DMESG-WARN][37] ([i915#1982]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-glk5/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-glk7/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][39] ([i915#79]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-hsw6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-hsw1/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [INCOMPLETE][43] ([i915#198]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip_tiling@flip-to-x-tiled:
    - shard-skl:          [FAIL][45] ([i915#167]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-skl9/igt@kms_flip_tiling@flip-to-x-tiled.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-skl4/igt@kms_flip_tiling@flip-to-x-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - shard-kbl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:
    - shard-tglb:         [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][51] ([fdo#108145] / [i915#265]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@sysfs_heartbeat_interval@mixed@vecs0:
    - shard-skl:          [FAIL][55] ([i915#1731]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-skl4/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-skl10/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  * igt@vgem_slow@nohang:
    - shard-apl:          [DMESG-WARN][57] ([i915#1635] / [i915#95]) -> [PASS][58] +19 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-apl1/igt@vgem_slow@nohang.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-apl8/igt@vgem_slow@nohang.html

  
#### Warnings ####

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][59] ([i915#93] / [i915#95]) -> [DMESG-WARN][60] ([i915#180] / [i915#93] / [i915#95])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          [SKIP][61] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][62] ([fdo#109271] / [fdo#111827])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-apl7/igt@kms_chamelium@vga-edid-read.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-apl3/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          [SKIP][63] ([fdo#109271] / [fdo#111827]) -> [SKIP][64] ([fdo#109271] / [fdo#111827] / [i915#1635]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-apl3/igt@kms_chamelium@vga-hpd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-apl6/igt@kms_chamelium@vga-hpd.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-kbl:          [DMESG-WARN][65] ([i915#93] / [i915#95]) -> [DMESG-FAIL][66] ([i915#54] / [i915#95])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-apl:          [SKIP][67] ([fdo#109271] / [i915#1635]) -> [SKIP][68] ([fdo#109271]) +11 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-apl7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-apl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-apl:          [SKIP][69] ([fdo#109271]) -> [SKIP][70] ([fdo#109271] / [i915#1635]) +8 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-apl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-apl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][71] ([fdo#108145] / [i915#265]) -> [DMESG-WARN][72] ([i915#1982])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8654/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1172]: https://gitlab.freedesktop.org/drm/intel/issues/1172
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#167]: https://gitlab.freedesktop.org/drm/intel/issues/167
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1897]: https://gitlab.freedesktop.org/drm/intel/issues/1897
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8654 -> Patchwork_18008

  CI-20190529: 20190529
  CI_DRM_8654: 0cb5566d436fed92775a65e7ef3b88bd12faf855 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5716: 71a22c37ae6541f9d991d81f15cbade1da402b75 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18008: 225407abcf8b8e43275d8d98858b35966e97aba5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18008/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
