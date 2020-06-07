Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6361F0F3E
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Jun 2020 21:44:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01A6D6E3C1;
	Sun,  7 Jun 2020 19:44:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3008A6E116;
 Sun,  7 Jun 2020 19:44:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29E9BA0003;
 Sun,  7 Jun 2020 19:44:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Sun, 07 Jun 2020 19:44:18 -0000
Message-ID: <159155905816.15987.2460269927591879895@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200607181840.13536-1-hdegoede@redhat.com>
In-Reply-To: <20200607181840.13536-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgcHdt?=
 =?utf-8?q?/i915=3A_Convert_pwm-crc_and_i915_driver=27s_PWM_code_to_use_th?=
 =?utf-8?q?e_atomic_PWM_API?=
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

Series: pwm/i915: Convert pwm-crc and i915 driver's PWM code to use the atomic PWM API
URL   : https://patchwork.freedesktop.org/series/78089/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8596_full -> Patchwork_17900_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17900_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-glk5/igt@gem_exec_whisper@basic-contexts-forked.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_partial_pwrite_pread@reads-snoop:
    - shard-skl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982]) +9 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-skl8/igt@gem_partial_pwrite_pread@reads-snoop.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-skl6/igt@gem_partial_pwrite_pread@reads-snoop.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-apl4/igt@gem_workarounds@suspend-resume.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-apl6/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1436] / [i915#716])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-kbl6/igt@gen9_exec_parse@allowed-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-kbl2/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [PASS][9] -> [DMESG-WARN][10] ([i915#402]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-tglb8/igt@i915_module_load@reload-with-fault-injection.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#636] / [i915#69])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-skl6/igt@i915_suspend@forcewake.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-skl2/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [PASS][13] -> [DMESG-FAIL][14] ([i915#118] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-glk9/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-kbl:          [PASS][15] -> [DMESG-FAIL][16] ([i915#54] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#93] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [PASS][21] -> [INCOMPLETE][22] ([i915#1185] / [i915#250])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-iclb7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#69])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][27] -> [DMESG-FAIL][28] ([fdo#108145] / [i915#1982])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#95]) +5 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109642] / [fdo#111068])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-iclb4/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#173])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-iclb2/igt@kms_psr@no_drrs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-iclb5/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * {igt@gem_exec_schedule@implicit-write-read@rcs0}:
    - shard-snb:          [INCOMPLETE][37] ([i915#82]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-snb4/igt@gem_exec_schedule@implicit-write-read@rcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-snb1/igt@gem_exec_schedule@implicit-write-read@rcs0.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-glk:          [DMESG-WARN][39] ([i915#118] / [i915#95]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-glk7/igt@gem_exec_whisper@basic-normal.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-glk5/igt@gem_exec_whisper@basic-normal.html

  * igt@gem_tiled_pread_basic:
    - shard-apl:          [DMESG-WARN][41] ([i915#95]) -> [PASS][42] +13 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-apl4/igt@gem_tiled_pread_basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-apl3/igt@gem_tiled_pread_basic.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          [INCOMPLETE][45] ([i915#58] / [k.org#198133]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-glk9/igt@i915_suspend@forcewake.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-glk8/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-skl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +8 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-skl10/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-skl3/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_color@pipe-c-ctm-red-to-blue:
    - shard-kbl:          [DMESG-WARN][49] ([i915#93] / [i915#95]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-kbl2/igt@kms_color@pipe-c-ctm-red-to-blue.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-kbl1/igt@kms_color@pipe-c-ctm-red-to-blue.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - shard-hsw:          [DMESG-WARN][51] ([i915#128]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-hsw1/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-hsw6/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-apl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - shard-skl:          [FAIL][55] ([i915#49]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-skl5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-wait-forked-hang:
    - shard-hsw:          [INCOMPLETE][61] ([i915#61]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-hsw4/igt@kms_vblank@pipe-a-wait-forked-hang.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-hsw6/igt@kms_vblank@pipe-a-wait-forked-hang.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][63] ([i915#1319] / [i915#1958]) -> [TIMEOUT][64] ([i915#1319])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-kbl4/igt@kms_content_protection@atomic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-kbl2/igt@kms_content_protection@atomic.html
    - shard-apl:          [TIMEOUT][65] ([i915#1319]) -> [DMESG-FAIL][66] ([fdo#110321])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-apl2/igt@kms_content_protection@atomic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-apl3/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          [TIMEOUT][67] ([i915#1319]) -> [TIMEOUT][68] ([i915#1319] / [i915#1958])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-kbl3/igt@kms_content_protection@legacy.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-kbl4/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][69] ([i915#1319] / [i915#1635]) -> [DMESG-FAIL][70] ([fdo#110321] / [i915#95])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-apl4/igt@kms_content_protection@lic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-apl6/igt@kms_content_protection@lic.html
    - shard-kbl:          [DMESG-FAIL][71] ([fdo#110321] / [i915#95]) -> [TIMEOUT][72] ([i915#1319])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-kbl2/igt@kms_content_protection@lic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-kbl1/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][73] ([i915#1319] / [i915#1958]) -> [DMESG-FAIL][74] ([fdo#110321] / [i915#95])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-kbl4/igt@kms_content_protection@srm.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-kbl2/igt@kms_content_protection@srm.html
    - shard-apl:          [DMESG-FAIL][75] ([fdo#110321] / [i915#95]) -> [TIMEOUT][76] ([i915#1319] / [i915#1635])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-apl6/igt@kms_content_protection@srm.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-apl1/igt@kms_content_protection@srm.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-snb:          [TIMEOUT][77] ([i915#1958]) -> [INCOMPLETE][78] ([i915#82])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8596/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
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

  * Linux: CI_DRM_8596 -> Patchwork_17900

  CI-20190529: 20190529
  CI_DRM_8596: ac91b8351ce380da73dbe8b87d1e4f95aa0c4409 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5695: 53e8c878a6fb5708e63c99403691e8960b86ea9c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17900: dc3969b8204100c0773d5cb805040c0ba47f1ebc @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17900/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
