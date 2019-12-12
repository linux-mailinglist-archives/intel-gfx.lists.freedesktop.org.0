Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 310A411C582
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 06:38:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 939276EC5B;
	Thu, 12 Dec 2019 05:37:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BD3D36EC59;
 Thu, 12 Dec 2019 05:37:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4CE3A0BA8;
 Thu, 12 Dec 2019 05:37:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Dec 2019 05:37:58 -0000
Message-ID: <157612907870.32009.3211761580342968351@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191211110437.4082687-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191211110437.4082687-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/5=5D_drm/i915=3A_Fix_cmdparser_drm?=
 =?utf-8?q?=2Edebug_=28rev2=29?=
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

Series: series starting with [CI,1/5] drm/i915: Fix cmdparser drm.debug (rev2)
URL   : https://patchwork.freedesktop.org/series/70751/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7543_full -> Patchwork_15692_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15692_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15692_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15692_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@bonded-slice:
    - shard-tglb:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-tglb2/igt@gem_exec_balancer@bonded-slice.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-iclb:         NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-iclb7/igt@prime_mmap_coherency@ioctl-errors.html

  
Known issues
------------

  Here are the changes found in Patchwork_15692_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb2/igt@gem_ctx_isolation@vcs1-reset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-iclb5/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-apl1/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-apl8/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#461])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#69])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl1/igt@gem_eio@in-flight-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-skl10/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111593])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb8/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-tglb6/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#435])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb1/igt@gem_exec_nop@basic-parallel.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-tglb8/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109276]) +6 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-glk:          [PASS][19] -> [TIMEOUT][20] ([i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-glk5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-glk1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
    - shard-hsw:          [PASS][21] -> [TIMEOUT][22] ([i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-hsw8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-hsw6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#520])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-iclb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#644])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#472] / [i915#707])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb9/igt@gem_sync@basic-many-each.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-tglb7/igt@gem_sync@basic-many-each.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [PASS][29] -> [DMESG-WARN][30] ([fdo#111870])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#109]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#54]) +6 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#72])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-render-xtiled:
    - shard-kbl:          [PASS][39] -> [INCOMPLETE][40] ([fdo#103665] / [i915#667])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl7/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-kbl4/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#435] / [i915#667])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb2/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-tglb1/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-tglb:         [PASS][43] -> [INCOMPLETE][44] ([i915#460] / [i915#516])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb6/igt@kms_flip@flip-vs-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-tglb8/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][45] -> [INCOMPLETE][46] ([i915#474] / [i915#667])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [PASS][47] -> [INCOMPLETE][48] ([i915#456] / [i915#460] / [i915#474])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-kbl:          [PASS][49] -> [INCOMPLETE][50] ([fdo#103665] / [i915#648] / [i915#667])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl1/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-kbl2/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([fdo#108145])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([fdo#108145] / [i915#265])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109441]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][57] ([i915#570]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl8/igt@gem_ctx_persistence@processes.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-skl1/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#112146]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html

  * {igt@gem_exec_schedule@pi-distinct-iova-bsd}:
    - shard-iclb:         [SKIP][61] ([i915#677]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-snb:          [TIMEOUT][63] ([i915#530]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][65] ([i915#472] / [i915#707]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb8/igt@gem_sync@basic-each.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-tglb1/igt@gem_sync@basic-each.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-snb:          [DMESG-WARN][67] ([fdo#111870]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_wait@await-vecs0:
    - shard-skl:          [DMESG-WARN][69] ([i915#109]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl4/igt@gem_wait@await-vecs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-skl7/igt@gem_wait@await-vecs0.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][71] ([i915#447]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-iclb8/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-skl:          [FAIL][75] ([i915#54]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][77] ([i915#460]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-tglb4/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-tglb:         [INCOMPLETE][79] ([i915#667]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb9/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-tglb8/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][81] ([i915#79]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][83] ([i915#79]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-tglb:         [INCOMPLETE][85] ([i915#456] / [i915#460] / [i915#516]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-tglb9/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff:
    - shard-tglb:         [INCOMPLETE][87] ([i915#474] / [i915#667]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90] +11 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][91] ([i915#648] / [i915#667]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl1/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-skl6/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-tglb:         [INCOMPLETE][93] ([i915#456] / [i915#460]) -> [PASS][94] +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-reset:
    - shard-tglb:         [SKIP][95] ([fdo#111912] / [fdo#112080]) -> [SKIP][96] ([fdo#112080])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb2/igt@gem_ctx_isolation@vcs2-reset.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-tglb9/igt@gem_ctx_isolation@vcs2-reset.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][97] ([fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][98] ([i915#648])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl7/igt@kms_plane@pixel-format-pipe-a-planes.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-skl8/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][99] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][100] ([fdo#112347] / [i915#648] / [i915#667])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-skl2/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][101] ([fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][102] ([fdo#112347] / [i915#648] / [i915#667])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/shard-skl7/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#516]: https://gitlab.freedesktop.org/drm/intel/issues/516
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7543 -> Patchwork_15692

  CI-20190529: 20190529
  CI_DRM_7543: 91752f80df9b582561be6bbac12ef780b12f606c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5345: 9e0c82b6d70065db894ececf2be8de372e983cf0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15692: 3abc3e67c1b81f7737657d21f30f4df67f5720dc @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15692/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
