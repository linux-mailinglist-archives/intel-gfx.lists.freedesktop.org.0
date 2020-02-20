Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F9D1665A6
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 19:00:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43FCF6EE25;
	Thu, 20 Feb 2020 18:00:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 32D5C6EE23;
 Thu, 20 Feb 2020 18:00:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2AECDA0003;
 Thu, 20 Feb 2020 18:00:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 20 Feb 2020 18:00:09 -0000
Message-ID: <158222160914.17406.17783529630548538843@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218223327.11058-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200218223327.11058-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C01/10=5D_drm/i915/debugfs=3A_Pass_guc?=
 =?utf-8?q?=5Flog_struct_to_i915=5Fguc=5Flog=5Finfo?=
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

Series: series starting with [CI,01/10] drm/i915/debugfs: Pass guc_log struct to i915_guc_log_info
URL   : https://patchwork.freedesktop.org/series/73610/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7963_full -> Patchwork_16611_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16611_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16611_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16611_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@bonded-slice:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@gem_exec_balancer@bonded-slice.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-tglb3/igt@gem_exec_balancer@bonded-slice.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7963_full and Patchwork_16611_full:

### New IGT tests (58) ###

  * igt@i915_pm_backlight@bad-brightness:
    - Statuses : 3 pass(s) 4 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@i915_pm_backlight@basic-brightness:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 0.23] s

  * igt@i915_pm_backlight@fade:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 2.59] s

  * igt@i915_pm_backlight@fade_with_dpms:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 4.92] s

  * igt@i915_pm_backlight@fade_with_suspend:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 5.02] s

  * igt@i915_pm_lpsp@edp-native:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.04] s

  * igt@i915_pm_lpsp@edp-panel-fitter:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.05] s

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
    - Exec time: [0.17, 4.97] s

  * igt@i915_pm_rpm@basic-rte:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [1.33, 11.39] s

  * igt@i915_pm_rpm@cursor:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 41.33] s

  * igt@i915_pm_rpm@cursor-dpms:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 40.58] s

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - Statuses : 7 pass(s)
    - Exec time: [10.31, 14.12] s

  * igt@i915_pm_rpm@debugfs-read:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 80.91] s

  * igt@i915_pm_rpm@dpms-lpsp:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 0.82] s

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 13.42] s

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 3.93] s

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 0.16] s

  * igt@i915_pm_rpm@drm-resources-equal:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 11.08] s

  * igt@i915_pm_rpm@fences:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 17.06] s

  * igt@i915_pm_rpm@fences-dpms:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 12.76] s

  * igt@i915_pm_rpm@gem-evict-pwrite:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.93] s

  * igt@i915_pm_rpm@gem-execbuf:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 14.10] s

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 42.76] s

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@i915_pm_rpm@gem-idle:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 9.21] s

  * igt@i915_pm_rpm@gem-pread:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 6.37] s

  * igt@i915_pm_rpm@i2c:
    - Statuses : 6 pass(s)
    - Exec time: [1.39, 11.37] s

  * igt@i915_pm_rpm@legacy-planes:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 169.75] s

  * igt@i915_pm_rpm@legacy-planes-dpms:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 150.38] s

  * igt@i915_pm_rpm@modeset-lpsp:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 4.97] s

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 55.05] s

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 17.88] s

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 4.12] s

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 8.96] s

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 8.36] s

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 72.03] s

  * igt@i915_pm_rpm@pc8-residency:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rpm@pm-caching:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 19.95] s

  * igt@i915_pm_rpm@pm-tiling:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 15.08] s

  * igt@i915_pm_rpm@reg-read-ioctl:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 8.00] s

  * igt@i915_pm_rpm@sysfs-read:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.16] s

  * igt@i915_pm_rpm@system-suspend:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 9.12] s

  * igt@i915_pm_rpm@system-suspend-devices:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 13.48] s

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 86.14] s

  * igt@i915_pm_rpm@system-suspend-modeset:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 14.80] s

  * igt@i915_pm_rpm@universal-planes:
    - Statuses : 7 pass(s)
    - Exec time: [2.95, 226.00] s

  * igt@i915_pm_rpm@universal-planes-dpms:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 195.58] s

  * igt@i915_pm_rps@basic-api:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@i915_pm_rps@min-max-config-idle:
    - Statuses : 8 pass(s)
    - Exec time: [0.11, 0.88] s

  * igt@i915_pm_rps@min-max-config-loaded:
    - Statuses : 1 fail(s) 7 pass(s)
    - Exec time: [0.31, 3.02] s

  * igt@i915_pm_rps@reset:
    - Statuses : 1 fail(s) 7 pass(s)
    - Exec time: [3.52, 3.69] s

  * igt@i915_pm_rps@waitboost:
    - Statuses : 1 fail(s) 7 pass(s)
    - Exec time: [2.52, 2.64] s

  * igt@i915_pm_sseu@full-enable:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 0.01] s

  

