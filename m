Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F9E2110F7
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 18:46:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 276A16E959;
	Wed,  1 Jul 2020 16:46:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7826C6E956;
 Wed,  1 Jul 2020 16:46:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5CA81A00E7;
 Wed,  1 Jul 2020 16:46:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Jul 2020 16:46:05 -0000
Message-ID: <159362196536.16670.15114111419671619528@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200701083936.28723-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200701083936.28723-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_drm/i915/gt=3A_Harden_the_heartbeat_against_a?=
 =?utf-8?q?_stuck_driver_=28rev2=29?=
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

Series: series starting with drm/i915/gt: Harden the heartbeat against a stuck driver (rev2)
URL   : https://patchwork.freedesktop.org/series/78986/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8684_full -> Patchwork_18056_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18056_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18056_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18056_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-random:
    - shard-hsw:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-hsw7/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html

  
Known issues
------------

  Here are the changes found in Patchwork_18056_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][2] -> [DMESG-WARN][3] ([i915#402]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-tglb2/igt@i915_module_load@reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-tglb2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-apl:          [PASS][4] -> [DMESG-WARN][5] ([i915#1635] / [i915#95]) +25 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl8/igt@i915_pm_rpm@modeset-non-lpsp.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-apl6/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_selftest@mock@requests:
    - shard-glk:          [PASS][6] -> [INCOMPLETE][7] ([i915#2110] / [i915#58] / [k.org#198133])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-glk1/igt@i915_selftest@mock@requests.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-glk4/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][8] -> [DMESG-FAIL][9] ([i915#118] / [i915#95])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-glk1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-kbl:          [PASS][10] -> [DMESG-WARN][11] ([i915#93] / [i915#95]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
    - shard-skl:          [PASS][12] -> [DMESG-WARN][13] ([i915#1982]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl6/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-skl7/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][14] -> [FAIL][15] ([i915#46])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@psr-farfromfence:
    - shard-tglb:         [PASS][16] -> [DMESG-WARN][17] ([i915#1982]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-tglb3/igt@kms_frontbuffer_tracking@psr-farfromfence.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-tglb5/igt@kms_frontbuffer_tracking@psr-farfromfence.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#1188])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl4/igt@kms_hdr@bpc-switch.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][20] -> [DMESG-WARN][21] ([i915#180]) +4 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([fdo#108145] / [i915#265]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_prime@basic-crc@second-to-first:
    - shard-kbl:          [PASS][24] -> [DMESG-FAIL][25] ([i915#95])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl4/igt@kms_prime@basic-crc@second-to-first.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-kbl1/igt@kms_prime@basic-crc@second-to-first.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#109441]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][28] -> [FAIL][29] ([i915#31])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl2/igt@kms_setmode@basic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-kbl3/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [FAIL][30] ([i915#1930]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [INCOMPLETE][32] ([i915#69]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl8/igt@i915_pm_backlight@fade_with_suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-skl9/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@kms_atomic_interruptible@legacy-dpms:
    - shard-kbl:          [DMESG-WARN][34] ([i915#93] / [i915#95]) -> [PASS][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl1/igt@kms_atomic_interruptible@legacy-dpms.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-kbl2/igt@kms_atomic_interruptible@legacy-dpms.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][36] ([i915#118] / [i915#95]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-glk9/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [DMESG-WARN][38] ([i915#1982]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-hsw6/igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-hsw6/igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][40] ([i915#46]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][42] ([i915#2055]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-hsw4/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-hsw7/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt:
    - shard-iclb:         [DMESG-WARN][44] ([i915#1982]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-tglb:         [DMESG-WARN][46] ([i915#1982]) -> [PASS][47] +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][48] ([fdo#108145] / [i915#1982]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][50] ([fdo#108145] / [i915#265]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][52] ([fdo#109642] / [fdo#111068]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_vblank@pipe-b-query-idle:
    - shard-skl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55] +8 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl1/igt@kms_vblank@pipe-b-query-idle.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-skl10/igt@kms_vblank@pipe-b-query-idle.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][56] ([i915#180]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-wait-idle:
    - shard-kbl:          [DMESG-WARN][58] ([i915#1982]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl6/igt@kms_vblank@pipe-c-wait-idle.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-kbl2/igt@kms_vblank@pipe-c-wait-idle.html
    - shard-apl:          [DMESG-WARN][60] ([i915#1982]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl1/igt@kms_vblank@pipe-c-wait-idle.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-apl8/igt@kms_vblank@pipe-c-wait-idle.html

  * igt@perf@blocking:
    - shard-glk:          [DMESG-WARN][62] ([i915#118] / [i915#95]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-glk4/igt@perf@blocking.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-glk7/igt@perf@blocking.html

  * igt@perf@invalid-oa-metric-set-id:
    - shard-apl:          [DMESG-WARN][64] ([i915#1635] / [i915#95]) -> [PASS][65] +16 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl3/igt@perf@invalid-oa-metric-set-id.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-apl7/igt@perf@invalid-oa-metric-set-id.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-glk:          [TIMEOUT][66] ([i915#1958] / [i915#2119]) -> [INCOMPLETE][67] ([i915#1958] / [i915#58] / [k.org#198133])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-glk5/igt@gem_exec_reloc@basic-concurrent16.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-glk7/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@kms_color_chamelium@pipe-a-ctm-max:
    - shard-apl:          [SKIP][68] ([fdo#109271] / [fdo#111827]) -> [SKIP][69] ([fdo#109271] / [fdo#111827] / [i915#1635])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-max.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-max.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][70] ([i915#93] / [i915#95]) -> [DMESG-WARN][71] ([i915#180] / [i915#93] / [i915#95])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
    - shard-apl:          [SKIP][72] ([fdo#109271] / [i915#1635]) -> [SKIP][73] ([fdo#109271]) +8 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-apl3/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-apl:          [SKIP][74] ([fdo#109271]) -> [SKIP][75] ([fdo#109271] / [i915#1635]) +6 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl1/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-apl8/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
    - shard-apl:          [DMESG-FAIL][76] ([fdo#108145] / [i915#1635] / [i915#95]) -> [DMESG-FAIL][77] ([fdo#108145] / [i915#1635] / [i915#1982] / [i915#95])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][78], [FAIL][79], [FAIL][80]) ([i915#1784]) -> [FAIL][81] ([i915#1436] / [i915#1784])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl2/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl3/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl3/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][82], [FAIL][83], [FAIL][84]) ([i915#1610] / [i915#1635]) -> [FAIL][85] ([i915#1635])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl6/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl7/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl2/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/shard-apl2/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8684 -> Patchwork_18056

  CI-20190529: 20190529
  CI_DRM_8684: 68dfde01d77a76e98108fd0d00325c9340e475d9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5718: af1ef32bfae90bcdbaf1b5d84c61ff4e04368505 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18056: ef8ecc7428fef36cde5565e29e6efac7005be48c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18056/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
