Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4881660D4
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 16:22:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72F7C6E8E8;
	Thu, 20 Feb 2020 15:22:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 66F796E8E8;
 Thu, 20 Feb 2020 15:22:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E729A47E1;
 Thu, 20 Feb 2020 15:22:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Caz Yokoyama" <Caz.Yokoyama@intel.com>
Date: Thu, 20 Feb 2020 15:22:13 -0000
Message-ID: <158221213338.17408.48060630221065986@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <3e1780946bd06f42b9d9e2a2fd1169923dd52e9f.1581444370.git.caz.yokoyama@intel.com>
In-Reply-To: <3e1780946bd06f42b9d9e2a2fd1169923dd52e9f.1581444370.git.caz.yokoyama@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/1=5D_drm/i915=3A_MCHBAR_memory_info_regi?=
 =?utf-8?q?sters_are_moved_since_GEN_12=2E_=28rev3=29?=
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

Series: series starting with [1/1] drm/i915: MCHBAR memory info registers are moved since GEN 12. (rev3)
URL   : https://patchwork.freedesktop.org/series/73332/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7963_full -> Patchwork_16609_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7963_full and Patchwork_16609_full:

### New IGT tests (58) ###

  * igt@i915_pm_backlight@bad-brightness:
    - Statuses : 3 pass(s) 4 skip(s)
    - Exec time: [0.0, 0.03] s

  * igt@i915_pm_backlight@basic-brightness:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 0.23] s

  * igt@i915_pm_backlight@fade:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 2.59] s

  * igt@i915_pm_backlight@fade_with_dpms:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 4.82] s

  * igt@i915_pm_backlight@fade_with_suspend:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 4.50] s

  * igt@i915_pm_lpsp@edp-native:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.04] s

  * igt@i915_pm_lpsp@edp-panel-fitter:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.05] s

  * igt@i915_pm_lpsp@non-edp:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 0.12] s

  * igt@i915_pm_lpsp@screens-disabled:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 0.04] s

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - Statuses : 8 pass(s)
    - Exec time: [3.0, 3.00] s

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - Statuses : 7 pass(s)
    - Exec time: [0.25, 5.05] s

  * igt@i915_pm_rpm@basic-rte:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [1.39, 11.47] s

  * igt@i915_pm_rpm@cursor:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 42.05] s

  * igt@i915_pm_rpm@cursor-dpms:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 41.34] s

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - Statuses : 7 pass(s)
    - Exec time: [10.41, 14.33] s

  * igt@i915_pm_rpm@debugfs-read:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 80.92] s

  * igt@i915_pm_rpm@dpms-lpsp:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 0.82] s

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 13.41] s

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 4.04] s

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 0.18] s

  * igt@i915_pm_rpm@drm-resources-equal:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 11.01] s

  * igt@i915_pm_rpm@fences:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 16.98] s

  * igt@i915_pm_rpm@fences-dpms:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 13.00] s

  * igt@i915_pm_rpm@gem-evict-pwrite:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.92] s

  * igt@i915_pm_rpm@gem-execbuf:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 15.29] s

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 42.62] s

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@i915_pm_rpm@gem-idle:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 9.14] s

  * igt@i915_pm_rpm@gem-pread:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.80] s

  * igt@i915_pm_rpm@i2c:
    - Statuses : 7 pass(s)
    - Exec time: [0.90, 11.25] s

  * igt@i915_pm_rpm@legacy-planes:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 169.38] s

  * igt@i915_pm_rpm@legacy-planes-dpms:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 146.76] s

  * igt@i915_pm_rpm@modeset-lpsp:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 4.94] s

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 51.07] s

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 18.23] s

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 4.04] s

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 8.14] s

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 7.36] s

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 73.52] s

  * igt@i915_pm_rpm@pc8-residency:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rpm@pm-caching:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 19.74] s

  * igt@i915_pm_rpm@pm-tiling:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 16.86] s

  * igt@i915_pm_rpm@reg-read-ioctl:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 8.00] s

  * igt@i915_pm_rpm@sysfs-read:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.13] s

  * igt@i915_pm_rpm@system-suspend:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 9.01] s

  * igt@i915_pm_rpm@system-suspend-devices:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 13.50] s

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 85.90] s

  * igt@i915_pm_rpm@system-suspend-modeset:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 14.66] s

  * igt@i915_pm_rpm@universal-planes:
    - Statuses : 7 pass(s)
    - Exec time: [2.97, 226.18] s

  * igt@i915_pm_rpm@universal-planes-dpms:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 195.46] s

  * igt@i915_pm_rps@basic-api:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@i915_pm_rps@min-max-config-idle:
    - Statuses : 8 pass(s)
    - Exec time: [0.11, 0.60] s

  * igt@i915_pm_rps@min-max-config-loaded:
    - Statuses : 1 fail(s) 7 pass(s)
    - Exec time: [0.31, 3.02] s

  * igt@i915_pm_rps@reset:
    - Statuses : 1 fail(s) 7 pass(s)
    - Exec time: [3.52, 3.65] s

  * igt@i915_pm_rps@waitboost:
    - Statuses : 1 fail(s) 7 pass(s)
    - Exec time: [2.52, 2.64] s

  * igt@i915_pm_sseu@full-enable:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 0.01] s

  

