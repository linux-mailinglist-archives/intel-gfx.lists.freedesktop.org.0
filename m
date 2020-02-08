Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2FC156360
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 09:01:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 720576E198;
	Sat,  8 Feb 2020 08:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7282D6E198;
 Sat,  8 Feb 2020 08:01:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 325DDA0096;
 Sat,  8 Feb 2020 08:01:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexey Budankov" <alexey.budankov@linux.intel.com>
Date: Sat, 08 Feb 2020 08:01:18 -0000
Message-ID: <158114887817.30226.18109942715886053266@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <576a6141-36d4-14c0-b395-8d195892b916@linux.intel.com>
In-Reply-To: <576a6141-36d4-14c0-b395-8d195892b916@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_CAP=5FPERFMON_to_secure_system_performance_monitoring_an?=
 =?utf-8?q?d_observability_=28rev3=29?=
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

Series: Introduce CAP_PERFMON to secure system performance monitoring and observability (rev3)
URL   : https://patchwork.freedesktop.org/series/72273/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7871_full -> Patchwork_16439_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16439_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16439_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16439_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb2/igt@gem_ctx_exec@basic-nohangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-iclb7/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-hsw4/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16439_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_blits@basic:
    - shard-kbl:          [PASS][4] -> [INCOMPLETE][5] ([fdo#103665])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-kbl1/igt@gem_blits@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-kbl3/igt@gem_blits@basic.html

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#112080]) +15 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-glk:          [PASS][8] -> [INCOMPLETE][9] ([i915#58] / [k.org#198133])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-glk7/igt@gem_ctx_exec@basic-nohangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-glk4/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-kbl:          [PASS][10] -> [DMESG-WARN][11] ([i915#180]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-kbl3/igt@gem_ctx_isolation@vecs0-s3.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-kbl2/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276]) +19 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-iclb6/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([i915#677])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112146]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-hsw:          [PASS][18] -> [FAIL][19] ([i915#694])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-hsw8/igt@gem_partial_pwrite_pread@write.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-hsw2/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][20] -> [FAIL][21] ([i915#644])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [PASS][22] -> [FAIL][23] ([i915#818])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-hsw1/igt@gem_tiled_blits@normal.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-hsw2/igt@gem_tiled_blits@normal.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-apl:          [PASS][24] -> [DMESG-WARN][25] ([i915#183])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-apl1/igt@gem_tiled_swapping@non-threaded.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-apl6/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180]) +4 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-apl2/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][28] -> [FAIL][29] ([i915#454])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#54])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#79])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#79])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][36] -> [FAIL][37] ([i915#899])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][38] -> [SKIP][39] ([fdo#109441]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [PASS][40] -> [INCOMPLETE][41] ([i915#61])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-hsw8/igt@perf_pmu@cpu-hotplug.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-hsw4/igt@perf_pmu@cpu-hotplug.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][42] ([i915#570] / [i915#679]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl10/igt@gem_ctx_persistence@processes.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-skl9/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_shared@q-independent-blt:
    - shard-kbl:          [FAIL][44] ([fdo#112118] / [i915#935]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-kbl1/igt@gem_ctx_shared@q-independent-blt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-kbl4/igt@gem_ctx_shared@q-independent-blt.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][46] ([i915#677]) -> [PASS][47] +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][48] ([fdo#112146]) -> [PASS][49] +7 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-hsw:          [FAIL][50] ([i915#694]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-hsw5/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][52] ([i915#69]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl8/igt@gem_softpin@noreloc-s3.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-skl9/igt@gem_softpin@noreloc-s3.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][54] ([i915#180]) -> [PASS][55] +3 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][56] ([i915#716]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][58] ([i915#454]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [FAIL][60] ([i915#413]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-tglb1/igt@i915_pm_rps@reset.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-tglb1/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][62] ([i915#413]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb7/igt@i915_pm_rps@waitboost.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-iclb8/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][64] ([i915#553] / [i915#725]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-hsw5/igt@i915_selftest@live_blt.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-hsw7/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gtt:
    - shard-skl:          [TIMEOUT][66] ([fdo#111732] / [fdo#112271]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl2/igt@i915_selftest@live_gtt.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-skl1/igt@i915_selftest@live_gtt.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [DMESG-WARN][68] ([i915#180]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-apl6/igt@i915_suspend@debugfs-reader.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-apl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][70] ([fdo#108145]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][72] ([i915#173]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb1/igt@kms_psr@no_drrs.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-iclb7/igt@kms_psr@no_drrs.html

  * igt@kms_psr@suspend:
    - shard-skl:          [INCOMPLETE][74] ([i915#198]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl2/igt@kms_psr@suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-skl7/igt@kms_psr@suspend.html

  * igt@perf_pmu@init-sema-vcs1:
    - shard-iclb:         [SKIP][76] ([fdo#112080]) -> [PASS][77] +9 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb7/igt@perf_pmu@init-sema-vcs1.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-iclb2/igt@perf_pmu@init-sema-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][78] ([i915#831]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-hsw8/igt@prime_mmap_coherency@ioctl-errors.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-hsw4/igt@prime_mmap_coherency@ioctl-errors.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][80] ([fdo#109276]) -> [PASS][81] +19 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-kbl:          [INCOMPLETE][82] ([fdo#103665] / [i915#667]) -> [INCOMPLETE][83] ([fdo#103665])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-kbl2/igt@gem_ctx_exec@basic-nohangcheck.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-kbl3/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][84] ([i915#818]) -> [FAIL][85] ([i915#694])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-hsw5/igt@gem_tiled_blits@interruptible.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/shard-hsw4/igt@gem_tiled_blits@interruptible.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112118]: https://bugs.freedesktop.org/show_bug.cgi?id=112118
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#935]: https://gitlab.freedesktop.org/drm/intel/issues/935
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7871 -> Patchwork_16439

  CI-20190529: 20190529
  CI_DRM_7871: c9b0237ee7ffb1bbb62f864f0b2d7b290ee1313d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5419: 44913a91e77434b03001bb9ea53216cd03c476e6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16439: 8b8a811f8a617ad2a567f9502178826467119a9e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
