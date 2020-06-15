Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFC21FA3CC
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 00:56:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AA7D6E54C;
	Mon, 15 Jun 2020 22:56:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8AE666E542;
 Mon, 15 Jun 2020 22:56:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87D62A47E8;
 Mon, 15 Jun 2020 22:56:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 15 Jun 2020 22:56:41 -0000
Message-ID: <159226180155.16138.4520857142649656148@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200615183935.17389-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200615183935.17389-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Don=27t_flush_the_tasklet_if_not_setup?=
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

Series: drm/i915/gt: Don't flush the tasklet if not setup
URL   : https://patchwork.freedesktop.org/series/78382/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8629_full -> Patchwork_17955_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17955_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17955_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17955_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-iclb2/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-iclb3/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-tglb:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-tglb7/igt@gem_exec_balancer@bonded-early.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-tglb5/igt@gem_exec_balancer@bonded-early.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-4.00@execution@built-in-functions@fs-op-mult-dmat2x4-dmat4x2 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][5] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/pig-icl-1065g7/spec@glsl-4.00@execution@built-in-functions@fs-op-mult-dmat2x4-dmat4x2.html

  * spec@glsl-4.00@execution@built-in-functions@gs-op-div-double-dmat3x4 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][6] +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/pig-icl-1065g7/spec@glsl-4.00@execution@built-in-functions@gs-op-div-double-dmat3x4.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8629_full and Patchwork_17955_full:

### New Piglit tests (6) ###

  * spec@glsl-4.00@execution@built-in-functions@fs-op-mult-dmat2x4-dmat4x2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.00@execution@built-in-functions@fs-op-mult-dmat3x4-dmat3:
    - Statuses : 1 crash(s)
    - Exec time: [93.95] s

  * spec@glsl-4.00@execution@built-in-functions@fs-op-mult-dmat4-dmat3x4:
    - Statuses : 1 crash(s)
    - Exec time: [159.53] s

  * spec@glsl-4.00@execution@built-in-functions@fs-op-sub-dmat4-double:
    - Statuses : 1 crash(s)
    - Exec time: [28.11] s

  * spec@glsl-4.00@execution@built-in-functions@gs-op-div-double-dmat3x4:
    - Statuses : 1 crash(s)
    - Exec time: [20.37] s

  * spec@glsl-4.00@execution@built-in-functions@vs-op-div-dvec3-dvec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_17955_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#198])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-skl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-skl8/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#1930])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-glk1/igt@gem_exec_reloc@basic-concurrent0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_mmap_offset@ptrace@gtt:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#93] / [i915#95]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-kbl6/igt@gem_mmap_offset@ptrace@gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-kbl1/igt@gem_mmap_offset@ptrace@gtt.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#95]) +26 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-apl3/igt@gem_mmap_wc@write-cpu-read-wc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-apl1/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][15] -> [DMESG-FAIL][16] ([i915#118] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-glk6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-apl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-apl6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html

  * igt@kms_flip@busy-flip@c-edp1:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#275])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-skl3/igt@kms_flip@busy-flip@c-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-skl2/igt@kms_flip@busy-flip@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
    - shard-apl:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-apl4/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-kbl1/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-kbl3/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][27] -> [DMESG-FAIL][28] ([i915#95])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-apl4/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-apl8/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#456])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-tglb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][35] -> [DMESG-WARN][36] ([i915#1982]) +13 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-skl9/igt@kms_psr@suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-skl3/igt@kms_psr@suspend.html

  * igt@kms_vblank@pipe-c-wait-forked-busy:
    - shard-tglb:         [PASS][37] -> [DMESG-WARN][38] ([i915#1982])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-tglb8/igt@kms_vblank@pipe-c-wait-forked-busy.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-tglb7/igt@kms_vblank@pipe-c-wait-forked-busy.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-glk:          [DMESG-WARN][39] ([i915#118] / [i915#95]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-glk6/igt@gem_exec_whisper@basic-normal-all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-glk7/igt@gem_exec_whisper@basic-normal-all.html

  * igt@i915_selftest@mock@requests:
    - shard-kbl:          [INCOMPLETE][41] -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-kbl4/igt@i915_selftest@mock@requests.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-kbl4/igt@i915_selftest@mock@requests.html
    - shard-tglb:         [INCOMPLETE][43] -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-tglb6/igt@i915_selftest@mock@requests.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-tglb1/igt@i915_selftest@mock@requests.html
    - shard-apl:          [INCOMPLETE][45] -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-apl4/igt@i915_selftest@mock@requests.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-apl3/igt@i915_selftest@mock@requests.html
    - shard-glk:          [INCOMPLETE][47] ([i915#58] / [k.org#198133]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-glk4/igt@i915_selftest@mock@requests.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-glk1/igt@i915_selftest@mock@requests.html
    - shard-skl:          [INCOMPLETE][49] ([i915#198]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-skl10/igt@i915_selftest@mock@requests.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-skl5/igt@i915_selftest@mock@requests.html
    - shard-iclb:         [INCOMPLETE][51] -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-iclb1/igt@i915_selftest@mock@requests.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-iclb1/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][53] ([i915#118] / [i915#95]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-glk7/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-apl:          [DMESG-WARN][57] ([i915#95]) -> [PASS][58] +28 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-position-covered-pipe-b-planes:
    - shard-skl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +7 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-skl10/igt@kms_plane@plane-position-covered-pipe-b-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-skl6/igt@kms_plane@plane-position-covered-pipe-b-planes.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [DMESG-WARN][65] ([i915#402]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-tglb1/igt@perf_pmu@module-unload.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-tglb3/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@kms_content_protection@lic:
    - shard-kbl:          [TIMEOUT][67] ([i915#1319] / [i915#1958]) -> [TIMEOUT][68] ([i915#1319])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-kbl4/igt@kms_content_protection@lic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-kbl3/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-kbl:          [DMESG-WARN][69] ([i915#93] / [i915#95]) -> [DMESG-FAIL][70] ([i915#54] / [i915#95])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][71] ([i915#1525]) -> [DMESG-FAIL][72] ([i915#95]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][73] ([i915#93] / [i915#95]) -> [DMESG-WARN][74] ([i915#180] / [i915#93] / [i915#95])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          [FAIL][75] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][76] ([fdo#108145] / [i915#1982])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8629/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#275]: https://gitlab.freedesktop.org/drm/intel/issues/275
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8629 -> Patchwork_17955

  CI-20190529: 20190529
  CI_DRM_8629: d5f177af226836ef59edf6dfaa7297c5a75fa089 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5711: 90611a0c90afa4a46496c78a4faf9638a1538ac3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17955: 3a591b832d873af97d2401e09c5d1d8005ccbeb3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17955/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
