Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5185A18F8B1
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 16:35:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 632F56E241;
	Mon, 23 Mar 2020 15:35:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 51BD36E21D;
 Mon, 23 Mar 2020 15:35:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A3E1A47E1;
 Mon, 23 Mar 2020 15:35:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Mon, 23 Mar 2020 15:35:21 -0000
Message-ID: <158497772129.9809.8076088351398691199@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200323071313.5858-1-anshuman.gupta@intel.com>
In-Reply-To: <20200323071313.5858-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5_lpsp_support_for_lpsp_igt_=28rev3=29?=
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

Series: i915 lpsp support for lpsp igt (rev3)
URL   : https://patchwork.freedesktop.org/series/74648/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8175_full -> Patchwork_17049_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17049_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17049_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17049_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@system-suspend:
    - shard-tglb:         [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-tglb3/igt@i915_pm_rpm@system-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-tglb2/igt@i915_pm_rpm@system-suspend.html
    - shard-iclb:         [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-iclb1/igt@i915_pm_rpm@system-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-iclb1/igt@i915_pm_rpm@system-suspend.html

  
#### Warnings ####

  * igt@i915_pm_lpsp@non-edp:
    - shard-iclb:         [SKIP][5] ([fdo#109301]) -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-iclb7/igt@i915_pm_lpsp@non-edp.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-iclb7/igt@i915_pm_lpsp@non-edp.html
    - shard-tglb:         [SKIP][7] ([fdo#109301]) -> [SKIP][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-tglb6/igt@i915_pm_lpsp@non-edp.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-tglb2/igt@i915_pm_lpsp@non-edp.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-snb:          [SKIP][9] ([fdo#109271]) -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-snb6/igt@i915_pm_lpsp@screens-disabled.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-snb6/igt@i915_pm_lpsp@screens-disabled.html

  
Known issues
------------

  Here are the changes found in Patchwork_17049_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112080]) +11 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-iclb1/igt@gem_busy@extended-parallel-vcs1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-iclb5/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#1402])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-tglb6/igt@gem_ctx_persistence@close-replace-race.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-tglb8/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +6 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-iclb7/igt@gem_exec_async@concurrent-writes-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109276] / [i915#677]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-iclb7/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([i915#677]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109276]) +22 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#644])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#644])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#644])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-skl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-skl10/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#454])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [PASS][33] -> [SKIP][34] ([fdo#109271])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-skl1/igt@i915_pm_rpm@system-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-skl8/igt@i915_pm_rpm@system-suspend.html
    - shard-glk:          [PASS][35] -> [SKIP][36] ([fdo#109271])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-glk8/igt@i915_pm_rpm@system-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-glk1/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [PASS][37] -> [INCOMPLETE][38] ([i915#155])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-kbl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-kbl3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#54])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-glk5/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#54])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-apl:          [PASS][43] -> [FAIL][44] ([i915#54])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([IGT#5])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#34])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-skl1/igt@kms_flip@plain-flip-fb-recreate.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-skl1/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#49])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-tglb:         [PASS][51] -> [SKIP][52] ([i915#433])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-tglb7/igt@kms_hdmi_inject@inject-audio.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-tglb6/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#1188])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([fdo#108145] / [i915#265]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#899])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][61] -> [SKIP][62] ([fdo#109441])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-iclb5/igt@kms_psr@psr2_dpms.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][63] -> [FAIL][64] ([i915#31])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-apl2/igt@kms_setmode@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-apl4/igt@kms_setmode@basic.html

  * igt@perf@gen12-mi-rpc:
    - shard-tglb:         [PASS][65] -> [FAIL][66] ([i915#1085])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-tglb1/igt@perf@gen12-mi-rpc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-tglb8/igt@perf@gen12-mi-rpc.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][67] ([fdo#112080]) -> [PASS][68] +11 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [FAIL][69] ([i915#679]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-skl10/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-skl5/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [INCOMPLETE][71] ([i915#1197] / [i915#1239]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-skl10/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-skl5/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][73] ([fdo#110841]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][75] ([fdo#109276] / [i915#677]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][77] ([fdo#109276]) -> [PASS][78] +19 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][79] ([i915#677]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][81] ([fdo#112146]) -> [PASS][82] +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][83] ([i915#644]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_lpsp@edp-panel-fitter:
    - shard-iclb:         [SKIP][85] ([fdo#109301]) -> [PASS][86] +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-iclb1/igt@i915_pm_lpsp@edp-panel-fitter.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-iclb3/igt@i915_pm_lpsp@edp-panel-fitter.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-skl:          [SKIP][87] ([fdo#109271]) -> [PASS][88] +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-skl5/igt@i915_pm_lpsp@screens-disabled.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-skl8/igt@i915_pm_lpsp@screens-disabled.html
    - shard-tglb:         [SKIP][89] ([fdo#109301]) -> [PASS][90] +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-tglb2/igt@i915_pm_lpsp@screens-disabled.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-tglb1/igt@i915_pm_lpsp@screens-disabled.html
    - shard-kbl:          [SKIP][91] ([fdo#109271]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-kbl3/igt@i915_pm_lpsp@screens-disabled.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-kbl7/igt@i915_pm_lpsp@screens-disabled.html
    - shard-apl:          [SKIP][93] ([fdo#109271]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-apl3/igt@i915_pm_lpsp@screens-disabled.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-apl4/igt@i915_pm_lpsp@screens-disabled.html
    - shard-glk:          [SKIP][95] ([fdo#109271]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-glk1/igt@i915_pm_lpsp@screens-disabled.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-glk1/igt@i915_pm_lpsp@screens-disabled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen:
    - shard-skl:          [FAIL][97] ([i915#54]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [INCOMPLETE][99] ([fdo#103927]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][101] ([i915#180]) -> [PASS][102] +6 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-glk:          [FAIL][103] ([i915#49]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
    - shard-snb:          [SKIP][105] ([fdo#109271]) -> [PASS][106] +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-snb2/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-snb5/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][107] ([i915#1188]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - shard-skl:          [FAIL][109] ([i915#53]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-skl10/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-skl3/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-a-planes:
    - shard-skl:          [FAIL][111] ([i915#1036]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-skl10/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-skl6/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][113] ([i915#180]) -> [PASS][114] +3 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
    - shard-kbl:          [INCOMPLETE][115] ([i915#155] / [i915#648]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][117] ([i915#899]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][119] ([fdo#109441]) -> [PASS][120] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-kbl:          [INCOMPLETE][121] ([i915#155]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-snb:          [DMESG-WARN][123] ([fdo#111870] / [i915#478]) -> [DMESG-WARN][124] ([fdo#110789] / [fdo#111870] / [i915#478])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8175/shard-snb2/igt@gem_userptr_blits@sync-unmap-after-close.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/shard-snb6/igt@gem_userptr_blits@sync-unmap-after-close.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109301]: https://bugs.freedesktop.org/show_bug.cgi?id=109301
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110789]: https://bugs.freedesktop.org/show_bug.cgi?id=110789
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1036]: https://gitlab.freedesktop.org/drm/intel/issues/1036
  [i915#1085]: https://gitlab.freedesktop.org/drm/intel/issues/1085
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5527 -> IGTPW_4338
  * Linux: CI_DRM_8175 -> Patchwork_17049

  CI-20190529: 20190529
  CI_DRM_8175: 75b2b15f2ab26f5373a13ece8e5d40b472333d0e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4338: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4338/index.html
  IGT_5527: 0ab05a51a059645d2e12e553a1de1d97451f57c5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17049: 870cab0334d9bfcb979622504bb1fa545ff2cda8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17049/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
