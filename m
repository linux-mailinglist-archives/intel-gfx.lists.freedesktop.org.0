Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8234915500A
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 02:35:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9F8C6E54C;
	Fri,  7 Feb 2020 01:35:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A937A6E54C;
 Fri,  7 Feb 2020 01:35:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0B70A0119;
 Fri,  7 Feb 2020 01:35:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Fri, 07 Feb 2020 01:35:41 -0000
Message-ID: <158103934162.8752.8124733343292787994@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200204080513.GA612@plaxmina-desktop.iind.intel.com>
In-Reply-To: <20200204080513.GA612@plaxmina-desktop.iind.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgUkZD?=
 =?utf-8?q?=3A_pipe_writeback_design_for_i915?=
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

Series: RFC: pipe writeback design for i915
URL   : https://patchwork.freedesktop.org/series/72958/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7866_full -> Patchwork_16409_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16409_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#110841])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#677])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-iclb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-iclb1/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-hsw:          [PASS][7] -> [FAIL][8] ([i915#694])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-hsw6/igt@gem_partial_pwrite_pread@reads-display.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-hsw5/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#69])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-skl3/igt@gem_softpin@noreloc-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-skl5/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#454])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-skl4/igt@i915_pm_dc@dc6-psr.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-skl7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#300])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-tglb:         [PASS][21] -> [SKIP][22] ([i915#668])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-iclb3/igt@kms_psr@psr2_no_drrs.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112080]) +8 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-iclb3/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109276]) +19 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-iclb3/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][31] ([fdo#112080]) -> [PASS][32] +10 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][33] ([fdo#109276]) -> [PASS][34] +16 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-iclb6/igt@gem_exec_schedule@fifo-bsd1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-iclb1/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][35] ([i915#677]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38] +7 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-hsw:          [FAIL][39] ([i915#694]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-hsw7/igt@gen7_exec_parse@basic-offset.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-hsw5/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][41] ([i915#413]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-iclb8/igt@i915_pm_rps@reset.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-iclb3/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][43] ([i915#725]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-hsw4/igt@i915_selftest@live_blt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-hsw1/igt@i915_selftest@live_blt.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [INCOMPLETE][45] ([i915#69]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-skl4/igt@i915_suspend@fence-restore-untiled.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-skl5/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - shard-apl:          [FAIL][47] ([i915#54]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][51] ([i915#96]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][55] ([fdo#108145]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][59] ([fdo#109642] / [fdo#111068]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-iclb5/igt@kms_psr2_su@page_flip.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][63] ([fdo#112080]) -> [FAIL][64] ([IGT#28])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][65] ([i915#818]) -> [FAIL][66] ([i915#694])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/shard-hsw1/igt@gem_tiled_blits@normal.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/shard-hsw2/igt@gem_tiled_blits@normal.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (9 -> 10)
------------------------------

  Additional (1): pig-glk-j5005 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7866 -> Patchwork_16409

  CI-20190529: 20190529
  CI_DRM_7866: bd8251861a5c1ac11e3510355f503675a05d26e6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5417: 33cc93c8ba5daa0b7498f297a4f626844d895d06 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16409: aa098022234b16284b1ac5bbe45f77c21a4a5871 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
