Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF48152773
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 09:15:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FFDB6F4BB;
	Wed,  5 Feb 2020 08:15:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 50B916F4BA;
 Wed,  5 Feb 2020 08:15:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48D7CA0118;
 Wed,  5 Feb 2020 08:15:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 05 Feb 2020 08:15:41 -0000
Message-ID: <158089054126.17318.11784576923243023565@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200202132133.1891846-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200202132133.1891846-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/vgem=3A_Close_use-after-free_race_in_vgem=5Fgem=5Fcreate?=
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

Series: drm/vgem: Close use-after-free race in vgem_gem_create
URL   : https://patchwork.freedesktop.org/series/72873/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7856_full -> Patchwork_16379_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16379_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_import_export@import-close-race-prime:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#472])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-tglb1/igt@drm_import_export@import-close-race-prime.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-tglb6/igt@drm_import_export@import-close-race-prime.html

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-iclb2/igt@gem_busy@extended-parallel-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-iclb8/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +6 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_partial_pwrite_pread@write-snoop:
    - shard-hsw:          [PASS][11] -> [FAIL][12] ([i915#694]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-hsw8/igt@gem_partial_pwrite_pread@write-snoop.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-hsw1/igt@gem_partial_pwrite_pread@write-snoop.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][13] -> [TIMEOUT][14] ([i915#716])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-skl7/igt@gen9_exec_parse@allowed-single.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-skl5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@gem-mmap-cpu:
    - shard-iclb:         [PASS][15] -> [INCOMPLETE][16] ([i915#189])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-iclb7/igt@i915_pm_rpm@gem-mmap-cpu.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-iclb2/igt@i915_pm_rpm@gem-mmap-cpu.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [PASS][17] -> [DMESG-FAIL][18] ([i915#725])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-hsw1/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-hsw6/igt@i915_selftest@live_blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-iclb6/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109276]) +17 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-iclb7/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][29] ([fdo#112080]) -> [PASS][30] +15 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][31] ([fdo#110841]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][33] ([fdo#112146]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][35] ([fdo#109276]) -> [PASS][36] +19 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][37] ([i915#818]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-hsw5/igt@gem_tiled_blits@normal.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-hsw6/igt@gem_tiled_blits@normal.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [DMESG-WARN][39] ([i915#109]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-skl4/igt@kms_color@pipe-b-ctm-negative.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-skl3/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][41] ([i915#72]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [FAIL][45] ([i915#34]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip_tiling@flip-x-tiled:
    - shard-glk:          [FAIL][47] ([fdo#108145] / [i915#699]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-glk5/igt@kms_flip_tiling@flip-x-tiled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-glk8/igt@kms_flip_tiling@flip-x-tiled.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-skl:          [INCOMPLETE][49] ([i915#69]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][55] ([fdo#112080]) -> [FAIL][56] ([IGT#28])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][57] ([i915#694]) -> [FAIL][58] ([i915#818])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/shard-hsw6/igt@gem_tiled_blits@interruptible.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7856 -> Patchwork_16379

  CI-20190529: 20190529
  CI_DRM_7856: a113999b001035a5b6474407b228363c163574a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5411: 86c6ab8a0b6696bdb2153febd350af7fa02fbb00 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16379: d0b2cbabe0deb86f971d677bf112493016c4ad54 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
