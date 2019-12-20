Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 292521282FE
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 21:02:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 747B86ECA2;
	Fri, 20 Dec 2019 20:02:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5ACEF6E13A;
 Fri, 20 Dec 2019 20:02:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52031A0094;
 Fri, 20 Dec 2019 20:02:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 20 Dec 2019 20:02:02 -0000
Message-ID: <157687212231.9211.12700829702366818758@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191219105043.4169050-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191219105043.4169050-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Track_engine_round-trip_times_=28rev5=29?=
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

Series: drm/i915/gt: Track engine round-trip times (rev5)
URL   : https://patchwork.freedesktop.org/series/69513/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7606_full -> Patchwork_15839_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15839_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries_display_on:
    - shard-skl:          [PASS][1] -> [DMESG-WARN][2] ([i915#109]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-skl9/igt@debugfs_test@read_all_entries_display_on.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-skl8/igt@debugfs_test@read_all_entries_display_on.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-snb:          [PASS][5] -> [INCOMPLETE][6] ([i915#82])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-snb5/igt@gem_eio@in-flight-contexts-immediate.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-snb1/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111736] / [i915#460])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-tglb9/igt@gem_exec_suspend@basic-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-tglb5/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-tglb7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-tglb7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-apl7/igt@i915_suspend@debugfs-reader.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-apl2/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#54]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [PASS][17] -> [FAIL][18] ([i915#49]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#474] / [i915#667]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#435] / [i915#667])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [PASS][23] -> [INCOMPLETE][24] ([fdo#103665] / [i915#648] / [i915#667])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-kbl1/igt@kms_plane@pixel-format-pipe-b-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-kbl6/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#456] / [i915#460]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-tglb1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-tglb5/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@dumb_buffer@invalid-bpp}:
    - shard-kbl:          [INCOMPLETE][27] ([fdo#103665]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-kbl7/igt@dumb_buffer@invalid-bpp.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-kbl4/igt@dumb_buffer@invalid-bpp.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][29] ([fdo#111735]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-tglb9/igt@gem_ctx_shared@q-smoketest-vebox.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-tglb2/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_reloc@basic-cpu-gtt-active:
    - shard-skl:          [DMESG-WARN][31] ([i915#109]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-skl3/igt@gem_exec_reloc@basic-cpu-gtt-active.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-skl10/igt@gem_exec_reloc@basic-cpu-gtt-active.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][33] ([i915#707]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-tglb9/igt@gem_exec_schedule@smoketest-bsd2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-tglb1/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][35] ([i915#644]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][37] ([i915#716]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-apl4/igt@gen9_exec_parse@allowed-single.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-apl6/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-random:
    - shard-skl:          [FAIL][39] ([i915#54]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - shard-skl:          [INCOMPLETE][41] ([i915#646] / [i915#667]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-skl2/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - shard-skl:          [FAIL][43] ([i915#52] / [i915#54]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-skl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][45] ([i915#435] / [i915#456] / [i915#460]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-tglb2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][47] ([i915#79]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [FAIL][49] ([i915#34]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-skl3/igt@kms_flip@plain-flip-ts-check.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-skl10/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [FAIL][51] ([i915#49]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-tglb:         [DMESG-WARN][53] ([i915#766]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-skl:          [INCOMPLETE][55] ([i915#123]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-skl8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-skl10/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][57] ([i915#648] / [i915#667]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-skl1/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-d-planes:
    - shard-tglb:         [INCOMPLETE][61] ([i915#460]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-tglb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-d-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-tglb9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-d-planes.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +8 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][65] ([fdo#111912] / [fdo#112080]) -> [SKIP][66] ([fdo#112080])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-tglb4/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][67] ([i915#444]) -> [INCOMPLETE][68] ([i915#82])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-snb5/igt@gem_eio@kms.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-snb2/igt@gem_eio@kms.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [INCOMPLETE][69] ([i915#61]) -> [FAIL][70] ([i915#818])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-hsw1/igt@gem_tiled_blits@interruptible.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][71] ([i915#648] / [i915#667]) -> [INCOMPLETE][72] ([i915#648])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/shard-skl4/igt@kms_plane@pixel-format-pipe-b-planes.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#766]: https://gitlab.freedesktop.org/drm/intel/issues/766
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7606 -> Patchwork_15839

  CI-20190529: 20190529
  CI_DRM_7606: 24b56a2cafc20edb1284c6911ecabf1061cf75bc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15839: fb4ea1918e3fced95b532fd89f556bfb2132b3d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
