Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C73F6126E43
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 20:54:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 023F46E3E5;
	Thu, 19 Dec 2019 19:54:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ABD3D6E3E1;
 Thu, 19 Dec 2019 19:54:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A4089A0099;
 Thu, 19 Dec 2019 19:54:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 19 Dec 2019 19:54:36 -0000
Message-ID: <157678527664.26202.14357762591092218222@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191218094057.3510459-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191218094057.3510459-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Ratelimit_i915=5Fglobals=5Fpark?=
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

Series: drm/i915: Ratelimit i915_globals_park
URL   : https://patchwork.freedesktop.org/series/71107/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7598_full -> Patchwork_15825_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15825_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#679]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-skl1/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-skl4/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_exec_reloc@basic-gtt-read-active:
    - shard-skl:          [PASS][3] -> [DMESG-WARN][4] ([i915#109])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-skl6/igt@gem_exec_reloc@basic-gtt-read-active.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-skl7/igt@gem_exec_reloc@basic-gtt-read-active.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#707])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-tglb7/igt@gem_exec_schedule@smoketest-vebox.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-tglb3/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#644])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-apl4/igt@i915_suspend@fence-restore-untiled.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-apl1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#54]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#667])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-tglb2/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-tglb1/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#435] / [i915#456] / [i915#460])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-tglb9/igt@kms_fbcon_fbt@fbc-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#456] / [i915#460])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-tglb4/igt@kms_fbcon_fbt@psr-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-tglb5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#221])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-skl2/igt@kms_flip@flip-vs-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-skl3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#49])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-apl:          [FAIL][29] ([i915#679]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-apl2/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-apl6/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][31] ([fdo#111735]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-tglb9/igt@gem_ctx_shared@q-smoketest-vebox.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-tglb7/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][33] ([i915#476]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-tglb4/igt@gem_exec_parallel@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-tglb9/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [INCOMPLETE][35] ([i915#456] / [i915#472]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-tglb1/igt@gem_exec_suspend@basic-s0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-tglb2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][37] ([i915#644]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][39] ([i915#435] / [i915#472]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-tglb4/igt@gem_sync@basic-store-each.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-tglb5/igt@gem_sync@basic-store-each.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [INCOMPLETE][41] ([fdo#112057]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-tglb5/igt@i915_selftest@live_requests.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-tglb5/igt@i915_selftest@live_requests.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - shard-skl:          [FAIL][43] ([i915#54]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [FAIL][47] ([i915#49]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-tglb:         [DMESG-WARN][49] ([i915#766]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         [INCOMPLETE][51] ([i915#667]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-tglb9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [INCOMPLETE][53] ([i915#456] / [i915#460]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-tglb4/igt@kms_frontbuffer_tracking@psr-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-tglb4/igt@kms_frontbuffer_tracking@psr-suspend.html
    - shard-skl:          [INCOMPLETE][55] ([i915#123] / [i915#69]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-skl6/igt@kms_frontbuffer_tracking@psr-suspend.html

  
#### Warnings ####

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][57] ([i915#648] / [i915#667]) -> [INCOMPLETE][58] ([i915#648])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7598/shard-skl1/igt@kms_plane@pixel-format-pipe-b-planes.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/shard-skl8/igt@kms_plane@pixel-format-pipe-b-planes.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#766]: https://gitlab.freedesktop.org/drm/intel/issues/766


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7598 -> Patchwork_15825

  CI-20190529: 20190529
  CI_DRM_7598: 7b95c0a4f86507c23d1b4aa7fd352b1d86de5af8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15825: 455e3353ad3ca3b137ed2d335e4dff65f29dbe7e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15825/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
