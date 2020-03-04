Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD37178D3C
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 10:17:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FAE36EAF7;
	Wed,  4 Mar 2020 09:17:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B79A66EAF7;
 Wed,  4 Mar 2020 09:17:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0580A3ECB;
 Wed,  4 Mar 2020 09:17:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 04 Mar 2020 09:17:07 -0000
Message-ID: <158331342771.431.10804863694750440191@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303171808.7247-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200303171808.7247-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Init_LCPLL_on_HSW/BDW_if_the_BIOS_did_not?=
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

Series: drm/i915: Init LCPLL on HSW/BDW if the BIOS did not
URL   : https://patchwork.freedesktop.org/series/74211/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8057_full -> Patchwork_16800_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16800_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +11 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-iclb7/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#69]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-skl7/igt@gem_ctx_isolation@vecs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-skl6/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [i915#677]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@implicit-read-write-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +13 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb1/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-iclb7/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb7/igt@gem_exec_schedule@wide-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#413])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb6/igt@i915_pm_rps@reset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-iclb1/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#56])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-apl2/igt@i915_suspend@sysfs-reader.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-hsw:          [PASS][23] -> [INCOMPLETE][24] ([i915#61])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-hsw1/igt@kms_flip@2x-flip-vs-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-hsw2/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +6 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-kbl:          [PASS][27] -> [INCOMPLETE][28] ([fdo#103665])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#899])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#173])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb6/igt@kms_psr@no_drrs.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][39] ([fdo#112080]) -> [PASS][40] +8 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb7/igt@gem_busy@busy-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][43] ([fdo#109276]) -> [PASS][44] +19 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +7 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-iclb:         [INCOMPLETE][47] ([i915#1318]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb7/igt@gem_exec_whisper@basic-contexts-forked.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-iclb7/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][51] ([i915#57]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][53] ([i915#79]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [FAIL][55] ([i915#34]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-skl6/igt@kms_flip@plain-flip-ts-check.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-skl2/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][59] ([i915#69]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][61] ([fdo#109642] / [fdo#111068]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb7/igt@kms_psr2_su@page_flip.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb6/igt@kms_psr@psr2_sprite_render.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][65] ([i915#31]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-kbl1/igt@kms_setmode@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/shard-kbl2/igt@kms_setmode@basic.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1318]: https://gitlab.freedesktop.org/drm/intel/issues/1318
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8057 -> Patchwork_16800

  CI-20190529: 20190529
  CI_DRM_8057: 45ca41e870e508bf9040b308d9ff1ccf7ab779e2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5488: 5b6930b4d267f7002c2e9442262e21a725941db5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16800: 08c4ff472a8f52af446572bb02ae435284760c96 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
