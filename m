Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A695114A973
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 19:09:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C3936E581;
	Mon, 27 Jan 2020 18:09:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 279416E581;
 Mon, 27 Jan 2020 18:09:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1DF90A010F;
 Mon, 27 Jan 2020 18:09:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Mon, 27 Jan 2020 18:09:37 -0000
Message-ID: <158014857709.9686.8927969920423999556@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200124013701.40609-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200124013701.40609-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_Fix_OA_context_id_overlap_with_idle_context_id_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/perf: Fix OA context id overlap with idle context id (rev2)
URL   : https://patchwork.freedesktop.org/series/72505/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7814_full -> Patchwork_16269_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16269_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-iclb7/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +11 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-y:
    - shard-apl:          [PASS][7] -> [INCOMPLETE][8] ([CI#80] / [fdo#103927])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-apl8/igt@gem_fence_thrash@bo-write-verify-threaded-y.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-apl8/igt@gem_fence_thrash@bo-write-verify-threaded-y.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([fdo#111870] / [i915#836])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-skl10/igt@gem_userptr_blits@sync-unmap-after-close.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-skl10/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][11] -> [INCOMPLETE][12] ([i915#58] / [k.org#198133])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-glk3/igt@gen9_exec_parse@allowed-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-glk5/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#39])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-skl1/igt@i915_pm_rps@min-max-config-loaded.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-skl1/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [PASS][15] -> [DMESG-FAIL][16] ([i915#725])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-hsw5/igt@i915_selftest@live_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-hsw7/igt@i915_selftest@live_blt.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +5 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#300])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([IGT#5] / [i915#697])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf_pmu@busy-start-vcs1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112080]) +9 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-iclb4/igt@perf_pmu@busy-start-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-iclb7/igt@perf_pmu@busy-start-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109276]) +28 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-iclb6/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][33] ([fdo#112080]) -> [PASS][34] +15 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_caching@read-writes:
    - shard-hsw:          [FAIL][35] -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-hsw7/igt@gem_caching@read-writes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-hsw4/igt@gem_caching@read-writes.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [fdo#112080]) -> [PASS][38] +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-iclb6/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][39] ([fdo#109276]) -> [PASS][40] +28 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_whisper@normal:
    - shard-glk:          [DMESG-WARN][45] ([i915#118] / [i915#95]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-glk2/igt@gem_exec_whisper@normal.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-glk8/igt@gem_exec_whisper@normal.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][47] ([i915#644]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [FAIL][49] ([i915#644]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-apl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-b-ctm-red-to-blue:
    - shard-skl:          [DMESG-WARN][53] ([i915#109]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-skl6/igt@kms_color@pipe-b-ctm-red-to-blue.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-skl1/igt@kms_color@pipe-b-ctm-red-to-blue.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [INCOMPLETE][55] ([i915#61]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-hsw6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-hsw6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +6 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][59] ([fdo#109642] / [fdo#111068]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-iclb6/igt@kms_psr2_su@page_flip.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][63] ([i915#69]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-skl9/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-skl9/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - shard-tglb:         [INCOMPLETE][65] ([i915#472] / [i915#756]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-tglb7/igt@perf@gen12-unprivileged-single-ctx-counters.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-tglb6/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][67] ([i915#831]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-hsw7/igt@prime_mmap_coherency@ioctl-errors.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][69] ([fdo#109276] / [fdo#112080]) -> [FAIL][70] ([IGT#28])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][71] ([IGT#28]) -> [SKIP][72] ([fdo#109276] / [fdo#112080])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-snb:          [SKIP][73] ([fdo#109271]) -> [INCOMPLETE][74] ([i915#82])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-snb4/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-snb6/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][75] ([fdo#109349]) -> [DMESG-WARN][76] ([fdo#107724])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@perf@gen12-mi-rpc:
    - shard-tglb:         [INCOMPLETE][77] ([i915#472] / [i915#756]) -> [TIMEOUT][78] ([fdo#112271] / [i915#472])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7814/shard-tglb7/igt@perf@gen12-mi-rpc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/shard-tglb1/igt@perf@gen12-mi-rpc.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#756]: https://gitlab.freedesktop.org/drm/intel/issues/756
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7814 -> Patchwork_16269

  CI-20190529: 20190529
  CI_DRM_7814: bc626bbb5b6efa3fb6a90407e85a04ae64461db6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5384: fd6896567f7d612c76207970376d4f1e634ded55 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16269: e09d05170d36fde12bbbdbf997dba5d19f0a970f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16269/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
