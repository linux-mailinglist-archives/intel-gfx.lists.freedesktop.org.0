Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F1921C3ED
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jul 2020 13:16:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 012136E047;
	Sat, 11 Jul 2020 11:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F3496E03B;
 Sat, 11 Jul 2020 11:16:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A27BA00EF;
 Sat, 11 Jul 2020 11:16:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 11 Jul 2020 11:16:19 -0000
Message-ID: <159446617960.9233.1311526767643761731@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200711091349.28865-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200711091349.28865-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Always_reset_the_engine=2C_even_if_inactive=2C_on_e?=
 =?utf-8?q?xeclists_failure?=
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

Series: drm/i915/gt: Always reset the engine, even if inactive, on execlists failure
URL   : https://patchwork.freedesktop.org/series/79378/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8732_full -> Patchwork_18140_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18140_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18140_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18140_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@unwedge-stress:
    - shard-hsw:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-hsw1/igt@gem_eio@unwedge-stress.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-hsw6/igt@gem_eio@unwedge-stress.html

  
Known issues
------------

  Here are the changes found in Patchwork_18140_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_reloc@basic-cpu-gtt-active:
    - shard-tglb:         [PASS][5] -> [DMESG-WARN][6] ([i915#402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb3/igt@gem_exec_reloc@basic-cpu-gtt-active.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-tglb8/igt@gem_exec_reloc@basic-cpu-gtt-active.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-glk9/igt@gem_exec_whisper@basic-forked-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-glk8/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-snb:          [PASS][9] -> [TIMEOUT][10] ([i915#1958] / [i915#2119]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-snb2/igt@gem_userptr_blits@dmabuf-sync.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-snb4/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1436] / [i915#716])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl1/igt@gen9_exec_parse@allowed-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-kbl6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#198] / [i915#2110])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl4/igt@i915_selftest@mock@requests.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-skl8/igt@i915_selftest@mock@requests.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#69])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl8/igt@i915_suspend@sysfs-reader.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-skl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1635] / [i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-apl4/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-apl1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
    - shard-glk:          [PASS][19] -> [DMESG-FAIL][20] ([i915#118] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-glk2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_concurrent@pipe-b:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1635] / [i915#95]) +17 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-apl2/igt@kms_concurrent@pipe-b.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-apl6/igt@kms_concurrent@pipe-b.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +6 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl2/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-skl7/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-hsw1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-hsw6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#198])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#49])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-glk5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-glk1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#1188]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][35] -> [DMESG-FAIL][36] ([fdo#108145] / [i915#1982])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109642] / [fdo#111068])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-iclb3/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-b-wait-busy:
    - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#93] / [i915#95])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl1/igt@kms_vblank@pipe-b-wait-busy.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-kbl7/igt@kms_vblank@pipe-b-wait-busy.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#1755])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl3/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-skl9/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-glk:          [DMESG-WARN][45] ([i915#118] / [i915#95]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-tglb:         [DMESG-WARN][47] ([i915#402]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb7/igt@gem_fence_thrash@bo-copy.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-tglb2/igt@gem_fence_thrash@bo-copy.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][49] ([i915#118] / [i915#95]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-glk9/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52] +7 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl9/igt@kms_color@pipe-b-ctm-negative.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-skl10/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:
    - shard-skl:          [FAIL][53] ([i915#54]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:
    - shard-glk:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-glk6/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-glk7/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          [DMESG-WARN][57] ([i915#1635] / [i915#95]) -> [PASS][58] +13 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-apl6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-apl2/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-b-single-move:
    - shard-snb:          [INCOMPLETE][59] ([i915#82]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-snb1/igt@kms_cursor_legacy@pipe-b-single-move.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-snb5/igt@kms_cursor_legacy@pipe-b-single-move.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][61] ([i915#79]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@d-edp1:
    - shard-tglb:         [INCOMPLETE][63] -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@d-edp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank@d-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         [DMESG-WARN][65] ([i915#1982]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][67] ([i915#1188]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-top-left-pipe-a-planes:
    - shard-iclb:         [DMESG-WARN][71] ([i915#1982]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb3/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-iclb7/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][75] ([i915#1542]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb7/igt@perf@blocking-parameterized.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-iclb6/igt@perf@blocking-parameterized.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-iclb:         [FAIL][77] ([i915#1755]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb5/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-iclb7/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@file:
    - shard-snb:          [SKIP][79] ([fdo#109271] / [i915#1099]) -> [TIMEOUT][80] ([i915#1958] / [i915#2119])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-snb2/igt@gem_ctx_persistence@file.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-snb4/igt@gem_ctx_persistence@file.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][81] ([i915#1930]) -> [TIMEOUT][82] ([i915#1958] / [i915#2119])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
    - shard-snb:          [SKIP][83] ([fdo#109271]) -> [TIMEOUT][84] ([i915#1958] / [i915#2119])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-snb2/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-snb4/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][85] ([i915#588]) -> [SKIP][86] ([i915#658])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-apl:          [DMESG-FAIL][87] ([i915#1635] / [i915#54] / [i915#95]) -> [DMESG-WARN][88] ([i915#1635] / [i915#95])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][89] ([i915#1226]) -> [SKIP][90] ([fdo#109349])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][91] ([i915#1436] / [i915#1784] / [i915#2110]) -> ([FAIL][92], [FAIL][93]) ([fdo#109271] / [i915#1436] / [i915#1784] / [i915#2110] / [i915#716])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8732/shard-kbl4/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-kbl2/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/shard-kbl6/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8732 -> Patchwork_18140

  CI-20190529: 20190529
  CI_DRM_8732: 4c05e94181f1a8ea4c91a5bd90e81f3275b51332 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5732: 8a50ca9985d2dbb0293186c3286af46468fb4b84 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18140: 2211a024ea4b9ff8bc24418cfd382fde2d9d8e96 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18140/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
