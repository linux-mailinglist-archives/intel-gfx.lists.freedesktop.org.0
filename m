Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 119191DF266
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2020 00:49:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D19D6E8B4;
	Fri, 22 May 2020 22:49:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 18EFE6E13D;
 Fri, 22 May 2020 22:49:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 094BDA47E6;
 Fri, 22 May 2020 22:49:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 22 May 2020 22:49:48 -0000
Message-ID: <159018778803.3048.5452398449174426810@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200522030109.4845-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200522030109.4845-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Avoid_waiting_inside_mmu=5Fnotifier=5Finvalidate?=
 =?utf-8?q?=5Frange?=
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

Series: drm/i915/gem: Avoid waiting inside mmu_notifier_invalidate_range
URL   : https://patchwork.freedesktop.org/series/77529/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8523_full -> Patchwork_17755_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17755_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17755_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17755_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@uc:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-kbl3/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@uc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-kbl1/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@uc.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy@wb:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-skl10/igt@gem_userptr_blits@map-fixed-invalidate-busy@wb.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-skl8/igt@gem_userptr_blits@map-fixed-invalidate-busy@wb.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-skl:          [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-skl9/igt@gem_userptr_blits@sync-unmap-cycles.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-skl5/igt@gem_userptr_blits@sync-unmap-cycles.html

  
Known issues
------------

  Here are the changes found in Patchwork_17755_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-apl6/igt@i915_suspend@debugfs-reader.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-apl1/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@all-pipes-torture-bo:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#128])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-kbl6/igt@kms_cursor_legacy@all-pipes-torture-bo.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-kbl1/igt@kms_cursor_legacy@all-pipes-torture-bo.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [PASS][15] -> [DMESG-FAIL][16] ([i915#1186])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-glk5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-glk7/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-apl:          [PASS][17] -> [FAIL][18] ([i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-apl7/igt@kms_flip_tiling@flip-changes-tiling.html
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#699] / [i915#93] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-kbl1/igt@kms_flip_tiling@flip-changes-tiling.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-kbl2/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#49])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-skl2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#1188])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-skl7/igt@kms_hdr@bpc-switch.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Possible fixes ####

  * {igt@gem_exec_balancer@bonded-true-hang}:
    - shard-tglb:         [TIMEOUT][29] -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-tglb8/igt@gem_exec_balancer@bonded-true-hang.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-tglb3/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][31] ([i915#454]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-skl3/igt@i915_pm_dc@dc6-psr.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-skl4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][33] ([i915#72]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * {igt@kms_flip@flip-vs-expired-vblank@b-dp1}:
    - shard-kbl:          [FAIL][35] ([i915#79]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +7 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@a-dp1}:
    - shard-apl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [FAIL][41] ([fdo#103375]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][43] ([fdo#108145] / [i915#265]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][45] ([fdo#109441]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][47] ([i915#180] / [i915#95]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8523/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1186]: https://gitlab.freedesktop.org/drm/intel/issues/1186
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8523 -> Patchwork_17755

  CI-20190529: 20190529
  CI_DRM_8523: f96c380f22d4a7808efbab0fccee2e95a0dc10ad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5672: 4653b6464daf3403c22b8ce7d8e376d9ee6cb493 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17755: e1781eb0d5c008c72d2024e723c8cfe4f1f940eb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17755/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
