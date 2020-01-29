Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E198314C449
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 02:02:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E82CE6E17E;
	Wed, 29 Jan 2020 01:02:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E1616E17E;
 Wed, 29 Jan 2020 01:02:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 34C42A0094;
 Wed, 29 Jan 2020 01:02:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 29 Jan 2020 01:02:55 -0000
Message-ID: <158025977518.5463.9157383285125727931@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200124195351.534551-1-matthew.d.roper@intel.com>
In-Reply-To: <20200124195351.534551-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Suppress_DC5/DC6_around_DSB_usage_=28rev3=29?=
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

Series: drm/i915/tgl: Suppress DC5/DC6 around DSB usage (rev3)
URL   : https://patchwork.freedesktop.org/series/72549/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7827_full -> Patchwork_16285_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16285_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-iclb3/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][7] -> [INCOMPLETE][8] ([i915#82])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-snb1/igt@gem_eio@kms.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-snb6/igt@gem_eio@kms.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb8/igt@gem_exec_schedule@reorder-wide-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#454]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live_gtt:
    - shard-kbl:          [PASS][15] -> [TIMEOUT][16] ([fdo#112271])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-kbl6/igt@i915_selftest@live_gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-kbl4/igt@i915_selftest@live_gtt.html

  * igt@kms_available_modes_crc@available_mode_test_crc:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-tglb6/igt@kms_available_modes_crc@available_mode_test_crc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-tglb1/igt@kms_available_modes_crc@available_mode_test_crc.html

  * igt@kms_color@pipe-d-gamma:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#472] / [i915#517]) +12 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-tglb2/igt@kms_color@pipe-d-gamma.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-tglb7/igt@kms_color@pipe-d-gamma.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#109]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl6/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-skl3/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-iclb5/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@prime_mmap_coherency@write:
    - shard-hsw:          [PASS][33] -> [FAIL][34] ([i915#914])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw5/igt@prime_mmap_coherency@write.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-hsw1/igt@prime_mmap_coherency@write.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109276]) +26 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [fdo#112080]) -> [PASS][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][39] ([fdo#110841]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][41] ([fdo#112080]) -> [PASS][42] +11 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][43] ([i915#677]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +25 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb5/igt@gem_exec_schedule@promotion-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-iclb2/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-apl8/igt@gem_softpin@noreloc-s3.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-apl8/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][51] ([i915#413]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@i915_pm_rps@waitboost.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-iclb5/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][53] ([i915#300]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][55] ([i915#221]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][59] ([fdo#109642] / [fdo#111068]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@kms_psr2_su@page_flip.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][63] ([fdo#109276] / [fdo#112080]) -> [FAIL][64] ([IGT#28])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc:
    - shard-snb:          [FAIL][65] ([i915#1045]) -> [DMESG-FAIL][66] ([i915#1045])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-snb2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][67] ([i915#818]) -> [FAIL][68] ([i915#694])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw7/igt@gem_tiled_blits@interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][69] ([i915#694]) -> [FAIL][70] ([i915#818])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw4/igt@gem_tiled_blits@normal.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-hsw5/igt@gem_tiled_blits@normal.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][71] ([i915#553] / [i915#725]) -> [DMESG-FAIL][72] ([i915#563])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw1/igt@i915_selftest@live_blt.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-hsw5/igt@i915_selftest@live_blt.html

  * igt@kms_color@pipe-b-degamma:
    - shard-tglb:         [FAIL][73] ([i915#71]) -> [INCOMPLETE][74] ([i915#472] / [i915#517]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-tglb4/igt@kms_color@pipe-b-degamma.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-tglb2/igt@kms_color@pipe-b-degamma.html

  * igt@kms_color@pipe-c-ctm-0-75:
    - shard-tglb:         [FAIL][75] ([i915#315]) -> [INCOMPLETE][76] ([i915#472] / [i915#517]) +6 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-tglb5/igt@kms_color@pipe-c-ctm-0-75.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/shard-tglb3/igt@kms_color@pipe-c-ctm-0-75.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1045]: https://gitlab.freedesktop.org/drm/intel/issues/1045
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#517]: https://gitlab.freedesktop.org/drm/intel/issues/517
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#914]: https://gitlab.freedesktop.org/drm/intel/issues/914


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7827 -> Patchwork_16285

  CI-20190529: 20190529
  CI_DRM_7827: c8969aeacfff681c83a800e82b0f18a6ab3e77ea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5389: 966c58649dee31bb5bf2fad92f75ffd365968b81 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16285: 26b8e88007de1480a95f6a35404a60d322529eda @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16285/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
