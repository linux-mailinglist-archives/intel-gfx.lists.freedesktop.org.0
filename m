Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5506B140465
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 08:17:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EC7C6F3E8;
	Fri, 17 Jan 2020 07:17:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2B9866F3E8;
 Fri, 17 Jan 2020 07:17:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 22D37A011A;
 Fri, 17 Jan 2020 07:17:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Fri, 17 Jan 2020 07:17:15 -0000
Message-ID: <157924543513.26756.3693619228771457746@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115012305.27395-1-vivek.kasireddy@intel.com>
In-Reply-To: <20200115012305.27395-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_Lookup_the_i2c_bus_from_ACPI_NS_only_if_CONFIG=5FA?=
 =?utf-8?q?CPI=3Dy_=28v2=29?=
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

Series: drm/i915/dsi: Lookup the i2c bus from ACPI NS only if CONFIG_ACPI=y (v2)
URL   : https://patchwork.freedesktop.org/series/72030/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7746_full -> Patchwork_16102_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16102_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_pm_rc6_residency@rc6-idle}:
    - shard-hsw:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-hsw2/igt@i915_pm_rc6_residency@rc6-idle.html

  
Known issues
------------

  Here are the changes found in Patchwork_16102_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#112080]) +10 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-iclb5/igt@gem_busy@busy-vcs1.html

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][4] -> [INCOMPLETE][5] ([i915#977])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb8/igt@gem_busy@close-race.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-tglb3/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-skl:          [PASS][6] -> [INCOMPLETE][7] ([i915#69])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl5/igt@gem_ctx_isolation@vcs0-s3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-skl5/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#109276] / [fdo#112080]) +5 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-iclb6/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([i915#470])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb6/igt@gem_eio@reset-stress.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-tglb8/igt@gem_eio@reset-stress.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([fdo#111593] / [i915#472]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-tglb8/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_reloc@basic-active:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] ([i915#472]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb7/igt@gem_exec_reloc@basic-active.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-tglb6/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([i915#677])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-skl:          [PASS][18] -> [TIMEOUT][19] ([fdo#112271])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl9/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-skl1/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#109276]) +17 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([fdo#111606] / [fdo#111677] / [i915#472]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * igt@gem_exec_schedule@preempt-queue-vebox:
    - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([fdo#111677] / [i915#472])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb3/igt@gem_exec_schedule@preempt-queue-vebox.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-tglb8/igt@gem_exec_schedule@preempt-queue-vebox.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#112146]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@gem_exec_schedule@wide-bsd.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-skl:          [PASS][28] -> [TIMEOUT][29] ([fdo#112271] / [i915#530])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-skl6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [PASS][30] -> [TIMEOUT][31] ([fdo#112271] / [i915#530]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-apl:          [PASS][32] -> [TIMEOUT][33] ([fdo#112271] / [i915#530])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl7/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-apl4/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [PASS][34] -> [INCOMPLETE][35] ([fdo#103665] / [i915#530]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl1/igt@gem_persistent_relocs@forked-thrashing.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [PASS][36] -> [INCOMPLETE][37] ([i915#707] / [i915#796])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb2/igt@gem_pipe_control_store_loop@reused-buffer.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-tglb8/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][38] -> [FAIL][39] ([i915#644])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [PASS][40] -> [DMESG-WARN][41] ([i915#118] / [i915#95])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk3/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][42] -> [FAIL][43] ([i915#413])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@i915_pm_rps@waitboost.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-iclb2/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [PASS][44] -> [DMESG-FAIL][45] ([i915#725])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-hsw7/igt@i915_selftest@live_blt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-hsw5/igt@i915_selftest@live_blt.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][46] -> [DMESG-WARN][47] ([i915#109]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl4/igt@kms_color@pipe-a-ctm-0-5.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_frontbuffer_tracking@fbc-tilingchange:
    - shard-tglb:         [PASS][48] -> [FAIL][49] ([i915#49]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-tilingchange.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-tilingchange.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180]) +6 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][52] -> [DMESG-WARN][53] ([i915#180]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([fdo#108145]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][56] -> [SKIP][57] ([fdo#109642] / [fdo#111068])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-iclb8/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([fdo#109441]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][60] -> [FAIL][61] ([i915#31])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl6/igt@kms_setmode@basic.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-apl3/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@drm_import_export@prime:
    - shard-hsw:          [INCOMPLETE][62] ([CI#80] / [i915#61]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-hsw5/igt@drm_import_export@prime.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-hsw2/igt@drm_import_export@prime.html

  * igt@gem_cs_tlb@vcs1:
    - shard-tglb:         [INCOMPLETE][64] ([i915#472]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb4/igt@gem_cs_tlb@vcs1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-tglb3/igt@gem_cs_tlb@vcs1.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [FAIL][66] ([i915#679]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl3/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-apl7/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][68] ([fdo#109276] / [fdo#112080]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][70] ([i915#472] / [i915#476]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb7/igt@gem_exec_parallel@basic.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-tglb5/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][72] ([fdo#112080]) -> [PASS][73] +11 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [SKIP][74] ([fdo#112146]) -> [PASS][75] +4 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][76] ([i915#180]) -> [PASS][77] +3 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-kbl2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [TIMEOUT][78] ([fdo#112271] / [i915#530]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-skl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-tglb:         [FAIL][80] ([i915#520]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][82] ([i915#644]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [INCOMPLETE][84] ([i915#470] / [i915#472]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb8/igt@gem_sync@basic-all.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-tglb7/igt@gem_sync@basic-all.html

  * igt@i915_selftest@live_hangcheck:
    - shard-tglb:         [INCOMPLETE][86] -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb5/igt@i915_selftest@live_hangcheck.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-tglb5/igt@i915_selftest@live_hangcheck.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][88] ([i915#109]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-skl9/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][90] ([i915#72]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][92] ([i915#79]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          [INCOMPLETE][94] ([i915#58] / [k.org#198133]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-glk4/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-apl:          [DMESG-WARN][96] ([i915#180]) -> [PASS][97] +4 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [FAIL][98] ([i915#49]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_plane@plane-position-covered-pipe-c-planes:
    - shard-skl:          [FAIL][100] ([i915#247]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl8/igt@kms_plane@plane-position-covered-pipe-c-planes.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-skl3/igt@kms_plane@plane-position-covered-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][102] ([fdo#108145]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][104] ([fdo#108145] / [i915#265]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][106] ([fdo#109441]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb1/igt@kms_psr@psr2_primary_blt.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][108] ([fdo#109276]) -> [PASS][109] +17 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][110] ([IGT#28]) -> [SKIP][111] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][112] ([fdo#107724]) -> [SKIP][113] ([fdo#109349])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#977]: https://gitlab.freedesktop.org/drm/intel/issues/977
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7746 -> Patchwork_16102

  CI-20190529: 20190529
  CI_DRM_7746: 84d16aa256204bccaaf382504a69fe0822e67ba0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5365: e9ec0ed63b25c86861ffac3c8601cc4d1b910b65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16102: 65b4d46570db7dd68570208d9932d1cf49563d14 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16102/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
