Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEE820B1C1
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 14:53:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 128FE6EC8D;
	Fri, 26 Jun 2020 12:53:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B84E06EC8C;
 Fri, 26 Jun 2020 12:53:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B17DDA47DF;
 Fri, 26 Jun 2020 12:53:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 26 Jun 2020 12:53:52 -0000
Message-ID: <159317603269.22984.17769383283388355129@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200624191417.16735-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200624191417.16735-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgbW06?=
 =?utf-8?q?_Skip_opportunistic_reclaim_for_dma_pinned_pages?=
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

Series: mm: Skip opportunistic reclaim for dma pinned pages
URL   : https://patchwork.freedesktop.org/series/78795/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8665_full -> Patchwork_18019_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18019_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_read@empty-nonblock:
    - shard-snb:          [PASS][1] -> [SKIP][2] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-snb2/igt@drm_read@empty-nonblock.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-snb2/igt@drm_read@empty-nonblock.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#1930])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8] ([i915#402]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-tglb1/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-tglb3/igt@i915_module_load@reload.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][9] -> [DMESG-FAIL][10] ([i915#118] / [i915#95]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-glk4/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-kbl:          [PASS][11] -> [DMESG-FAIL][12] ([i915#54] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-glk7/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-glk8/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - shard-hsw:          [PASS][15] -> [INCOMPLETE][16] ([CI#80])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +13 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled:
    - shard-kbl:          [PASS][19] -> [DMESG-FAIL][20] ([fdo#108145] / [i915#54] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-kbl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check@b-dp1:
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#1928])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-kbl2/igt@kms_flip@plain-flip-ts-check@b-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-kbl3/igt@kms_flip@plain-flip-ts-check@b-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-apl:          [PASS][25] -> [DMESG-FAIL][26] ([i915#1635] / [i915#95])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-apl3/igt@kms_flip_tiling@flip-changes-tiling.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-apl8/igt@kms_flip_tiling@flip-changes-tiling.html
    - shard-kbl:          [PASS][27] -> [DMESG-FAIL][28] ([i915#95])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-kbl1/igt@kms_flip_tiling@flip-changes-tiling.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-kbl7/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
    - shard-iclb:         [PASS][29] -> [DMESG-WARN][30] ([i915#1982]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#49]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-glk7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-glk8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html

  * igt@kms_plane@plane-position-hole-dpms-pipe-a-planes:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#93] / [i915#95]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-kbl1/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-kbl7/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:
    - shard-tglb:         [PASS][39] -> [DMESG-WARN][40] ([i915#1982]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-tglb8/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-tglb5/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm:
    - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#1635] / [i915#95]) +13 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][43] -> [FAIL][44] ([i915#1542])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-iclb4/igt@perf@blocking-parameterized.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-iclb2/igt@perf@blocking-parameterized.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_whisper@basic-fds:
    - shard-glk:          [DMESG-WARN][47] ([i915#118] / [i915#95]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-glk3/igt@gem_exec_whisper@basic-fds.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-glk7/igt@gem_exec_whisper@basic-fds.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][49] ([i915#1436] / [i915#716]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-skl8/igt@gen9_exec_parse@allowed-single.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-skl5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-kbl:          [INCOMPLETE][51] ([i915#151] / [i915#155]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-kbl3/igt@i915_pm_rpm@system-suspend-execbuf.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-kbl7/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-skl2/igt@kms_color@pipe-c-ctm-0-5.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-skl2/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-apl:          [DMESG-WARN][55] ([i915#1635] / [i915#95]) -> [PASS][56] +9 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][59] ([fdo#109642] / [fdo#111068]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-iclb4/igt@kms_psr2_su@page_flip.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf@blocking-parameterized:
    - shard-tglb:         [FAIL][63] ([i915#1542]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-tglb1/igt@perf@blocking-parameterized.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-tglb8/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][65] ([i915#468]) -> [FAIL][66] ([i915#454])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - shard-apl:          [SKIP][67] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][68] ([fdo#109271] / [fdo#111827])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-apl1/igt@kms_chamelium@hdmi-hpd-fast.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-apl3/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen:
    - shard-apl:          [SKIP][69] ([fdo#109271]) -> [SKIP][70] ([fdo#109271] / [i915#1635]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          [FAIL][71] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][72] ([fdo#108145] / [i915#1982])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-y:
    - shard-apl:          [SKIP][73] ([fdo#109271] / [i915#1635]) -> [SKIP][74] ([fdo#109271]) +4 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/shard-apl1/igt@kms_plane_multiple@atomic-pipe-d-tiling-y.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/shard-apl3/igt@kms_plane_multiple@atomic-pipe-d-tiling-y.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8665 -> Patchwork_18019

  CI-20190529: 20190529
  CI_DRM_8665: 2cb786fa6506e20b5cb2a10decda11454111e026 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5717: 725bf2dae51f0087eaa64f1931a2ef9d22f070dd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18019: 92687c80eb20bfd0f22e0ff64331fbfb1aa699fc @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18019/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
