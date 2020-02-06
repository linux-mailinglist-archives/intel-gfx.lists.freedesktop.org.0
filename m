Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2BC154DC4
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 22:15:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 037D56FB5F;
	Thu,  6 Feb 2020 21:15:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C7D4F6FB5F;
 Thu,  6 Feb 2020 21:15:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C12DFA363B;
 Thu,  6 Feb 2020 21:15:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 06 Feb 2020 21:15:45 -0000
Message-ID: <158102374578.15032.12084978145827168292@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQ29t?=
 =?utf-8?q?mit_early_to_GuC_=28rev2=29?=
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

Series: Commit early to GuC (rev2)
URL   : https://patchwork.freedesktop.org/series/72031/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7864_full -> Patchwork_16406_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16406_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@exec-shared-gtt-blt:
    - shard-tglb:         [PASS][1] -> [FAIL][2] ([i915#616])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-tglb5/igt@gem_ctx_shared@exec-shared-gtt-blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-tglb7/igt@gem_ctx_shared@exec-shared-gtt-blt.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-hsw:          [PASS][3] -> [INCOMPLETE][4] ([CI#80] / [i915#61])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-hsw7/igt@gem_eio@in-flight-contexts-1us.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-hsw2/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb3/igt@gem_exec_schedule@in-order-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +13 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb1/igt@gem_exec_schedule@out-order-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-tglb8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-tglb2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-kbl:          [PASS][17] -> [INCOMPLETE][18] ([fdo#103665] / [i915#151]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-kbl6/igt@i915_pm_rpm@system-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-kbl2/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-iclb:         [PASS][19] -> [INCOMPLETE][20] ([i915#189]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb1/igt@i915_pm_rpm@system-suspend-devices.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-iclb7/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#151] / [i915#69]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl7/igt@i915_pm_rpm@system-suspend-execbuf.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-skl4/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-glk:          [PASS][23] -> [INCOMPLETE][24] ([i915#58] / [k.org#198133]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-glk6/igt@i915_pm_rpm@system-suspend-modeset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-glk9/igt@i915_pm_rpm@system-suspend-modeset.html
    - shard-apl:          [PASS][25] -> [INCOMPLETE][26] ([fdo#103927]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-apl6/igt@i915_pm_rpm@system-suspend-modeset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-apl8/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#69])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl8/igt@i915_suspend@debugfs-reader.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-skl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([IGT#5])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#46])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#53])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-skl10/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109642] / [fdo#111068])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-iclb6/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#112080]) +8 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb1/igt@perf_pmu@busy-check-all-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-iclb8/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][43] ([i915#677]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-hsw:          [FAIL][47] ([i915#694]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-apl6/igt@gem_softpin@noreloc-s3.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][51] ([i915#454]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl8/igt@i915_pm_dc@dc6-psr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-skl6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][55] ([i915#79]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][57] ([i915#79]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][59] ([fdo#108145]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][61] ([i915#899]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][65] ([i915#31]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-apl2/igt@kms_setmode@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-apl7/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][67] ([fdo#112080]) -> [PASS][68] +8 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][69] ([fdo#109276]) -> [PASS][70] +19 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb7/igt@prime_busy@hang-bsd2.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-iclb1/igt@prime_busy@hang-bsd2.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][71] ([i915#831]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][73] ([i915#725]) -> [DMESG-FAIL][74] ([i915#553] / [i915#725])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-hsw7/igt@i915_selftest@live_blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/shard-hsw1/igt@i915_selftest@live_blt.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7864 -> Patchwork_16406

  CI-20190529: 20190529
  CI_DRM_7864: 5a140e2fc771e4c8b10d14e2db7bfb4996ee9d8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5417: 33cc93c8ba5daa0b7498f297a4f626844d895d06 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16406: e4ad6a295fb15116c45e09ae490589bb06ad736d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16406/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
