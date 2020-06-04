Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CA61EDFE9
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 10:40:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F18C6E2B6;
	Thu,  4 Jun 2020 08:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DA39D6E2B6;
 Thu,  4 Jun 2020 08:40:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D39D6A47E0;
 Thu,  4 Jun 2020 08:40:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: clinton.a.taylor@intel.com
Date: Thu, 04 Jun 2020 08:40:51 -0000
Message-ID: <159126005186.14552.950506138232872445@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200603221150.14745-1-clinton.a.taylor@intel.com>
In-Reply-To: <20200603221150.14745-1-clinton.a.taylor@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Implement_WA=5F16011163337_=28rev2=29?=
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

Series: drm/i915/tgl: Implement WA_16011163337 (rev2)
URL   : https://patchwork.freedesktop.org/series/77933/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8579_full -> Patchwork_17860_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17860_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb3/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-tglb7/igt@i915_module_load@reload.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][3] -> [TIMEOUT][4] ([i915#1958]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@i915_suspend@sysfs-reader.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-skl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-skl10/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-size-change:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-size-change.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-size-change.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [PASS][11] -> [DMESG-FAIL][12] ([i915#1925] / [i915#1926])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk9/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-glk7/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-iclb:         [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#95]) +18 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk4/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-glk5/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-tglb7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#53])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl2/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-skl8/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#648] / [i915#69])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#198])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl1/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-skl2/igt@kms_plane_cursor@pipe-a-overlay-size-256.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#173])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb4/igt@kms_psr@no_drrs.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-kbl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf@polling:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@perf@polling.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-apl7/igt@perf@polling.html

  * igt@syncobj_wait@single-wait-all-signaled:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#93] / [i915#95]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl7/igt@syncobj_wait@single-wait-all-signaled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-kbl2/igt@syncobj_wait@single-wait-all-signaled.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@bcs0}:
    - shard-kbl:          [FAIL][35] ([fdo#103375]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * {igt@gem_ctx_isolation@preservation-s3@vcs0}:
    - shard-kbl:          [INCOMPLETE][37] ([i915#1780]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][39] ([i915#1930]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-glk5/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-apl:          [FAIL][41] ([i915#1930]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@gem_exec_reloc@basic-concurrent0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-apl7/igt@gem_exec_reloc@basic-concurrent0.html

  * {igt@gem_exec_reloc@basic-concurrent16}:
    - shard-snb:          [FAIL][43] ([i915#1930]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html

  * {igt@gem_exec_schedule@implicit-write-read@rcs0}:
    - shard-snb:          [INCOMPLETE][45] ([i915#82]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-snb5/igt@gem_exec_schedule@implicit-write-read@rcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-snb5/igt@gem_exec_schedule@implicit-write-read@rcs0.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - shard-apl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-apl7/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-tglb:         [DMESG-WARN][51] ([i915#402]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][53] ([i915#72]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-tglb:         [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][57] ([i915#93] / [i915#95]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl1/igt@kms_hdr@bpc-switch.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][61] ([i915#69]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane@plane-panning-top-left-pipe-c-planes:
    - shard-skl:          [DMESG-WARN][63] ([i915#1982]) -> [PASS][64] +10 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl9/igt@kms_plane@plane-panning-top-left-pipe-c-planes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-skl7/igt@kms_plane@plane-panning-top-left-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][65] ([fdo#108145] / [i915#265]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][67] ([i915#1982]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +4 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-tglb:         [FAIL][71] ([i915#1542]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb7/igt@perf@blocking-parameterized.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-tglb6/igt@perf@blocking-parameterized.html

  * igt@vgem_basic@dmabuf-mmap:
    - shard-apl:          [DMESG-WARN][73] ([i915#95]) -> [PASS][74] +13 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@vgem_basic@dmabuf-mmap.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-apl7/igt@vgem_basic@dmabuf-mmap.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][75] ([i915#454]) -> [SKIP][76] ([i915#468])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][77] ([i915#1319]) -> [FAIL][78] ([fdo#110321] / [fdo#110336])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl1/igt@kms_content_protection@atomic-dpms.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-apl2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][79] ([i915#1319] / [i915#1635]) -> [TIMEOUT][80] ([i915#1319])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@kms_content_protection@lic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:
    - shard-skl:          [SKIP][81] ([fdo#109271]) -> [TIMEOUT][82] ([i915#1958])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-skl4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-apl:          [DMESG-FAIL][83] ([i915#49] / [i915#95]) -> [FAIL][84] ([i915#49])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_vblank@pipe-d-query-idle-hang:
    - shard-skl:          [SKIP][85] ([fdo#109271]) -> [TIMEOUT][86] ([i915#1640] / [i915#1958])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@kms_vblank@pipe-d-query-idle-hang.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/shard-skl4/igt@kms_vblank@pipe-d-query-idle-hang.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1640]: https://gitlab.freedesktop.org/drm/intel/issues/1640
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#1780]: https://gitlab.freedesktop.org/drm/intel/issues/1780
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
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

  * Linux: CI_DRM_8579 -> Patchwork_17860

  CI-20190529: 20190529
  CI_DRM_8579: 289eb12c88c49a4ac8d325dc457d8878c7f5bdc0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5694: a9b6c4c74bfddf7d3d2da3be08804fe315945cea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17860: db356ac08f68ff4efb08d69e177faeb2b550c252 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17860/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
