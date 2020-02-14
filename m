Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 547F615F8A6
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 22:20:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD6E46E87D;
	Fri, 14 Feb 2020 21:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0050C6E87D;
 Fri, 14 Feb 2020 21:20:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E390EA47EB;
 Fri, 14 Feb 2020 21:20:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Caz Yokoyama" <Caz.Yokoyama@intel.com>
Date: Fri, 14 Feb 2020 21:20:38 -0000
Message-ID: <158171523892.9931.4290418315974356420@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <3e1780946bd06f42b9d9e2a2fd1169923dd52e9f.1581444370.git.caz.yokoyama@intel.com>
In-Reply-To: <3e1780946bd06f42b9d9e2a2fd1169923dd52e9f.1581444370.git.caz.yokoyama@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/1=5D_drm/i915=3A_MCHBAR_memory_info_regi?=
 =?utf-8?q?sters_are_moved_since_GEN_12=2E?=
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

Series: series starting with [1/1] drm/i915: MCHBAR memory info registers are moved since GEN 12.
URL   : https://patchwork.freedesktop.org/series/73332/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7924_full -> Patchwork_16531_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16531_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16531_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16531_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_async@concurrent-writes-render:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-tglb2/igt@gem_exec_async@concurrent-writes-render.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-tglb1/igt@gem_exec_async@concurrent-writes-render.html

  
Known issues
------------

  Here are the changes found in Patchwork_16531_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +9 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb6/igt@gem_exec_schedule@preempt-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-iclb2/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-hsw:          [PASS][9] -> [FAIL][10] ([i915#694]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-hsw1/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#79])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-kbl:          [PASS][17] -> [INCOMPLETE][18] ([fdo#103665])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-apl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-apl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109276]) +15 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@blt}:
    - shard-apl:          [FAIL][23] ([i915#679]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-apl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox}:
    - shard-apl:          [INCOMPLETE][25] ([fdo#103927]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-apl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-kbl4/igt@gem_eio@in-flight-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-kbl3/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][29] ([fdo#109276]) -> [PASS][30] +23 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][31] ([i915#677]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-blt:
    - shard-kbl:          [INCOMPLETE][33] ([fdo#103665]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-kbl3/igt@gem_exec_schedule@pi-shared-iova-blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-kbl3/igt@gem_exec_schedule@pi-shared-iova-blt.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][35] ([fdo#112146]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][37] ([i915#644]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-skl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-hsw:          [FAIL][39] -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw5/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-hsw7/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-hsw:          [FAIL][41] ([i915#694]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw1/igt@gen7_exec_parse@basic-allocation.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-hsw5/igt@gen7_exec_parse@basic-allocation.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][43] ([i915#69]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl10/igt@i915_suspend@forcewake.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-skl4/igt@i915_suspend@forcewake.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][45] ([i915#221]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl5/igt@kms_flip@flip-vs-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-skl5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:
    - shard-glk:          [FAIL][49] ([i915#49]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-glk6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-glk3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][51] ([fdo#108145]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb6/igt@kms_psr@psr2_cursor_render.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][55] ([i915#31]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl7/igt@kms_setmode@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-skl1/igt@kms_setmode@basic.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][57] ([fdo#112080]) -> [PASS][58] +10 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb3/igt@perf_pmu@init-busy-vcs1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][59] ([i915#831]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-hsw6/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][61] ([IGT#28]) -> [SKIP][62] ([fdo#112080])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][63] ([i915#694]) -> [FAIL][64] ([i915#818])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw7/igt@gem_tiled_blits@normal.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-hsw1/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][65] ([i915#468]) -> [FAIL][66] ([i915#454])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/shard-tglb8/igt@i915_pm_dc@dc6-psr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7924 -> Patchwork_16531

  CI-20190529: 20190529
  CI_DRM_7924: d4ea682de87f4e4378f34f0a196e8fa8983bd306 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5436: 00a64098aaae2ac3154841d76c7b034165380282 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16531: cbf3d2d61711eb72a4bbb3180d707e637e3971ea @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16531/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
