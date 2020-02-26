Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E2F16FA10
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 09:57:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BF426E2B0;
	Wed, 26 Feb 2020 08:57:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BEE036E25A;
 Wed, 26 Feb 2020 08:56:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6171A3C0D;
 Wed, 26 Feb 2020 08:56:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 26 Feb 2020 08:56:59 -0000
Message-ID: <158270741971.21009.17959662080270986079@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224191258.15668-1-lucas.demarchi@intel.com>
In-Reply-To: <20200224191258.15668-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Add_Wa=5F1608008084_=28rev2=29?=
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

Series: drm/i915/tgl: Add Wa_1608008084 (rev2)
URL   : https://patchwork.freedesktop.org/series/73801/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7999_full -> Patchwork_16694_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16694_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +23 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +21 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +5 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#49])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-b:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#53])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-skl5/igt@kms_pipe_crc_basic@hang-read-crc-pipe-b.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-skl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#899])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][29] -> [FAIL][30] ([i915#31])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-kbl7/igt@kms_setmode@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-kbl1/igt@kms_setmode@basic.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-iclb:         [PASS][31] -> [TIMEOUT][32] ([fdo#112271])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb7/igt@sw_sync@sync_multi_producer_single_consumer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-iclb2/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-s3:
    - shard-kbl:          [DMESG-WARN][33] ([i915#56]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-kbl7/igt@gem_ctx_isolation@vcs1-s3.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-kbl3/igt@gem_ctx_isolation@vcs1-s3.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][35] ([fdo#110854]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * {igt@gem_exec_schedule@implicit-write-read-bsd1}:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [i915#677]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][39] ([i915#677]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#112146]) -> [PASS][42] +7 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-iclb7/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [INCOMPLETE][43] ([i915#151] / [i915#69]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-skl1/igt@i915_pm_rpm@system-suspend-execbuf.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-skl8/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * {igt@kms_hdr@bpc-switch-dpms}:
    - shard-skl:          [FAIL][47] ([i915#1188]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * {igt@kms_hdr@bpc-switch-suspend}:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb7/igt@kms_psr@psr2_primary_render.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-iclb2/igt@kms_psr@psr2_primary_render.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][53] ([i915#31]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-skl6/igt@kms_setmode@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-skl3/igt@kms_setmode@basic.html
    - shard-glk:          [FAIL][55] ([i915#31]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-glk2/igt@kms_setmode@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-glk4/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][57] ([fdo#112080]) -> [PASS][58] +10 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][59] ([fdo#109276]) -> [PASS][60] +29 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][61] ([fdo#112080]) -> [FAIL][62] ([IGT#28])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_rpm@legacy-planes-dpms:
    - shard-snb:          [INCOMPLETE][63] ([i915#82]) -> [SKIP][64] ([fdo#109271])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-snb5/igt@i915_pm_rpm@legacy-planes-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-snb6/igt@i915_pm_rpm@legacy-planes-dpms.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][65] ([fdo#112271]) -> [TIMEOUT][66] ([fdo#112271] / [i915#727]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-kbl6/igt@kms_content_protection@atomic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-kbl6/igt@kms_content_protection@atomic.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][67] ([i915#1226]) -> [SKIP][68] ([fdo#109349])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7999 -> Patchwork_16694

  CI-20190529: 20190529
  CI_DRM_7999: e853e3d470d1bb4ac87042094b99adbdbaa87944 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5463: d519c80219ebe558cd2fa378f26f9d73f9e35310 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16694: f7e443d7006eb83427b962f2ed0043822856ea3f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16694/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
