Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF33E1F665F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 13:15:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DA306E8F6;
	Thu, 11 Jun 2020 11:15:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A8006E8F4;
 Thu, 11 Jun 2020 11:15:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 43E03A47E8;
 Thu, 11 Jun 2020 11:15:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Date: Thu, 11 Jun 2020 11:15:38 -0000
Message-ID: <159187413826.22716.11093398519895740643@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200608174654.1400710-1-rodrigo.vivi@intel.com>
In-Reply-To: <20200608174654.1400710-1-rodrigo.vivi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Include_asm_sources_for_=7Bivb=2C_hsw=7D=5Fclear=5Fker?=
 =?utf-8?b?bmVsLmMgKHJldjIp?=
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

Series: drm/i915: Include asm sources for {ivb, hsw}_clear_kernel.c (rev2)
URL   : https://patchwork.freedesktop.org/series/78126/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8611_full -> Patchwork_17924_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17924_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17924_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17924_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb1/igt@gem_exec_endless@dispatch@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-iclb7/igt@gem_exec_endless@dispatch@rcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17924_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@rcs0:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#1528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl3/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-apl4/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl3/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-kbl4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-glk9/igt@gem_exec_whisper@basic-fds-priority.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-glk1/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#198])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl8/igt@i915_pm_dc@dc5-psr.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-skl2/igt@i915_pm_dc@dc5-psr.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-apl3/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#300])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#93] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl3/igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-kbl4/igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#72])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-iclb:         [PASS][21] -> [DMESG-WARN][22] ([i915#128])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb2/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-iclb4/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-varying-size:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +7 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl1/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-skl2/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#95]) +25 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf@polling:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#1542])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl1/igt@perf@polling.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-skl2/igt@perf@polling.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_exec_balancer@sliced:
    - shard-tglb:         [TIMEOUT][33] ([i915#1936]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-tglb5/igt@gem_exec_balancer@sliced.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-tglb8/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_reloc@basic-wc-cpu-active:
    - shard-apl:          [DMESG-WARN][35] ([i915#95]) -> [PASS][36] +18 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl4/igt@gem_exec_reloc@basic-wc-cpu-active.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-apl8/igt@gem_exec_reloc@basic-wc-cpu-active.html

  * igt@gem_exec_schedule@implicit-read-write@rcs0:
    - shard-snb:          [INCOMPLETE][37] ([i915#82]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-snb2/igt@gem_exec_schedule@implicit-read-write@rcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-snb2/igt@gem_exec_schedule@implicit-read-write@rcs0.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [FAIL][39] ([fdo#103375]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl7/igt@i915_suspend@debugfs-reader.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-kbl3/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][41] ([i915#118] / [i915#95]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-glk5/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:
    - shard-skl:          [FAIL][43] ([i915#54]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:
    - shard-kbl:          [DMESG-WARN][45] ([i915#93] / [i915#95]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl3/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-kbl4/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html

  * igt@kms_cursor_legacy@pipe-b-torture-move:
    - shard-tglb:         [DMESG-WARN][47] ([i915#128]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-tglb2/igt@kms_cursor_legacy@pipe-b-torture-move.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-tglb2/igt@kms_cursor_legacy@pipe-b-torture-move.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:
    - shard-skl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +12 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html

  * igt@kms_flip@busy-flip@b-edp1:
    - shard-skl:          [FAIL][51] ([i915#275]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl5/igt@kms_flip@busy-flip@b-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-skl3/igt@kms_flip@busy-flip@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-iclb:         [FAIL][53] ([i915#79]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-iclb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-dp1:
    - shard-kbl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl4/igt@kms_flip@plain-flip-ts-check@a-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-kbl2/igt@kms_flip@plain-flip-ts-check@a-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [INCOMPLETE][59] ([i915#155]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-glk:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-glk8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-glk5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][63] ([fdo#108145] / [i915#265]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][65] ([fdo#109642] / [fdo#111068]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb8/igt@kms_psr2_su@page_flip.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][67] ([i915#173]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb1/igt@kms_psr@no_drrs.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-iclb7/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb4/igt@kms_psr@psr2_suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [DMESG-WARN][71] ([i915#1982]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb5/igt@perf_pmu@module-unload.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-iclb5/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@other-init-3:
    - shard-tglb:         [DMESG-WARN][73] ([i915#402]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-tglb6/igt@perf_pmu@other-init-3.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-tglb1/igt@perf_pmu@other-init-3.html

  * igt@syncobj_wait@single-wait-all-for-submit-signaled:
    - shard-tglb:         [TIMEOUT][75] -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-tglb5/igt@syncobj_wait@single-wait-all-for-submit-signaled.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-tglb8/igt@syncobj_wait@single-wait-all-for-submit-signaled.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-apl:          [INCOMPLETE][77] ([i915#1635] / [i915#1958]) -> [TIMEOUT][78] ([i915#1635])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl7/igt@gem_exec_reloc@basic-concurrent16.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-apl2/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-glk:          [TIMEOUT][79] ([i915#1958]) -> [INCOMPLETE][80] ([i915#1958] / [i915#58] / [k.org#198133])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-glk5/igt@gem_exec_reloc@basic-concurrent16.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-glk7/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][81] ([i915#1515]) -> [WARN][82] ([i915#1515])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][83] ([i915#1319]) -> [TIMEOUT][84] ([i915#1319] / [i915#1635])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl1/igt@kms_content_protection@atomic-dpms.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-apl3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][85] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][86] ([i915#1319] / [i915#1635])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl6/igt@kms_content_protection@legacy.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-apl6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][87] ([i915#1319] / [i915#1958]) -> [TIMEOUT][88] ([i915#1319]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl4/igt@kms_content_protection@srm.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-kbl6/igt@kms_content_protection@srm.html
    - shard-apl:          [DMESG-FAIL][89] ([fdo#110321] / [i915#95]) -> [TIMEOUT][90] ([i915#1319] / [i915#1635])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl4/igt@kms_content_protection@srm.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-apl3/igt@kms_content_protection@srm.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-apl:          [DMESG-FAIL][91] ([i915#54] / [i915#95]) -> [DMESG-WARN][92] ([i915#95])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl1/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-apl3/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          [FAIL][93] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][94] ([fdo#108145] / [i915#95])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1936]: https://gitlab.freedesktop.org/drm/intel/issues/1936
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#275]: https://gitlab.freedesktop.org/drm/intel/issues/275
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
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

  * Linux: CI_DRM_8611 -> Patchwork_17924

  CI-20190529: 20190529
  CI_DRM_8611: b87354483fa40fef86da19ade9bfe9349f0cf6d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5702: d16ad07e7f2a028e14d61f570931c87fa5ce404c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17924: fbdbc3448e1c3c404e07c2aa64e972f31fad7652 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17924/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
