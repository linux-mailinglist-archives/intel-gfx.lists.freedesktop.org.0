Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2815D16F8E5
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 09:02:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C6AE6E15E;
	Wed, 26 Feb 2020 08:02:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AA2696E155;
 Wed, 26 Feb 2020 08:02:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2349A47E9;
 Wed, 26 Feb 2020 08:02:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 26 Feb 2020 08:02:47 -0000
Message-ID: <158270416763.21011.9604250590379016974@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224144036.4086608-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200224144036.4086608-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Drop_assertion_that_active-=3Efence_is_unchanged?=
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

Series: drm/i915: Drop assertion that active->fence is unchanged
URL   : https://patchwork.freedesktop.org/series/73853/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7998_full -> Patchwork_16690_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16690_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#110854])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#677]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276]) +14 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-iclb7/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-skl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([IGT#5])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#49])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-b:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#53])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-skl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-b.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-skl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#112080]) +11 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb4/igt@perf_pmu@busy-vcs1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-iclb7/igt@perf_pmu@busy-vcs1.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-iclb:         [PASS][27] -> [TIMEOUT][28] ([fdo#112271])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb1/igt@sw_sync@sync_multi_producer_single_consumer.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-iclb7/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][29] ([fdo#112080]) -> [PASS][30] +9 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb3/igt@gem_busy@extended-parallel-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-iclb2/igt@gem_busy@extended-parallel-vcs1.html

  * {igt@gem_exec_schedule@implicit-write-read-bsd2}:
    - shard-iclb:         [SKIP][31] ([fdo#109276] / [i915#677]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][33] ([i915#677]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [SKIP][35] ([fdo#112146]) -> [PASS][36] +6 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][37] ([fdo#109276]) -> [PASS][38] +22 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][39] ([i915#644]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_selftest@mock_buddy:
    - shard-skl:          [TIMEOUT][41] ([fdo#112271]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-skl3/igt@i915_selftest@mock_buddy.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-skl2/igt@i915_selftest@mock_buddy.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +6 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][45] ([i915#79]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][47] ([i915#146] / [i915#221]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-skl6/igt@kms_flip@flip-vs-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-skl1/igt@kms_flip@flip-vs-suspend.html

  * {igt@kms_hdr@bpc-switch-dpms}:
    - shard-skl:          [FAIL][49] ([i915#1188]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][53] ([fdo#108145]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][55] ([fdo#108145] / [i915#265]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][57] ([fdo#109642] / [fdo#111068]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb7/igt@kms_psr2_su@page_flip.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][61] ([i915#31]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-apl4/igt@kms_setmode@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-apl8/igt@kms_setmode@basic.html

  * igt@perf@oa-formats:
    - shard-iclb:         [FAIL][63] ([i915#1301]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb1/igt@perf@oa-formats.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-iclb7/igt@perf@oa-formats.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-glk:          [TIMEOUT][65] ([fdo#112271]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-glk6/igt@sw_sync@sync_multi_producer_single_consumer.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-glk6/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][67] ([fdo#112080]) -> [FAIL][68] ([IGT#28])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][69] ([fdo#112271]) -> [TIMEOUT][70] ([fdo#112271] / [i915#727])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-kbl1/igt@kms_content_protection@atomic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-kbl3/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [TIMEOUT][71] ([fdo#112271] / [i915#727]) -> [TIMEOUT][72] ([fdo#112271])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-kbl7/igt@kms_content_protection@lic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-kbl2/igt@kms_content_protection@lic.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][73] ([i915#1226]) -> [SKIP][74] ([fdo#109349])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#1301]: https://gitlab.freedesktop.org/drm/intel/issues/1301
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7998 -> Patchwork_16690

  CI-20190529: 20190529
  CI_DRM_7998: 7b1bb0188905d180ee11694d9c26c5dd656dc1d1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5463: d519c80219ebe558cd2fa378f26f9d73f9e35310 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16690: 4f42f847513211548e64453389d014114eeb1a6c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16690/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
