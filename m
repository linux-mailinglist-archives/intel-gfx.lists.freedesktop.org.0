Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7E713903F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 12:40:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E150E89D89;
	Mon, 13 Jan 2020 11:40:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE88389D77;
 Mon, 13 Jan 2020 11:40:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4DF1A47E0;
 Mon, 13 Jan 2020 11:40:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chen Zhou" <chenzhou10@huawei.com>
Date: Mon, 13 Jan 2020 11:40:03 -0000
Message-ID: <157891560371.25472.13487434426070049659@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200108133610.92714-1-chenzhou10@huawei.com>
In-Reply-To: <20200108133610.92714-1-chenzhou10@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gtt=3A_add_missing_include_file_asm/smp=2Eh_=28rev2=29?=
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

Series: drm/i915/gtt: add missing include file asm/smp.h (rev2)
URL   : https://patchwork.freedesktop.org/series/71825/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7714_full -> Patchwork_16041_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16041_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2] ([fdo#103665])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl7/igt@gem_ctx_isolation@vecs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-kbl1/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb2/igt@gem_ctx_persistence@vcs1-cleanup.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-iclb7/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276]) +9 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb2/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-iclb7/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][7] -> [DMESG-WARN][8] ([i915#444])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-snb2/igt@gem_eio@kms.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-snb6/igt@gem_eio@kms.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-skl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#413])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb5/igt@i915_pm_rps@reset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-iclb6/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#69]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl6/igt@i915_suspend@sysfs-reader.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-skl9/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#79]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][23] -> [INCOMPLETE][24] ([fdo#103665] / [i915#600])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#699])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl10/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-skl4/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-iclb7/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#112080]) +6 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb2/igt@perf_pmu@busy-vcs1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-iclb8/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-persistence:
    - shard-iclb:         [SKIP][35] ([fdo#109276] / [fdo#112080]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb5/igt@gem_ctx_persistence@vcs1-persistence.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-iclb4/igt@gem_ctx_persistence@vcs1-persistence.html

  * igt@gem_eio@wait-10ms:
    - shard-skl:          [FAIL][37] -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl5/igt@gem_eio@wait-10ms.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-skl1/igt@gem_eio@wait-10ms.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][39] ([fdo#109276]) -> [PASS][40] +11 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#112146]) -> [PASS][42] +5 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_linear_blits@interruptible:
    - shard-glk:          [DMESG-WARN][43] ([i915#667]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-glk3/igt@gem_linear_blits@interruptible.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-glk9/igt@gem_linear_blits@interruptible.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][45] ([i915#413]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb6/igt@i915_pm_rps@waitboost.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-iclb3/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_active:
    - shard-skl:          [DMESG-FAIL][47] ([i915#666]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl3/igt@i915_selftest@live_active.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-skl1/igt@i915_selftest@live_active.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-apl3/igt@i915_suspend@debugfs-reader.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-apl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][51] ([i915#109]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl8/igt@kms_color@pipe-b-ctm-0-25.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-skl8/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][53] ([i915#79]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl6/igt@kms_flip@flip-vs-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-kbl6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][57] ([fdo#108145]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][59] ([fdo#109642] / [fdo#111068]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +4 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][63] ([fdo#112080]) -> [PASS][64] +6 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb7/igt@perf_pmu@init-busy-vcs1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][65] ([fdo#109276] / [fdo#112080]) -> [FAIL][66] ([IGT#28])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-skl:          [TIMEOUT][67] ([fdo#111732]) -> [TIMEOUT][68] ([fdo#111732] / [fdo#112271])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl7/igt@gem_pipe_control_store_loop@reused-buffer.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-skl6/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:
    - shard-snb:          [SKIP][69] ([CI#80] / [fdo#109271]) -> [SKIP][70] ([fdo#109271])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-snb5/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/shard-snb1/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#600]: https://gitlab.freedesktop.org/drm/intel/issues/600
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7714 -> Patchwork_16041

  CI-20190529: 20190529
  CI_DRM_7714: b633f28f2de80cdb861d6c1c3b4df6fd2d53239f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16041: 40572cdbb11d8c340f6d781cc7a5194f2c1b3a26 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16041/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
