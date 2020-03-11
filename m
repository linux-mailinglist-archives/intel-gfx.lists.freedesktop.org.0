Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94195181D30
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 17:07:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41A786E9AF;
	Wed, 11 Mar 2020 16:07:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 838C06E491;
 Wed, 11 Mar 2020 16:07:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7991AA00CC;
 Wed, 11 Mar 2020 16:07:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Wed, 11 Mar 2020 16:07:36 -0000
Message-ID: <158394285646.13951.5774975256300843526@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200310153745.22814-1-animesh.manna@intel.com>
In-Reply-To: <20200310153745.22814-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRFAg?=
 =?utf-8?q?Phy_compliance_auto_test_=28rev6=29?=
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

Series: DP Phy compliance auto test (rev6)
URL   : https://patchwork.freedesktop.org/series/71121/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8112_full -> Patchwork_16909_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16909_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#1402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-tglb1/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-tglb5/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#677]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276]) +19 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb2/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-iclb5/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_wait@await-vcs1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112080]) +9 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb1/igt@gem_wait@await-vcs1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-iclb6/igt@gem_wait@await-vcs1.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#72])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip_tiling@flip-y-tiled:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#699])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-skl5/igt@kms_flip_tiling@flip-y-tiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-skl3/igt@kms_flip_tiling@flip-y-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#49])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +6 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([IGT#6])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-skl1/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-skl10/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-b-ts-continuation-modeset-hang:
    - shard-snb:          [PASS][27] -> [SKIP][28] ([fdo#109271]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-snb6/igt@kms_vblank@pipe-b-ts-continuation-modeset-hang.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-snb6/igt@kms_vblank@pipe-b-ts-continuation-modeset-hang.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [INCOMPLETE][29] ([i915#1402]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb7/igt@gem_ctx_persistence@close-replace-race.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-iclb1/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [INCOMPLETE][31] ([i915#1402]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-skl4/igt@gem_ctx_persistence@close-replace-race.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-skl10/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-kbl:          [FAIL][33] ([i915#679]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-kbl7/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-kbl4/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][35] ([fdo#110841]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][37] ([fdo#112080]) -> [PASS][38] +14 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][39] ([fdo#109276] / [i915#677]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb3/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#112146]) -> [PASS][42] +6 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][43] ([i915#677]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [DMESG-WARN][45] ([i915#118] / [i915#95]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-glk3/igt@gem_exec_whisper@basic-fds-priority.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-glk6/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][47] ([i915#413]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb6/igt@i915_pm_rps@waitboost.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-iclb2/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:
    - shard-apl:          [FAIL][49] ([i915#54]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:
    - shard-glk:          [FAIL][53] ([i915#52] / [i915#54]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][55] ([i915#79]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][59] ([fdo#108145]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][63] ([i915#899]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68] +10 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][69] ([i915#180]) -> [INCOMPLETE][70] ([i915#155])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8112 -> Patchwork_16909

  CI-20190529: 20190529
  CI_DRM_8112: 032f2fe5c92eb1db6d417738431153c001a41bcc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5504: d6788bf0404f76b66170e18eb26c85004b5ccb25 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16909: b67217a256066165ac5d8d6d7ab477737bfa6899 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16909/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
