Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0012166758
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 20:42:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F9EB6EE27;
	Thu, 20 Feb 2020 19:42:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6DE766EE21;
 Thu, 20 Feb 2020 19:42:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6583AA0118;
 Thu, 20 Feb 2020 19:42:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Akeem G Abodunrin" <akeem.g.abodunrin@intel.com>
Date: Thu, 20 Feb 2020 19:42:01 -0000
Message-ID: <158222772138.17407.12846692526408581794@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218162105.12537-1-akeem.g.abodunrin@intel.com>
In-Reply-To: <20200218162105.12537-1-akeem.g.abodunrin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU2Vj?=
 =?utf-8?q?urity_mitigation_for_Intel_Gen7/7=2E5_HWs?=
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

Series: Security mitigation for Intel Gen7/7.5 HWs
URL   : https://patchwork.freedesktop.org/series/73615/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7963_full -> Patchwork_16614_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16614_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16614_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16614_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb2/igt@gem_exec_balancer@hang.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-tglb6/igt@gem_exec_balancer@hang.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7963_full and Patchwork_16614_full:

### New IGT tests (54) ###

  * igt@i915_pm_backlight@bad-brightness:
    - Statuses : 3 pass(s) 3 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@i915_pm_backlight@fade:
    - Statuses : 3 pass(s) 4 skip(s)
    - Exec time: [0.0, 2.59] s

  * igt@i915_pm_backlight@fade_with_dpms:
    - Statuses : 3 pass(s) 3 skip(s)
    - Exec time: [0.0, 8.39] s

  * igt@i915_pm_backlight@fade_with_suspend:
    - Statuses : 3 pass(s) 4 skip(s)
    - Exec time: [0.0, 4.50] s

  * igt@i915_pm_lpsp@edp-native:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_lpsp@edp-panel-fitter:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_lpsp@non-edp:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_lpsp@screens-disabled:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - Statuses : 7 pass(s)
    - Exec time: [3.00] s

  * igt@i915_pm_rpm@cursor:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 41.08] s

  * igt@i915_pm_rpm@cursor-dpms:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 41.58] s

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - Statuses : 6 pass(s)
    - Exec time: [10.45, 14.29] s

  * igt@i915_pm_rpm@debugfs-read:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 80.88] s

  * igt@i915_pm_rpm@dpms-lpsp:
    - Statuses : 3 pass(s) 4 skip(s)
    - Exec time: [0.0, 0.82] s

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - Statuses : 3 pass(s) 4 skip(s)
    - Exec time: [0.0, 13.35] s

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - Statuses : 2 pass(s) 4 skip(s)
    - Exec time: [0.0, 4.24] s

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - Statuses : 3 pass(s) 3 skip(s)
    - Exec time: [0.0, 0.16] s

  * igt@i915_pm_rpm@drm-resources-equal:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 11.05] s

  * igt@i915_pm_rpm@fences:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 14.84] s

  * igt@i915_pm_rpm@fences-dpms:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 16.65] s

  * igt@i915_pm_rpm@gem-evict-pwrite:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.94] s

  * igt@i915_pm_rpm@gem-execbuf:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 15.16] s

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 42.74] s

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@i915_pm_rpm@gem-idle:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 8.99] s

  * igt@i915_pm_rpm@gem-pread:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 6.35] s

  * igt@i915_pm_rpm@i2c:
    - Statuses : 6 pass(s)
    - Exec time: [1.22, 11.27] s

  * igt@i915_pm_rpm@legacy-planes:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 169.68] s

  * igt@i915_pm_rpm@legacy-planes-dpms:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 146.58] s

  * igt@i915_pm_rpm@modeset-lpsp:
    - Statuses : 3 pass(s) 4 skip(s)
    - Exec time: [0.0, 4.85] s

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - Statuses : 3 pass(s) 4 skip(s)
    - Exec time: [0.0, 49.55] s

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - Statuses : 3 pass(s) 3 skip(s)
    - Exec time: [0.0, 17.75] s

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - Statuses : 3 pass(s) 4 skip(s)
    - Exec time: [0.0, 4.18] s

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - Statuses : 3 pass(s) 4 skip(s)
    - Exec time: [0.0, 7.47] s

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - Statuses : 3 pass(s) 4 skip(s)
    - Exec time: [0.0, 6.52] s

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 73.91] s

  * igt@i915_pm_rpm@pc8-residency:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rpm@pm-caching:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 19.68] s

  * igt@i915_pm_rpm@pm-tiling:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 16.66] s

  * igt@i915_pm_rpm@reg-read-ioctl:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 7.98] s

  * igt@i915_pm_rpm@sysfs-read:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.14] s

  * igt@i915_pm_rpm@system-suspend:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 9.15] s

  * igt@i915_pm_rpm@system-suspend-devices:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 13.59] s

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 86.03] s

  * igt@i915_pm_rpm@system-suspend-modeset:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 14.59] s

  * igt@i915_pm_rpm@universal-planes:
    - Statuses : 6 pass(s)
    - Exec time: [6.64, 226.13] s

  * igt@i915_pm_rpm@universal-planes-dpms:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 199.13] s

  * igt@i915_pm_rps@min-max-config-idle:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.66] s

  * igt@i915_pm_rps@min-max-config-loaded:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.31, 3.03] s

  * igt@i915_pm_rps@reset:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [3.52, 3.66] s

  * igt@i915_pm_rps@waitboost:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [2.52, 2.62] s

  * igt@i915_pm_sseu@full-enable:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 0.01] s

  

