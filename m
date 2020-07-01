Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8F1210FF6
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 18:01:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BB0B6E947;
	Wed,  1 Jul 2020 16:01:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8932F6E946;
 Wed,  1 Jul 2020 16:01:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82F4DA47EB;
 Wed,  1 Jul 2020 16:01:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Jul 2020 16:01:02 -0000
Message-ID: <159361926253.16667.2524483749757914270@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200701084439.17025-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200701084439.17025-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Move_obj-=3Elut=5Flist_under_its_own_lock?=
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

Series: drm/i915/gem: Move obj->lut_list under its own lock
URL   : https://patchwork.freedesktop.org/series/78988/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8684_full -> Patchwork_18055_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18055_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-tglb2/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-tglb7/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@fences-dpms:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#93] / [i915#95]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl2/igt@i915_pm_rpm@fences-dpms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-kbl6/igt@i915_pm_rpm@fences-dpms.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1635] / [i915#95]) +16 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl8/igt@i915_pm_rpm@modeset-non-lpsp.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-apl6/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_selftest@live@blt:
    - shard-snb:          [PASS][7] -> [DMESG-FAIL][8] ([i915#1669])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-snb5/igt@i915_selftest@live@blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-snb5/igt@i915_selftest@live@blt.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +16 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl5/igt@kms_color@pipe-b-ctm-negative.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-skl9/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-rapid-movement:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#118] / [i915#95]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-glk4/igt@kms_cursor_crc@pipe-a-cursor-128x128-rapid-movement.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-glk6/igt@kms_cursor_crc@pipe-a-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-iclb4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-iclb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-hsw:          [PASS][19] -> [INCOMPLETE][20] ([i915#2055])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-hsw7/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl2/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-kbl4/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt:
    - shard-iclb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-tglb:         [PASS][25] -> [SKIP][26] ([i915#668]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-tglb8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-tglb5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1188])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl4/igt@kms_hdr@bpc-switch.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_prime@basic-crc@second-to-first:
    - shard-kbl:          [PASS][31] -> [DMESG-FAIL][32] ([i915#95])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl4/igt@kms_prime@basic-crc@second-to-first.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-kbl6/igt@kms_prime@basic-crc@second-to-first.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][35] -> [FAIL][36] ([i915#31])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl2/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-kbl4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +8 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-snb:          [TIMEOUT][41] ([i915#1958] / [i915#2119]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-snb6/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-snb2/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [INCOMPLETE][43] ([i915#69]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl8/igt@i915_pm_backlight@fade_with_suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-skl1/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-hsw6/igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-hsw7/igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][47] ([i915#46]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][49] ([i915#2055]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-hsw4/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-hsw2/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt:
    - shard-iclb:         [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-tglb:         [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-tglb6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][55] ([i915#1188]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-iclb3/igt@kms_psr@psr2_cursor_render.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-b-query-idle:
    - shard-skl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +7 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl1/igt@kms_vblank@pipe-b-query-idle.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-skl4/igt@kms_vblank@pipe-b-query-idle.html

  * igt@kms_vblank@pipe-b-ts-continuation-modeset:
    - shard-kbl:          [DMESG-WARN][63] ([i915#93] / [i915#95]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl2/igt@kms_vblank@pipe-b-ts-continuation-modeset.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-modeset.html

  * igt@kms_vblank@pipe-c-wait-idle:
    - shard-kbl:          [DMESG-WARN][65] ([i915#1982]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl6/igt@kms_vblank@pipe-c-wait-idle.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-kbl3/igt@kms_vblank@pipe-c-wait-idle.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][67] ([i915#1542]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-iclb8/igt@perf@blocking-parameterized.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-iclb1/igt@perf@blocking-parameterized.html

  * igt@perf@invalid-oa-metric-set-id:
    - shard-apl:          [DMESG-WARN][69] ([i915#1635] / [i915#95]) -> [PASS][70] +13 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl3/igt@perf@invalid-oa-metric-set-id.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-apl2/igt@perf@invalid-oa-metric-set-id.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][71] ([i915#1958] / [i915#2119]) -> [FAIL][72] ([i915#1930])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-glk:          [TIMEOUT][73] ([i915#1958] / [i915#2119]) -> [INCOMPLETE][74] ([i915#1958] / [i915#58] / [k.org#198133])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-glk5/igt@gem_exec_reloc@basic-concurrent16.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-glk6/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - shard-snb:          [WARN][75] ([i915#2036]) -> [WARN][76] ([i915#2021])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-snb5/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-snb1/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
    - shard-apl:          [SKIP][77] ([fdo#109271] / [i915#1635]) -> [SKIP][78] ([fdo#109271]) +5 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-apl8/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-snb:          [TIMEOUT][79] ([i915#1958] / [i915#2119]) -> [SKIP][80] ([fdo#109271]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-snb6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack:
    - shard-tglb:         [DMESG-WARN][81] ([i915#1982]) -> [SKIP][82] ([i915#668])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff:
    - shard-apl:          [SKIP][83] ([fdo#109271]) -> [SKIP][84] ([fdo#109271] / [i915#1635]) +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-apl3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][85] ([fdo#108145] / [i915#1982]) -> [FAIL][86] ([fdo#108145] / [i915#265])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
    - shard-kbl:          [DMESG-FAIL][87] ([fdo#108145] / [i915#95]) -> [DMESG-FAIL][88] ([fdo#108145] / [i915#1982] / [i915#95])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
    - shard-apl:          [DMESG-FAIL][89] ([fdo#108145] / [i915#1635] / [i915#95]) -> [DMESG-FAIL][90] ([fdo#108145] / [i915#1635] / [i915#1982] / [i915#95])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][91], [FAIL][92], [FAIL][93]) ([i915#1784]) -> [FAIL][94] ([i915#1436] / [i915#1784])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl2/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl3/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-kbl3/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-kbl1/igt@runner@aborted.html
    - shard-apl:          ([FAIL][95], [FAIL][96], [FAIL][97]) ([i915#1610] / [i915#1635]) -> [FAIL][98] ([i915#1635])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl6/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl7/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8684/shard-apl2/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/shard-apl3/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1669]: https://gitlab.freedesktop.org/drm/intel/issues/1669
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8684 -> Patchwork_18055

  CI-20190529: 20190529
  CI_DRM_8684: 68dfde01d77a76e98108fd0d00325c9340e475d9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5718: af1ef32bfae90bcdbaf1b5d84c61ff4e04368505 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18055: a4e38133ec25b9067178ffe98d2d856599290a62 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18055/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
