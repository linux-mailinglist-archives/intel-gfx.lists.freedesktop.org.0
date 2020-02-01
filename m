Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD84914F77F
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2020 11:14:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D80B6EA29;
	Sat,  1 Feb 2020 10:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0BFF86EA29;
 Sat,  1 Feb 2020 10:14:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 02D9FA011C;
 Sat,  1 Feb 2020 10:14:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Sat, 01 Feb 2020 10:14:34 -0000
Message-ID: <158055207498.32692.803010906482271113@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200129181638.1528150-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200129181638.1528150-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_add_extra_slice_common_debug_registers?=
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

Series: drm/i915: add extra slice common debug registers
URL   : https://patchwork.freedesktop.org/series/72735/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7838_full -> Patchwork_16318_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16318_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112080]) +17 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +20 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-iclb1/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-hsw:          [PASS][13] -> [FAIL][14] ([i915#694])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-hsw4/igt@gem_partial_pwrite_pread@reads.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-hsw2/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-skl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-hsw:          [PASS][17] -> [DMESG-WARN][18] ([i915#44]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-hsw8/igt@kms_color@pipe-a-ctm-0-25.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-hsw5/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#49])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#173])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb4/igt@kms_psr@no_drrs.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][31] -> [FAIL][32] ([i915#31])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-apl1/igt@kms_setmode@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-apl8/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [SKIP][33] ([fdo#109276] / [fdo#112080]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb7/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-iclb4/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][35] ([fdo#110841]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [TIMEOUT][37] ([fdo#112271]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb2/igt@gem_exec_balancer@hang.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-iclb7/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][39] ([fdo#112146]) -> [PASS][40] +13 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][41] ([fdo#109276]) -> [PASS][42] +22 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-hsw:          [FAIL][43] ([i915#694]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-hsw5/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-hsw8/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][45] ([i915#644]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [SKIP][47] ([fdo#112080]) -> [PASS][48] +13 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb8/igt@i915_hangman@error-state-capture-vcs1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-iclb1/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-hsw:          [DMESG-WARN][51] ([i915#44]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-hsw5/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-hsw4/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][55] ([i915#79]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [DMESG-WARN][57] ([i915#109]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-skl7/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][59] ([i915#69]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:
    - shard-skl:          [DMESG-WARN][63] ([IGT#6]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl5/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-skl9/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][65] ([fdo#109642] / [fdo#111068]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb6/igt@kms_psr2_su@page_flip.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb5/igt@kms_psr@psr2_basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-iclb2/igt@kms_psr@psr2_basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][69] ([IGT#28]) -> [SKIP][70] ([fdo#112080]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][71] ([i915#694]) -> [FAIL][72] ([i915#818])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-hsw2/igt@gem_tiled_blits@interruptible.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][73] ([fdo#109349]) -> [DMESG-WARN][74] ([fdo#107724])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7838 -> Patchwork_16318

  CI-20190529: 20190529
  CI_DRM_7838: d3d96beea538c8de906a1c4d7e6793a47d17a471 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5404: 4147bab8e3dcaf11bd657b5fb4c109708e94e60c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16318: 1649692be3eb7dc395e916529c9bcc7adcbc53f6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16318/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
