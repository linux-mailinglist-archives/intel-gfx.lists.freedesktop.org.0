Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CD312185B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 19:43:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F245F6E861;
	Mon, 16 Dec 2019 18:43:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 834806E861;
 Mon, 16 Dec 2019 18:43:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A85CA0BA8;
 Mon, 16 Dec 2019 18:43:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Mon, 16 Dec 2019 18:43:13 -0000
Message-ID: <157652179348.5612.324325777531218901@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216080619.10945-1-vandita.kulkarni@intel.com>
In-Reply-To: <20191216080619.10945-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_WARN=5FON_condition_for_cursor_plane_ddb_allocatio?=
 =?utf-8?q?n_=28rev2=29?=
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

Series: drm/i915: Fix WARN_ON condition for cursor plane ddb allocation (rev2)
URL   : https://patchwork.freedesktop.org/series/70893/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7573_full -> Patchwork_15784_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15784_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_schedule@pi-shared-iova-vebox}:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-glk1/igt@gem_exec_schedule@pi-shared-iova-vebox.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-glk8/igt@gem_exec_schedule@pi-shared-iova-vebox.html

  
Known issues
------------

  Here are the changes found in Patchwork_15784_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-iclb2/igt@gem_ctx_isolation@vcs1-none.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-iclb3/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-tglb1/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-tglb3/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#69]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-skl5/igt@gem_eio@in-flight-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-skl10/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@suspend:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#460])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-tglb7/igt@gem_eio@suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-tglb4/igt@gem_eio@suspend.html

  * igt@gem_exec_async@concurrent-writes-bsd2:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd2.html

  * igt@gem_exec_create@basic:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111736])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-tglb2/igt@gem_exec_create@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-tglb6/igt@gem_exec_create@basic.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111677])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-iclb5/igt@gem_exec_schedule@wide-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#472] / [i915#707])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-tglb4/igt@gem_sync@basic-each.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-tglb3/igt@gem_sync@basic-each.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [PASS][21] -> [DMESG-WARN][22] ([fdo#111870]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-snb7/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#112080])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-iclb2/igt@i915_hangman@error-state-capture-vcs1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-iclb3/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#54])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen:
    - shard-hsw:          [PASS][29] -> [DMESG-WARN][30] ([IGT#6])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-hsw5/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([fdo#112347] / [i915#646] / [i915#667])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#221])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [PASS][35] -> [FAIL][36] ([i915#49])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#49])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][41] -> [FAIL][42] ([i915#31])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-hsw5/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-hsw4/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-iclb:         [SKIP][43] ([fdo#109276] / [fdo#112080]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-iclb6/igt@gem_ctx_persistence@vcs1-cleanup.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-iclb1/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][45] ([i915#232]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-snb7/igt@gem_eio@reset-stress.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-snb6/igt@gem_eio@reset-stress.html

  * igt@gem_exec_basic@basic-vcs1:
    - shard-iclb:         [SKIP][47] ([fdo#112080]) -> [PASS][48] +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-iclb5/igt@gem_exec_basic@basic-vcs1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-iclb1/igt@gem_exec_basic@basic-vcs1.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][49] ([fdo#109276]) -> [PASS][50] +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-iclb5/igt@gem_exec_schedule@out-order-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-iclb1/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [FAIL][53] ([i915#520]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][55] ([i915#818]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-hsw6/igt@gem_tiled_blits@interruptible.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [DMESG-WARN][57] ([fdo#111870]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-snb6/igt@gem_userptr_blits@sync-unmap-cycles.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-snb1/igt@gem_userptr_blits@sync-unmap-cycles.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][59] ([i915#716]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-apl7/igt@gen9_exec_parse@allowed-single.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-apl2/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [INCOMPLETE][61] ([i915#69]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-skl8/igt@i915_suspend@debugfs-reader.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-skl4/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [FAIL][63] ([i915#54]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [INCOMPLETE][71] ([i915#474] / [i915#667]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-kbl:          [INCOMPLETE][73] ([fdo#103665] / [i915#648] / [i915#667]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-kbl7/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-kbl1/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][75] ([fdo#108145] / [i915#265]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-b-tiling-none:
    - shard-hsw:          [DMESG-FAIL][77] ([fdo#103166] / [i915#44]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-hsw5/igt@kms_plane_lowres@pipe-b-tiling-none.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-hsw5/igt@kms_plane_lowres@pipe-b-tiling-none.html

  * igt@kms_vblank@pipe-a-wait-busy-hang:
    - shard-snb:          [INCOMPLETE][79] ([i915#82]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-snb1/igt@kms_vblank@pipe-a-wait-busy-hang.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-snb7/igt@kms_vblank@pipe-a-wait-busy-hang.html

  
#### Warnings ####

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][81] ([fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][82] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-skl2/igt@kms_plane@pixel-format-pipe-a-planes.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-skl10/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][83] ([fdo#112347] / [i915#648] / [i915#667]) -> [INCOMPLETE][84] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-skl2/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][85] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][86] ([fdo#112347] / [i915#648] / [i915#667])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7573/shard-skl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/shard-skl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103166]: https://bugs.freedesktop.org/show_bug.cgi?id=103166
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7573 -> Patchwork_15784

  CI-20190529: 20190529
  CI_DRM_7573: 5f2c1ea1bfb34f9777b829eec98a974edd82b885 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15784: 73b0cf8bd3e27cbc7759084af477d01b34c7251c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15784/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
