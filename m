Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CDC165FBB
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 15:30:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA71B6EDAA;
	Thu, 20 Feb 2020 14:30:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE8AD6EDA7;
 Thu, 20 Feb 2020 14:30:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E7EFBA47E7;
 Thu, 20 Feb 2020 14:30:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ross Zwisler" <zwisler@google.com>
Date: Thu, 20 Feb 2020 14:30:53 -0000
Message-ID: <158220905394.17409.3761015274590703241@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218203916.58636-1-jose.souza@intel.com>
In-Reply-To: <20200218203916.58636-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/psr=3A_Force_PSR_probe_only_after_full_initialization_=28?=
 =?utf-8?q?rev5=29?=
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

Series: drm/i915/psr: Force PSR probe only after full initialization (rev5)
URL   : https://patchwork.freedesktop.org/series/73436/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7963_full -> Patchwork_16607_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7963_full and Patchwork_16607_full:

### New IGT tests (58) ###

  * igt@i915_pm_backlight@bad-brightness:
    - Statuses : 3 pass(s) 4 skip(s)
    - Exec time: [0.0, 0.03] s

  * igt@i915_pm_backlight@basic-brightness:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 0.24] s

  * igt@i915_pm_backlight@fade:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 2.59] s

  * igt@i915_pm_backlight@fade_with_dpms:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 4.92] s

  * igt@i915_pm_backlight@fade_with_suspend:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 4.54] s

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
    - Exec time: [0.0, 0.05] s

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - Statuses : 8 pass(s)
    - Exec time: [3.0, 3.00] s

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - Statuses : 7 pass(s)
    - Exec time: [0.25, 5.02] s

  * igt@i915_pm_rpm@basic-rte:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [1.30, 11.45] s

  * igt@i915_pm_rpm@cursor:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 41.78] s

  * igt@i915_pm_rpm@cursor-dpms:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 41.22] s

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - Statuses : 7 pass(s)
    - Exec time: [10.44, 14.38] s

  * igt@i915_pm_rpm@debugfs-read:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 80.93] s

  * igt@i915_pm_rpm@dpms-lpsp:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 0.82] s

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 13.27] s

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 4.14] s

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 0.16] s

  * igt@i915_pm_rpm@drm-resources-equal:
    - Statuses : 7 pass(s)
    - Exec time: [0.79, 9.69] s

  * igt@i915_pm_rpm@fences:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 16.91] s

  * igt@i915_pm_rpm@fences-dpms:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 12.80] s

  * igt@i915_pm_rpm@gem-evict-pwrite:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.97] s

  * igt@i915_pm_rpm@gem-execbuf:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 15.56] s

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 42.66] s

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@i915_pm_rpm@gem-idle:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 9.26] s

  * igt@i915_pm_rpm@gem-pread:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 6.15] s

  * igt@i915_pm_rpm@i2c:
    - Statuses : 7 pass(s)
    - Exec time: [0.94, 11.24] s

  * igt@i915_pm_rpm@legacy-planes:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 169.38] s

  * igt@i915_pm_rpm@legacy-planes-dpms:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 146.54] s

  * igt@i915_pm_rpm@modeset-lpsp:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 4.76] s

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 53.13] s

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 16.77] s

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 4.00] s

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 9.55] s

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 6.65] s

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 72.05] s

  * igt@i915_pm_rpm@pc8-residency:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rpm@pm-caching:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 19.56] s

  * igt@i915_pm_rpm@pm-tiling:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 16.86] s

  * igt@i915_pm_rpm@reg-read-ioctl:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 8.09] s

  * igt@i915_pm_rpm@sysfs-read:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.94] s

  * igt@i915_pm_rpm@system-suspend:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 9.06] s

  * igt@i915_pm_rpm@system-suspend-devices:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 13.53] s

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 86.05] s

  * igt@i915_pm_rpm@system-suspend-modeset:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 13.73] s

  * igt@i915_pm_rpm@universal-planes:
    - Statuses : 7 pass(s)
    - Exec time: [2.86, 226.26] s

  * igt@i915_pm_rpm@universal-planes-dpms:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 195.60] s

  * igt@i915_pm_rps@basic-api:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@i915_pm_rps@min-max-config-idle:
    - Statuses : 8 pass(s)
    - Exec time: [0.11, 0.63] s

  * igt@i915_pm_rps@min-max-config-loaded:
    - Statuses : 1 fail(s) 7 pass(s)
    - Exec time: [0.32, 3.02] s

  * igt@i915_pm_rps@reset:
    - Statuses : 1 fail(s) 7 pass(s)
    - Exec time: [3.52, 3.66] s

  * igt@i915_pm_rps@waitboost:
    - Statuses : 1 fail(s) 7 pass(s)
    - Exec time: [2.52, 2.63] s

  * igt@i915_pm_sseu@full-enable:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 0.01] s

  

Known issues
------------

  Here are the changes found in Patchwork_16607_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110841])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@gem_exec_schedule@preempt-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-iclb1/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-hsw:          [PASS][11] -> [FAIL][12] ([i915#694])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw8/igt@gen7_exec_parse@basic-offset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-hsw5/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#454])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl7/igt@i915_suspend@sysfs-reader.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#72])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#488])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-tglb7/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#34])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl8/igt@kms_flip@plain-flip-ts-check.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-skl5/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         [PASS][25] -> [SKIP][26] ([i915#668]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#49])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf@oa-exponents:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#84])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk6/igt@perf@oa-exponents.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-glk5/igt@perf@oa-exponents.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109276]) +16 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-iclb8/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-iclb:         [FAIL][37] ([i915#1241]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_ctx_persistence@close-replace-race.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-iclb1/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][39] ([fdo#110854]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * {igt@gem_exec_schedule@implicit-read-write-bsd}:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd.html

  * {igt@gem_exec_schedule@implicit-write-read-bsd1}:
    - shard-iclb:         [SKIP][43] ([fdo#109276] / [i915#677]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +17 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@gem_exec_schedule@promotion-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][49] ([i915#644]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-a-cursor-size-change:
    - shard-snb:          [SKIP][51] ([fdo#109271]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-snb1/igt@kms_cursor_crc@pipe-a-cursor-size-change.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][53] ([i915#96]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [INCOMPLETE][57] ([i915#61]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-tglb:         [SKIP][59] ([i915#668]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][63] ([fdo#108145]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][65] ([fdo#109642] / [fdo#111068]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb6/igt@kms_psr2_su@page_flip.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][69] ([i915#69]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-kbl:          [INCOMPLETE][71] ([fdo#103665]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@perf@short-reads:
    - shard-kbl:          [TIMEOUT][73] ([fdo#112271] / [i915#51]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl6/igt@perf@short-reads.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-kbl1/igt@perf@short-reads.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [PASS][76] +12 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@perf_pmu@busy-vcs1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-iclb2/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][77] ([fdo#112080]) -> [FAIL][78] ([IGT#28]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][79] ([i915#818]) -> [FAIL][80] ([i915#694])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/shard-hsw7/igt@gem_tiled_blits@interruptible.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1241]: https://gitlab.freedesktop.org/drm/intel/issues/1241
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#488]: https://gitlab.freedesktop.org/drm/intel/issues/488
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7963 -> Patchwork_16607

  CI-20190529: 20190529
  CI_DRM_7963: e0d737598eb749378a5dc4ed3dfafc6f79d512cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5448: 116020b1f83c1b3994c76882df7f77b6731d78ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16607: dbe2fc981e60de0fe193361613c6c8bebb1b78e2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16607/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
