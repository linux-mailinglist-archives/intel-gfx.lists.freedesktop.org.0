Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9180121DC58
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 18:32:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF9076E517;
	Mon, 13 Jul 2020 16:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8B2CA6E513;
 Mon, 13 Jul 2020 16:32:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 845B0A47E0;
 Mon, 13 Jul 2020 16:32:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Colin King" <colin.king@canonical.com>
Date: Mon, 13 Jul 2020 16:32:07 -0000
Message-ID: <159465792753.16739.7680818446840619193@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200713142551.423649-1-colin.king@canonical.com>
In-Reply-To: <20200713142551.423649-1-colin.king@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftest=3A_fix_an_error_return_path_where_err_is_not_bei?=
 =?utf-8?q?ng_set?=
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

Series: drm/i915/selftest: fix an error return path where err is not being set
URL   : https://patchwork.freedesktop.org/series/79405/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8737_full -> Patchwork_18146_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18146_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18146_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18146_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
    - shard-hsw:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-hsw2/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html

  
Known issues
------------

  Here are the changes found in Patchwork_18146_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [PASS][2] -> [DMESG-WARN][3] ([i915#180]) +5 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [PASS][4] -> [DMESG-WARN][5] ([i915#118] / [i915#95])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-glk5/igt@gem_exec_whisper@basic-queues-forked.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-glk7/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][6] -> [INCOMPLETE][7] ([i915#155])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][8] -> [DMESG-WARN][9] ([i915#1436] / [i915#716])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl6/igt@gen9_exec_parse@allowed-all.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-kbl2/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-apl:          [PASS][10] -> [DMESG-WARN][11] ([i915#1635] / [i915#1982])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-apl6/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-apl7/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-skl:          [PASS][12] -> [DMESG-WARN][13] ([i915#1982]) +11 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl7/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-skl6/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - shard-kbl:          [PASS][14] -> [DMESG-WARN][15] ([i915#93] / [i915#95])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-dpms.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
    - shard-kbl:          [PASS][16] -> [DMESG-WARN][17] ([i915#1982])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl3/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-kbl4/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size:
    - shard-tglb:         [PASS][18] -> [DMESG-WARN][19] ([i915#1982])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-tglb2/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-tglb5/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [PASS][20] -> [INCOMPLETE][21] ([i915#198])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#1188]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][24] -> [SKIP][25] ([fdo#109642] / [fdo#111068])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-iclb3/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#109441]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][28] -> [FAIL][29] ([i915#31])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl1/igt@kms_setmode@basic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-kbl4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm:
    - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#1635] / [i915#95]) +21 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][32] -> [FAIL][33] ([i915#1820])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl4/igt@perf_pmu@semaphore-busy@rcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-kbl3/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [FAIL][34] ([i915#1930]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-glk9/igt@gem_exec_reloc@basic-concurrent0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [DMESG-WARN][36] ([i915#118] / [i915#95]) -> [PASS][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-glk2/igt@gem_exec_whisper@basic-queues-forked-all.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
    - shard-tglb:         [DMESG-WARN][38] ([i915#402]) -> [PASS][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-tglb8/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-tglb8/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
    - shard-skl:          [DMESG-WARN][40] ([i915#1982]) -> [PASS][41] +8 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl10/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-skl9/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][42] ([i915#69]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl2/igt@kms_fbcon_fbt@psr-suspend.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
    - shard-glk:          [FAIL][44] ([i915#79]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [FAIL][46] ([i915#79]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][48] ([i915#2055]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-hsw6/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-hsw2/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_flip_tiling@flip-to-y-tiled:
    - shard-kbl:          [DMESG-WARN][50] ([i915#1982]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl4/igt@kms_flip_tiling@flip-to-y-tiled.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-kbl1/igt@kms_flip_tiling@flip-to-y-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt:
    - shard-iclb:         [DMESG-WARN][52] ([i915#1982]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [SKIP][54] ([i915#668]) -> [PASS][55] +3 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-farfromfence:
    - shard-tglb:         [DMESG-WARN][56] ([i915#1982]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-tglb1/igt@kms_frontbuffer_tracking@psr-farfromfence.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-tglb5/igt@kms_frontbuffer_tracking@psr-farfromfence.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [DMESG-WARN][58] ([i915#1635] / [i915#95]) -> [PASS][59] +11 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-apl4/igt@kms_hdr@bpc-switch-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-apl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][60] ([fdo#108145] / [i915#265]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][62] ([fdo#109441]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf@polling-parameterized:
    - shard-kbl:          [FAIL][64] ([i915#1542]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl2/igt@perf@polling-parameterized.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-kbl2/igt@perf@polling-parameterized.html

  * igt@perf_pmu@enable-race@rcs0:
    - shard-kbl:          [DMESG-WARN][66] ([i915#93] / [i915#95]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl1/igt@perf_pmu@enable-race@rcs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-kbl3/igt@perf_pmu@enable-race@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [DMESG-FAIL][68] ([i915#1982]) -> [FAIL][69] ([i915#454])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl9/igt@i915_pm_dc@dc6-psr.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-skl1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@linear-16bpp-rotate-180:
    - shard-kbl:          [DMESG-FAIL][70] ([i915#95]) -> [DMESG-WARN][71] ([i915#93] / [i915#95])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl3/igt@kms_big_fb@linear-16bpp-rotate-180.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-kbl6/igt@kms_big_fb@linear-16bpp-rotate-180.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          [TIMEOUT][72] ([i915#1319] / [i915#2119]) -> [TIMEOUT][73] ([i915#1319] / [i915#1958] / [i915#2119])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl7/igt@kms_content_protection@atomic-dpms.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-kbl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][74] ([fdo#110321] / [fdo#110336] / [i915#1635]) -> [DMESG-FAIL][75] ([fdo#110321] / [i915#1635] / [i915#95])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-apl7/igt@kms_content_protection@legacy.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-apl8/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-kbl:          [DMESG-WARN][76] ([i915#93] / [i915#95]) -> [DMESG-FAIL][77] ([i915#54] / [i915#95])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][78] ([i915#93] / [i915#95]) -> [DMESG-WARN][79] ([i915#180] / [i915#93] / [i915#95])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][80] ([fdo#108145] / [i915#1982]) -> [DMESG-WARN][81] ([i915#1982])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][82] ([i915#1436] / [i915#1784] / [i915#2110]) -> ([FAIL][83], [FAIL][84]) ([fdo#109271] / [i915#1436] / [i915#1784] / [i915#2110] / [i915#716])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl7/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-kbl1/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/shard-kbl2/igt@runner@aborted.html

  
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
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (12 -> 11)
------------------------------

  Missing    (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_8737 -> Patchwork_18146

  CI-20190529: 20190529
  CI_DRM_8737: 6d7d28df878566c99344437f03328f11333e508f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5734: 6e5c9915a80d791ea45a3e5d2a3cb7e5dc5f06f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18146: dd621b566138f099653e910f92284b77bcedfcf3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18146/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
