Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2E612F3F7
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 06:01:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7679A6E174;
	Fri,  3 Jan 2020 05:01:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D28C189327;
 Fri,  3 Jan 2020 05:01:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9D77A0003;
 Fri,  3 Jan 2020 05:01:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Jan 2020 05:01:48 -0000
Message-ID: <157802770879.20614.2788508649666708139@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200102142454.1494257-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200102142454.1494257-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Drop_mutex_serialisation_between_context_pin/unpin?=
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

Series: drm/i915/gt: Drop mutex serialisation between context pin/unpin
URL   : https://patchwork.freedesktop.org/series/71568/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7667_full -> Patchwork_15977_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15977_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15977_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15977_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_bad_reloc@negative-reloc-bsd:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb3/igt@gem_bad_reloc@negative-reloc-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb9/igt@gem_bad_reloc@negative-reloc-bsd.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-hsw:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-hsw2/igt@gem_tiled_partial_pwrite_pread@reads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-hsw2/igt@gem_tiled_partial_pwrite_pread@reads.html

  
Known issues
------------

  Here are the changes found in Patchwork_15977_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#435])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb2/igt@gem_busy@close-race.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb9/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-apl7/igt@gem_ctx_isolation@vecs0-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-apl1/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#679])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-glk2/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-glk8/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#570])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl7/igt@gem_ctx_persistence@processes.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-skl6/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111735]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb3/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          [PASS][17] -> [FAIL][18] ([i915#232])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-snb7/igt@gem_eio@unwedge-stress.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-snb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112080]) +12 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#109])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl4/igt@gem_exec_reloc@basic-write-read-active.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-skl5/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#112146]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109276]) +18 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb2/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-iclb6/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([fdo#111606] / [fdo#111677])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * igt@gem_exec_suspend@basic-s3-devices:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#460])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb7/igt@gem_exec_suspend@basic-s3-devices.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb5/igt@gem_exec_suspend@basic-s3-devices.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [PASS][31] -> [FAIL][32] ([i915#520])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-snb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-snb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-apl:          [PASS][33] -> [TIMEOUT][34] ([i915#530])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-apl2/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-apl3/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#129])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl4/igt@kms_color@pipe-a-ctm-green-to-red.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-skl1/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-hsw:          [PASS][37] -> [DMESG-FAIL][38] ([i915#44] / [i915#54])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-hsw5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-hsw5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#54])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@pipe-c-forked-move:
    - shard-hsw:          [PASS][41] -> [DMESG-WARN][42] ([i915#44]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-hsw5/igt@kms_cursor_legacy@pipe-c-forked-move.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-hsw5/igt@kms_cursor_legacy@pipe-c-forked-move.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled:
    - shard-snb:          [PASS][43] -> [SKIP][44] ([fdo#109271]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-snb5/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#52] / [i915#54]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#46])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][49] -> [INCOMPLETE][50] ([i915#221])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-kbl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180]) +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#34])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl3/igt@kms_flip@plain-flip-ts-check.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-skl8/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [PASS][55] -> [FAIL][56] ([i915#49]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#49])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#247])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl4/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-skl1/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][61] -> [FAIL][62] ([fdo#108145])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][63] -> [SKIP][64] ([fdo#109441]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][65] ([fdo#112080]) -> [PASS][66] +13 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [SKIP][67] ([fdo#109276] / [fdo#112080]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb3/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-iclb4/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][69] ([fdo#111735]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb3/igt@gem_ctx_shared@q-smoketest-vebox.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb5/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][71] ([i915#476]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb5/igt@gem_eio@kms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb8/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][73] ([i915#232]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-snb5/igt@gem_eio@reset-stress.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-snb7/igt@gem_eio@reset-stress.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [INCOMPLETE][75] ([i915#469]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb9/igt@gem_eio@unwedge-stress.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][77] ([fdo#112146]) -> [PASS][78] +8 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-iclb7/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][79] ([i915#435]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb6/igt@gem_exec_nop@basic-series.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb7/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][81] ([i915#470]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb8/igt@gem_exec_parallel@fds.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb2/igt@gem_exec_parallel@fds.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][83] ([i915#677]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-tglb:         [INCOMPLETE][85] ([fdo#111677]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb9/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb3/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [TIMEOUT][87] ([fdo#112126] / [i915#530]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][89] ([i915#707] / [i915#796]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb4/igt@gem_pipe_control_store_loop@reused-buffer.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb7/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][91] ([i915#644]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][93] ([i915#472]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb8/igt@gem_sync@basic-store-all.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb7/igt@gem_sync@basic-store-all.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-glk:          [DMESG-WARN][95] ([i915#716]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][97] ([i915#447]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-iclb5/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][99] ([i915#151] / [i915#69]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl6/igt@i915_pm_rpm@system-suspend-modeset.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-skl10/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][101] ([i915#725]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-hsw2/igt@i915_selftest@live_blt.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-hsw2/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [INCOMPLETE][103] ([i915#455]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb6/igt@i915_selftest@live_gt_timelines.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb8/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][105] ([i915#180]) -> [PASS][106] +3 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - shard-skl:          [DMESG-WARN][107] ([i915#109]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl1/igt@kms_color@pipe-b-ctm-green-to-red.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-skl2/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-iclb:         [FAIL][109] ([IGT#5]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [FAIL][111] ([i915#52] / [i915#54]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render:
    - shard-tglb:         [INCOMPLETE][113] ([i915#402] / [i915#474]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][115] ([i915#180]) -> [PASS][116] +5 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-tglb:         [FAIL][117] ([i915#49]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-iclb:         [INCOMPLETE][119] ([i915#140] / [i915#250]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-iclb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][121] ([fdo#108145] / [i915#265]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][123] ([fdo#109441]) -> [PASS][124] +3 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][125] ([fdo#109276]) -> [PASS][126] +28 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][127] ([IGT#28]) -> [SKIP][128] ([fdo#109276] / [fdo#112080])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [INCOMPLETE][129] ([i915#435]) -> [INCOMPLETE][130] ([fdo#108838] / [i915#435])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb9/igt@gem_exec_create@forked.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb3/igt@gem_exec_create@forked.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][131] ([fdo#112021]) -> [SKIP][132] ([fdo#112016] / [fdo#112021])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb3/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-kbl:          [DMESG-WARN][133] ([i915#180]) -> [DMESG-WARN][134] ([i915#180] / [i915#56])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-kbl7/igt@kms_flip@flip-vs-suspend.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-kbl2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [INCOMPLETE][135] ([i915#435] / [i915#474]) -> [FAIL][136] ([i915#49])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796


Participating hosts (10 -> 9)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7667 -> Patchwork_15977

  CI-20190529: 20190529
  CI_DRM_7667: e60a61aa9e6849fc2dba1085b1ba99c4847f20cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15977: 395d527730339d2b907a2dfc9489

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