Known issues
------------

  Here are the changes found in Patchwork_16611_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl8/igt@gem_ctx_isolation@vcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-skl1/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#1127])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb2/igt@gem_exec_balancer@hang.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-tglb6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112080]) +9 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-hsw:          [PASS][13] -> [FAIL][14] ([i915#694]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-hsw4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@i915_selftest@live_gt_lrc:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#1233])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb8/igt@i915_selftest@live_gt_lrc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-tglb8/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_selftest@live_gtt:
    - shard-skl:          [PASS][17] -> [TIMEOUT][18] ([fdo#111732] / [fdo#112271])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl7/igt@i915_selftest@live_gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-skl7/igt@i915_selftest@live_gtt.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#488])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-tglb5/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl4/igt@kms_flip@flip-vs-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-apl6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#49])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk9/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-glk3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#49])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#899])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_vgem@wait-bsd2:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109276]) +15 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@prime_vgem@wait-bsd2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-iclb7/igt@prime_vgem@wait-bsd2.html

  
#### Possible fixes ####

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-iclb:         [FAIL][37] ([i915#1241]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_ctx_persistence@close-replace-race.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-iclb7/igt@gem_ctx_persistence@close-replace-race.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox}:
    - shard-skl:          [FAIL][39] ([i915#679]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * {igt@gem_exec_schedule@implicit-write-read-bsd1}:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [i915#677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][43] ([i915#677]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +12 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@gem_exec_schedule@promotion-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][49] ([i915#644]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-a-cursor-size-change:
    - shard-snb:          [SKIP][51] ([fdo#109271]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-size-change.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][53] ([i915#96]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][57] ([i915#79]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [INCOMPLETE][59] ([i915#61]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-tglb:         [SKIP][61] ([i915#668]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][65] ([fdo#108145]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][67] ([i915#173]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@kms_psr@no_drrs.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-iclb7/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][71] ([i915#69]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-kbl:          [INCOMPLETE][73] ([fdo#103665]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@perf@short-reads:
    - shard-kbl:          [TIMEOUT][75] ([fdo#112271] / [i915#51]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl6/igt@perf@short-reads.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-kbl4/igt@perf@short-reads.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][77] ([fdo#112080]) -> [PASS][78] +9 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][79] ([i915#831]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][81] ([fdo#112080]) -> [FAIL][82] ([IGT#28])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][83] ([i915#454]) -> [SKIP][84] ([i915#468]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb6/igt@i915_pm_dc@dc6-psr.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1127]: https://gitlab.freedesktop.org/drm/intel/issues/1127
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1241]: https://gitlab.freedesktop.org/drm/intel/issues/1241
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#488]: https://gitlab.freedesktop.org/drm/intel/issues/488
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7963 -> Patchwork_16611

  CI-20190529: 20190529
  CI_DRM_7963: e0d737598eb749378a5dc4ed3dfafc6f79d512cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5448: 116020b1f83c1b3994c76882df7f77b6731d78ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16611: 50bb392a051d3d642110516f74f2a22ab49e90b4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16611/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
