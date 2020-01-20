Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF7914287D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 11:51:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45DD76E8C2;
	Mon, 20 Jan 2020 10:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 097AB6E8C2;
 Mon, 20 Jan 2020 10:51:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 014E9A00E9;
 Mon, 20 Jan 2020 10:51:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>
Date: Mon, 20 Jan 2020 10:51:31 -0000
Message-ID: <157951749100.679.10493036005554980318@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200117134717.2703-1-shawn.c.lee@intel.com>
In-Reply-To: <20200117134717.2703-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Check_require_bandwidth_did_not_exceed_LSPCON_limitati?=
 =?utf-8?q?on?=
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

Series: drm/i915: Check require bandwidth did not exceed LSPCON limitation
URL   : https://patchwork.freedesktop.org/series/72157/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7758_full -> Patchwork_16143_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16143_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-hsw:          [PASS][1] -> [TIMEOUT][2] ([fdo#112271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-hsw7/igt@gem_busy@close-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-hsw5/igt@gem_busy@close-race.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb2/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-iclb6/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-glk:          [PASS][9] -> [INCOMPLETE][10] ([i915#530] / [i915#58] / [k.org#198133])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-glk5/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-glk2/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
    - shard-kbl:          [PASS][11] -> [INCOMPLETE][12] ([fdo#103665] / [i915#530])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl1/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-kbl6/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-kbl:          [PASS][13] -> [TIMEOUT][14] ([fdo#112271] / [i915#530])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#520])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [PASS][17] -> [INCOMPLETE][18] ([CI#80] / [fdo#103927] / [i915#530])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-hsw:          [PASS][19] -> [INCOMPLETE][20] ([i915#530] / [i915#61])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-hsw8/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-hsw7/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl2/igt@i915_suspend@sysfs-reader.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-kbl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#109])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-skl6/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl3/igt@kms_flip@flip-vs-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-apl2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#49])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-skl10/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#173])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb8/igt@kms_psr@no_drrs.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#112080]) +13 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb1/igt@perf_pmu@busy-check-all-vcs1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-iclb5/igt@perf_pmu@busy-check-all-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109276]) +12 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-iclb:         [FAIL][37] ([i915#570]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_ctx_persistence@processes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-iclb6/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][39] ([fdo#109276] / [fdo#112080]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_ctx_persistence@vcs1-queued.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-iclb:         [SKIP][41] ([fdo#109276]) -> [PASS][42] +19 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-iclb1/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][43] ([i915#140]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb2/igt@gem_exec_balancer@hang.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-iclb6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][45] ([fdo#112080]) -> [PASS][46] +12 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][47] ([fdo#112146]) -> [PASS][48] +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-kbl:          [TIMEOUT][49] ([fdo#112271] / [i915#530]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][51] ([fdo#103665] / [i915#530]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-kbl2/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][53] ([i915#413]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@i915_pm_rps@reset.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-iclb4/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live_execlists:
    - shard-kbl:          [INCOMPLETE][55] ([fdo#103665] / [fdo#112175] / [fdo#112259]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl6/igt@i915_selftest@live_execlists.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-kbl4/igt@i915_selftest@live_execlists.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [DMESG-WARN][57] ([i915#109]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl3/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-skl3/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][63] ([i915#34]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [INCOMPLETE][65] ([i915#140] / [i915#250]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb6/igt@kms_psr@psr2_sprite_plane_onoff.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7758 -> Patchwork_16143

  CI-20190529: 20190529
  CI_DRM_7758: d19270ce1f367fbfc1ff3b539bcb50e11ded181f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5371: 1b2816124ec3dbd53b81725d39292f45d41d895b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16143: 33dd964d640714b4136000d72312d66e63339c7d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
