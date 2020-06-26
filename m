Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8965920B429
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 17:06:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D62E16E220;
	Fri, 26 Jun 2020 15:06:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 550446E1E6;
 Fri, 26 Jun 2020 15:06:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52196A3C0D;
 Fri, 26 Jun 2020 15:06:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Fri, 26 Jun 2020 15:06:32 -0000
Message-ID: <159318399233.22983.8313009094719100447@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200624215723.2316-1-matthew.s.atwood@intel.com>
In-Reply-To: <20200624215723.2316-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_implement_Wa=5F14011508470=3Bgen12?=
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

Series: drm/i915: implement Wa_14011508470;gen12
URL   : https://patchwork.freedesktop.org/series/78799/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8665_full -> Patchwork_18020_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18020_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#1930])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-tglb8/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live@active:
    - shard-tglb:         [PASS][5] -> [DMESG-FAIL][6] ([i915#666])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-tglb7/igt@i915_selftest@live@active.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-tglb5/igt@i915_selftest@live@active.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][7] -> [DMESG-FAIL][8] ([i915#118] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-glk9/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_concurrent@pipe-a:
    - shard-iclb:         [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-iclb7/igt@kms_concurrent@pipe-a.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-iclb7/igt@kms_concurrent@pipe-a.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-kbl:          [PASS][11] -> [DMESG-FAIL][12] ([i915#54] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +12 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-skl1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-skl9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled:
    - shard-kbl:          [PASS][17] -> [DMESG-FAIL][18] ([fdo#108145] / [i915#54] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-kbl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-kbl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          [PASS][23] -> [INCOMPLETE][24] ([i915#2055])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-hsw6/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-hsw4/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#699])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-skl1/igt@kms_flip_tiling@flip-changes-tiling.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-skl2/igt@kms_flip_tiling@flip-changes-tiling.html
    - shard-apl:          [PASS][27] -> [DMESG-FAIL][28] ([i915#1635] / [i915#95])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-apl3/igt@kms_flip_tiling@flip-changes-tiling.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-apl4/igt@kms_flip_tiling@flip-changes-tiling.html
    - shard-kbl:          [PASS][29] -> [DMESG-FAIL][30] ([i915#95])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-kbl1/igt@kms_flip_tiling@flip-changes-tiling.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-kbl1/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#1188])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-position-hole-dpms-pipe-a-planes:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#93] / [i915#95]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-kbl1/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-kbl1/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:
    - shard-tglb:         [PASS][39] -> [DMESG-WARN][40] ([i915#1982])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-tglb8/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-tglb1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html

  * igt@perf@low-oa-exponent-permissions:
    - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#1635] / [i915#95]) +18 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-apl3/igt@perf@low-oa-exponent-permissions.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-apl1/igt@perf@low-oa-exponent-permissions.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_whisper@basic-fds:
    - shard-glk:          [DMESG-WARN][45] ([i915#118] / [i915#95]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-glk3/igt@gem_exec_whisper@basic-fds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-glk9/igt@gem_exec_whisper@basic-fds.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +5 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_invalid_dotclock:
    - shard-snb:          [TIMEOUT][49] ([i915#1958]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-snb5/igt@kms_invalid_dotclock.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-snb2/igt@kms_invalid_dotclock.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][51] ([fdo#108145] / [i915#265]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][55] ([i915#31]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-apl6/igt@kms_setmode@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-apl8/igt@kms_setmode@basic.html

  * igt@perf@blocking-parameterized:
    - shard-tglb:         [FAIL][57] ([i915#1542]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-tglb1/igt@perf@blocking-parameterized.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-tglb3/igt@perf@blocking-parameterized.html

  * igt@syncobj_wait@multi-wait-all-signaled:
    - shard-apl:          [DMESG-WARN][59] ([i915#1635] / [i915#95]) -> [PASS][60] +17 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-apl7/igt@syncobj_wait@multi-wait-all-signaled.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-apl8/igt@syncobj_wait@multi-wait-all-signaled.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][61] ([i915#1958]) -> [FAIL][62] ([i915#1930])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-apl:          [INCOMPLETE][63] ([i915#1635] / [i915#1958]) -> [TIMEOUT][64] ([i915#1635] / [i915#1958])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-apl1/igt@gem_exec_reloc@basic-concurrent16.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-apl4/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - shard-snb:          [WARN][65] ([i915#2036]) -> [WARN][66] ([i915#2021])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-snb2/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-snb5/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][67] ([i915#468]) -> [FAIL][68] ([i915#454])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-snb:          [TIMEOUT][69] ([i915#1958]) -> [SKIP][70] ([fdo#109271]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-snb5/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-apl:          [SKIP][71] ([fdo#109271]) -> [SKIP][72] ([fdo#109271] / [i915#1635]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-apl3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-apl4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][74] ([fdo#108145] / [i915#1982])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - shard-apl:          [SKIP][75] ([fdo#109271] / [i915#1635]) -> [SKIP][76] ([fdo#109271]) +7 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-apl7/igt@perf@gen12-unprivileged-single-ctx-counters.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/shard-apl8/igt@perf@gen12-unprivileged-single-ctx-counters.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8665 -> Patchwork_18020

  CI-20190529: 20190529
  CI_DRM_8665: 2cb786fa6506e20b5cb2a10decda11454111e026 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5717: 725bf2dae51f0087eaa64f1931a2ef9d22f070dd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18020: 2ac53d393597ee152a2392db4e6f1f47bd76bc78 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18020/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
