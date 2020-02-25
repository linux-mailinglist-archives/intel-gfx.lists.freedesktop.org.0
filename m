Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA4816ED61
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 19:00:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 404FD6EB6A;
	Tue, 25 Feb 2020 18:00:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 14E486E8EE;
 Tue, 25 Feb 2020 18:00:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9540BA47E2;
 Tue, 25 Feb 2020 18:00:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 25 Feb 2020 18:00:22 -0000
Message-ID: <158265362260.5723.5206491822128437914@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224113312.13674-1-jani.nikula@intel.com>
In-Reply-To: <20200224113312.13674-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_stop_assigning_drm-=3Edev=5Fprivate_pointer?=
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

Series: drm/i915: stop assigning drm->dev_private pointer
URL   : https://patchwork.freedesktop.org/series/73848/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7996_full -> Patchwork_16685_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16685_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +7 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-iclb8/igt@gem_exec_schedule@deep-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-iclb1/igt@gem_exec_schedule@deep-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276]) +20 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#413])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-iclb5/igt@i915_pm_rps@reset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-iclb5/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#69]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-skl1/igt@i915_suspend@debugfs-reader.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-skl9/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#72])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#221])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +7 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-y:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([IGT#6])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-skl9/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-skl8/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-tglb:         [PASS][23] -> [SKIP][24] ([i915#668])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-tglb6/igt@kms_psr@psr2_cursor_render.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-tglb2/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][25] ([fdo#112080]) -> [PASS][26] +17 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * {igt@gem_ctx_persistence@engines-mixed-process@bcs0}:
    - shard-skl:          [INCOMPLETE][27] ([i915#1197] / [i915#1239]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-skl7/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-skl1/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html

  * {igt@gem_ctx_persistence@engines-mixed-process@rcs0}:
    - shard-skl:          [FAIL][29] ([i915#679]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-skl7/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-skl1/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html

  * igt@gem_ctx_shared@exec-shared-gtt-default:
    - shard-tglb:         [FAIL][31] ([i915#616]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-tglb6/igt@gem_ctx_shared@exec-shared-gtt-default.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-tglb5/igt@gem_ctx_shared@exec-shared-gtt-default.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][33] ([fdo#110841]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][35] ([fdo#112146]) -> [PASS][36] +6 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-iclb6/igt@gem_exec_async@concurrent-writes-bsd.html

  * {igt@gem_exec_schedule@implicit-read-write-bsd2}:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [i915#677]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][39] ([i915#677]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][41] ([fdo#109276]) -> [PASS][42] +17 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-iclb5/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][43] ([i915#644]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-apl6/igt@gem_softpin@noreloc-s3.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-apl3/igt@gem_softpin@noreloc-s3.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-apl:          [DMESG-WARN][47] ([i915#183]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-apl4/igt@gem_tiled_swapping@non-threaded.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-apl8/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][49] ([i915#447]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-iclb2/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][53] ([fdo#108145]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][55] ([i915#899]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [DMESG-WARN][57] ([IGT#6]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-skl1/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-skl5/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf@oa-formats:
    - shard-iclb:         [FAIL][61] -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-iclb1/igt@perf@oa-formats.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-iclb6/igt@perf@oa-formats.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-kbl:          [TIMEOUT][63] ([fdo#112271]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-kbl4/igt@sw_sync@sync_multi_producer_single_consumer.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-kbl1/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-skl:          [TIMEOUT][65] ([fdo#112271]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-skl3/igt@sw_sync@sync_multi_producer_single_consumer.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-skl6/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][67] ([IGT#28]) -> [SKIP][68] ([fdo#112080])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][69] ([i915#69]) -> [TIMEOUT][70] ([fdo#112271])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-skl7/igt@gem_softpin@noreloc-s3.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-skl1/igt@gem_softpin@noreloc-s3.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][71] ([fdo#109349]) -> [DMESG-WARN][72] ([i915#1226])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7996 -> Patchwork_16685

  CI-20190529: 20190529
  CI_DRM_7996: 2a1fa22ec29545044f07076bea91f8e382cd8356 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5461: 9d7d9d0455409d0e562ca7ffdf206c7646c50e58 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16685: 22b203ba60090a1c45e08bc45143b33d65354a02 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