Known issues
------------

  Here are the changes found in Patchwork_16609_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +9 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl1/igt@gem_eio@in-flight-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-apl3/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@gem_exec_schedule@wide-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-hsw:          [PASS][9] -> [FAIL][10] ([i915#694]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw1/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-hsw4/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-skl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-hsw:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-hsw4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live_gt_lrc:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#1233])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb8/igt@i915_selftest@live_gt_lrc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-tglb3/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_cursor_legacy@all-pipes-forked-bo:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#402])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb3/igt@kms_cursor_legacy@all-pipes-forked-bo.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-tglb3/igt@kms_cursor_legacy@all-pipes-forked-bo.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#488])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-tglb1/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [PASS][25] -> [SKIP][26] ([i915#668]) +6 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#69])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl5/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [PASS][31] -> [INCOMPLETE][32] ([i915#1176] / [i915#61])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw2/igt@perf_pmu@cpu-hotplug.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-hsw5/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109276]) +23 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-iclb5/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-iclb:         [FAIL][35] ([i915#1241]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_ctx_persistence@close-replace-race.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-iclb4/igt@gem_ctx_persistence@close-replace-race.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox}:
    - shard-skl:          [FAIL][37] ([i915#679]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][39] ([fdo#110854]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * {igt@gem_exec_schedule@implicit-write-read-bsd1}:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [i915#677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-iclb3/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][45] ([fdo#109276]) -> [PASS][46] +15 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [SKIP][47] ([fdo#112080]) -> [PASS][48] +10 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb6/igt@gem_exec_store@cachelines-vcs1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-iclb4/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][49] ([i915#644]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [FAIL][51] ([i915#644]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][53] ([i915#818]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@kms_cursor_crc@pipe-a-cursor-size-change:
    - shard-snb:          [SKIP][55] ([fdo#109271]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-size-change.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][59] ([i915#96]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][63] ([i915#79]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [INCOMPLETE][65] ([i915#61]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-hsw5/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-tglb:         [SKIP][67] ([i915#668]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][69] ([fdo#108145]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][71] ([i915#173]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@kms_psr@no_drrs.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-iclb4/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][75] ([i915#31]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl2/igt@kms_setmode@basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-apl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][77] ([i915#69]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-kbl:          [INCOMPLETE][79] ([fdo#103665]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@perf@short-reads:
    - shard-kbl:          [TIMEOUT][81] ([fdo#112271] / [i915#51]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl6/igt@perf@short-reads.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-kbl6/igt@perf@short-reads.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][83] ([i915#831]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-hsw4/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][85] ([fdo#112080]) -> [FAIL][86] ([IGT#28]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][87] ([i915#818]) -> [FAIL][88] ([i915#694])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw2/igt@gem_tiled_blits@normal.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/shard-hsw4/igt@gem_tiled_blits@normal.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1176]: https://gitlab.freedesktop.org/drm/intel/issues/1176
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1241]: https://gitlab.freedesktop.org/drm/intel/issues/1241
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#488]: https://gitlab.freedesktop.org/drm/intel/issues/488
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
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
  * Linux: CI_DRM_7963 -> Patchwork_16609

  CI-20190529: 20190529
  CI_DRM_7963: e0d737598eb749378a5dc4ed3dfafc6f79d512cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5448: 116020b1f83c1b3994c76882df7f77b6731d78ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16609: 8d576d7a32d859ba01ad2c4a0948387b8bbda35e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16609/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
