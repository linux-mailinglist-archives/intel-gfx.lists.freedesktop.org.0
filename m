Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4473416620E
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 17:14:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 870F86EDCF;
	Thu, 20 Feb 2020 16:14:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 98FF66EDCF;
 Thu, 20 Feb 2020 16:14:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 90F93A47E2;
 Thu, 20 Feb 2020 16:14:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Thu, 20 Feb 2020 16:14:37 -0000
Message-ID: <158221527758.17406.10439619010207220294@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218220242.107265-1-sean@poorly.run>
In-Reply-To: <20200218220242.107265-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_HDCP_1=2E4_over_MST_connectors_=28rev4?=
 =?utf-8?q?=29?=
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

Series: drm/i915: Add support for HDCP 1.4 over MST connectors (rev4)
URL   : https://patchwork.freedesktop.org/series/70393/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7963_full -> Patchwork_16610_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7963_full and Patchwork_16610_full:

### New IGT tests (58) ###

  * igt@i915_pm_backlight@bad-brightness:
    - Statuses : 3 pass(s) 3 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@i915_pm_backlight@basic-brightness:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 0.23] s

  * igt@i915_pm_backlight@fade:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 2.59] s

  * igt@i915_pm_backlight@fade_with_dpms:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 4.99] s

  * igt@i915_pm_backlight@fade_with_suspend:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 4.45] s

  * igt@i915_pm_lpsp@edp-native:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.04] s

  * igt@i915_pm_lpsp@edp-panel-fitter:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.04] s

  * igt@i915_pm_lpsp@non-edp:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 0.11] s

  * igt@i915_pm_lpsp@screens-disabled:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 0.04] s

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - Statuses : 8 pass(s)
    - Exec time: [3.00] s

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - Statuses : 7 pass(s)
    - Exec time: [0.17, 5.03] s

  * igt@i915_pm_rpm@basic-rte:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [1.32, 11.52] s

  * igt@i915_pm_rpm@cursor:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 41.20] s

  * igt@i915_pm_rpm@cursor-dpms:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 36.77] s

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - Statuses : 6 pass(s)
    - Exec time: [10.31, 14.15] s

  * igt@i915_pm_rpm@debugfs-read:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 81.00] s

  * igt@i915_pm_rpm@dpms-lpsp:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 0.82] s

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 13.42] s

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 4.15] s

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 0.19] s

  * igt@i915_pm_rpm@drm-resources-equal:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 9.59] s

  * igt@i915_pm_rpm@fences:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 14.76] s

  * igt@i915_pm_rpm@fences-dpms:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 16.75] s

  * igt@i915_pm_rpm@gem-evict-pwrite:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.97] s

  * igt@i915_pm_rpm@gem-execbuf:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 15.28] s

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 42.81] s

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@i915_pm_rpm@gem-idle:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 9.16] s

  * igt@i915_pm_rpm@gem-pread:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 6.40] s

  * igt@i915_pm_rpm@i2c:
    - Statuses : 7 pass(s)
    - Exec time: [0.94, 11.16] s

  * igt@i915_pm_rpm@legacy-planes:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 169.67] s

  * igt@i915_pm_rpm@legacy-planes-dpms:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 169.80] s

  * igt@i915_pm_rpm@modeset-lpsp:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 4.93] s

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 55.03] s

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 18.49] s

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 3.94] s

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 9.13] s

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 7.06] s

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 72.02] s

  * igt@i915_pm_rpm@pc8-residency:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rpm@pm-caching:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 19.44] s

  * igt@i915_pm_rpm@pm-tiling:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 16.66] s

  * igt@i915_pm_rpm@reg-read-ioctl:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 8.11] s

  * igt@i915_pm_rpm@sysfs-read:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.98] s

  * igt@i915_pm_rpm@system-suspend:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 9.04] s

  * igt@i915_pm_rpm@system-suspend-devices:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 13.20] s

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 85.97] s

  * igt@i915_pm_rpm@system-suspend-modeset:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 14.58] s

  * igt@i915_pm_rpm@universal-planes:
    - Statuses : 7 pass(s)
    - Exec time: [2.90, 226.04] s

  * igt@i915_pm_rpm@universal-planes-dpms:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 195.19] s

  * igt@i915_pm_rps@basic-api:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@i915_pm_rps@min-max-config-idle:
    - Statuses : 8 pass(s)
    - Exec time: [0.11, 1.05] s

  * igt@i915_pm_rps@min-max-config-loaded:
    - Statuses : 1 fail(s) 7 pass(s)
    - Exec time: [0.31, 3.02] s

  * igt@i915_pm_rps@reset:
    - Statuses : 1 fail(s) 7 pass(s)
    - Exec time: [3.52, 3.66] s

  * igt@i915_pm_rps@waitboost:
    - Statuses : 8 pass(s)
    - Exec time: [2.52, 2.63] s

  * igt@i915_pm_sseu@full-enable:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 0.01] s

  

