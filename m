Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B85FF141FD4
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Jan 2020 20:44:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 667876E440;
	Sun, 19 Jan 2020 19:43:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0CF986E43C;
 Sun, 19 Jan 2020 19:43:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03645A00C7;
 Sun, 19 Jan 2020 19:43:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 19 Jan 2020 19:43:57 -0000
Message-ID: <157946303798.23914.13719660987502376873@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200116184754.2860848-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200116184754.2860848-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915=3A_Keep_track_of_requ?=
 =?utf-8?q?est_among_the_scheduling_lists?=
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

Series: series starting with [CI,1/3] drm/i915: Keep track of request among the scheduling lists
URL   : https://patchwork.freedesktop.org/series/72131/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7757_full -> Patchwork_16134_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16134_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16134_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16134_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-kbl:          NOTRUN -> ([FAIL][1], [FAIL][2])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-kbl3/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          NOTRUN -> ([FAIL][3], [FAIL][4])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-apl6/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-apl6/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16134_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-glk7/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-glk7/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#679])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl5/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-skl3/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#110841])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111735] / [i915#472]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_balancer@hang:
    - shard-kbl:          [PASS][15] -> [INCOMPLETE][16] ([fdo#103665])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-kbl6/igt@gem_exec_balancer@hang.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-kbl4/igt@gem_exec_balancer@hang.html
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb8/igt@gem_exec_balancer@hang.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-tglb7/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([fdo#111593] / [i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-tglb4/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([i915#677]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109276]) +26 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([fdo#111606] / [fdo#111677] / [i915#472])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112146]) +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-hsw:          [PASS][29] -> [INCOMPLETE][30] ([i915#530] / [i915#61])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-hsw5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-hsw8/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [PASS][31] -> [TIMEOUT][32] ([fdo#112271])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-tglb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-apl:          [PASS][33] -> [INCOMPLETE][34] ([fdo#103927] / [i915#530])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-apl4/igt@gem_persistent_relocs@forked-thrashing.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-apl7/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#644])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][37] -> [FAIL][38] ([i915#413])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb4/igt@i915_pm_rps@waitboost.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-iclb8/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_execlists:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#472] / [i915#647])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb8/igt@i915_selftest@live_execlists.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-tglb3/igt@i915_selftest@live_execlists.html

  * igt@i915_suspend@debugfs-reader:
    - shard-iclb:         [PASS][41] -> [DMESG-WARN][42] ([fdo#111764])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb2/igt@i915_suspend@debugfs-reader.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-iclb5/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][43] -> [DMESG-WARN][44] ([i915#109]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-skl6/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][45] -> [INCOMPLETE][46] ([i915#300])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
    - shard-apl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180]) +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-hsw:          [PASS][51] -> [DMESG-WARN][52] ([i915#44])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-hsw7/igt@kms_flip@2x-flip-vs-modeset.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-hsw5/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#34]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl10/igt@kms_flip@plain-flip-fb-recreate.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-skl9/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip_tiling@flip-x-tiled:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([fdo#108145] / [i915#699])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl1/igt@kms_flip_tiling@flip-x-tiled.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-skl7/igt@kms_flip_tiling@flip-x-tiled.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-tglb:         [PASS][57] -> [FAIL][58] ([i915#49]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([fdo#108145]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][61] -> [SKIP][62] ([fdo#109441])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@perf@oa-exponents:
    - shard-apl:          [PASS][63] -> [INCOMPLETE][64] ([fdo#103927])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-apl1/igt@perf@oa-exponents.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-apl4/igt@perf@oa-exponents.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][65] -> [SKIP][66] ([fdo#112080]) +12 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-iclb5/igt@perf_pmu@busy-vcs1.html

  * igt@perf_pmu@enable-race-vecs0:
    - shard-tglb:         [PASS][67] -> [INCOMPLETE][68] ([i915#470] / [i915#472])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb4/igt@perf_pmu@enable-race-vecs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-tglb3/igt@perf_pmu@enable-race-vecs0.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][69] -> [FAIL][70] ([i915#831])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-hsw7/igt@prime_mmap_coherency@ioctl-errors.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-kbl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-kbl6/igt@gem_ctx_isolation@bcs0-s3.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-kbl3/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [FAIL][73] ([i915#679]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl4/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-skl10/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@processes:
    - shard-glk:          [FAIL][75] ([i915#570]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-glk2/igt@gem_ctx_persistence@processes.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-glk3/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-apl:          [FAIL][77] ([i915#679]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-apl3/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-apl2/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][79] ([fdo#109276] / [fdo#112080]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][81] ([i915#461] / [i915#472]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][83] ([i915#472] / [i915#476]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb3/igt@gem_eio@kms.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-tglb4/igt@gem_eio@kms.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [INCOMPLETE][85] ([fdo#111736] / [i915#472]) -> [PASS][86] +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb3/igt@gem_exec_await@wide-all.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-tglb1/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_parallel@vcs0-fds:
    - shard-tglb:         [INCOMPLETE][87] ([i915#470] / [i915#472]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb3/igt@gem_exec_parallel@vcs0-fds.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-tglb8/igt@gem_exec_parallel@vcs0-fds.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][89] ([fdo#112080]) -> [PASS][90] +13 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - shard-skl:          [DMESG-WARN][91] ([i915#109]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl6/igt@gem_exec_reloc@basic-gtt-wc-active.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-skl10/igt@gem_exec_reloc@basic-gtt-wc-active.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][93] ([i915#677]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][95] ([fdo#112146]) -> [PASS][96] +5 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb4/igt@gem_exec_schedule@preempt-bsd.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-iclb8/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [FAIL][97] ([i915#520]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-snb6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-skl:          [TIMEOUT][99] ([fdo#112271] / [i915#530]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-skl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-kbl:          [TIMEOUT][101] ([fdo#112271] / [i915#530]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@i915_pm_rpm@debugfs-read:
    - shard-skl:          [INCOMPLETE][103] ([i915#151]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl9/igt@i915_pm_rpm@debugfs-read.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-skl1/igt@i915_pm_rpm@debugfs-read.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-kbl:          [INCOMPLETE][105] ([fdo#103665] / [i915#151]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-kbl3/igt@i915_pm_rpm@system-suspend-modeset.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-kbl6/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][107] ([IGT#5]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][109] ([i915#79]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [FAIL][111] ([i915#49]) -> [PASS][112] +3 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-tglb:         [SKIP][113] ([i915#668]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb5/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-tglb5/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][115] ([i915#180]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][117] ([fdo#108145] / [i915#265]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][119] ([fdo#108145]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][121] ([fdo#109441]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb4/igt@kms_psr@psr2_primary_mmap_gtt.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][123] ([fdo#109276]) -> [PASS][124] +25 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][125] ([fdo#109276] / [fdo#112080]) -> [FAIL][126] ([IGT#28])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [SKIP][127] ([i915#668]) -> [FAIL][128] ([i915#49])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7757 -> Patchwork_16134

  CI-20190529: 20190529
  CI_DRM_7757: 181f4cf3bdbbf2a8a67e406ef16f1cdc957379b6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5370: a98fb02cc2816a48eec374392d9b6941abb6af2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16134: 09d65593f8f88baa7be6f114f1abebf1633db788 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
