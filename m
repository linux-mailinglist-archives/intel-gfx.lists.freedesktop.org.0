Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BF22924D1
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 11:45:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 839896E8DF;
	Mon, 19 Oct 2020 09:45:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E55496E8DF;
 Mon, 19 Oct 2020 09:45:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DD027A0019;
 Mon, 19 Oct 2020 09:45:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Mon, 19 Oct 2020 09:45:45 -0000
Message-ID: <160310074589.32025.17726924599044684579@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201019071259.24566-1-anshuman.gupta@intel.com>
In-Reply-To: <20201019071259.24566-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/hdcp=3A_Max_MST_content_streams?=
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
Content-Type: multipart/mixed; boundary="===============0273649037=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0273649037==
Content-Type: multipart/alternative;
 boundary="===============2201029972088949650=="

--===============2201029972088949650==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/hdcp: Max MST content streams
URL   : https://patchwork.freedesktop.org/series/82806/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9161_full -> Patchwork_18724_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18724_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18724_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18724_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_tiled_blits@basic:
    - shard-snb:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-snb7/igt@gem_tiled_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-snb5/igt@gem_tiled_blits@basic.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-vga1-hdmi-a1:
    - shard-hsw:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-hsw4/igt@kms_flip@2x-flip-vs-expired-vblank@ab-vga1-hdmi-a1.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-iclb:         ([FAIL][4], [FAIL][5]) ([i915#2439]) -> [FAIL][6]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-iclb5/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-iclb3/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-iclb8/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_18724_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#198])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl9/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_create@forked:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#118] / [i915#95]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-glk8/igt@gem_exec_create@forked.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-glk4/igt@gem_exec_create@forked.html

  * igt@gem_mmap_gtt@medium-copy-xy:
    - shard-snb:          [PASS][11] -> [INCOMPLETE][12] ([i915#82])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-snb5/igt@gem_mmap_gtt@medium-copy-xy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-snb7/igt@gem_mmap_gtt@medium-copy-xy.html

  * igt@gem_mmap_offset@blt-coherency:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#1635])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-apl3/igt@gem_mmap_offset@blt-coherency.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-apl1/igt@gem_mmap_offset@blt-coherency.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc:
    - shard-hsw:          [PASS][15] -> [FAIL][16] ([i915#1888]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-hsw1/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-hsw1/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html

  * igt@i915_selftest@live@active:
    - shard-skl:          [PASS][17] -> [DMESG-FAIL][18] ([i915#666])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl5/igt@i915_selftest@live@active.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl5/igt@i915_selftest@live@active.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1119])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl1/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl9/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html

  * igt@kms_flip@blocking-wf_vblank@a-edp1:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-tglb8/igt@kms_flip@blocking-wf_vblank@a-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-tglb6/igt@kms_flip@blocking-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#2122])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-dp1:
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html

  * igt@kms_flip@wf_vblank-ts-check@a-dp1:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1982]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-kbl4/igt@kms_flip@wf_vblank-ts-check@a-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-kbl4/igt@kms_flip@wf_vblank-ts-check@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move:
    - shard-snb:          [PASS][31] -> [SKIP][32] ([fdo#109271])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  
#### Possible fixes ####

  * igt@gem_mmap_offset@blt-coherency:
    - shard-glk:          [FAIL][37] ([i915#2328]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-glk5/igt@gem_mmap_offset@blt-coherency.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-glk4/igt@gem_mmap_offset@blt-coherency.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-hsw:          [FAIL][39] ([i915#1888] / [i915#2261]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-hsw6/igt@gem_partial_pwrite_pread@reads-display.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-hsw6/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@gem_sync@basic-all:
    - shard-glk:          [DMESG-WARN][41] ([i915#118] / [i915#95]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-glk8/igt@gem_sync@basic-all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-glk6/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-store-all:
    - shard-iclb:         [INCOMPLETE][43] -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-iclb3/igt@gem_sync@basic-store-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-iclb3/igt@gem_sync@basic-store-all.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wb:
    - shard-hsw:          [FAIL][45] ([i915#1888]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-hsw1/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wb.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-hsw1/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wb.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-skl:          [TIMEOUT][47] ([i915#2424]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl1/igt@gem_userptr_blits@sync-unmap-cycles.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl9/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-apl:          [DMESG-WARN][49] ([i915#1635] / [i915#1982]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-apl2/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-apl2/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
    - shard-skl:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52] +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl5/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl1/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [FAIL][53] ([i915#96]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-tglb:         [FAIL][55] ([i915#2346]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-snb:          [DMESG-WARN][57] ([i915#42]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-snb7/igt@kms_fbcon_fbt@fbc-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-snb5/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][59] ([i915#2055]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-hsw2/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-hsw4/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][61] ([i915#1188]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl5/igt@kms_hdr@bpc-switch.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][63] ([i915#198]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][67] ([i915#1542]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl9/igt@perf@blocking.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl1/igt@perf@blocking.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [DMESG-WARN][69] ([i915#1982]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-tglb3/igt@perf_pmu@module-unload.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-tglb2/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-tglb:         [DMESG-WARN][71] ([i915#1982] / [i915#2411]) -> [DMESG-WARN][72] ([i915#2411])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-tglb6/igt@i915_pm_rpm@modeset-lpsp.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-tglb1/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][73] ([fdo#110321] / [fdo#110336] / [i915#1635]) -> [TIMEOUT][74] ([i915#1319] / [i915#1635])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-apl6/igt@kms_content_protection@atomic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-apl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][75] ([i915#1319] / [i915#1635]) -> [FAIL][76] ([fdo#110321] / [i915#1635])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-apl7/igt@kms_content_protection@srm.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-apl2/igt@kms_content_protection@srm.html

  * igt@runner@aborted:
    - shard-glk:          ([FAIL][77], [FAIL][78]) ([i915#1611] / [i915#1814] / [k.org#202321]) -> [FAIL][79] ([k.org#202321])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-glk8/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-glk6/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-glk9/igt@runner@aborted.html
    - shard-skl:          [FAIL][80] ([i915#1611] / [i915#1814] / [i915#2029]) -> [FAIL][81] ([i915#2029] / [i915#2439])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl2/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2261]: https://gitlab.freedesktop.org/drm/intel/issues/2261
  [i915#2328]: https://gitlab.freedesktop.org/drm/intel/issues/2328
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9161 -> Patchwork_18724

  CI-20190529: 20190529
  CI_DRM_9161: f474d6c53162f26d23510062d99569d3898639b1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5821: 2bf22b1cff7905f7e214c0707941929a09450257 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18724: 60fa4b6886a33d0cb99abeaf6385076e283c0fdd @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/index.html

--===============2201029972088949650==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/hdcp: Max MST content streams</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82806/">https://patchwork.freedesktop.org/series/82806/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9161_full -&gt; Patchwork_18724_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18724_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18724_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18724_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-snb7/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-snb5/igt@gem_tiled_blits@basic.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-hsw4/igt@kms_flip@2x-flip-vs-expired-vblank@ab-vga1-hdmi-a1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>shard-iclb:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-iclb5/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-iclb3/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-iclb8/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18724_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl9/igt@gem_ctx_isolation@preservation-s3@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-glk8/igt@gem_exec_create@forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-glk4/igt@gem_exec_create@forked.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-snb5/igt@gem_mmap_gtt@medium-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-snb7/igt@gem_mmap_gtt@medium-copy-xy.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@blt-coherency:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-apl3/igt@gem_mmap_offset@blt-coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-apl1/igt@gem_mmap_offset@blt-coherency.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-hsw1/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-hsw1/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl5/igt@i915_selftest@live@active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl5/igt@i915_selftest@live@active.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/666">i915#666</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1119">i915#1119</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl1/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl9/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-tglb8/igt@kms_flip@blocking-wf_vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-tglb6/igt@kms_flip@blocking-wf_vblank@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-kbl4/igt@kms_flip@wf_vblank-ts-check@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-kbl4/igt@kms_flip@wf_vblank-ts-check@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_mmap_offset@blt-coherency:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-glk5/igt@gem_mmap_offset@blt-coherency.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2328">i915#2328</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-glk4/igt@gem_mmap_offset@blt-coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-display:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-hsw6/igt@gem_partial_pwrite_pread@reads-display.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2261">i915#2261</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-hsw6/igt@gem_partial_pwrite_pread@reads-display.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-glk8/igt@gem_sync@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-glk6/igt@gem_sync@basic-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-store-all:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-iclb3/igt@gem_sync@basic-store-all.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-iclb3/igt@gem_sync@basic-store-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wb:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-hsw1/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wb.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-hsw1/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wb.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl1/igt@gem_userptr_blits@sync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2424">i915#2424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl9/igt@gem_userptr_blits@sync-unmap-cycles.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-apl2/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-apl2/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl5/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl1/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/96">i915#96</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-snb7/igt@kms_fbcon_fbt@fbc-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/42">i915#42</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-snb5/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-hsw2/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2055">i915#2055</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-hsw4/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl5/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl1/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-iclb4/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl9/igt@perf@blocking.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl1/igt@perf@blocking.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-tglb3/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-tglb2/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-tglb6/igt@i915_pm_rpm@modeset-lpsp.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-tglb1/igt@i915_pm_rpm@modeset-lpsp.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-apl6/igt@kms_content_protection@atomic.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110321">fdo#110321</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=110336">fdo#110336</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-apl6/igt@kms_content_protection@atomic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-apl7/igt@kms_content_protection@srm.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-apl2/igt@kms_content_protection@srm.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110321">fdo#110321</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-glk8/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-glk6/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-glk9/igt@runner@aborted.html">FAIL</a> (<a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9161/shard-skl2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18724/shard-skl3/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9161 -&gt; Patchwork_18724</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9161: f474d6c53162f26d23510062d99569d3898639b1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5821: 2bf22b1cff7905f7e214c0707941929a09450257 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18724: 60fa4b6886a33d0cb99abeaf6385076e283c0fdd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============2201029972088949650==--

--===============0273649037==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0273649037==--
