Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D1812DBC4
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 21:06:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C091089F8E;
	Tue, 31 Dec 2019 20:06:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5C27589F8E;
 Tue, 31 Dec 2019 20:06:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 491C6A011A;
 Tue, 31 Dec 2019 20:06:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai Vehmanen" <kai.vehmanen@linux.intel.com>
Date: Tue, 31 Dec 2019 20:06:15 -0000
Message-ID: <157782277526.26889.11284719730236528209@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191231140007.31728-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20191231140007.31728-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Limit_audio_CDCLK=3E=3D2*BCLK_constraint_back_to_GLK_o?=
 =?utf-8?q?nly_=28rev2=29?=
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

Series: drm/i915: Limit audio CDCLK>=2*BCLK constraint back to GLK only (rev2)
URL   : https://patchwork.freedesktop.org/series/71525/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7657_full -> Patchwork_15954_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15954_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15954_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15954_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb8/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html

  
Known issues
------------

  Here are the changes found in Patchwork_15954_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb7/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110841])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@kms:
    - shard-glk:          [PASS][9] -> [INCOMPLETE][10] ([i915#58] / [k.org#198133])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk8/igt@gem_eio@kms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-glk3/igt@gem_eio@kms.html
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#476])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb7/igt@gem_eio@kms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-tglb2/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#110854])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_reloc@basic-active:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb6/igt@gem_exec_reloc@basic-active.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-tglb8/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_reloc@basic-gtt-read-active:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#109]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl5/igt@gem_exec_reloc@basic-gtt-read-active.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-skl3/igt@gem_exec_reloc@basic-gtt-read-active.html

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#435])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb1/igt@gem_exec_reuse@single.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-tglb6/igt@gem_exec_reuse@single.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([fdo#111606] / [fdo#111677])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html

  * igt@gem_exec_schedule@preempt-queue-vebox:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([fdo#111677])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@gem_exec_schedule@preempt-queue-vebox.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-tglb5/igt@gem_exec_schedule@preempt-queue-vebox.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109276]) +20 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112146]) +8 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-blt:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#470])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb8/igt@gem_exec_schedule@smoketest-blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-tglb3/igt@gem_exec_schedule@smoketest-blt.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#520])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-tglb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#69])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl1/igt@gem_softpin@noreloc-s3.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-skl10/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#470] / [i915#472])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb2/igt@gem_sync@basic-all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-tglb8/igt@gem_sync@basic-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][37] -> [FAIL][38] ([i915#454])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#54]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#300])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][45] -> [FAIL][46] ([i915#79])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [PASS][47] -> [FAIL][48] ([i915#46])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][49] -> [FAIL][50] ([i915#49])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([fdo#108145] / [i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109642] / [fdo#111068]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb8/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109441]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf@disabled-read-error:
    - shard-iclb:         [PASS][57] -> [DMESG-WARN][58] ([i915#645])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb4/igt@perf@disabled-read-error.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb8/igt@perf@disabled-read-error.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#112080]) +12 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@perf_pmu@busy-vcs1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb7/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][61] ([fdo#112080]) -> [PASS][62] +10 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][63] ([fdo#109276] / [fdo#112080]) -> [PASS][64] +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb5/igt@gem_ctx_isolation@vcs1-none.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb2/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [FAIL][65] ([i915#679]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl5/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-skl8/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [INCOMPLETE][67] ([fdo#111736]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@gem_exec_await@wide-contexts.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-tglb8/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][69] ([i915#476]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb9/igt@gem_exec_parallel@basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-tglb1/igt@gem_exec_parallel@basic.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][71] ([i915#677]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-tglb:         [INCOMPLETE][73] ([fdo#111677]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-tglb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][75] ([fdo#112146]) -> [PASS][76] +5 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][77] ([i915#707]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb9/igt@gem_exec_schedule@smoketest-vebox.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-tglb1/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][79] ([i915#530]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-apl3/igt@gem_softpin@noreloc-s3.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-kbl:          [DMESG-WARN][83] ([i915#716]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl3/igt@gen9_exec_parse@allowed-all.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-kbl1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][85] ([i915#447]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb6/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][87] ([i915#413]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb6/igt@i915_pm_rps@waitboost.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb4/igt@i915_pm_rps@waitboost.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][89] ([i915#109]) -> [PASS][90] +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:
    - shard-glk:          [FAIL][91] ([i915#54]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk6/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - shard-snb:          [SKIP][93] ([fdo#109271]) -> [PASS][94] +3 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-snb2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-snb5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][95] ([i915#46]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][97] ([i915#49]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +5 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [DMESG-WARN][101] ([IGT#6]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl5/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-skl3/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][103] ([fdo#109441]) -> [PASS][104] +5 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][105] ([i915#31]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-apl8/igt@kms_setmode@basic.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-apl1/igt@kms_setmode@basic.html
    - shard-skl:          [FAIL][107] ([i915#31]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl1/igt@kms_setmode@basic.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-skl2/igt@kms_setmode@basic.html
    - shard-glk:          [FAIL][109] ([i915#31]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk3/igt@kms_setmode@basic.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-glk5/igt@kms_setmode@basic.html

  * igt@perf@oa-exponents:
    - shard-glk:          [FAIL][111] ([i915#84]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk8/igt@perf@oa-exponents.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-glk5/igt@perf@oa-exponents.html

  * igt@perf_pmu@enable-race-vcs1:
    - shard-tglb:         [INCOMPLETE][113] ([i915#435]) -> [PASS][114] +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@perf_pmu@enable-race-vcs1.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-tglb8/igt@perf_pmu@enable-race-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][115] ([fdo#109276]) -> [PASS][116] +19 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][117] ([IGT#28]) -> [SKIP][118] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [INCOMPLETE][119] ([fdo#103665]) -> [DMESG-WARN][120] ([i915#180])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl4/igt@i915_suspend@debugfs-reader.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-kbl7/igt@i915_suspend@debugfs-reader.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][121] ([i915#46]) -> [FAIL][122] ([i915#79])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#645]: https://gitlab.freedesktop.org/drm/intel/issues/645
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7657 -> Patchwork_15954

  CI-20190529: 20190529
  CI_DRM_7657: 265f77c05e67b37169ac1a9d750a2e2936928ea0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5355: 2ead76177f2546d3eec0abbd0d9e47cd36588199 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15954: ed3398d25f0f23742e9d396c5f9e513010e6b1cb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15954/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
