Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C6714176F
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2020 13:10:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E91F6E05D;
	Sat, 18 Jan 2020 12:10:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2811E6E05D;
 Sat, 18 Jan 2020 12:10:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13742A41FB;
 Sat, 18 Jan 2020 12:10:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Sat, 18 Jan 2020 12:10:10 -0000
Message-ID: <157934941005.11508.2192221278281875614@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115012305.27395-1-vivek.kasireddy@intel.com>
In-Reply-To: <20200115012305.27395-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_Lookup_the_i2c_bus_from_ACPI_NS_only_if_CONFIG=5FA?=
 =?utf-8?b?Q1BJPXkgKHYyKSAocmV2Mik=?=
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

Series: drm/i915/dsi: Lookup the i2c bus from ACPI NS only if CONFIG_ACPI=y (v2) (rev2)
URL   : https://patchwork.freedesktop.org/series/72030/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7751_full -> Patchwork_16119_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16119_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_create@basic-files:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([fdo#111735] / [i915#472])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb1/igt@gem_ctx_create@basic-files.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-tglb3/igt@gem_ctx_create@basic-files.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb6/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#461] / [i915#472])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#472] / [i915#476])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb5/igt@gem_eio@kms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-tglb6/igt@gem_eio@kms.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +18 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +10 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#472] / [i915#707])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd2.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-kbl1/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [PASS][21] -> [FAIL][22] ([i915#520])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-snb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-snb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-skl:          [PASS][23] -> [TIMEOUT][24] ([fdo#112271] / [i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-skl8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-apl:          [PASS][25] -> [TIMEOUT][26] ([fdo#112271] / [i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#644])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][29] -> [FAIL][30] ([i915#454])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [PASS][31] -> [DMESG-FAIL][32] ([i915#553] / [i915#725])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-hsw2/igt@i915_selftest@live_blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-hsw5/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - shard-glk:          [PASS][33] -> [INCOMPLETE][34] ([i915#529] / [i915#58] / [k.org#198133])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-glk2/igt@i915_selftest@live_execlists.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-glk1/igt@i915_selftest@live_execlists.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl3/igt@i915_suspend@sysfs-reader.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-a-ctm-negative:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#109]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl3/igt@kms_color@pipe-a-ctm-negative.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-skl8/igt@kms_color@pipe-a-ctm-negative.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([IGT#5] / [i915#697])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([IGT#5])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#79])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#699])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl3/igt@kms_flip_tiling@flip-changes-tiling.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-skl10/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([fdo#108145] / [i915#265]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109642] / [fdo#111068])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb4/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][51] -> [FAIL][52] ([i915#173])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@kms_psr@no_drrs.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#31])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl1/igt@kms_setmode@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-skl1/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][57] ([fdo#112080]) -> [PASS][58] +11 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb6/igt@gem_busy@extended-parallel-vcs1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb4/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [SKIP][59] ([fdo#109276] / [fdo#112080]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb6/igt@gem_ctx_isolation@vcs1-reset.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb2/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-apl:          [FAIL][61] ([i915#679]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl4/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-apl8/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][63] ([fdo#110841]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@wait-immediate:
    - shard-tglb:         [INCOMPLETE][65] ([i915#472]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb6/igt@gem_eio@wait-immediate.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-tglb3/igt@gem_eio@wait-immediate.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][67] ([fdo#111593] / [i915#472]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb6/igt@gem_exec_gttfill@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-tglb1/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][69] ([i915#677]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][71] ([fdo#112146]) -> [PASS][72] +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [INCOMPLETE][73] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [INCOMPLETE][75] ([fdo#111677] / [i915#472]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-kbl:          [TIMEOUT][77] ([fdo#112271] / [i915#530]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-skl:          [TIMEOUT][79] ([fdo#112271] / [i915#530]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-skl1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
    - shard-snb:          [TIMEOUT][81] ([fdo#112271] / [i915#530]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-snb7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-iclb:         [FAIL][83] ([i915#520]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-kbl:          [INCOMPLETE][85] ([fdo#103665] / [i915#530]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl4/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-kbl7/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][87] ([i915#644]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [INCOMPLETE][89] ([i915#472] / [i915#707]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb4/igt@gem_sync@basic-many-each.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-tglb8/igt@gem_sync@basic-many-each.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][91] ([i915#180]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl6/igt@gem_workarounds@suspend-resume.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-apl7/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][93] ([i915#413]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb5/igt@i915_pm_rps@waitboost.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb5/igt@i915_pm_rps@waitboost.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][95] ([i915#109]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl2/igt@kms_color@pipe-a-ctm-0-75.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-skl5/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][97] ([i915#300]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][99] ([i915#221]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl2/igt@kms_flip@flip-vs-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-skl9/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [FAIL][101] ([i915#49]) -> [PASS][102] +3 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][103] ([i915#56]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][105] ([fdo#108145]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-skl:          [DMESG-WARN][107] ([IGT#6]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl2/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-skl7/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][109] ([fdo#109441]) -> [PASS][110] +3 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb1/igt@kms_psr@psr2_suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][111] ([i915#180]) -> [PASS][112] +4 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][113] ([fdo#109276]) -> [PASS][114] +21 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][115] ([IGT#28]) -> [SKIP][116] ([fdo#109276] / [fdo#112080])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][117] ([i915#468]) -> [FAIL][118] ([i915#454])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7751 -> Patchwork_16119

  CI-20190529: 20190529
  CI_DRM_7751: bffb5bf41a2e3d84ee5043dcccad49578656a012 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16119: d09b3c71bd509fc18699527494526f0c6c3582a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16119/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
