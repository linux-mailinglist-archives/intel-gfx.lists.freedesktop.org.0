Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 681B4166E8C
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 05:31:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 866716E18E;
	Fri, 21 Feb 2020 04:31:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CF14D6E187;
 Fri, 21 Feb 2020 04:31:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF827A0138;
 Fri, 21 Feb 2020 04:31:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Date: Fri, 21 Feb 2020 04:31:16 -0000
Message-ID: <158225947675.7919.3957612016896740500@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219120944.21200-1-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20200219120944.21200-1-janusz.krzysztofik@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/userptr=3A_Don=27t_activate_MMU_notifier_if_no_pages_can_?=
 =?utf-8?q?be_acquired?=
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

Series: drm/i915/userptr: Don't activate MMU notifier if no pages can be acquired
URL   : https://patchwork.freedesktop.org/series/73641/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7963_full -> Patchwork_16620_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16620_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +10 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +9 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +22 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_partial_pwrite_pread@write-snoop:
    - shard-hsw:          [PASS][11] -> [FAIL][12] ([i915#694]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw6/igt@gem_partial_pwrite_pread@write-snoop.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-hsw8/igt@gem_partial_pwrite_pread@write-snoop.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-tglb8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#69])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl2/igt@gem_softpin@noreloc-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-skl2/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#413])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@i915_pm_rps@waitboost.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-iclb5/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_gt_lrc:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#1233])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb8/igt@i915_selftest@live_gt_lrc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-tglb5/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl7/igt@i915_suspend@sysfs-reader.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-apl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#34])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl6/igt@kms_flip@plain-flip-fb-recreate.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-skl6/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#49])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-iclb:         [PASS][29] -> [INCOMPLETE][30] ([i915#250])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-b-wait-busy-hang:
    - shard-snb:          [PASS][35] -> [SKIP][36] ([fdo#109271]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-snb2/igt@kms_vblank@pipe-b-wait-busy-hang.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-snb6/igt@kms_vblank@pipe-b-wait-busy-hang.html

  
#### Possible fixes ####

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-tglb:         [FAIL][37] ([i915#1241]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html
    - shard-iclb:         [FAIL][39] ([i915#1241]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_ctx_persistence@close-replace-race.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-iclb5/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [FAIL][41] ([i915#1241]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl4/igt@gem_ctx_persistence@close-replace-race.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-apl1/igt@gem_ctx_persistence@close-replace-race.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox}:
    - shard-skl:          [FAIL][43] ([i915#679]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [INCOMPLETE][45] ([fdo#103665]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl6/igt@gem_eio@in-flight-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-kbl7/igt@gem_eio@in-flight-suspend.html

  * {igt@gem_exec_schedule@implicit-both-bsd1}:
    - shard-iclb:         [SKIP][47] ([fdo#109276] / [i915#677]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][49] ([fdo#109276]) -> [PASS][50] +15 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][51] ([i915#677]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54] +6 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][55] ([i915#644]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [FAIL][57] ([i915#644]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-a-cursor-size-change:
    - shard-snb:          [SKIP][59] ([fdo#109271]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-size-change.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][63] ([i915#96]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [INCOMPLETE][69] ([i915#61]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][71] ([fdo#108145]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][75] ([i915#173]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@kms_psr@no_drrs.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-iclb5/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][77] ([fdo#109441]) -> [PASS][78] +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb3/igt@kms_psr@psr2_no_drrs.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][79] ([i915#31]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl2/igt@kms_setmode@basic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-apl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][81] ([i915#69]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@short-reads:
    - shard-kbl:          [TIMEOUT][83] ([fdo#112271] / [i915#51]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl6/igt@perf@short-reads.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-kbl4/igt@perf@short-reads.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][85] ([fdo#112080]) -> [PASS][86] +9 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@perf_pmu@busy-vcs1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-iclb1/igt@perf_pmu@busy-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][87] ([i915#831]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-hsw8/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][89] ([fdo#109349]) -> [DMESG-WARN][90] ([i915#1226])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1241]: https://gitlab.freedesktop.org/drm/intel/issues/1241
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7963 -> Patchwork_16620

  CI-20190529: 20190529
  CI_DRM_7963: e0d737598eb749378a5dc4ed3dfafc6f79d512cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5448: 116020b1f83c1b3994c76882df7f77b6731d78ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16620: 38013f5c424c2d28bb3e9155b64ae7b51db63687 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16620/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
