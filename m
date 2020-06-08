Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C851F1FF4
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 21:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A037A6E1CD;
	Mon,  8 Jun 2020 19:31:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6C7416E1CD;
 Mon,  8 Jun 2020 19:31:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6562EA47DF;
 Mon,  8 Jun 2020 19:31:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Date: Mon, 08 Jun 2020 19:31:10 -0000
Message-ID: <159164467038.14461.17451902862367673388@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200608174654.1400710-1-rodrigo.vivi@intel.com>
In-Reply-To: <20200608174654.1400710-1-rodrigo.vivi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Include_asm_sources_for_=7Bivb=2C_hsw=7D=5Fclear=5Fker?=
 =?utf-8?q?nel=2Ec?=
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

Series: drm/i915: Include asm sources for {ivb, hsw}_clear_kernel.c
URL   : https://patchwork.freedesktop.org/series/78126/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8601_full -> Patchwork_17910_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17910_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@rcs0:
    - shard-apl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl8/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-apl6/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html

  * igt@gem_exec_create@forked:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk5/igt@gem_exec_create@forked.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-glk8/igt@gem_exec_create@forked.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][5] -> [FAIL][6] ([i915#454])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl3/igt@i915_suspend@sysfs-reader.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl3/igt@kms_color@pipe-c-ctm-0-25.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-skl5/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_color@pipe-c-ctm-blue-to-red:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#93] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl6/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-kbl7/igt@kms_color@pipe-c-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-hsw:          [PASS][13] -> [INCOMPLETE][14] ([i915#61])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-hsw8/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-hsw8/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#95]) +11 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_rmfb@rmfb-ioctl:
    - shard-snb:          [PASS][21] -> [SKIP][22] ([fdo#109271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-snb1/igt@kms_rmfb@rmfb-ioctl.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-snb2/igt@kms_rmfb@rmfb-ioctl.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][23] ([i915#1930]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk6/igt@gem_exec_reloc@basic-concurrent0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-glk6/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [DMESG-WARN][25] ([i915#118] / [i915#95]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-glk5/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-skl:          [CRASH][27] -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl2/igt@gem_mmap_gtt@fault-concurrent.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-skl5/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][29] ([i915#118] / [i915#95]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-glk7/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - shard-skl:          [FAIL][31] ([i915#54]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * {igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][35] ([i915#1928]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk5/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-glk9/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1}:
    - shard-kbl:          [FAIL][37] ([i915#79]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * {igt@kms_flip@flip-vs-suspend@a-edp1}:
    - shard-skl:          [INCOMPLETE][39] ([i915#198]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl4/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip_tiling@flip-y-tiled:
    - shard-skl:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42] +9 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl9/igt@kms_flip_tiling@flip-y-tiled.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-skl4/igt@kms_flip_tiling@flip-y-tiled.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-iclb:         [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb3/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-iclb8/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][45] ([i915#1188]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_lease@page_flip_implicit_plane:
    - shard-snb:          [TIMEOUT][47] ([i915#1958]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-snb5/igt@kms_lease@page_flip_implicit_plane.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-snb2/igt@kms_lease@page_flip_implicit_plane.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid:
    - shard-apl:          [DMESG-WARN][49] ([i915#95]) -> [PASS][50] +16 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][51] ([fdo#108145] / [i915#265]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [INCOMPLETE][55] ([i915#155]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][57] ([i915#1542]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb3/igt@perf@blocking-parameterized.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-iclb8/igt@perf@blocking-parameterized.html

  * igt@syncobj_wait@multi-wait-all-for-submit-signaled:
    - shard-tglb:         [DMESG-WARN][59] ([i915#402]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-tglb3/igt@syncobj_wait@multi-wait-all-for-submit-signaled.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-tglb8/igt@syncobj_wait@multi-wait-all-for-submit-signaled.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][61] ([i915#588]) -> [SKIP][62] ([i915#658])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_color@pipe-a-degamma:
    - shard-tglb:         [FAIL][63] ([i915#1149] / [i915#1897]) -> [DMESG-FAIL][64] ([i915#1149] / [i915#402])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-tglb7/igt@kms_color@pipe-a-degamma.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-tglb8/igt@kms_color@pipe-a-degamma.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][65] ([i915#1319] / [i915#1635]) -> [DMESG-FAIL][66] ([fdo#110321] / [i915#95])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl4/igt@kms_content_protection@atomic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-apl7/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          [TIMEOUT][67] ([i915#1319]) -> [TIMEOUT][68] ([i915#1319] / [i915#1958])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl1/igt@kms_content_protection@legacy.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-kbl4/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][69] ([i915#1319] / [i915#1635]) -> [TIMEOUT][70] ([i915#1319])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl3/igt@kms_content_protection@srm.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-apl8/igt@kms_content_protection@srm.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-skl:          [FAIL][71] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][72] ([fdo#108145] / [i915#1982])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_psr@suspend:
    - shard-snb:          [TIMEOUT][73] ([i915#1958]) -> [SKIP][74] ([fdo#109271]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-snb5/igt@kms_psr@suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/shard-snb2/igt@kms_psr@suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1897]: https://gitlab.freedesktop.org/drm/intel/issues/1897
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8601 -> Patchwork_17910

  CI-20190529: 20190529
  CI_DRM_8601: c801ab3a923b2436d765bd7a97888715f68451cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5699: 201da47cb57b8fadd9bc45be16b82617b32a2c01 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17910: 62de4aea38dc75f707a33f6e1efc4d2a07498d33 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17910/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
