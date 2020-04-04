Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD00D19E25E
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 04:33:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02EFC6ECDA;
	Sat,  4 Apr 2020 02:33:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 620346ECD9;
 Sat,  4 Apr 2020 02:33:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5B753A47E6;
 Sat,  4 Apr 2020 02:33:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Sat, 04 Apr 2020 02:33:20 -0000
Message-ID: <158596760034.1392.11709062381312902078@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgU0FH?=
 =?utf-8?q?V_support_for_Gen12+_=28rev13=29?=
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

Series: SAGV support for Gen12+ (rev13)
URL   : https://patchwork.freedesktop.org/series/75129/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8247_full -> Patchwork_17204_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8247_full and Patchwork_17204_full:

### New IGT tests (7) ###

  * igt@perf_pmu@faulting-read:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_busy@after:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_busy@after-wait:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_busy@before:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_busy@hang:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_busy@hang-wait:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_vgem@busy:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17204_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_tiled_swapping@non-threaded:
    - shard-snb:          [PASS][1] -> [FAIL][2] ([i915#1618])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-snb5/igt@gem_tiled_swapping@non-threaded.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-snb2/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-apl7/igt@gem_workarounds@suspend-resume.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-apl8/igt@gem_workarounds@suspend-resume.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#69])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-skl1/igt@gem_workarounds@suspend-resume-fd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-skl5/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109349])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#1188]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@hang:
    - shard-iclb:         [FAIL][17] ([i915#1621]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-iclb3/igt@gem_mmap_gtt@hang.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-iclb8/igt@gem_mmap_gtt@hang.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][19] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [INCOMPLETE][21] ([i915#647]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-tglb6/igt@i915_selftest@live@execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-tglb6/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-kbl1/igt@i915_suspend@debugfs-reader.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-kbl4/igt@i915_suspend@debugfs-reader.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-glk:          [FAIL][25] ([i915#52] / [i915#54]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][27] ([i915#221]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-skl10/igt@kms_flip@flip-vs-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-skl3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-snb:          [INCOMPLETE][31] ([i915#82]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][33] ([i915#1188]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][37] ([fdo#109441]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][39] ([i915#454]) -> [SKIP][40] ([i915#468])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@gem-pread:
    - shard-snb:          [SKIP][41] ([fdo#109271]) -> [INCOMPLETE][42] ([i915#82])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8247/shard-snb2/igt@i915_pm_rpm@gem-pread.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/shard-snb4/igt@i915_pm_rpm@gem-pread.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1618]: https://gitlab.freedesktop.org/drm/intel/issues/1618
  [i915#1621]: https://gitlab.freedesktop.org/drm/intel/issues/1621
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8247 -> Patchwork_17204

  CI-20190529: 20190529
  CI_DRM_8247: 4ceaa00bfb032d9f29a485596fbc02fdeab06bc9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5562: 4770480c8c1f105ff9225e8eb07b652ca954e06a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17204: 893ba5a63c98048f77ddbd19ba4f10d0bad98148 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17204/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