Known issues
------------

  Here are the changes found in Patchwork_16610_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +12 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110841])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +17 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-hsw:          [PASS][11] -> [FAIL][12] ([i915#694]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw1/igt@gem_partial_pwrite_pread@write-uncached.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-hsw1/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-tglb3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_selftest@live_gt_lrc:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#1233])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb8/igt@i915_selftest@live_gt_lrc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-tglb7/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-tglb:         [PASS][19] -> [FAIL][20] ([i915#488])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-tglb1/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-kbl:          [PASS][21] -> [INCOMPLETE][22] ([fdo#103665] / [i915#600])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl3/igt@kms_flip@flip-vs-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-kbl7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#49])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf@short-reads:
    - shard-apl:          [PASS][31] -> [TIMEOUT][32] ([fdo#112271] / [i915#51])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl1/igt@perf@short-reads.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-apl8/igt@perf@short-reads.html

  
#### Possible fixes ####

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-iclb:         [FAIL][33] ([i915#1241]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_ctx_persistence@close-replace-race.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-iclb2/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [FAIL][35] ([i915#1241]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl4/igt@gem_ctx_persistence@close-replace-race.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-apl2/igt@gem_ctx_persistence@close-replace-race.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox}:
    - shard-skl:          [FAIL][37] ([i915#679]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * {igt@gem_exec_schedule@implicit-both-bsd2}:
    - shard-iclb:         [SKIP][39] ([fdo#109276] / [i915#677]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd2.html

  * {igt@gem_exec_schedule@implicit-read-write-bsd}:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd.html

  * igt@gem_exec_schedule@pi-ringfull-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_exec_schedule@pi-ringfull-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-iclb7/igt@gem_exec_schedule@pi-ringfull-bsd.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [SKIP][45] ([fdo#112080]) -> [PASS][46] +9 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb6/igt@gem_exec_store@cachelines-vcs1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-iclb2/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][47] ([i915#644]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@waitboost (NEW):
    - shard-tglb:         [FAIL][49] ([i915#413]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@i915_pm_rps@waitboost.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-tglb8/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-a-cursor-size-change:
    - shard-snb:          [SKIP][51] ([fdo#109271]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-snb1/igt@kms_cursor_crc@pipe-a-cursor-size-change.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][53] ([i915#96]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][57] ([i915#79]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [INCOMPLETE][59] ([i915#61]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-hsw6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-tglb:         [SKIP][61] ([i915#668]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][65] ([fdo#108145]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][67] ([i915#173]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@kms_psr@no_drrs.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-iclb2/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][71] ([i915#31]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl2/igt@kms_setmode@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-apl7/igt@kms_setmode@basic.html
    - shard-skl:          [FAIL][73] ([i915#31]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl9/igt@kms_setmode@basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-skl4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][75] ([i915#69]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@short-reads:
    - shard-kbl:          [TIMEOUT][77] ([fdo#112271] / [i915#51]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl6/igt@perf@short-reads.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-kbl7/igt@perf@short-reads.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][79] ([i915#831]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-hsw8/igt@prime_mmap_coherency@ioctl-errors.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][81] ([fdo#109276]) -> [PASS][82] +21 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][83] ([fdo#112080]) -> [FAIL][84] ([IGT#28])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][85] ([i915#818]) -> [FAIL][86] ([i915#694])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-hsw4/igt@gem_tiled_blits@interruptible.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-hsw:          [FAIL][87] ([i915#694]) -> [INCOMPLETE][88] ([i915#61])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw8/igt@gen7_exec_parse@basic-allocation.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-hsw7/igt@gen7_exec_parse@basic-allocation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][89] ([i915#454]) -> [SKIP][90] ([i915#468])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb6/igt@i915_pm_dc@dc6-psr.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][91] ([fdo#109349]) -> [DMESG-WARN][92] ([i915#1226])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1241]: https://gitlab.freedesktop.org/drm/intel/issues/1241
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#488]: https://gitlab.freedesktop.org/drm/intel/issues/488
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#600]: https://gitlab.freedesktop.org/drm/intel/issues/600
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7963 -> Patchwork_16610

  CI-20190529: 20190529
  CI_DRM_7963: e0d737598eb749378a5dc4ed3dfafc6f79d512cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5448: 116020b1f83c1b3994c76882df7f77b6731d78ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16610: 1b69e08389bd2a60c87d99bbb75687c781368d24 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16610/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
