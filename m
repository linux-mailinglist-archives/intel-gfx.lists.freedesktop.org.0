Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD4213B074
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 18:07:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02B776E406;
	Tue, 14 Jan 2020 17:07:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C9D066E406;
 Tue, 14 Jan 2020 17:07:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C08BAA011C;
 Tue, 14 Jan 2020 17:07:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 14 Jan 2020 17:07:13 -0000
Message-ID: <157902163375.24909.17942694326619771854@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915=3A_Make_a_copy_of_the_ggtt?=
 =?utf-8?q?_view_for_slave_plane?=
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

Series: series starting with [1/6] drm/i915: Make a copy of the ggtt view for slave plane
URL   : https://patchwork.freedesktop.org/series/71896/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7721_full -> Patchwork_16058_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16058_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16058_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16058_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-hsw7/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16058_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-switch:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-switch.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-switch.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-apl:          [PASS][4] -> [FAIL][5] ([i915#679])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl4/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-apl7/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#110841])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#110854])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([fdo#111593] / [i915#472])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb1/igt@gem_exec_gttfill@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb4/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([i915#677])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112146]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109276]) +12 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-chain-vebox:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([fdo#111677] / [i915#472])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb8/igt@gem_exec_schedule@preempt-queue-chain-vebox.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb8/igt@gem_exec_schedule@preempt-queue-chain-vebox.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([fdo#111606] / [fdo#111677] / [i915#472])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [PASS][22] -> [TIMEOUT][23] ([fdo#112271])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-hsw:          [PASS][24] -> [FAIL][25] ([i915#520])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [PASS][26] -> [INCOMPLETE][27] ([i915#472] / [i915#707])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb4/igt@gem_sync@basic-many-each.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb4/igt@gem_sync@basic-many-each.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][28] -> [INCOMPLETE][29] ([i915#472]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb4/igt@gem_sync@basic-store-all.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb6/igt@gem_sync@basic-store-all.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [PASS][30] -> [DMESG-WARN][31] ([i915#109])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl8/igt@kms_color@pipe-b-ctm-negative.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-skl3/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#79])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [PASS][34] -> [FAIL][35] ([i915#49]) +5 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +5 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][38] -> [INCOMPLETE][39] ([i915#123] / [i915#69])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([fdo#108145])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#109441])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb7/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][44] -> [INCOMPLETE][45] ([i915#460])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][46] -> [DMESG-WARN][47] ([i915#180]) +3 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][48] -> [SKIP][49] ([fdo#112080]) +13 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@perf_pmu@busy-vcs1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb7/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [DMESG-WARN][50] ([i915#180]) -> [PASS][51] +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-apl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][52] ([fdo#109276] / [fdo#112080]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [FAIL][54] ([i915#490]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-snb1/igt@gem_eio@in-flight-contexts-1us.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-snb6/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [INCOMPLETE][56] ([fdo#111736] / [i915#472]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb3/igt@gem_exec_await@wide-contexts.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb9/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [INCOMPLETE][58] ([i915#472]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb5/igt@gem_exec_reuse@single.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb7/igt@gem_exec_reuse@single.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][60] ([i915#677]) -> [PASS][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd2:
    - shard-tglb:         [INCOMPLETE][62] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][64] ([fdo#112146]) -> [PASS][65] +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][66] ([i915#463] / [i915#472]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb2/igt@gem_exec_schedule@smoketest-bsd1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb1/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [INCOMPLETE][68] ([fdo#111736] / [i915#460] / [i915#472]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb6/igt@gem_exec_suspend@basic-s3.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb5/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][70] ([fdo#112271] / [i915#530]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-iclb:         [FAIL][72] ([i915#520]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [INCOMPLETE][74] ([i915#470] / [i915#472]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb3/igt@gem_sync@basic-all.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb7/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][76] ([i915#472] / [i915#707]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb3/igt@gem_sync@basic-each.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb2/igt@gem_sync@basic-each.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-kbl:          [DMESG-WARN][78] ([i915#716]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl4/igt@gen9_exec_parse@allowed-single.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-kbl2/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-apl:          [FAIL][80] ([i915#39]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl1/igt@i915_pm_rps@min-max-config-loaded.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-apl6/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - shard-skl:          [DMESG-WARN][82] ([i915#109]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl2/igt@kms_color@pipe-b-ctm-green-to-red.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-skl6/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][84] ([i915#180]) -> [PASS][85] +5 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][86] ([i915#221]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][88] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][90] ([i915#49]) -> [PASS][91] +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][92] ([fdo#108145]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][94] ([fdo#108145] / [i915#265]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][96] ([fdo#109441]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb1/igt@kms_psr@psr2_suspend.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_rotation_crc@multiplane-rotation:
    - shard-tglb:         [FAIL][98] ([i915#199]) -> [PASS][99] +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb3/igt@kms_rotation_crc@multiplane-rotation.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb7/igt@kms_rotation_crc@multiplane-rotation.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-top:
    - shard-iclb:         [FAIL][100] ([i915#199]) -> [PASS][101] +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb1/igt@kms_rotation_crc@multiplane-rotation-cropping-top.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb4/igt@kms_rotation_crc@multiplane-rotation-cropping-top.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][102] ([i915#31]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl10/igt@kms_setmode@basic.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-skl9/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][104] ([fdo#112080]) -> [PASS][105] +11 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][106] ([fdo#109276]) -> [PASS][107] +14 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][108] ([fdo#109276] / [fdo#112080]) -> [FAIL][109] ([IGT#28])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [INCOMPLETE][110] ([fdo#108838] / [i915#472]) -> [INCOMPLETE][111] ([i915#472])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb3/igt@gem_exec_create@forked.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-tglb9/igt@gem_exec_create@forked.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][112] ([i915#818]) -> [FAIL][113] ([i915#694])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-hsw7/igt@gem_tiled_blits@interruptible.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-hsw7/igt@gem_tiled_blits@interruptible.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][114], [FAIL][115]) ([i915#716] / [i915#974]) -> [FAIL][116] ([i915#974])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl2/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl4/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/shard-kbl2/igt@runner@aborted.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#199]: https://gitlab.freedesktop.org/drm/intel/issues/199
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7721 -> Patchwork_16058

  CI-20190529: 20190529
  CI_DRM_7721: 3a2436c56fcf2d133d701a112eb1e0dfce0b846d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16058: c7678cf49f853d38faae7a7de3e2ee7837fbb689 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16058/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
