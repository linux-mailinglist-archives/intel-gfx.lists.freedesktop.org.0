Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B689123AF0
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 00:35:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0231A6E1D7;
	Tue, 17 Dec 2019 23:35:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 382C06E1D3;
 Tue, 17 Dec 2019 23:35:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 30721A363B;
 Tue, 17 Dec 2019 23:35:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Dec 2019 23:35:31 -0000
Message-ID: <157662573117.21845.1320802497201119413@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191217134729.3297818-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191217134729.3297818-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Keep_request_alive_while_attaching_fences?=
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

Series: drm/i915/gem: Keep request alive while attaching fences
URL   : https://patchwork.freedesktop.org/series/71053/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7581_full -> Patchwork_15814_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15814_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15814_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15814_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@banned:
    - shard-apl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-apl6/igt@gem_eio@banned.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-apl7/igt@gem_eio@banned.html

  
Known issues
------------

  Here are the changes found in Patchwork_15814_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-iclb1/igt@gem_ctx_isolation@vcs1-reset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-iclb5/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#461])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110854])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-iclb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-iclb5/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#472])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-tglb3/igt@gem_sync@basic-store-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-tglb6/igt@gem_sync@basic-store-all.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup:
    - shard-snb:          [PASS][15] -> [DMESG-WARN][16] ([fdo#111870])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-snb1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-snb7/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#455])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-tglb4/igt@i915_selftest@live_gt_timelines.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-tglb6/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-hsw:          [PASS][19] -> [DMESG-WARN][20] ([i915#44]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-hsw1/igt@kms_color@pipe-a-ctm-0-25.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-hsw5/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([fdo#112347] / [i915#646] / [i915#667])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#69])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-iclb:         [PASS][31] -> [DMESG-WARN][32] ([fdo#111764])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-iclb1/igt@kms_frontbuffer_tracking@psr-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-iclb1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#648] / [i915#667])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-skl7/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-skl2/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [PASS][35] -> [INCOMPLETE][36] ([fdo#103665] / [i915#648] / [i915#667])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-kbl3/igt@kms_plane@pixel-format-pipe-b-planes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-kbl7/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([IGT#6]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-skl1/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-skl8/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][39] -> [FAIL][40] ([i915#31])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-apl4/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-apl1/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#112080]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-iclb1/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-iclb5/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-10ms:
    - shard-snb:          [FAIL][43] ([i915#490]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-snb6/igt@gem_eio@in-flight-10ms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-snb1/igt@gem_eio@in-flight-10ms.html

  * igt@gem_exec_create@basic:
    - shard-tglb:         [INCOMPLETE][45] ([fdo#111736]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-tglb6/igt@gem_exec_create@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-tglb9/igt@gem_exec_create@basic.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][47] ([i915#470]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-tglb3/igt@gem_exec_parallel@contexts.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-tglb9/igt@gem_exec_parallel@contexts.html

  * {igt@gem_exec_schedule@pi-userfault-bsd}:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd.html

  * {igt@gem_exec_schedule@pi-userfault-bsd2}:
    - shard-iclb:         [SKIP][51] ([fdo#109276]) -> [PASS][52] +6 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-render:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#111606] / [fdo#111677]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-tglb6/igt@gem_exec_schedule@preempt-queue-render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-tglb9/igt@gem_exec_schedule@preempt-queue-render.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][57] ([i915#644]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-skl:          [FAIL][59] ([i915#644]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-skl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-skl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][61] ([i915#818]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-hsw2/igt@gem_tiled_blits@interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-hsw6/igt@gem_tiled_blits@interruptible.html

  * igt@gem_userptr_blits@sync-unmap:
    - shard-snb:          [DMESG-WARN][63] ([fdo#111870]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-snb7/igt@gem_userptr_blits@sync-unmap.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-snb2/igt@gem_userptr_blits@sync-unmap.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-tglb:         [INCOMPLETE][65] ([i915#456] / [i915#460]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-tglb3/igt@gem_workarounds@suspend-resume-context.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-tglb1/igt@gem_workarounds@suspend-resume-context.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][67] ([i915#716]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-apl1/igt@gen9_exec_parse@allowed-single.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-apl2/igt@gen9_exec_parse@allowed-single.html
    - shard-skl:          [DMESG-WARN][69] ([i915#716]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-skl2/igt@gen9_exec_parse@allowed-single.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-skl3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-snb:          [DMESG-WARN][71] ([i915#747]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-snb6/igt@i915_selftest@mock_sanitycheck.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-snb7/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][73] ([i915#109]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [INCOMPLETE][75] ([fdo#103927]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][77] ([i915#79]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-glk7/igt@kms_flip@flip-vs-expired-vblank.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-glk1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-tglb:         [FAIL][79] ([i915#49]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglb:         [INCOMPLETE][81] ([i915#435] / [i915#474] / [i915#667]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-skl:          [FAIL][83] ([i915#49]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-kbl:          [INCOMPLETE][85] ([fdo#103665] / [i915#648] / [i915#667]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-kbl1/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-kbl2/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][89] ([fdo#108145] / [i915#265]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][91] ([i915#180]) -> [PASS][92] +9 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][93] ([fdo#112080]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-s3:
    - shard-tglb:         [SKIP][95] ([fdo#111912] / [fdo#112080]) -> [SKIP][96] ([fdo#112080])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-tglb6/igt@gem_ctx_isolation@vcs2-s3.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-tglb9/igt@gem_ctx_isolation@vcs2-s3.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][97] ([fdo#112016] / [fdo#112021]) -> [SKIP][98] ([fdo#112021])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-tglb5/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][99] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][100] ([fdo#112347] / [i915#648] / [i915#667])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/shard-skl7/igt@kms_plane@pixel-format-pipe-a-planes.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/shard-skl10/igt@kms_plane@pixel-format-pipe-a-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7581 -> Patchwork_15814

  CI-20190529: 20190529
  CI_DRM_7581: 5ccf72e75044ac46e1db5b66d9a9780b316a7c26 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15814: 8dacf760315898490e2e49b3c19fa8e189839a23 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15814/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
