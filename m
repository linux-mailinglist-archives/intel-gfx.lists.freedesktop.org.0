Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48583176A50
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 03:00:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51D2A6E911;
	Tue,  3 Mar 2020 02:00:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A59C6E044;
 Tue,  3 Mar 2020 02:00:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82B7BA0071;
 Tue,  3 Mar 2020 02:00:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 03 Mar 2020 02:00:46 -0000
Message-ID: <158320084650.15378.3062215742036555342@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302145254.520447-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200302145254.520447-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_doclinks?=
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

Series: drm/i915: Fix doclinks
URL   : https://patchwork.freedesktop.org/series/74146/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8043_full -> Patchwork_16781_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16781_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16781_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16781_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_properties@connector-properties-atomic:
    - shard-glk:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-glk9/igt@kms_properties@connector-properties-atomic.html

  
Known issues
------------

  Here are the changes found in Patchwork_16781_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#112080]) +10 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb4/igt@gem_busy@extended-parallel-vcs1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-iclb6/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180]) +5 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-kbl2/igt@gem_ctx_isolation@bcs0-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-kbl7/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [PASS][6] -> [INCOMPLETE][7] ([fdo#103927])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-apl4/igt@gem_ctx_persistence@close-replace-race.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-apl2/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][8] -> [FAIL][9] ([i915#1127])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-tglb2/igt@gem_exec_balancer@hang.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-tglb8/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#109276] / [i915#677])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-iclb5/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([i915#677])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#109276]) +21 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112146]) +5 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb6/igt@gem_exec_schedule@wide-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [PASS][18] -> [INCOMPLETE][19] ([i915#58] / [k.org#198133])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-glk7/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][20] -> [FAIL][21] ([i915#644])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][22] -> [FAIL][23] ([i915#644])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#644])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-skl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-apl1/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#138])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl2/igt@i915_pm_rpm@basic-pci-d3-state.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-skl5/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@mock@buddy:
    - shard-skl:          [PASS][30] -> [INCOMPLETE][31] ([i915#1310] / [i915#1360])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl10/igt@i915_selftest@mock@buddy.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-skl7/igt@i915_selftest@mock@buddy.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][32] -> [INCOMPLETE][33] ([fdo#103665])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][34] -> [FAIL][35] ([i915#72])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#46])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#1188])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([fdo#108145] / [i915#265])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][42] -> [FAIL][43] ([i915#899])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109642] / [fdo#111068])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-iclb5/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][46] -> [SKIP][47] ([fdo#109441]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@perf@oa-exponents:
    - shard-glk:          [PASS][48] -> [FAIL][49] ([i915#84])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-glk9/igt@perf@oa-exponents.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-glk7/igt@perf@oa-exponents.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [SKIP][50] ([i915#677]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [SKIP][52] ([fdo#109276] / [i915#677]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd2.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][54] ([fdo#112146]) -> [PASS][55] +6 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][56] ([i915#716]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-glk2/igt@gen9_exec_parse@allowed-all.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][58] ([i915#413]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-tglb5/igt@i915_pm_rps@waitboost.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-tglb3/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][60] ([i915#180]) -> [PASS][61] +5 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-kbl3/igt@i915_suspend@forcewake.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-kbl3/igt@i915_suspend@forcewake.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][62] ([i915#34]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][64] ([i915#1188]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][66] ([i915#180]) -> [PASS][67] +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][68] ([fdo#108145]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][70] ([i915#173]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb1/igt@kms_psr@no_drrs.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-iclb2/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][72] ([fdo#109441]) -> [PASS][73] +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * {igt@perf@stress-open-close}:
    - shard-glk:          [INCOMPLETE][74] ([i915#1356] / [i915#58] / [k.org#198133]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-glk3/igt@perf@stress-open-close.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-glk9/igt@perf@stress-open-close.html

  * igt@perf_pmu@busy-accuracy-2-vcs1:
    - shard-iclb:         [SKIP][76] ([fdo#112080]) -> [PASS][77] +7 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb3/igt@perf_pmu@busy-accuracy-2-vcs1.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-iclb4/igt@perf_pmu@busy-accuracy-2-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][78] ([fdo#109276]) -> [PASS][79] +8 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-iclb2/igt@prime_busy@hang-bsd2.html

  * igt@prime_vgem@sync-bsd:
    - shard-skl:          [INCOMPLETE][80] ([i915#409]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-skl9/igt@prime_vgem@sync-bsd.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-skl10/igt@prime_vgem@sync-bsd.html

  
#### Warnings ####

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-snb:          [INCOMPLETE][82] ([i915#82]) -> [SKIP][83] ([fdo#109271])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-snb2/igt@i915_pm_rpm@cursor-dpms.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-snb6/igt@i915_pm_rpm@cursor-dpms.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-iclb:         [FAIL][84] -> [SKIP][85] ([fdo#110725] / [fdo#111614])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/shard-iclb2/igt@kms_big_fb@linear-16bpp-rotate-90.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/shard-iclb1/igt@kms_big_fb@linear-16bpp-rotate-90.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1127]: https://gitlab.freedesktop.org/drm/intel/issues/1127
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1310]: https://gitlab.freedesktop.org/drm/intel/issues/1310
  [i915#1356]: https://gitlab.freedesktop.org/drm/intel/issues/1356
  [i915#1360]: https://gitlab.freedesktop.org/drm/intel/issues/1360
  [i915#138]: https://gitlab.freedesktop.org/drm/intel/issues/138
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8043 -> Patchwork_16781

  CI-20190529: 20190529
  CI_DRM_8043: 7e5119254441cdf0764418bbf3f43f6547d30a8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5483: 1707153df224ffb6333c6c660a792b7f334eb3d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16781: 4da38358da4a06a48b027dcc77f317504279ae71 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16781/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
