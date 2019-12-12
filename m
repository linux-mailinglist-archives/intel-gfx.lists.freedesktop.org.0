Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE72D11D8B0
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 22:42:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C39A6E20B;
	Thu, 12 Dec 2019 21:42:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D96F86E20A;
 Thu, 12 Dec 2019 21:42:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2556A0091;
 Thu, 12 Dec 2019 21:42:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Dec 2019 21:42:40 -0000
Message-ID: <157618696083.32007.18324358527899624777@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191211230858.599030-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191211230858.599030-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gem=3A_Prepare_gen7_c?=
 =?utf-8?q?mdparser_for_async_execution_=28rev2=29?=
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

Series: series starting with [CI,1/3] drm/i915/gem: Prepare gen7 cmdparser for async execution (rev2)
URL   : https://patchwork.freedesktop.org/series/70793/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7549_full -> Patchwork_15711_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15711_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15711_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15711_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@bonded-slice:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb4/igt@gem_exec_balancer@bonded-slice.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-iclb4/igt@gem_exec_balancer@bonded-slice.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc:
    - shard-iclb:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-iclb7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc.html

  
Known issues
------------

  Here are the changes found in Patchwork_15711_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-apl4/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-apl7/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_eio@suspend:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#460])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb1/igt@gem_eio@suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-tglb4/igt@gem_eio@suspend.html

  * igt@gem_exec_parse_blt@allowed-all:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#716])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl3/igt@gem_exec_parse_blt@allowed-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-kbl2/igt@gem_exec_parse_blt@allowed-all.html

  * igt@gem_exec_schedule@preempt-hang-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb8/igt@gem_exec_schedule@preempt-hang-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-iclb4/igt@gem_exec_schedule@preempt-hang-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111606] / [fdo#111677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276]) +6 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-iclb:         [PASS][17] -> [DMESG-WARN][18] ([fdo#111764])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb1/igt@gem_exec_suspend@basic-s0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-iclb3/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#644])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#472] / [i915#707])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb2/igt@gem_sync@basic-each.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-tglb4/igt@gem_sync@basic-each.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-snb:          [PASS][23] -> [DMESG-WARN][24] ([fdo#111870])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-snb6/igt@gem_userptr_blits@dmabuf-unsync.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-snb2/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-hsw:          [PASS][25] -> [DMESG-WARN][26] ([fdo#111870]) +5 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-hsw8/igt@gem_userptr_blits@sync-unmap-cycles.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-hsw7/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@gem_vm_create@execbuf:
    - shard-hsw:          [PASS][27] -> [SKIP][28] ([fdo#109271]) +9 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-hsw8/igt@gem_vm_create@execbuf.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-hsw7/igt@gem_vm_create@execbuf.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#54]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#72])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#646] / [i915#667])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#52] / [i915#54]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#79])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [PASS][41] -> [INCOMPLETE][42] ([i915#82])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-snb4/igt@kms_flip@flip-vs-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-snb1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [PASS][43] -> [FAIL][44] ([i915#49]) +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-kbl:          [PASS][45] -> [INCOMPLETE][46] ([fdo#103665] / [i915#648] / [i915#667])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl4/igt@kms_plane@pixel-format-pipe-a-planes.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-kbl4/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([fdo#108145] / [i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][53] -> [FAIL][54] ([i915#31])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-apl1/igt@kms_setmode@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-apl4/igt@kms_setmode@basic.html

  * igt@perf@short-reads:
    - shard-apl:          [PASS][55] -> [TIMEOUT][56] ([i915#51])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-apl8/igt@perf@short-reads.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-apl1/igt@perf@short-reads.html

  * igt@perf_pmu@idle-vcs1:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#112080]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb4/igt@perf_pmu@idle-vcs1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-iclb8/igt@perf_pmu@idle-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][59] ([fdo#112080]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb8/igt@gem_busy@extended-parallel-vcs1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-iclb4/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@vcs1-s3:
    - shard-tglb:         [INCOMPLETE][61] ([i915#456]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb3/igt@gem_ctx_isolation@vcs1-s3.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-tglb8/igt@gem_ctx_isolation@vcs1-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][63] ([fdo#109276] / [fdo#112080]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][65] ([i915#232]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-snb2/igt@gem_eio@reset-stress.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-snb5/igt@gem_eio@reset-stress.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][67] ([fdo#112146]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb4/igt@gem_exec_async@concurrent-writes-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-iclb8/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_parallel@vcs1:
    - shard-tglb:         [INCOMPLETE][69] ([fdo#111593]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb1/igt@gem_exec_parallel@vcs1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-tglb6/igt@gem_exec_parallel@vcs1.html

  * igt@gem_exec_reloc@basic-spin-blt:
    - shard-glk:          [FAIL][71] ([i915#611]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-glk6/igt@gem_exec_reloc@basic-spin-blt.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-glk8/igt@gem_exec_reloc@basic-spin-blt.html
    - shard-apl:          [FAIL][73] ([i915#611]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-apl3/igt@gem_exec_reloc@basic-spin-blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-apl2/igt@gem_exec_reloc@basic-spin-blt.html
    - shard-skl:          [FAIL][75] ([i915#611]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl3/igt@gem_exec_reloc@basic-spin-blt.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-skl1/igt@gem_exec_reloc@basic-spin-blt.html

  * igt@gem_exec_schedule@deep-blt:
    - shard-apl:          [FAIL][77] ([i915#412]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-apl8/igt@gem_exec_schedule@deep-blt.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-apl1/igt@gem_exec_schedule@deep-blt.html
    - shard-kbl:          [FAIL][79] ([i915#412]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl4/igt@gem_exec_schedule@deep-blt.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-kbl2/igt@gem_exec_schedule@deep-blt.html
    - shard-skl:          [FAIL][81] ([i915#412]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl8/igt@gem_exec_schedule@deep-blt.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-skl6/igt@gem_exec_schedule@deep-blt.html
    - shard-glk:          [FAIL][83] ([i915#412]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-glk5/igt@gem_exec_schedule@deep-blt.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-glk2/igt@gem_exec_schedule@deep-blt.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][85] ([i915#677]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][87] ([fdo#109276]) -> [PASS][88] +8 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-snb:          [TIMEOUT][89] ([i915#530]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-snb1/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-snb2/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-hsw:          [FAIL][91] ([i915#520]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-hsw4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-hsw6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-iclb:         [FAIL][93] ([i915#644]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-iclb3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][95] ([i915#69]) -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl8/igt@gem_softpin@noreloc-s3.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-skl6/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-snb:          [DMESG-WARN][97] ([fdo#111870]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-snb5/igt@gem_userptr_blits@sync-unmap-after-close.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-snb1/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-tglb:         [INCOMPLETE][99] ([i915#456] / [i915#460]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb8/igt@i915_pm_rpm@system-suspend-devices.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-tglb7/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@kms_color@pipe-b-ctm-max:
    - shard-skl:          [DMESG-WARN][101] ([i915#109]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl1/igt@kms_color@pipe-b-ctm-max.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-skl9/igt@kms_color@pipe-b-ctm-max.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [FAIL][103] ([i915#54]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [FAIL][105] ([IGT#5]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-skl:          [FAIL][107] ([i915#52] / [i915#54]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-snb:          [DMESG-WARN][109] ([i915#42]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-interruptible:
    - shard-kbl:          [INCOMPLETE][111] ([fdo#103665]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl7/igt@kms_flip@plain-flip-interruptible.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-kbl6/igt@kms_flip@plain-flip-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][113] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [INCOMPLETE][115] ([i915#474] / [i915#667]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][117] ([i915#648] / [i915#667]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl9/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-skl7/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [DMESG-WARN][119] ([i915#180]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][121] ([fdo#109441]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][123] ([i915#180]) -> [PASS][124] +3 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:
    - shard-tglb:         [INCOMPLETE][125] ([i915#460]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb1/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-tglb8/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][127] ([k.org#204565]) -> ([FAIL][128], [FAIL][129]) ([i915#716] / [k.org#204565])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl6/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-kbl1/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-kbl2/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][130], [FAIL][131]) ([fdo#111093]) -> ([FAIL][132], [FAIL][133]) ([fdo#111093] / [i915#287] / [k.org#203557])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb1/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb6/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-iclb7/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/shard-iclb3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111093]: https://bugs.freedesktop.org/show_bug.cgi?id=111093
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#287]: https://gitlab.freedesktop.org/drm/intel/issues/287
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#412]: https://gitlab.freedesktop.org/drm/intel/issues/412
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#611]: https://gitlab.freedesktop.org/drm/intel/issues/611
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#203557]: https://bugzilla.kernel.org/show_bug.cgi?id=203557
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7549 -> Patchwork_15711

  CI-20190529: 20190529
  CI_DRM_7549: 9573e1b7d1cb54cc984cf5c4f93a743641d868da @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15711: a92e46053683835a90bec6e06c0c8b6195271cb8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15711/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
