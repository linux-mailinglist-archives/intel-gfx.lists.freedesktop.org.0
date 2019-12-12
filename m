Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE1211C5F2
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 07:29:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492226EC5E;
	Thu, 12 Dec 2019 06:29:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A5DBF6EC5E;
 Thu, 12 Dec 2019 06:29:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E320A0114;
 Thu, 12 Dec 2019 06:29:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 12 Dec 2019 06:29:38 -0000
Message-ID: <157613217862.32007.8204430109344649559@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210144105.3239-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191210144105.3239-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Some_cleanup_near_the_SKL_wm/ddb_area_=28rev4=29?=
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

Series: drm/i915: Some cleanup near the SKL wm/ddb area (rev4)
URL   : https://patchwork.freedesktop.org/series/67930/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7543_full -> Patchwork_15693_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15693_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15693_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15693_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@bonded-slice:
    - shard-tglb:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-tglb2/igt@gem_exec_balancer@bonded-slice.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html

  * igt@perf@oa-exponents:
    - shard-tglb:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb3/igt@perf@oa-exponents.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-tglb6/igt@perf@oa-exponents.html

  
Known issues
------------

  Here are the changes found in Patchwork_15693_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#456])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb2/igt@gem_ctx_isolation@bcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-tglb3/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#679])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl6/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-skl9/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#110841])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111735])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-tglb9/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-iclb5/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([fdo#111677])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb9/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [PASS][21] -> [INCOMPLETE][22] ([i915#140] / [i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb3/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-iclb7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#644])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-skl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#435] / [i915#472])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb8/igt@gem_sync@basic-store-each.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-tglb4/igt@gem_sync@basic-store-each.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [PASS][27] -> [DMESG-WARN][28] ([fdo#111870])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-snb7/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#69]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl2/igt@gem_workarounds@suspend-resume-context.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-skl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#456] / [i915#460]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb8/igt@i915_pm_rpm@system-suspend-modeset.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-tglb2/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#109])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl3/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-skl7/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_cursor_legacy@cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][35] -> [FAIL][36] ([i915#57])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#460] / [i915#516])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb6/igt@kms_flip@flip-vs-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-tglb2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#699])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl5/igt@kms_flip_tiling@flip-changes-tiling.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-skl5/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt:
    - shard-tglb:         [PASS][43] -> [FAIL][44] ([i915#49])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-kbl:          [PASS][45] -> [INCOMPLETE][46] ([fdo#103665] / [i915#648] / [i915#667])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl6/igt@kms_plane@pixel-format-pipe-a-planes.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-kbl4/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-kbl:          [PASS][47] -> [INCOMPLETE][48] ([fdo#103665] / [i915#435] / [i915#648] / [i915#667])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-kbl1/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([fdo#108145] / [i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_gtt.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][55] ([i915#570]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl8/igt@gem_ctx_persistence@processes.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-skl2/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][57] ([fdo#112080]) -> [PASS][58] +5 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-snb:          [TIMEOUT][59] ([i915#530]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][61] ([i915#644]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-snb:          [DMESG-WARN][63] ([fdo#111870]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_wait@await-vecs0:
    - shard-skl:          [DMESG-WARN][65] ([i915#109]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl4/igt@gem_wait@await-vecs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-skl4/igt@gem_wait@await-vecs0.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][67] ([i915#447]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-iclb5/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [INCOMPLETE][69] ([i915#455]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb3/igt@i915_selftest@live_gt_timelines.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-tglb4/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72] +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-apl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +8 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [FAIL][75] ([i915#54]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][77] ([i915#460]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-tglb:         [INCOMPLETE][79] ([i915#667]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb9/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-tglb3/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - shard-tglb:         [INCOMPLETE][81] ([fdo#112393] / [i915#667]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb8/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-tglb1/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][83] ([i915#79]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][85] ([i915#79]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff:
    - shard-tglb:         [INCOMPLETE][87] ([i915#474] / [i915#667]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-tglb:         [FAIL][89] ([i915#49]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][91] ([fdo#108145] / [i915#265]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][93] ([i915#31]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl3/igt@kms_setmode@basic.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-kbl6/igt@kms_setmode@basic.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][95] ([fdo#109276]) -> [PASS][96] +7 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][97] ([i915#82]) -> [DMESG-WARN][98] ([i915#444])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb4/igt@gem_eio@kms.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-snb4/igt@gem_eio@kms.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][99] ([fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][100] ([fdo#112347] / [i915#648] / [i915#667])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl7/igt@kms_plane@pixel-format-pipe-a-planes.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/shard-skl3/igt@kms_plane@pixel-format-pipe-a-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [fdo#112393]: https://bugs.freedesktop.org/show_bug.cgi?id=112393
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#516]: https://gitlab.freedesktop.org/drm/intel/issues/516
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7543 -> Patchwork_15693

  CI-20190529: 20190529
  CI_DRM_7543: 91752f80df9b582561be6bbac12ef780b12f606c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5345: 9e0c82b6d70065db894ececf2be8de372e983cf0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15693: cdf87f3344feb85d6caeae76996aeebf3f985b3d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15693/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