Known issues
------------

  Here are the changes found in Patchwork_16614_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +21 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-kbl7/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-tglb:         [PASS][17] -> [FAIL][18] ([i915#488])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-tglb5/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#49])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk9/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-glk2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#49])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#123] / [i915#69])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#899])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf@short-reads:
    - shard-apl:          [PASS][33] -> [TIMEOUT][34] ([fdo#112271] / [i915#51])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl1/igt@perf@short-reads.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-apl8/igt@perf@short-reads.html

  
#### Possible fixes ####

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox}:
    - shard-skl:          [FAIL][35] ([i915#679]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * {igt@gem_exec_schedule@implicit-both-bsd1}:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [i915#677]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd2:
    - shard-iclb:         [SKIP][39] ([fdo#109276]) -> [PASS][40] +11 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@gem_exec_schedule@in-order-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-iclb1/igt@gem_exec_schedule@in-order-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][45] ([i915#644]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-a-cursor-size-change:
    - shard-snb:          [SKIP][47] ([fdo#109271]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-size-change.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-tglb:         [SKIP][51] ([i915#668]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][55] ([i915#173]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@kms_psr@no_drrs.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-iclb8/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][59] ([i915#31]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl9/igt@kms_setmode@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-skl7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][61] ([i915#69]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@short-reads:
    - shard-kbl:          [TIMEOUT][63] ([fdo#112271] / [i915#51]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl6/igt@perf@short-reads.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-kbl6/igt@perf@short-reads.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][65] ([fdo#112080]) -> [PASS][66] +13 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][67] ([fdo#112080]) -> [FAIL][68] ([IGT#28])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [INCOMPLETE][69] ([fdo#103665]) -> [DMESG-WARN][70] ([i915#180])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl6/igt@gem_eio@in-flight-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/shard-kbl1/igt@gem_eio@in-flight-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#488]: https://gitlab.freedesktop.org/drm/intel/issues/488
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7963 -> Patchwork_16614

  CI-20190529: 20190529
  CI_DRM_7963: e0d737598eb749378a5dc4ed3dfafc6f79d512cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5448: 116020b1f83c1b3994c76882df7f77b6731d78ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16614: bead3540e24e0cc9aaa21463979d04ac826bbe5c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16614/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
