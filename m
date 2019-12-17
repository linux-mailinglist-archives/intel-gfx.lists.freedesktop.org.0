Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F31BF122369
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 06:11:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E04D6E93D;
	Tue, 17 Dec 2019 05:11:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E05516E938;
 Tue, 17 Dec 2019 05:11:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4E45A363B;
 Tue, 17 Dec 2019 05:11:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Dec 2019 05:11:41 -0000
Message-ID: <157655950177.21845.15634835311452184319@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216165317.2742896-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191216165317.2742896-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Eliminate_the_trylock_for_awaiting_an_earlier_request?=
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

Series: drm/i915: Eliminate the trylock for awaiting an earlier request
URL   : https://patchwork.freedesktop.org/series/70994/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7576_full -> Patchwork_15796_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_15796_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15796_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15796_full:

### IGT changes ###

#### Warnings ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][1] ([i915#832]) -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-hsw4/igt@gem_tiled_blits@normal.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-hsw7/igt@gem_tiled_blits@normal.html

  
Known issues
------------

  Here are the changes found in Patchwork_15796_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb4/igt@gem_ctx_isolation@vcs1-none.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-iclb8/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#461])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_async@concurrent-writes-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_mmap_gtt@hang:
    - shard-snb:          [PASS][11] -> [INCOMPLETE][12] ([i915#82]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-snb7/igt@gem_mmap_gtt@hang.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-snb5/igt@gem_mmap_gtt@hang.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-tglb:         [PASS][13] -> [TIMEOUT][14] ([i915#530])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb1/igt@gem_persistent_relocs@forked-thrashing.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-tglb7/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [PASS][15] -> [DMESG-WARN][16] ([fdo#111870]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-snb7/igt@gem_userptr_blits@sync-unmap-cycles.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-snb5/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112080]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb4/igt@i915_hangman@error-state-capture-vcs1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-iclb8/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#454])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#747])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl3/igt@i915_selftest@mock_sanitycheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-skl4/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#109])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl4/igt@kms_color@pipe-b-ctm-0-5.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-skl4/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][27] -> [INCOMPLETE][28] ([fdo#103927])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#69])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-kbl:          [PASS][33] -> [INCOMPLETE][34] ([fdo#103665] / [i915#648] / [i915#667])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-kbl3/igt@kms_plane@pixel-format-pipe-a-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-kbl7/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-skl:          [PASS][35] -> [DMESG-WARN][36] ([IGT#6])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl2/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-skl2/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-iclb3/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [fdo#112080]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb6/igt@gem_ctx_persistence@vcs1-cleanup.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-iclb2/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-apl:          [FAIL][43] ([i915#679]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-apl6/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-apl8/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_eio@in-flight-suspend:
    - shard-tglb:         [INCOMPLETE][45] ([i915#456] / [i915#460] / [i915#534]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb7/igt@gem_eio@in-flight-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-tglb1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][47] ([fdo#111593]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb4/igt@gem_exec_gttfill@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-tglb9/igt@gem_exec_gttfill@basic.html

  * {igt@gem_exec_schedule@pi-shared-iova-bsd}:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [FAIL][53] ([i915#644]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-tglb7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-tglb:         [INCOMPLETE][55] ([i915#456]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb5/igt@gem_softpin@noreloc-s3.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-tglb9/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-snb:          [DMESG-WARN][57] ([fdo#111870]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-snb1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-glk:          [DMESG-WARN][59] ([i915#716]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-glk2/igt@gen9_exec_parse@allowed-all.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-glk9/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-snb:          [DMESG-WARN][61] ([i915#747]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-snb7/igt@i915_selftest@mock_sanitycheck.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-snb5/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:
    - shard-skl:          [FAIL][63] ([i915#54]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][65] ([i915#456] / [i915#460]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [INCOMPLETE][67] ([i915#435] / [i915#667]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-skl10/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][69] ([i915#79]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-glk:          [FAIL][71] ([i915#79]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-modeset-vs-hang-interruptible:
    - shard-skl:          [INCOMPLETE][73] ([i915#198]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl10/igt@kms_flip@flip-vs-modeset-vs-hang-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-skl4/igt@kms_flip@flip-vs-modeset-vs-hang-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [FAIL][75] ([i915#49]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [INCOMPLETE][77] ([i915#474] / [i915#667]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [INCOMPLETE][79] ([fdo#103665] / [i915#648] / [i915#667]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-kbl6/igt@kms_plane@pixel-format-pipe-b-planes.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-kbl1/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +6 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][83] ([fdo#108145]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][85] ([fdo#109441]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf@disabled-read-error:
    - shard-hsw:          [INCOMPLETE][87] ([i915#61]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-hsw5/igt@perf@disabled-read-error.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-hsw4/igt@perf@disabled-read-error.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][89] ([fdo#112080]) -> [PASS][90] +4 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb8/igt@perf_pmu@busy-check-all-vcs1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][91] ([fdo#109276]) -> [PASS][92] +5 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_userptr_blits@sync-unmap:
    - shard-snb:          [DMESG-WARN][93] ([fdo#111870]) -> [DMESG-WARN][94] ([fdo#110789] / [fdo#111870])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-snb1/igt@gem_userptr_blits@sync-unmap.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-snb2/igt@gem_userptr_blits@sync-unmap.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][95] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][96] ([fdo#112347] / [i915#648] / [i915#667]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110789]: https://bugs.freedesktop.org/show_bug.cgi?id=110789
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7576 -> Patchwork_15796

  CI-20190529: 20190529
  CI_DRM_7576: 4073abc279f49e14faab8f9adc0149e04d0568e1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15796: 4b7668d7d0acf478543c22b8b81cb65f866fcfd1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15796/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
