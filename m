Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E3E17A975
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 16:59:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 112696EBD4;
	Thu,  5 Mar 2020 15:59:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 85E086EBD4;
 Thu,  5 Mar 2020 15:59:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C322A00E7;
 Thu,  5 Mar 2020 15:59:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 05 Mar 2020 15:59:47 -0000
Message-ID: <158342398747.17237.2901784000135589921@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200304150918.25473-1-imre.deak@intel.com>
In-Reply-To: <20200304150918.25473-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_documentation_for_intel=5Fdpll=5Fget=5Ffreq=28=29?=
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

Series: drm/i915: Fix documentation for intel_dpll_get_freq()
URL   : https://patchwork.freedesktop.org/series/74272/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8066_full -> Patchwork_16820_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16820_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16820_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16820_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb1/igt@i915_pm_dc@dc5-dpms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  
Known issues
------------

  Here are the changes found in Patchwork_16820_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl10/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-skl8/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#1197])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl10/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-skl8/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276] / [i915#677]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +11 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb1/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-iclb3/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb7/igt@gem_exec_schedule@wide-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip_tiling@flip-to-x-tiled:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#167])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl6/igt@kms_flip_tiling@flip-to-x-tiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-skl5/igt@kms_flip_tiling@flip-to-x-tiled.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#123] / [i915#69])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-skl2/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][31] -> [FAIL][32] ([i915#31])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-apl6/igt@kms_setmode@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-apl6/igt@kms_setmode@basic.html
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#31])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl9/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-skl9/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [INCOMPLETE][35] -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-tglb1/igt@gem_ctx_persistence@close-replace-race.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-tglb3/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#110841]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][39] ([fdo#112080]) -> [PASS][40] +13 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@preempt-other-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb1/igt@gem_exec_schedule@preempt-other-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-iclb3/igt@gem_exec_schedule@preempt-other-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][45] ([i915#644]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-apl2/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [FAIL][49] -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl1/igt@i915_pm_sseu@full-enable.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-skl1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@mock@buddy:
    - shard-skl:          [INCOMPLETE][51] ([i915#1310] / [i915#1360]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl2/igt@i915_selftest@mock@buddy.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-skl2/igt@i915_selftest@mock@buddy.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [INCOMPLETE][53] ([i915#69]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl5/igt@i915_suspend@debugfs-reader.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-skl9/igt@i915_suspend@debugfs-reader.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][55] ([i915#1188]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][57] ([i915#899]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +17 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][63] ([i915#677]) -> [INCOMPLETE][64] ([i915#1381])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd2:
    - shard-iclb:         [INCOMPLETE][65] ([i915#1381]) -> [SKIP][66] ([fdo#109276])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd2.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1310]: https://gitlab.freedesktop.org/drm/intel/issues/1310
  [i915#1360]: https://gitlab.freedesktop.org/drm/intel/issues/1360
  [i915#1381]: https://gitlab.freedesktop.org/drm/intel/issues/1381
  [i915#167]: https://gitlab.freedesktop.org/drm/intel/issues/167
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8066 -> Patchwork_16820

  CI-20190529: 20190529
  CI_DRM_8066: 9e1454777a07902c85ce3febcc9648837a2224fd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5491: d52794b426ae16630cc1e0354ae435ec98f6174b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16820: 98cd78439929389c404db55b862272c066a8a60f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16820/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
