Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 842911569E5
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Feb 2020 11:44:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADF456E5A1;
	Sun,  9 Feb 2020 10:44:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BA0B86E2F8;
 Sun,  9 Feb 2020 10:44:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1A72A010F;
 Sun,  9 Feb 2020 10:44:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 09 Feb 2020 10:44:03 -0000
Message-ID: <158124504369.18126.15915248903056222335@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200206152325.2521787-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200206152325.2521787-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Prevent_queuing_retire_workers_on_the_virtual_engin?=
 =?utf-8?q?e_=28rev4=29?=
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

Series: drm/i915/gt: Prevent queuing retire workers on the virtual engine (rev4)
URL   : https://patchwork.freedesktop.org/series/73102/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7876_full -> Patchwork_16462_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16462_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-apl7/igt@gem_ctx_isolation@vecs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-apl2/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_shared@exec-shared-gtt-bsd2:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#616])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-kbl7/igt@gem_ctx_shared@exec-shared-gtt-bsd2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-kbl2/igt@gem_ctx_shared@exec-shared-gtt-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +18 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-iclb1/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-iclb7/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-iclb7/igt@gem_exec_schedule@wide-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#899])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([IGT#6])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-skl1/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-skl9/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#112080]) +15 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-iclb4/igt@perf_pmu@busy-vcs1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-iclb3/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][27] ([fdo#112080]) -> [PASS][28] +16 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-iclb7/igt@gem_busy@busy-vcs1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@processes:
    - shard-tglb:         [FAIL][29] ([i915#570]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-tglb3/igt@gem_ctx_persistence@processes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-tglb2/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [TIMEOUT][31] ([fdo#112271]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-tglb6/igt@gem_exec_balancer@hang.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-tglb5/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][33] ([i915#677]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][35] ([fdo#112146]) -> [PASS][36] +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][37] ([i915#644]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-skl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-skl10/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_render_copy_redux@normal:
    - shard-hsw:          [FAIL][39] ([i915#694]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-hsw5/igt@gem_render_copy_redux@normal.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-hsw2/igt@gem_render_copy_redux@normal.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][41] ([i915#454]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][43] ([i915#413]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-tglb2/igt@i915_pm_rps@waitboost.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-tglb3/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_gtt:
    - shard-apl:          [TIMEOUT][45] ([fdo#112271]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-apl3/igt@i915_selftest@live_gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-apl7/igt@i915_selftest@live_gtt.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [FAIL][47] ([i915#54]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - shard-skl:          [FAIL][51] ([i915#52] / [i915#54]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-skl2/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-tglb:         [SKIP][53] ([i915#668]) -> [PASS][54] +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-iclb:         [INCOMPLETE][55] ([i915#140]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-iclb1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-iclb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][59] ([fdo#108145]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][61] ([i915#899]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][65] ([fdo#109276]) -> [PASS][66] +23 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][67] ([i915#818]) -> [FAIL][68] ([i915#694])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-hsw5/igt@gem_tiled_blits@normal.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-hsw1/igt@gem_tiled_blits@normal.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [INCOMPLETE][69] ([i915#58] / [k.org#198133]) -> [DMESG-WARN][70] ([i915#716])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-glk2/igt@gen9_exec_parse@allowed-all.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-glk5/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][71] ([fdo#109349]) -> [DMESG-WARN][72] ([fdo#107724])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7876 -> Patchwork_16462

  CI-20190529: 20190529
  CI_DRM_7876: 6ac39d9964f464065511d439afcf4da065ff96db @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5421: 40946e61f9c47e23fdf1fff8090fadee8a4d7d3b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16462: 1e826279b1745739828d1aef4fc2332843cee508 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16462/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
